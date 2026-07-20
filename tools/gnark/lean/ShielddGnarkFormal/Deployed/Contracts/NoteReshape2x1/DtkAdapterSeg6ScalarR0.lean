import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2719 rho ∧ Seg6.relationRow2720 rho ∧ Seg6.relationRow2721 rho ∧ Seg6.relationRow2722 rho ∧ Seg6.relationRow2723 rho ∧ Seg6.relationRow2724 rho ∧ Seg6.relationRow2725 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2719⟩
  unfold Seg6.relationPart34 at p34
  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, r2725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2719, r2720, r2721, r2722, r2723, r2724, r2725⟩

theorem seg6_rung0 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1884 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX0 rho : Seg6.F), (seg6AccY0 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX0 rho : Seg6.F), (seg6AccY0 rho : Seg6.F)⟩
        ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩
        ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩
        ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩ := by
  obtain ⟨r2719, r2720, r2721, r2722, r2723, r2724, r2725⟩ := seg6_rows0 rho h
  unfold Seg6.relationRow2719 at r2719
  unfold Seg6.relationRow2720 at r2720
  unfold Seg6.relationRow2721 at r2721
  unfold Seg6.relationRow2722 at r2722
  unfold Seg6.relationRow2723 at r2723
  unfold Seg6.relationRow2724 at r2724
  unfold Seg6.relationRow2725 at r2725
  have hrung0 (bit : Bool) (hbit : rho 1884 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX0 rho : Seg6.F), (seg6AccY0 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX0 rho : Seg6.F), (seg6AccY0 rho : Seg6.F)⟩
        ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩
        ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩
        ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩ := by
    have hnextx : seg6AccX1 rho = seg6AccX0 rho + rho 3112 := by
      unfold seg6AccX1 seg6AccX0
      ring
    have hnexty : seg6AccY1 rho = seg6AccY0 rho + rho 3113 := by
      unfold seg6AccY1 seg6AccY0
      ring
    have haddx :
        rho 17 * (1 + 3021 * (rho 18 * seg6AccX0 rho) * (rho 17 * seg6AccY0 rho)) =
          rho 18 * seg6AccX0 rho + rho 17 * seg6AccY0 rho := by
      unfold seg6AccX0 seg6AccY0
      ring
    have haddy :
        rho 18 * (1 - 3021 * (rho 18 * seg6AccX0 rho) * (rho 17 * seg6AccY0 rho)) =
          (-1) * (rho 18 * seg6AccX0 rho) - rho 17 * seg6AccY0 rho +
            (seg6AccY0 rho - seg6AccX0 rho * (-1)) * (rho 17 + rho 18) := by
      unfold seg6AccX0 seg6AccY0
      ring
    have hselx : seg6AccX1 rho = seg6AccX0 rho - Bool.toZMod bit * (seg6AccX0 rho - rho 17) := by
      have hd : rho 3112 = Bool.toZMod bit * (rho 17 - seg6AccX0 rho) := by
        rw [← hbit]
        unfold seg6AccX0
        linear_combination -r2719
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY1 rho = seg6AccY0 rho - Bool.toZMod bit * (seg6AccY0 rho - rho 18) := by
      have hd : rho 3113 = Bool.toZMod bit * (rho 18 - seg6AccY0 rho) := by
        rw [← hbit]
        unfold seg6AccY0
        linear_combination -r2720
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17 * rho 18 = rho 3114 := by linear_combination r2721
    have hd1 : rho 17 * rho 17 = rho 3115 := by linear_combination r2722
    have hd2 : rho 18 * rho 18 = rho 3116 := by linear_combination r2723
    have hd3 : rho 3117 * (rho 18 * rho 18 + rho 17 * rho 17 * (-1)) = 2 * (rho 17 * rho 18) := by
      rw [hd0, hd1, hd2]
      linear_combination r2724
    have hd4 : rho 3118 * (2 - (rho 18 * rho 18 + rho 17 * rho 17 * (-1))) = rho 18 * rho 18 - rho 17 * rho 17 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2725
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX0 rho : Seg6.F), (seg6AccY0 rho : Seg6.F)⟩
      ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩
      ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩
      ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩
      ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung0

theorem seg6_rows1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2726 rho ∧ Seg6.relationRow2727 rho ∧ Seg6.relationRow2728 rho ∧ Seg6.relationRow2729 rho ∧ Seg6.relationRow2730 rho ∧ Seg6.relationRow2731 rho ∧ Seg6.relationRow2732 rho ∧ Seg6.relationRow2733 rho ∧ Seg6.relationRow2734 rho ∧ Seg6.relationRow2735 rho ∧ Seg6.relationRow2736 rho ∧ Seg6.relationRow2737 rho ∧ Seg6.relationRow2738 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738⟩

theorem seg6_rung1 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1885 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩
        ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩
        ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩
        ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩ := by
  obtain ⟨r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738⟩ := seg6_rows1 rho h
  unfold Seg6.relationRow2726 at r2726
  unfold Seg6.relationRow2727 at r2727
  unfold Seg6.relationRow2728 at r2728
  unfold Seg6.relationRow2729 at r2729
  unfold Seg6.relationRow2730 at r2730
  unfold Seg6.relationRow2731 at r2731
  unfold Seg6.relationRow2732 at r2732
  unfold Seg6.relationRow2733 at r2733
  unfold Seg6.relationRow2734 at r2734
  unfold Seg6.relationRow2735 at r2735
  unfold Seg6.relationRow2736 at r2736
  unfold Seg6.relationRow2737 at r2737
  unfold Seg6.relationRow2738 at r2738
  have hrung1 (bit : Bool) (hbit : rho 1885 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩
        ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩
        ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩
        ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩ := by
    have hnextx : seg6AccX2 rho = seg6AccX1 rho + rho 3125 := by
      unfold seg6AccX2 seg6AccX1
      ring
    have hnexty : seg6AccY2 rho = seg6AccY1 rho + rho 3126 := by
      unfold seg6AccY2 seg6AccY1
      ring
    have ha0 : (rho 3117 + rho 3118) * (seg6AccX1 rho + seg6AccY1 rho) = rho 3119 := by
      unfold seg6AccX1 seg6AccY1
      linear_combination r2726
    have ha1 : rho 3118 * seg6AccX1 rho = rho 3120 := by
      unfold seg6AccX1
      linear_combination r2727
    have ha2 : rho 3117 * seg6AccY1 rho = rho 3121 := by
      unfold seg6AccY1
      linear_combination r2728
    have ha3 : 3021 * rho 3120 * rho 3121 = rho 3122 := by
      linear_combination r2729
    have ha4 : rho 3123 * (1 + rho 3122) = rho 3120 + rho 3121 := by
      linear_combination r2730
    have ha5 : rho 3124 * (1 - rho 3122) = rho 3119 - rho 3120 - rho 3121 := by
      linear_combination r2731
    have haddx :
        rho 3123 * (1 + 3021 * (rho 3118 * seg6AccX1 rho) * (rho 3117 * seg6AccY1 rho)) =
          rho 3118 * seg6AccX1 rho + rho 3117 * seg6AccY1 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3124 * (1 - 3021 * (rho 3118 * seg6AccX1 rho) * (rho 3117 * seg6AccY1 rho)) =
          (-1) * (rho 3118 * seg6AccX1 rho) - rho 3117 * seg6AccY1 rho +
            (seg6AccY1 rho - seg6AccX1 rho * (-1)) * (rho 3117 + rho 3118) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3124 * (1 - rho 3122) = rho 3119 - rho 3120 - rho 3121 := ha5
        _ = (-1) * rho 3120 - rho 3121 + (seg6AccY1 rho - seg6AccX1 rho * (-1)) * (rho 3117 + rho 3118) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX2 rho = seg6AccX1 rho - Bool.toZMod bit * (seg6AccX1 rho - rho 3123) := by
      have hd : rho 3125 = Bool.toZMod bit * (rho 3123 - seg6AccX1 rho) := by
        rw [← hbit]
        unfold seg6AccX1
        linear_combination -r2732
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY2 rho = seg6AccY1 rho - Bool.toZMod bit * (seg6AccY1 rho - rho 3124) := by
      have hd : rho 3126 = Bool.toZMod bit * (rho 3124 - seg6AccY1 rho) := by
        rw [← hbit]
        unfold seg6AccY1
        linear_combination -r2733
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3117 * rho 3118 = rho 3127 := by linear_combination r2734
    have hd1 : rho 3117 * rho 3117 = rho 3128 := by linear_combination r2735
    have hd2 : rho 3118 * rho 3118 = rho 3129 := by linear_combination r2736
    have hd3 : rho 3130 * (rho 3118 * rho 3118 + rho 3117 * rho 3117 * (-1)) = 2 * (rho 3117 * rho 3118) := by
      rw [hd0, hd1, hd2]
      linear_combination r2737
    have hd4 : rho 3131 * (2 - (rho 3118 * rho 3118 + rho 3117 * rho 3117 * (-1))) = rho 3118 * rho 3118 - rho 3117 * rho 3117 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2738
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX1 rho : Seg6.F), (seg6AccY1 rho : Seg6.F)⟩
      ⟨(rho 3117 : Seg6.F), (rho 3118 : Seg6.F)⟩
      ⟨(rho 3123 : Seg6.F), (rho 3124 : Seg6.F)⟩
      ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩
      ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung1

theorem seg6_rows2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2739 rho ∧ Seg6.relationRow2740 rho ∧ Seg6.relationRow2741 rho ∧ Seg6.relationRow2742 rho ∧ Seg6.relationRow2743 rho ∧ Seg6.relationRow2744 rho ∧ Seg6.relationRow2745 rho ∧ Seg6.relationRow2746 rho ∧ Seg6.relationRow2747 rho ∧ Seg6.relationRow2748 rho ∧ Seg6.relationRow2749 rho ∧ Seg6.relationRow2750 rho ∧ Seg6.relationRow2751 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751⟩

theorem seg6_rung2 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1886 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩
        ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩
        ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩
        ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩ := by
  obtain ⟨r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751⟩ := seg6_rows2 rho h
  unfold Seg6.relationRow2739 at r2739
  unfold Seg6.relationRow2740 at r2740
  unfold Seg6.relationRow2741 at r2741
  unfold Seg6.relationRow2742 at r2742
  unfold Seg6.relationRow2743 at r2743
  unfold Seg6.relationRow2744 at r2744
  unfold Seg6.relationRow2745 at r2745
  unfold Seg6.relationRow2746 at r2746
  unfold Seg6.relationRow2747 at r2747
  unfold Seg6.relationRow2748 at r2748
  unfold Seg6.relationRow2749 at r2749
  unfold Seg6.relationRow2750 at r2750
  unfold Seg6.relationRow2751 at r2751
  have hrung2 (bit : Bool) (hbit : rho 1886 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩
        ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩
        ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩
        ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩ := by
    have hnextx : seg6AccX3 rho = seg6AccX2 rho + rho 3138 := by
      unfold seg6AccX3 seg6AccX2
      ring
    have hnexty : seg6AccY3 rho = seg6AccY2 rho + rho 3139 := by
      unfold seg6AccY3 seg6AccY2
      ring
    have ha0 : (rho 3130 + rho 3131) * (seg6AccX2 rho + seg6AccY2 rho) = rho 3132 := by
      unfold seg6AccX2 seg6AccY2
      linear_combination r2739
    have ha1 : rho 3131 * seg6AccX2 rho = rho 3133 := by
      unfold seg6AccX2
      linear_combination r2740
    have ha2 : rho 3130 * seg6AccY2 rho = rho 3134 := by
      unfold seg6AccY2
      linear_combination r2741
    have ha3 : 3021 * rho 3133 * rho 3134 = rho 3135 := by
      linear_combination r2742
    have ha4 : rho 3136 * (1 + rho 3135) = rho 3133 + rho 3134 := by
      linear_combination r2743
    have ha5 : rho 3137 * (1 - rho 3135) = rho 3132 - rho 3133 - rho 3134 := by
      linear_combination r2744
    have haddx :
        rho 3136 * (1 + 3021 * (rho 3131 * seg6AccX2 rho) * (rho 3130 * seg6AccY2 rho)) =
          rho 3131 * seg6AccX2 rho + rho 3130 * seg6AccY2 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3137 * (1 - 3021 * (rho 3131 * seg6AccX2 rho) * (rho 3130 * seg6AccY2 rho)) =
          (-1) * (rho 3131 * seg6AccX2 rho) - rho 3130 * seg6AccY2 rho +
            (seg6AccY2 rho - seg6AccX2 rho * (-1)) * (rho 3130 + rho 3131) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3137 * (1 - rho 3135) = rho 3132 - rho 3133 - rho 3134 := ha5
        _ = (-1) * rho 3133 - rho 3134 + (seg6AccY2 rho - seg6AccX2 rho * (-1)) * (rho 3130 + rho 3131) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX3 rho = seg6AccX2 rho - Bool.toZMod bit * (seg6AccX2 rho - rho 3136) := by
      have hd : rho 3138 = Bool.toZMod bit * (rho 3136 - seg6AccX2 rho) := by
        rw [← hbit]
        unfold seg6AccX2
        linear_combination -r2745
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY3 rho = seg6AccY2 rho - Bool.toZMod bit * (seg6AccY2 rho - rho 3137) := by
      have hd : rho 3139 = Bool.toZMod bit * (rho 3137 - seg6AccY2 rho) := by
        rw [← hbit]
        unfold seg6AccY2
        linear_combination -r2746
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3130 * rho 3131 = rho 3140 := by linear_combination r2747
    have hd1 : rho 3130 * rho 3130 = rho 3141 := by linear_combination r2748
    have hd2 : rho 3131 * rho 3131 = rho 3142 := by linear_combination r2749
    have hd3 : rho 3143 * (rho 3131 * rho 3131 + rho 3130 * rho 3130 * (-1)) = 2 * (rho 3130 * rho 3131) := by
      rw [hd0, hd1, hd2]
      linear_combination r2750
    have hd4 : rho 3144 * (2 - (rho 3131 * rho 3131 + rho 3130 * rho 3130 * (-1))) = rho 3131 * rho 3131 - rho 3130 * rho 3130 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2751
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX2 rho : Seg6.F), (seg6AccY2 rho : Seg6.F)⟩
      ⟨(rho 3130 : Seg6.F), (rho 3131 : Seg6.F)⟩
      ⟨(rho 3136 : Seg6.F), (rho 3137 : Seg6.F)⟩
      ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩
      ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung2

theorem seg6_rows3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2752 rho ∧ Seg6.relationRow2753 rho ∧ Seg6.relationRow2754 rho ∧ Seg6.relationRow2755 rho ∧ Seg6.relationRow2756 rho ∧ Seg6.relationRow2757 rho ∧ Seg6.relationRow2758 rho ∧ Seg6.relationRow2759 rho ∧ Seg6.relationRow2760 rho ∧ Seg6.relationRow2761 rho ∧ Seg6.relationRow2762 rho ∧ Seg6.relationRow2763 rho ∧ Seg6.relationRow2764 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764⟩

theorem seg6_rung3 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1887 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩
        ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩
        ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩
        ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩ := by
  obtain ⟨r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764⟩ := seg6_rows3 rho h
  unfold Seg6.relationRow2752 at r2752
  unfold Seg6.relationRow2753 at r2753
  unfold Seg6.relationRow2754 at r2754
  unfold Seg6.relationRow2755 at r2755
  unfold Seg6.relationRow2756 at r2756
  unfold Seg6.relationRow2757 at r2757
  unfold Seg6.relationRow2758 at r2758
  unfold Seg6.relationRow2759 at r2759
  unfold Seg6.relationRow2760 at r2760
  unfold Seg6.relationRow2761 at r2761
  unfold Seg6.relationRow2762 at r2762
  unfold Seg6.relationRow2763 at r2763
  unfold Seg6.relationRow2764 at r2764
  have hrung3 (bit : Bool) (hbit : rho 1887 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩
        ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩
        ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩
        ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩ := by
    have hnextx : seg6AccX4 rho = seg6AccX3 rho + rho 3151 := by
      unfold seg6AccX4 seg6AccX3
      ring
    have hnexty : seg6AccY4 rho = seg6AccY3 rho + rho 3152 := by
      unfold seg6AccY4 seg6AccY3
      ring
    have ha0 : (rho 3143 + rho 3144) * (seg6AccX3 rho + seg6AccY3 rho) = rho 3145 := by
      unfold seg6AccX3 seg6AccY3
      linear_combination r2752
    have ha1 : rho 3144 * seg6AccX3 rho = rho 3146 := by
      unfold seg6AccX3
      linear_combination r2753
    have ha2 : rho 3143 * seg6AccY3 rho = rho 3147 := by
      unfold seg6AccY3
      linear_combination r2754
    have ha3 : 3021 * rho 3146 * rho 3147 = rho 3148 := by
      linear_combination r2755
    have ha4 : rho 3149 * (1 + rho 3148) = rho 3146 + rho 3147 := by
      linear_combination r2756
    have ha5 : rho 3150 * (1 - rho 3148) = rho 3145 - rho 3146 - rho 3147 := by
      linear_combination r2757
    have haddx :
        rho 3149 * (1 + 3021 * (rho 3144 * seg6AccX3 rho) * (rho 3143 * seg6AccY3 rho)) =
          rho 3144 * seg6AccX3 rho + rho 3143 * seg6AccY3 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3150 * (1 - 3021 * (rho 3144 * seg6AccX3 rho) * (rho 3143 * seg6AccY3 rho)) =
          (-1) * (rho 3144 * seg6AccX3 rho) - rho 3143 * seg6AccY3 rho +
            (seg6AccY3 rho - seg6AccX3 rho * (-1)) * (rho 3143 + rho 3144) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3150 * (1 - rho 3148) = rho 3145 - rho 3146 - rho 3147 := ha5
        _ = (-1) * rho 3146 - rho 3147 + (seg6AccY3 rho - seg6AccX3 rho * (-1)) * (rho 3143 + rho 3144) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX4 rho = seg6AccX3 rho - Bool.toZMod bit * (seg6AccX3 rho - rho 3149) := by
      have hd : rho 3151 = Bool.toZMod bit * (rho 3149 - seg6AccX3 rho) := by
        rw [← hbit]
        unfold seg6AccX3
        linear_combination -r2758
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY4 rho = seg6AccY3 rho - Bool.toZMod bit * (seg6AccY3 rho - rho 3150) := by
      have hd : rho 3152 = Bool.toZMod bit * (rho 3150 - seg6AccY3 rho) := by
        rw [← hbit]
        unfold seg6AccY3
        linear_combination -r2759
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3143 * rho 3144 = rho 3153 := by linear_combination r2760
    have hd1 : rho 3143 * rho 3143 = rho 3154 := by linear_combination r2761
    have hd2 : rho 3144 * rho 3144 = rho 3155 := by linear_combination r2762
    have hd3 : rho 3156 * (rho 3144 * rho 3144 + rho 3143 * rho 3143 * (-1)) = 2 * (rho 3143 * rho 3144) := by
      rw [hd0, hd1, hd2]
      linear_combination r2763
    have hd4 : rho 3157 * (2 - (rho 3144 * rho 3144 + rho 3143 * rho 3143 * (-1))) = rho 3144 * rho 3144 - rho 3143 * rho 3143 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2764
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX3 rho : Seg6.F), (seg6AccY3 rho : Seg6.F)⟩
      ⟨(rho 3143 : Seg6.F), (rho 3144 : Seg6.F)⟩
      ⟨(rho 3149 : Seg6.F), (rho 3150 : Seg6.F)⟩
      ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩
      ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung3

theorem seg6_rows4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2765 rho ∧ Seg6.relationRow2766 rho ∧ Seg6.relationRow2767 rho ∧ Seg6.relationRow2768 rho ∧ Seg6.relationRow2769 rho ∧ Seg6.relationRow2770 rho ∧ Seg6.relationRow2771 rho ∧ Seg6.relationRow2772 rho ∧ Seg6.relationRow2773 rho ∧ Seg6.relationRow2774 rho ∧ Seg6.relationRow2775 rho ∧ Seg6.relationRow2776 rho ∧ Seg6.relationRow2777 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777⟩

theorem seg6_rung4 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1888 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩
        ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩
        ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩
        ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩ := by
  obtain ⟨r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777⟩ := seg6_rows4 rho h
  unfold Seg6.relationRow2765 at r2765
  unfold Seg6.relationRow2766 at r2766
  unfold Seg6.relationRow2767 at r2767
  unfold Seg6.relationRow2768 at r2768
  unfold Seg6.relationRow2769 at r2769
  unfold Seg6.relationRow2770 at r2770
  unfold Seg6.relationRow2771 at r2771
  unfold Seg6.relationRow2772 at r2772
  unfold Seg6.relationRow2773 at r2773
  unfold Seg6.relationRow2774 at r2774
  unfold Seg6.relationRow2775 at r2775
  unfold Seg6.relationRow2776 at r2776
  unfold Seg6.relationRow2777 at r2777
  have hrung4 (bit : Bool) (hbit : rho 1888 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩
        ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩
        ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩
        ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩ := by
    have hnextx : seg6AccX5 rho = seg6AccX4 rho + rho 3164 := by
      unfold seg6AccX5 seg6AccX4
      ring
    have hnexty : seg6AccY5 rho = seg6AccY4 rho + rho 3165 := by
      unfold seg6AccY5 seg6AccY4
      ring
    have ha0 : (rho 3156 + rho 3157) * (seg6AccX4 rho + seg6AccY4 rho) = rho 3158 := by
      unfold seg6AccX4 seg6AccY4
      linear_combination r2765
    have ha1 : rho 3157 * seg6AccX4 rho = rho 3159 := by
      unfold seg6AccX4
      linear_combination r2766
    have ha2 : rho 3156 * seg6AccY4 rho = rho 3160 := by
      unfold seg6AccY4
      linear_combination r2767
    have ha3 : 3021 * rho 3159 * rho 3160 = rho 3161 := by
      linear_combination r2768
    have ha4 : rho 3162 * (1 + rho 3161) = rho 3159 + rho 3160 := by
      linear_combination r2769
    have ha5 : rho 3163 * (1 - rho 3161) = rho 3158 - rho 3159 - rho 3160 := by
      linear_combination r2770
    have haddx :
        rho 3162 * (1 + 3021 * (rho 3157 * seg6AccX4 rho) * (rho 3156 * seg6AccY4 rho)) =
          rho 3157 * seg6AccX4 rho + rho 3156 * seg6AccY4 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3163 * (1 - 3021 * (rho 3157 * seg6AccX4 rho) * (rho 3156 * seg6AccY4 rho)) =
          (-1) * (rho 3157 * seg6AccX4 rho) - rho 3156 * seg6AccY4 rho +
            (seg6AccY4 rho - seg6AccX4 rho * (-1)) * (rho 3156 + rho 3157) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3163 * (1 - rho 3161) = rho 3158 - rho 3159 - rho 3160 := ha5
        _ = (-1) * rho 3159 - rho 3160 + (seg6AccY4 rho - seg6AccX4 rho * (-1)) * (rho 3156 + rho 3157) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX5 rho = seg6AccX4 rho - Bool.toZMod bit * (seg6AccX4 rho - rho 3162) := by
      have hd : rho 3164 = Bool.toZMod bit * (rho 3162 - seg6AccX4 rho) := by
        rw [← hbit]
        unfold seg6AccX4
        linear_combination -r2771
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY5 rho = seg6AccY4 rho - Bool.toZMod bit * (seg6AccY4 rho - rho 3163) := by
      have hd : rho 3165 = Bool.toZMod bit * (rho 3163 - seg6AccY4 rho) := by
        rw [← hbit]
        unfold seg6AccY4
        linear_combination -r2772
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3156 * rho 3157 = rho 3166 := by linear_combination r2773
    have hd1 : rho 3156 * rho 3156 = rho 3167 := by linear_combination r2774
    have hd2 : rho 3157 * rho 3157 = rho 3168 := by linear_combination r2775
    have hd3 : rho 3169 * (rho 3157 * rho 3157 + rho 3156 * rho 3156 * (-1)) = 2 * (rho 3156 * rho 3157) := by
      rw [hd0, hd1, hd2]
      linear_combination r2776
    have hd4 : rho 3170 * (2 - (rho 3157 * rho 3157 + rho 3156 * rho 3156 * (-1))) = rho 3157 * rho 3157 - rho 3156 * rho 3156 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2777
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX4 rho : Seg6.F), (seg6AccY4 rho : Seg6.F)⟩
      ⟨(rho 3156 : Seg6.F), (rho 3157 : Seg6.F)⟩
      ⟨(rho 3162 : Seg6.F), (rho 3163 : Seg6.F)⟩
      ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩
      ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung4

theorem seg6_rows5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2778 rho ∧ Seg6.relationRow2779 rho ∧ Seg6.relationRow2780 rho ∧ Seg6.relationRow2781 rho ∧ Seg6.relationRow2782 rho ∧ Seg6.relationRow2783 rho ∧ Seg6.relationRow2784 rho ∧ Seg6.relationRow2785 rho ∧ Seg6.relationRow2786 rho ∧ Seg6.relationRow2787 rho ∧ Seg6.relationRow2788 rho ∧ Seg6.relationRow2789 rho ∧ Seg6.relationRow2790 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790⟩

theorem seg6_rung5 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1889 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩
        ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩
        ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩
        ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩ := by
  obtain ⟨r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790⟩ := seg6_rows5 rho h
  unfold Seg6.relationRow2778 at r2778
  unfold Seg6.relationRow2779 at r2779
  unfold Seg6.relationRow2780 at r2780
  unfold Seg6.relationRow2781 at r2781
  unfold Seg6.relationRow2782 at r2782
  unfold Seg6.relationRow2783 at r2783
  unfold Seg6.relationRow2784 at r2784
  unfold Seg6.relationRow2785 at r2785
  unfold Seg6.relationRow2786 at r2786
  unfold Seg6.relationRow2787 at r2787
  unfold Seg6.relationRow2788 at r2788
  unfold Seg6.relationRow2789 at r2789
  unfold Seg6.relationRow2790 at r2790
  have hrung5 (bit : Bool) (hbit : rho 1889 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩
        ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩
        ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩
        ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩ := by
    have hnextx : seg6AccX6 rho = seg6AccX5 rho + rho 3177 := by
      unfold seg6AccX6 seg6AccX5
      ring
    have hnexty : seg6AccY6 rho = seg6AccY5 rho + rho 3178 := by
      unfold seg6AccY6 seg6AccY5
      ring
    have ha0 : (rho 3169 + rho 3170) * (seg6AccX5 rho + seg6AccY5 rho) = rho 3171 := by
      unfold seg6AccX5 seg6AccY5
      linear_combination r2778
    have ha1 : rho 3170 * seg6AccX5 rho = rho 3172 := by
      unfold seg6AccX5
      linear_combination r2779
    have ha2 : rho 3169 * seg6AccY5 rho = rho 3173 := by
      unfold seg6AccY5
      linear_combination r2780
    have ha3 : 3021 * rho 3172 * rho 3173 = rho 3174 := by
      linear_combination r2781
    have ha4 : rho 3175 * (1 + rho 3174) = rho 3172 + rho 3173 := by
      linear_combination r2782
    have ha5 : rho 3176 * (1 - rho 3174) = rho 3171 - rho 3172 - rho 3173 := by
      linear_combination r2783
    have haddx :
        rho 3175 * (1 + 3021 * (rho 3170 * seg6AccX5 rho) * (rho 3169 * seg6AccY5 rho)) =
          rho 3170 * seg6AccX5 rho + rho 3169 * seg6AccY5 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3176 * (1 - 3021 * (rho 3170 * seg6AccX5 rho) * (rho 3169 * seg6AccY5 rho)) =
          (-1) * (rho 3170 * seg6AccX5 rho) - rho 3169 * seg6AccY5 rho +
            (seg6AccY5 rho - seg6AccX5 rho * (-1)) * (rho 3169 + rho 3170) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3176 * (1 - rho 3174) = rho 3171 - rho 3172 - rho 3173 := ha5
        _ = (-1) * rho 3172 - rho 3173 + (seg6AccY5 rho - seg6AccX5 rho * (-1)) * (rho 3169 + rho 3170) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX6 rho = seg6AccX5 rho - Bool.toZMod bit * (seg6AccX5 rho - rho 3175) := by
      have hd : rho 3177 = Bool.toZMod bit * (rho 3175 - seg6AccX5 rho) := by
        rw [← hbit]
        unfold seg6AccX5
        linear_combination -r2784
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY6 rho = seg6AccY5 rho - Bool.toZMod bit * (seg6AccY5 rho - rho 3176) := by
      have hd : rho 3178 = Bool.toZMod bit * (rho 3176 - seg6AccY5 rho) := by
        rw [← hbit]
        unfold seg6AccY5
        linear_combination -r2785
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3169 * rho 3170 = rho 3179 := by linear_combination r2786
    have hd1 : rho 3169 * rho 3169 = rho 3180 := by linear_combination r2787
    have hd2 : rho 3170 * rho 3170 = rho 3181 := by linear_combination r2788
    have hd3 : rho 3182 * (rho 3170 * rho 3170 + rho 3169 * rho 3169 * (-1)) = 2 * (rho 3169 * rho 3170) := by
      rw [hd0, hd1, hd2]
      linear_combination r2789
    have hd4 : rho 3183 * (2 - (rho 3170 * rho 3170 + rho 3169 * rho 3169 * (-1))) = rho 3170 * rho 3170 - rho 3169 * rho 3169 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2790
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX5 rho : Seg6.F), (seg6AccY5 rho : Seg6.F)⟩
      ⟨(rho 3169 : Seg6.F), (rho 3170 : Seg6.F)⟩
      ⟨(rho 3175 : Seg6.F), (rho 3176 : Seg6.F)⟩
      ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩
      ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung5

theorem seg6_rows6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2791 rho ∧ Seg6.relationRow2792 rho ∧ Seg6.relationRow2793 rho ∧ Seg6.relationRow2794 rho ∧ Seg6.relationRow2795 rho ∧ Seg6.relationRow2796 rho ∧ Seg6.relationRow2797 rho ∧ Seg6.relationRow2798 rho ∧ Seg6.relationRow2799 rho ∧ Seg6.relationRow2800 rho ∧ Seg6.relationRow2801 rho ∧ Seg6.relationRow2802 rho ∧ Seg6.relationRow2803 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Seg6.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, r2803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802, r2803⟩

theorem seg6_rung6 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1890 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩
        ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩
        ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩
        ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩ := by
  obtain ⟨r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799, r2800, r2801, r2802, r2803⟩ := seg6_rows6 rho h
  unfold Seg6.relationRow2791 at r2791
  unfold Seg6.relationRow2792 at r2792
  unfold Seg6.relationRow2793 at r2793
  unfold Seg6.relationRow2794 at r2794
  unfold Seg6.relationRow2795 at r2795
  unfold Seg6.relationRow2796 at r2796
  unfold Seg6.relationRow2797 at r2797
  unfold Seg6.relationRow2798 at r2798
  unfold Seg6.relationRow2799 at r2799
  unfold Seg6.relationRow2800 at r2800
  unfold Seg6.relationRow2801 at r2801
  unfold Seg6.relationRow2802 at r2802
  unfold Seg6.relationRow2803 at r2803
  have hrung6 (bit : Bool) (hbit : rho 1890 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩
        ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩
        ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩
        ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩ := by
    have hnextx : seg6AccX7 rho = seg6AccX6 rho + rho 3190 := by
      unfold seg6AccX7 seg6AccX6
      ring
    have hnexty : seg6AccY7 rho = seg6AccY6 rho + rho 3191 := by
      unfold seg6AccY7 seg6AccY6
      ring
    have ha0 : (rho 3182 + rho 3183) * (seg6AccX6 rho + seg6AccY6 rho) = rho 3184 := by
      unfold seg6AccX6 seg6AccY6
      linear_combination r2791
    have ha1 : rho 3183 * seg6AccX6 rho = rho 3185 := by
      unfold seg6AccX6
      linear_combination r2792
    have ha2 : rho 3182 * seg6AccY6 rho = rho 3186 := by
      unfold seg6AccY6
      linear_combination r2793
    have ha3 : 3021 * rho 3185 * rho 3186 = rho 3187 := by
      linear_combination r2794
    have ha4 : rho 3188 * (1 + rho 3187) = rho 3185 + rho 3186 := by
      linear_combination r2795
    have ha5 : rho 3189 * (1 - rho 3187) = rho 3184 - rho 3185 - rho 3186 := by
      linear_combination r2796
    have haddx :
        rho 3188 * (1 + 3021 * (rho 3183 * seg6AccX6 rho) * (rho 3182 * seg6AccY6 rho)) =
          rho 3183 * seg6AccX6 rho + rho 3182 * seg6AccY6 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3189 * (1 - 3021 * (rho 3183 * seg6AccX6 rho) * (rho 3182 * seg6AccY6 rho)) =
          (-1) * (rho 3183 * seg6AccX6 rho) - rho 3182 * seg6AccY6 rho +
            (seg6AccY6 rho - seg6AccX6 rho * (-1)) * (rho 3182 + rho 3183) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3189 * (1 - rho 3187) = rho 3184 - rho 3185 - rho 3186 := ha5
        _ = (-1) * rho 3185 - rho 3186 + (seg6AccY6 rho - seg6AccX6 rho * (-1)) * (rho 3182 + rho 3183) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX7 rho = seg6AccX6 rho - Bool.toZMod bit * (seg6AccX6 rho - rho 3188) := by
      have hd : rho 3190 = Bool.toZMod bit * (rho 3188 - seg6AccX6 rho) := by
        rw [← hbit]
        unfold seg6AccX6
        linear_combination -r2797
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY7 rho = seg6AccY6 rho - Bool.toZMod bit * (seg6AccY6 rho - rho 3189) := by
      have hd : rho 3191 = Bool.toZMod bit * (rho 3189 - seg6AccY6 rho) := by
        rw [← hbit]
        unfold seg6AccY6
        linear_combination -r2798
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3182 * rho 3183 = rho 3192 := by linear_combination r2799
    have hd1 : rho 3182 * rho 3182 = rho 3193 := by linear_combination r2800
    have hd2 : rho 3183 * rho 3183 = rho 3194 := by linear_combination r2801
    have hd3 : rho 3195 * (rho 3183 * rho 3183 + rho 3182 * rho 3182 * (-1)) = 2 * (rho 3182 * rho 3183) := by
      rw [hd0, hd1, hd2]
      linear_combination r2802
    have hd4 : rho 3196 * (2 - (rho 3183 * rho 3183 + rho 3182 * rho 3182 * (-1))) = rho 3183 * rho 3183 - rho 3182 * rho 3182 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2803
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX6 rho : Seg6.F), (seg6AccY6 rho : Seg6.F)⟩
      ⟨(rho 3182 : Seg6.F), (rho 3183 : Seg6.F)⟩
      ⟨(rho 3188 : Seg6.F), (rho 3189 : Seg6.F)⟩
      ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩
      ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung6

theorem seg6_rows7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2804 rho ∧ Seg6.relationRow2805 rho ∧ Seg6.relationRow2806 rho ∧ Seg6.relationRow2807 rho ∧ Seg6.relationRow2808 rho ∧ Seg6.relationRow2809 rho ∧ Seg6.relationRow2810 rho ∧ Seg6.relationRow2811 rho ∧ Seg6.relationRow2812 rho ∧ Seg6.relationRow2813 rho ∧ Seg6.relationRow2814 rho ∧ Seg6.relationRow2815 rho ∧ Seg6.relationRow2816 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816⟩

theorem seg6_rung7 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1891 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩
        ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩
        ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩
        ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩ := by
  obtain ⟨r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816⟩ := seg6_rows7 rho h
  unfold Seg6.relationRow2804 at r2804
  unfold Seg6.relationRow2805 at r2805
  unfold Seg6.relationRow2806 at r2806
  unfold Seg6.relationRow2807 at r2807
  unfold Seg6.relationRow2808 at r2808
  unfold Seg6.relationRow2809 at r2809
  unfold Seg6.relationRow2810 at r2810
  unfold Seg6.relationRow2811 at r2811
  unfold Seg6.relationRow2812 at r2812
  unfold Seg6.relationRow2813 at r2813
  unfold Seg6.relationRow2814 at r2814
  unfold Seg6.relationRow2815 at r2815
  unfold Seg6.relationRow2816 at r2816
  have hrung7 (bit : Bool) (hbit : rho 1891 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩
        ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩
        ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩
        ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩ := by
    have hnextx : seg6AccX8 rho = seg6AccX7 rho + rho 3203 := by
      unfold seg6AccX8 seg6AccX7
      ring
    have hnexty : seg6AccY8 rho = seg6AccY7 rho + rho 3204 := by
      unfold seg6AccY8 seg6AccY7
      ring
    have ha0 : (rho 3195 + rho 3196) * (seg6AccX7 rho + seg6AccY7 rho) = rho 3197 := by
      unfold seg6AccX7 seg6AccY7
      linear_combination r2804
    have ha1 : rho 3196 * seg6AccX7 rho = rho 3198 := by
      unfold seg6AccX7
      linear_combination r2805
    have ha2 : rho 3195 * seg6AccY7 rho = rho 3199 := by
      unfold seg6AccY7
      linear_combination r2806
    have ha3 : 3021 * rho 3198 * rho 3199 = rho 3200 := by
      linear_combination r2807
    have ha4 : rho 3201 * (1 + rho 3200) = rho 3198 + rho 3199 := by
      linear_combination r2808
    have ha5 : rho 3202 * (1 - rho 3200) = rho 3197 - rho 3198 - rho 3199 := by
      linear_combination r2809
    have haddx :
        rho 3201 * (1 + 3021 * (rho 3196 * seg6AccX7 rho) * (rho 3195 * seg6AccY7 rho)) =
          rho 3196 * seg6AccX7 rho + rho 3195 * seg6AccY7 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3202 * (1 - 3021 * (rho 3196 * seg6AccX7 rho) * (rho 3195 * seg6AccY7 rho)) =
          (-1) * (rho 3196 * seg6AccX7 rho) - rho 3195 * seg6AccY7 rho +
            (seg6AccY7 rho - seg6AccX7 rho * (-1)) * (rho 3195 + rho 3196) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3202 * (1 - rho 3200) = rho 3197 - rho 3198 - rho 3199 := ha5
        _ = (-1) * rho 3198 - rho 3199 + (seg6AccY7 rho - seg6AccX7 rho * (-1)) * (rho 3195 + rho 3196) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX8 rho = seg6AccX7 rho - Bool.toZMod bit * (seg6AccX7 rho - rho 3201) := by
      have hd : rho 3203 = Bool.toZMod bit * (rho 3201 - seg6AccX7 rho) := by
        rw [← hbit]
        unfold seg6AccX7
        linear_combination -r2810
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY8 rho = seg6AccY7 rho - Bool.toZMod bit * (seg6AccY7 rho - rho 3202) := by
      have hd : rho 3204 = Bool.toZMod bit * (rho 3202 - seg6AccY7 rho) := by
        rw [← hbit]
        unfold seg6AccY7
        linear_combination -r2811
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3195 * rho 3196 = rho 3205 := by linear_combination r2812
    have hd1 : rho 3195 * rho 3195 = rho 3206 := by linear_combination r2813
    have hd2 : rho 3196 * rho 3196 = rho 3207 := by linear_combination r2814
    have hd3 : rho 3208 * (rho 3196 * rho 3196 + rho 3195 * rho 3195 * (-1)) = 2 * (rho 3195 * rho 3196) := by
      rw [hd0, hd1, hd2]
      linear_combination r2815
    have hd4 : rho 3209 * (2 - (rho 3196 * rho 3196 + rho 3195 * rho 3195 * (-1))) = rho 3196 * rho 3196 - rho 3195 * rho 3195 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2816
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX7 rho : Seg6.F), (seg6AccY7 rho : Seg6.F)⟩
      ⟨(rho 3195 : Seg6.F), (rho 3196 : Seg6.F)⟩
      ⟨(rho 3201 : Seg6.F), (rho 3202 : Seg6.F)⟩
      ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩
      ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung7

theorem seg6_rows8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2817 rho ∧ Seg6.relationRow2818 rho ∧ Seg6.relationRow2819 rho ∧ Seg6.relationRow2820 rho ∧ Seg6.relationRow2821 rho ∧ Seg6.relationRow2822 rho ∧ Seg6.relationRow2823 rho ∧ Seg6.relationRow2824 rho ∧ Seg6.relationRow2825 rho ∧ Seg6.relationRow2826 rho ∧ Seg6.relationRow2827 rho ∧ Seg6.relationRow2828 rho ∧ Seg6.relationRow2829 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829⟩

theorem seg6_rung8 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1892 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩
        ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩
        ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩
        ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩ := by
  obtain ⟨r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829⟩ := seg6_rows8 rho h
  unfold Seg6.relationRow2817 at r2817
  unfold Seg6.relationRow2818 at r2818
  unfold Seg6.relationRow2819 at r2819
  unfold Seg6.relationRow2820 at r2820
  unfold Seg6.relationRow2821 at r2821
  unfold Seg6.relationRow2822 at r2822
  unfold Seg6.relationRow2823 at r2823
  unfold Seg6.relationRow2824 at r2824
  unfold Seg6.relationRow2825 at r2825
  unfold Seg6.relationRow2826 at r2826
  unfold Seg6.relationRow2827 at r2827
  unfold Seg6.relationRow2828 at r2828
  unfold Seg6.relationRow2829 at r2829
  have hrung8 (bit : Bool) (hbit : rho 1892 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩
        ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩
        ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩
        ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩ := by
    have hnextx : seg6AccX9 rho = seg6AccX8 rho + rho 3216 := by
      unfold seg6AccX9 seg6AccX8
      ring
    have hnexty : seg6AccY9 rho = seg6AccY8 rho + rho 3217 := by
      unfold seg6AccY9 seg6AccY8
      ring
    have ha0 : (rho 3208 + rho 3209) * (seg6AccX8 rho + seg6AccY8 rho) = rho 3210 := by
      unfold seg6AccX8 seg6AccY8
      linear_combination r2817
    have ha1 : rho 3209 * seg6AccX8 rho = rho 3211 := by
      unfold seg6AccX8
      linear_combination r2818
    have ha2 : rho 3208 * seg6AccY8 rho = rho 3212 := by
      unfold seg6AccY8
      linear_combination r2819
    have ha3 : 3021 * rho 3211 * rho 3212 = rho 3213 := by
      linear_combination r2820
    have ha4 : rho 3214 * (1 + rho 3213) = rho 3211 + rho 3212 := by
      linear_combination r2821
    have ha5 : rho 3215 * (1 - rho 3213) = rho 3210 - rho 3211 - rho 3212 := by
      linear_combination r2822
    have haddx :
        rho 3214 * (1 + 3021 * (rho 3209 * seg6AccX8 rho) * (rho 3208 * seg6AccY8 rho)) =
          rho 3209 * seg6AccX8 rho + rho 3208 * seg6AccY8 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3215 * (1 - 3021 * (rho 3209 * seg6AccX8 rho) * (rho 3208 * seg6AccY8 rho)) =
          (-1) * (rho 3209 * seg6AccX8 rho) - rho 3208 * seg6AccY8 rho +
            (seg6AccY8 rho - seg6AccX8 rho * (-1)) * (rho 3208 + rho 3209) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3215 * (1 - rho 3213) = rho 3210 - rho 3211 - rho 3212 := ha5
        _ = (-1) * rho 3211 - rho 3212 + (seg6AccY8 rho - seg6AccX8 rho * (-1)) * (rho 3208 + rho 3209) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX9 rho = seg6AccX8 rho - Bool.toZMod bit * (seg6AccX8 rho - rho 3214) := by
      have hd : rho 3216 = Bool.toZMod bit * (rho 3214 - seg6AccX8 rho) := by
        rw [← hbit]
        unfold seg6AccX8
        linear_combination -r2823
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY9 rho = seg6AccY8 rho - Bool.toZMod bit * (seg6AccY8 rho - rho 3215) := by
      have hd : rho 3217 = Bool.toZMod bit * (rho 3215 - seg6AccY8 rho) := by
        rw [← hbit]
        unfold seg6AccY8
        linear_combination -r2824
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3208 * rho 3209 = rho 3218 := by linear_combination r2825
    have hd1 : rho 3208 * rho 3208 = rho 3219 := by linear_combination r2826
    have hd2 : rho 3209 * rho 3209 = rho 3220 := by linear_combination r2827
    have hd3 : rho 3221 * (rho 3209 * rho 3209 + rho 3208 * rho 3208 * (-1)) = 2 * (rho 3208 * rho 3209) := by
      rw [hd0, hd1, hd2]
      linear_combination r2828
    have hd4 : rho 3222 * (2 - (rho 3209 * rho 3209 + rho 3208 * rho 3208 * (-1))) = rho 3209 * rho 3209 - rho 3208 * rho 3208 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2829
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX8 rho : Seg6.F), (seg6AccY8 rho : Seg6.F)⟩
      ⟨(rho 3208 : Seg6.F), (rho 3209 : Seg6.F)⟩
      ⟨(rho 3214 : Seg6.F), (rho 3215 : Seg6.F)⟩
      ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩
      ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung8

theorem seg6_rows9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2830 rho ∧ Seg6.relationRow2831 rho ∧ Seg6.relationRow2832 rho ∧ Seg6.relationRow2833 rho ∧ Seg6.relationRow2834 rho ∧ Seg6.relationRow2835 rho ∧ Seg6.relationRow2836 rho ∧ Seg6.relationRow2837 rho ∧ Seg6.relationRow2838 rho ∧ Seg6.relationRow2839 rho ∧ Seg6.relationRow2840 rho ∧ Seg6.relationRow2841 rho ∧ Seg6.relationRow2842 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842⟩

theorem seg6_rung9 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1893 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩
        ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩
        ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩
        ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩ := by
  obtain ⟨r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842⟩ := seg6_rows9 rho h
  unfold Seg6.relationRow2830 at r2830
  unfold Seg6.relationRow2831 at r2831
  unfold Seg6.relationRow2832 at r2832
  unfold Seg6.relationRow2833 at r2833
  unfold Seg6.relationRow2834 at r2834
  unfold Seg6.relationRow2835 at r2835
  unfold Seg6.relationRow2836 at r2836
  unfold Seg6.relationRow2837 at r2837
  unfold Seg6.relationRow2838 at r2838
  unfold Seg6.relationRow2839 at r2839
  unfold Seg6.relationRow2840 at r2840
  unfold Seg6.relationRow2841 at r2841
  unfold Seg6.relationRow2842 at r2842
  have hrung9 (bit : Bool) (hbit : rho 1893 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩
        ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩
        ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩
        ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩ := by
    have hnextx : seg6AccX10 rho = seg6AccX9 rho + rho 3229 := by
      unfold seg6AccX10 seg6AccX9
      ring
    have hnexty : seg6AccY10 rho = seg6AccY9 rho + rho 3230 := by
      unfold seg6AccY10 seg6AccY9
      ring
    have ha0 : (rho 3221 + rho 3222) * (seg6AccX9 rho + seg6AccY9 rho) = rho 3223 := by
      unfold seg6AccX9 seg6AccY9
      linear_combination r2830
    have ha1 : rho 3222 * seg6AccX9 rho = rho 3224 := by
      unfold seg6AccX9
      linear_combination r2831
    have ha2 : rho 3221 * seg6AccY9 rho = rho 3225 := by
      unfold seg6AccY9
      linear_combination r2832
    have ha3 : 3021 * rho 3224 * rho 3225 = rho 3226 := by
      linear_combination r2833
    have ha4 : rho 3227 * (1 + rho 3226) = rho 3224 + rho 3225 := by
      linear_combination r2834
    have ha5 : rho 3228 * (1 - rho 3226) = rho 3223 - rho 3224 - rho 3225 := by
      linear_combination r2835
    have haddx :
        rho 3227 * (1 + 3021 * (rho 3222 * seg6AccX9 rho) * (rho 3221 * seg6AccY9 rho)) =
          rho 3222 * seg6AccX9 rho + rho 3221 * seg6AccY9 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3228 * (1 - 3021 * (rho 3222 * seg6AccX9 rho) * (rho 3221 * seg6AccY9 rho)) =
          (-1) * (rho 3222 * seg6AccX9 rho) - rho 3221 * seg6AccY9 rho +
            (seg6AccY9 rho - seg6AccX9 rho * (-1)) * (rho 3221 + rho 3222) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3228 * (1 - rho 3226) = rho 3223 - rho 3224 - rho 3225 := ha5
        _ = (-1) * rho 3224 - rho 3225 + (seg6AccY9 rho - seg6AccX9 rho * (-1)) * (rho 3221 + rho 3222) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX10 rho = seg6AccX9 rho - Bool.toZMod bit * (seg6AccX9 rho - rho 3227) := by
      have hd : rho 3229 = Bool.toZMod bit * (rho 3227 - seg6AccX9 rho) := by
        rw [← hbit]
        unfold seg6AccX9
        linear_combination -r2836
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY10 rho = seg6AccY9 rho - Bool.toZMod bit * (seg6AccY9 rho - rho 3228) := by
      have hd : rho 3230 = Bool.toZMod bit * (rho 3228 - seg6AccY9 rho) := by
        rw [← hbit]
        unfold seg6AccY9
        linear_combination -r2837
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3221 * rho 3222 = rho 3231 := by linear_combination r2838
    have hd1 : rho 3221 * rho 3221 = rho 3232 := by linear_combination r2839
    have hd2 : rho 3222 * rho 3222 = rho 3233 := by linear_combination r2840
    have hd3 : rho 3234 * (rho 3222 * rho 3222 + rho 3221 * rho 3221 * (-1)) = 2 * (rho 3221 * rho 3222) := by
      rw [hd0, hd1, hd2]
      linear_combination r2841
    have hd4 : rho 3235 * (2 - (rho 3222 * rho 3222 + rho 3221 * rho 3221 * (-1))) = rho 3222 * rho 3222 - rho 3221 * rho 3221 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2842
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX9 rho : Seg6.F), (seg6AccY9 rho : Seg6.F)⟩
      ⟨(rho 3221 : Seg6.F), (rho 3222 : Seg6.F)⟩
      ⟨(rho 3227 : Seg6.F), (rho 3228 : Seg6.F)⟩
      ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩
      ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung9

theorem seg6_rows10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2843 rho ∧ Seg6.relationRow2844 rho ∧ Seg6.relationRow2845 rho ∧ Seg6.relationRow2846 rho ∧ Seg6.relationRow2847 rho ∧ Seg6.relationRow2848 rho ∧ Seg6.relationRow2849 rho ∧ Seg6.relationRow2850 rho ∧ Seg6.relationRow2851 rho ∧ Seg6.relationRow2852 rho ∧ Seg6.relationRow2853 rho ∧ Seg6.relationRow2854 rho ∧ Seg6.relationRow2855 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855⟩

theorem seg6_rung10 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1894 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩
        ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩
        ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩
        ⟨(rho 3247 : Seg6.F), (rho 3248 : Seg6.F)⟩ := by
  obtain ⟨r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855⟩ := seg6_rows10 rho h
  unfold Seg6.relationRow2843 at r2843
  unfold Seg6.relationRow2844 at r2844
  unfold Seg6.relationRow2845 at r2845
  unfold Seg6.relationRow2846 at r2846
  unfold Seg6.relationRow2847 at r2847
  unfold Seg6.relationRow2848 at r2848
  unfold Seg6.relationRow2849 at r2849
  unfold Seg6.relationRow2850 at r2850
  unfold Seg6.relationRow2851 at r2851
  unfold Seg6.relationRow2852 at r2852
  unfold Seg6.relationRow2853 at r2853
  unfold Seg6.relationRow2854 at r2854
  unfold Seg6.relationRow2855 at r2855
  have hrung10 (bit : Bool) (hbit : rho 1894 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩
        ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩
        ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩
        ⟨(rho 3247 : Seg6.F), (rho 3248 : Seg6.F)⟩ := by
    have hnextx : seg6AccX11 rho = seg6AccX10 rho + rho 3242 := by
      unfold seg6AccX11 seg6AccX10
      ring
    have hnexty : seg6AccY11 rho = seg6AccY10 rho + rho 3243 := by
      unfold seg6AccY11 seg6AccY10
      ring
    have ha0 : (rho 3234 + rho 3235) * (seg6AccX10 rho + seg6AccY10 rho) = rho 3236 := by
      unfold seg6AccX10 seg6AccY10
      linear_combination r2843
    have ha1 : rho 3235 * seg6AccX10 rho = rho 3237 := by
      unfold seg6AccX10
      linear_combination r2844
    have ha2 : rho 3234 * seg6AccY10 rho = rho 3238 := by
      unfold seg6AccY10
      linear_combination r2845
    have ha3 : 3021 * rho 3237 * rho 3238 = rho 3239 := by
      linear_combination r2846
    have ha4 : rho 3240 * (1 + rho 3239) = rho 3237 + rho 3238 := by
      linear_combination r2847
    have ha5 : rho 3241 * (1 - rho 3239) = rho 3236 - rho 3237 - rho 3238 := by
      linear_combination r2848
    have haddx :
        rho 3240 * (1 + 3021 * (rho 3235 * seg6AccX10 rho) * (rho 3234 * seg6AccY10 rho)) =
          rho 3235 * seg6AccX10 rho + rho 3234 * seg6AccY10 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3241 * (1 - 3021 * (rho 3235 * seg6AccX10 rho) * (rho 3234 * seg6AccY10 rho)) =
          (-1) * (rho 3235 * seg6AccX10 rho) - rho 3234 * seg6AccY10 rho +
            (seg6AccY10 rho - seg6AccX10 rho * (-1)) * (rho 3234 + rho 3235) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3241 * (1 - rho 3239) = rho 3236 - rho 3237 - rho 3238 := ha5
        _ = (-1) * rho 3237 - rho 3238 + (seg6AccY10 rho - seg6AccX10 rho * (-1)) * (rho 3234 + rho 3235) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX11 rho = seg6AccX10 rho - Bool.toZMod bit * (seg6AccX10 rho - rho 3240) := by
      have hd : rho 3242 = Bool.toZMod bit * (rho 3240 - seg6AccX10 rho) := by
        rw [← hbit]
        unfold seg6AccX10
        linear_combination -r2849
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY11 rho = seg6AccY10 rho - Bool.toZMod bit * (seg6AccY10 rho - rho 3241) := by
      have hd : rho 3243 = Bool.toZMod bit * (rho 3241 - seg6AccY10 rho) := by
        rw [← hbit]
        unfold seg6AccY10
        linear_combination -r2850
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3234 * rho 3235 = rho 3244 := by linear_combination r2851
    have hd1 : rho 3234 * rho 3234 = rho 3245 := by linear_combination r2852
    have hd2 : rho 3235 * rho 3235 = rho 3246 := by linear_combination r2853
    have hd3 : rho 3247 * (rho 3235 * rho 3235 + rho 3234 * rho 3234 * (-1)) = 2 * (rho 3234 * rho 3235) := by
      rw [hd0, hd1, hd2]
      linear_combination r2854
    have hd4 : rho 3248 * (2 - (rho 3235 * rho 3235 + rho 3234 * rho 3234 * (-1))) = rho 3235 * rho 3235 - rho 3234 * rho 3234 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2855
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX10 rho : Seg6.F), (seg6AccY10 rho : Seg6.F)⟩
      ⟨(rho 3234 : Seg6.F), (rho 3235 : Seg6.F)⟩
      ⟨(rho 3240 : Seg6.F), (rho 3241 : Seg6.F)⟩
      ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩
      ⟨(rho 3247 : Seg6.F), (rho 3248 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung10

theorem seg6_hstep_c0 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg6_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg6_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg6_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg6_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg6_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg6_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg6_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg6_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg6_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg6_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
