import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3108 rho ∧ Seg5.relationRow3109 rho ∧ Seg5.relationRow3110 rho ∧ Seg5.relationRow3111 rho ∧ Seg5.relationRow3112 rho ∧ Seg5.relationRow3113 rho ∧ Seg5.relationRow3114 rho ∧ Seg5.relationRow3115 rho ∧ Seg5.relationRow3116 rho ∧ Seg5.relationRow3117 rho ∧ Seg5.relationRow3118 rho ∧ Seg5.relationRow3119 rho ∧ Seg5.relationRow3120 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p38, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨r3120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩

theorem seg5_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2426 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩
        ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩
        ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩
        ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩ := by
  obtain ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩ := seg5_rows11 rho h
  unfold Seg5.relationRow3108 at r3108
  unfold Seg5.relationRow3109 at r3109
  unfold Seg5.relationRow3110 at r3110
  unfold Seg5.relationRow3111 at r3111
  unfold Seg5.relationRow3112 at r3112
  unfold Seg5.relationRow3113 at r3113
  unfold Seg5.relationRow3114 at r3114
  unfold Seg5.relationRow3115 at r3115
  unfold Seg5.relationRow3116 at r3116
  unfold Seg5.relationRow3117 at r3117
  unfold Seg5.relationRow3118 at r3118
  unfold Seg5.relationRow3119 at r3119
  unfold Seg5.relationRow3120 at r3120
  have hrung11 (bit : Bool) (hbit : rho 2426 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩
        ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩
        ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩
        ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩ := by
    have hnextx : seg5AccX12 rho = seg5AccX11 rho + rho 2809 := by
      unfold seg5AccX12 seg5AccX11
      ring
    have hnexty : seg5AccY12 rho = seg5AccY11 rho + rho 2810 := by
      unfold seg5AccY12 seg5AccY11
      ring
    have ha0 : (rho 2801 + rho 2802) * (seg5AccX11 rho + seg5AccY11 rho) = rho 2803 := by
      unfold seg5AccX11 seg5AccY11
      linear_combination r3108
    have ha1 : rho 2802 * seg5AccX11 rho = rho 2804 := by
      unfold seg5AccX11
      linear_combination r3109
    have ha2 : rho 2801 * seg5AccY11 rho = rho 2805 := by
      unfold seg5AccY11
      linear_combination r3110
    have ha3 : 3021 * rho 2804 * rho 2805 = rho 2806 := by
      linear_combination r3111
    have ha4 : rho 2807 * (1 + rho 2806) = rho 2804 + rho 2805 := by
      linear_combination r3112
    have ha5 : rho 2808 * (1 - rho 2806) = rho 2803 - rho 2804 - rho 2805 := by
      linear_combination r3113
    have haddx :
        rho 2807 * (1 + 3021 * (rho 2802 * seg5AccX11 rho) * (rho 2801 * seg5AccY11 rho)) =
          rho 2802 * seg5AccX11 rho + rho 2801 * seg5AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2808 * (1 - 3021 * (rho 2802 * seg5AccX11 rho) * (rho 2801 * seg5AccY11 rho)) =
          (-1) * (rho 2802 * seg5AccX11 rho) - rho 2801 * seg5AccY11 rho +
            (seg5AccY11 rho - seg5AccX11 rho * (-1)) * (rho 2801 + rho 2802) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2808 * (1 - rho 2806) = rho 2803 - rho 2804 - rho 2805 := ha5
        _ = (-1) * rho 2804 - rho 2805 + (seg5AccY11 rho - seg5AccX11 rho * (-1)) * (rho 2801 + rho 2802) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX12 rho = seg5AccX11 rho - Bool.toZMod bit * (seg5AccX11 rho - rho 2807) := by
      have hd : rho 2809 = Bool.toZMod bit * (rho 2807 - seg5AccX11 rho) := by
        rw [← hbit]
        unfold seg5AccX11
        linear_combination -r3114
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY12 rho = seg5AccY11 rho - Bool.toZMod bit * (seg5AccY11 rho - rho 2808) := by
      have hd : rho 2810 = Bool.toZMod bit * (rho 2808 - seg5AccY11 rho) := by
        rw [← hbit]
        unfold seg5AccY11
        linear_combination -r3115
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2801 * rho 2802 = rho 2811 := by linear_combination r3116
    have hd1 : rho 2801 * rho 2801 = rho 2812 := by linear_combination r3117
    have hd2 : rho 2802 * rho 2802 = rho 2813 := by linear_combination r3118
    have hd3 : rho 2814 * (rho 2802 * rho 2802 + rho 2801 * rho 2801 * (-1)) = 2 * (rho 2801 * rho 2802) := by
      rw [hd0, hd1, hd2]
      linear_combination r3119
    have hd4 : rho 2815 * (2 - (rho 2802 * rho 2802 + rho 2801 * rho 2801 * (-1))) = rho 2802 * rho 2802 - rho 2801 * rho 2801 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3120
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX11 rho : Seg5.F), (seg5AccY11 rho : Seg5.F)⟩
      ⟨(rho 2801 : Seg5.F), (rho 2802 : Seg5.F)⟩
      ⟨(rho 2807 : Seg5.F), (rho 2808 : Seg5.F)⟩
      ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩
      ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg5_rows12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3121 rho ∧ Seg5.relationRow3122 rho ∧ Seg5.relationRow3123 rho ∧ Seg5.relationRow3124 rho ∧ Seg5.relationRow3125 rho ∧ Seg5.relationRow3126 rho ∧ Seg5.relationRow3127 rho ∧ Seg5.relationRow3128 rho ∧ Seg5.relationRow3129 rho ∧ Seg5.relationRow3130 rho ∧ Seg5.relationRow3131 rho ∧ Seg5.relationRow3132 rho ∧ Seg5.relationRow3133 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨_, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩

theorem seg5_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2427 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩
        ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩
        ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩
        ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩ := by
  obtain ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩ := seg5_rows12 rho h
  unfold Seg5.relationRow3121 at r3121
  unfold Seg5.relationRow3122 at r3122
  unfold Seg5.relationRow3123 at r3123
  unfold Seg5.relationRow3124 at r3124
  unfold Seg5.relationRow3125 at r3125
  unfold Seg5.relationRow3126 at r3126
  unfold Seg5.relationRow3127 at r3127
  unfold Seg5.relationRow3128 at r3128
  unfold Seg5.relationRow3129 at r3129
  unfold Seg5.relationRow3130 at r3130
  unfold Seg5.relationRow3131 at r3131
  unfold Seg5.relationRow3132 at r3132
  unfold Seg5.relationRow3133 at r3133
  have hrung12 (bit : Bool) (hbit : rho 2427 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩
        ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩
        ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩
        ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩ := by
    have hnextx : seg5AccX13 rho = seg5AccX12 rho + rho 2822 := by
      unfold seg5AccX13 seg5AccX12
      ring
    have hnexty : seg5AccY13 rho = seg5AccY12 rho + rho 2823 := by
      unfold seg5AccY13 seg5AccY12
      ring
    have ha0 : (rho 2814 + rho 2815) * (seg5AccX12 rho + seg5AccY12 rho) = rho 2816 := by
      unfold seg5AccX12 seg5AccY12
      linear_combination r3121
    have ha1 : rho 2815 * seg5AccX12 rho = rho 2817 := by
      unfold seg5AccX12
      linear_combination r3122
    have ha2 : rho 2814 * seg5AccY12 rho = rho 2818 := by
      unfold seg5AccY12
      linear_combination r3123
    have ha3 : 3021 * rho 2817 * rho 2818 = rho 2819 := by
      linear_combination r3124
    have ha4 : rho 2820 * (1 + rho 2819) = rho 2817 + rho 2818 := by
      linear_combination r3125
    have ha5 : rho 2821 * (1 - rho 2819) = rho 2816 - rho 2817 - rho 2818 := by
      linear_combination r3126
    have haddx :
        rho 2820 * (1 + 3021 * (rho 2815 * seg5AccX12 rho) * (rho 2814 * seg5AccY12 rho)) =
          rho 2815 * seg5AccX12 rho + rho 2814 * seg5AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2821 * (1 - 3021 * (rho 2815 * seg5AccX12 rho) * (rho 2814 * seg5AccY12 rho)) =
          (-1) * (rho 2815 * seg5AccX12 rho) - rho 2814 * seg5AccY12 rho +
            (seg5AccY12 rho - seg5AccX12 rho * (-1)) * (rho 2814 + rho 2815) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2821 * (1 - rho 2819) = rho 2816 - rho 2817 - rho 2818 := ha5
        _ = (-1) * rho 2817 - rho 2818 + (seg5AccY12 rho - seg5AccX12 rho * (-1)) * (rho 2814 + rho 2815) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX13 rho = seg5AccX12 rho - Bool.toZMod bit * (seg5AccX12 rho - rho 2820) := by
      have hd : rho 2822 = Bool.toZMod bit * (rho 2820 - seg5AccX12 rho) := by
        rw [← hbit]
        unfold seg5AccX12
        linear_combination -r3127
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY13 rho = seg5AccY12 rho - Bool.toZMod bit * (seg5AccY12 rho - rho 2821) := by
      have hd : rho 2823 = Bool.toZMod bit * (rho 2821 - seg5AccY12 rho) := by
        rw [← hbit]
        unfold seg5AccY12
        linear_combination -r3128
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2814 * rho 2815 = rho 2824 := by linear_combination r3129
    have hd1 : rho 2814 * rho 2814 = rho 2825 := by linear_combination r3130
    have hd2 : rho 2815 * rho 2815 = rho 2826 := by linear_combination r3131
    have hd3 : rho 2827 * (rho 2815 * rho 2815 + rho 2814 * rho 2814 * (-1)) = 2 * (rho 2814 * rho 2815) := by
      rw [hd0, hd1, hd2]
      linear_combination r3132
    have hd4 : rho 2828 * (2 - (rho 2815 * rho 2815 + rho 2814 * rho 2814 * (-1))) = rho 2815 * rho 2815 - rho 2814 * rho 2814 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3133
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX12 rho : Seg5.F), (seg5AccY12 rho : Seg5.F)⟩
      ⟨(rho 2814 : Seg5.F), (rho 2815 : Seg5.F)⟩
      ⟨(rho 2820 : Seg5.F), (rho 2821 : Seg5.F)⟩
      ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩
      ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg5_rows13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3134 rho ∧ Seg5.relationRow3135 rho ∧ Seg5.relationRow3136 rho ∧ Seg5.relationRow3137 rho ∧ Seg5.relationRow3138 rho ∧ Seg5.relationRow3139 rho ∧ Seg5.relationRow3140 rho ∧ Seg5.relationRow3141 rho ∧ Seg5.relationRow3142 rho ∧ Seg5.relationRow3143 rho ∧ Seg5.relationRow3144 rho ∧ Seg5.relationRow3145 rho ∧ Seg5.relationRow3146 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩

theorem seg5_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2428 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩
        ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩
        ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩
        ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩ := by
  obtain ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩ := seg5_rows13 rho h
  unfold Seg5.relationRow3134 at r3134
  unfold Seg5.relationRow3135 at r3135
  unfold Seg5.relationRow3136 at r3136
  unfold Seg5.relationRow3137 at r3137
  unfold Seg5.relationRow3138 at r3138
  unfold Seg5.relationRow3139 at r3139
  unfold Seg5.relationRow3140 at r3140
  unfold Seg5.relationRow3141 at r3141
  unfold Seg5.relationRow3142 at r3142
  unfold Seg5.relationRow3143 at r3143
  unfold Seg5.relationRow3144 at r3144
  unfold Seg5.relationRow3145 at r3145
  unfold Seg5.relationRow3146 at r3146
  have hrung13 (bit : Bool) (hbit : rho 2428 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩
        ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩
        ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩
        ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩ := by
    have hnextx : seg5AccX14 rho = seg5AccX13 rho + rho 2835 := by
      unfold seg5AccX14 seg5AccX13
      ring
    have hnexty : seg5AccY14 rho = seg5AccY13 rho + rho 2836 := by
      unfold seg5AccY14 seg5AccY13
      ring
    have ha0 : (rho 2827 + rho 2828) * (seg5AccX13 rho + seg5AccY13 rho) = rho 2829 := by
      unfold seg5AccX13 seg5AccY13
      linear_combination r3134
    have ha1 : rho 2828 * seg5AccX13 rho = rho 2830 := by
      unfold seg5AccX13
      linear_combination r3135
    have ha2 : rho 2827 * seg5AccY13 rho = rho 2831 := by
      unfold seg5AccY13
      linear_combination r3136
    have ha3 : 3021 * rho 2830 * rho 2831 = rho 2832 := by
      linear_combination r3137
    have ha4 : rho 2833 * (1 + rho 2832) = rho 2830 + rho 2831 := by
      linear_combination r3138
    have ha5 : rho 2834 * (1 - rho 2832) = rho 2829 - rho 2830 - rho 2831 := by
      linear_combination r3139
    have haddx :
        rho 2833 * (1 + 3021 * (rho 2828 * seg5AccX13 rho) * (rho 2827 * seg5AccY13 rho)) =
          rho 2828 * seg5AccX13 rho + rho 2827 * seg5AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2834 * (1 - 3021 * (rho 2828 * seg5AccX13 rho) * (rho 2827 * seg5AccY13 rho)) =
          (-1) * (rho 2828 * seg5AccX13 rho) - rho 2827 * seg5AccY13 rho +
            (seg5AccY13 rho - seg5AccX13 rho * (-1)) * (rho 2827 + rho 2828) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2834 * (1 - rho 2832) = rho 2829 - rho 2830 - rho 2831 := ha5
        _ = (-1) * rho 2830 - rho 2831 + (seg5AccY13 rho - seg5AccX13 rho * (-1)) * (rho 2827 + rho 2828) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX14 rho = seg5AccX13 rho - Bool.toZMod bit * (seg5AccX13 rho - rho 2833) := by
      have hd : rho 2835 = Bool.toZMod bit * (rho 2833 - seg5AccX13 rho) := by
        rw [← hbit]
        unfold seg5AccX13
        linear_combination -r3140
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY14 rho = seg5AccY13 rho - Bool.toZMod bit * (seg5AccY13 rho - rho 2834) := by
      have hd : rho 2836 = Bool.toZMod bit * (rho 2834 - seg5AccY13 rho) := by
        rw [← hbit]
        unfold seg5AccY13
        linear_combination -r3141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2827 * rho 2828 = rho 2837 := by linear_combination r3142
    have hd1 : rho 2827 * rho 2827 = rho 2838 := by linear_combination r3143
    have hd2 : rho 2828 * rho 2828 = rho 2839 := by linear_combination r3144
    have hd3 : rho 2840 * (rho 2828 * rho 2828 + rho 2827 * rho 2827 * (-1)) = 2 * (rho 2827 * rho 2828) := by
      rw [hd0, hd1, hd2]
      linear_combination r3145
    have hd4 : rho 2841 * (2 - (rho 2828 * rho 2828 + rho 2827 * rho 2827 * (-1))) = rho 2828 * rho 2828 - rho 2827 * rho 2827 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX13 rho : Seg5.F), (seg5AccY13 rho : Seg5.F)⟩
      ⟨(rho 2827 : Seg5.F), (rho 2828 : Seg5.F)⟩
      ⟨(rho 2833 : Seg5.F), (rho 2834 : Seg5.F)⟩
      ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩
      ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg5_rows14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3147 rho ∧ Seg5.relationRow3148 rho ∧ Seg5.relationRow3149 rho ∧ Seg5.relationRow3150 rho ∧ Seg5.relationRow3151 rho ∧ Seg5.relationRow3152 rho ∧ Seg5.relationRow3153 rho ∧ Seg5.relationRow3154 rho ∧ Seg5.relationRow3155 rho ∧ Seg5.relationRow3156 rho ∧ Seg5.relationRow3157 rho ∧ Seg5.relationRow3158 rho ∧ Seg5.relationRow3159 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩

theorem seg5_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2429 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩
        ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩
        ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩
        ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩ := by
  obtain ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩ := seg5_rows14 rho h
  unfold Seg5.relationRow3147 at r3147
  unfold Seg5.relationRow3148 at r3148
  unfold Seg5.relationRow3149 at r3149
  unfold Seg5.relationRow3150 at r3150
  unfold Seg5.relationRow3151 at r3151
  unfold Seg5.relationRow3152 at r3152
  unfold Seg5.relationRow3153 at r3153
  unfold Seg5.relationRow3154 at r3154
  unfold Seg5.relationRow3155 at r3155
  unfold Seg5.relationRow3156 at r3156
  unfold Seg5.relationRow3157 at r3157
  unfold Seg5.relationRow3158 at r3158
  unfold Seg5.relationRow3159 at r3159
  have hrung14 (bit : Bool) (hbit : rho 2429 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩
        ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩
        ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩
        ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩ := by
    have hnextx : seg5AccX15 rho = seg5AccX14 rho + rho 2848 := by
      unfold seg5AccX15 seg5AccX14
      ring
    have hnexty : seg5AccY15 rho = seg5AccY14 rho + rho 2849 := by
      unfold seg5AccY15 seg5AccY14
      ring
    have ha0 : (rho 2840 + rho 2841) * (seg5AccX14 rho + seg5AccY14 rho) = rho 2842 := by
      unfold seg5AccX14 seg5AccY14
      linear_combination r3147
    have ha1 : rho 2841 * seg5AccX14 rho = rho 2843 := by
      unfold seg5AccX14
      linear_combination r3148
    have ha2 : rho 2840 * seg5AccY14 rho = rho 2844 := by
      unfold seg5AccY14
      linear_combination r3149
    have ha3 : 3021 * rho 2843 * rho 2844 = rho 2845 := by
      linear_combination r3150
    have ha4 : rho 2846 * (1 + rho 2845) = rho 2843 + rho 2844 := by
      linear_combination r3151
    have ha5 : rho 2847 * (1 - rho 2845) = rho 2842 - rho 2843 - rho 2844 := by
      linear_combination r3152
    have haddx :
        rho 2846 * (1 + 3021 * (rho 2841 * seg5AccX14 rho) * (rho 2840 * seg5AccY14 rho)) =
          rho 2841 * seg5AccX14 rho + rho 2840 * seg5AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2847 * (1 - 3021 * (rho 2841 * seg5AccX14 rho) * (rho 2840 * seg5AccY14 rho)) =
          (-1) * (rho 2841 * seg5AccX14 rho) - rho 2840 * seg5AccY14 rho +
            (seg5AccY14 rho - seg5AccX14 rho * (-1)) * (rho 2840 + rho 2841) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2847 * (1 - rho 2845) = rho 2842 - rho 2843 - rho 2844 := ha5
        _ = (-1) * rho 2843 - rho 2844 + (seg5AccY14 rho - seg5AccX14 rho * (-1)) * (rho 2840 + rho 2841) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX15 rho = seg5AccX14 rho - Bool.toZMod bit * (seg5AccX14 rho - rho 2846) := by
      have hd : rho 2848 = Bool.toZMod bit * (rho 2846 - seg5AccX14 rho) := by
        rw [← hbit]
        unfold seg5AccX14
        linear_combination -r3153
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY15 rho = seg5AccY14 rho - Bool.toZMod bit * (seg5AccY14 rho - rho 2847) := by
      have hd : rho 2849 = Bool.toZMod bit * (rho 2847 - seg5AccY14 rho) := by
        rw [← hbit]
        unfold seg5AccY14
        linear_combination -r3154
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2840 * rho 2841 = rho 2850 := by linear_combination r3155
    have hd1 : rho 2840 * rho 2840 = rho 2851 := by linear_combination r3156
    have hd2 : rho 2841 * rho 2841 = rho 2852 := by linear_combination r3157
    have hd3 : rho 2853 * (rho 2841 * rho 2841 + rho 2840 * rho 2840 * (-1)) = 2 * (rho 2840 * rho 2841) := by
      rw [hd0, hd1, hd2]
      linear_combination r3158
    have hd4 : rho 2854 * (2 - (rho 2841 * rho 2841 + rho 2840 * rho 2840 * (-1))) = rho 2841 * rho 2841 - rho 2840 * rho 2840 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3159
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX14 rho : Seg5.F), (seg5AccY14 rho : Seg5.F)⟩
      ⟨(rho 2840 : Seg5.F), (rho 2841 : Seg5.F)⟩
      ⟨(rho 2846 : Seg5.F), (rho 2847 : Seg5.F)⟩
      ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩
      ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg5_rows15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3160 rho ∧ Seg5.relationRow3161 rho ∧ Seg5.relationRow3162 rho ∧ Seg5.relationRow3163 rho ∧ Seg5.relationRow3164 rho ∧ Seg5.relationRow3165 rho ∧ Seg5.relationRow3166 rho ∧ Seg5.relationRow3167 rho ∧ Seg5.relationRow3168 rho ∧ Seg5.relationRow3169 rho ∧ Seg5.relationRow3170 rho ∧ Seg5.relationRow3171 rho ∧ Seg5.relationRow3172 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩

theorem seg5_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2430 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩
        ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩
        ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩
        ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩ := by
  obtain ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩ := seg5_rows15 rho h
  unfold Seg5.relationRow3160 at r3160
  unfold Seg5.relationRow3161 at r3161
  unfold Seg5.relationRow3162 at r3162
  unfold Seg5.relationRow3163 at r3163
  unfold Seg5.relationRow3164 at r3164
  unfold Seg5.relationRow3165 at r3165
  unfold Seg5.relationRow3166 at r3166
  unfold Seg5.relationRow3167 at r3167
  unfold Seg5.relationRow3168 at r3168
  unfold Seg5.relationRow3169 at r3169
  unfold Seg5.relationRow3170 at r3170
  unfold Seg5.relationRow3171 at r3171
  unfold Seg5.relationRow3172 at r3172
  have hrung15 (bit : Bool) (hbit : rho 2430 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩
        ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩
        ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩
        ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩ := by
    have hnextx : seg5AccX16 rho = seg5AccX15 rho + rho 2861 := by
      unfold seg5AccX16 seg5AccX15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 2666 13]
      ring
    have hnexty : seg5AccY16 rho = seg5AccY15 rho + rho 2862 := by
      unfold seg5AccY16 seg5AccY15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 2667 13]
      ring
    have ha0 : (rho 2853 + rho 2854) * (seg5AccX15 rho + seg5AccY15 rho) = rho 2855 := by
      unfold seg5AccX15 seg5AccY15
      linear_combination r3160
    have ha1 : rho 2854 * seg5AccX15 rho = rho 2856 := by
      unfold seg5AccX15
      linear_combination r3161
    have ha2 : rho 2853 * seg5AccY15 rho = rho 2857 := by
      unfold seg5AccY15
      linear_combination r3162
    have ha3 : 3021 * rho 2856 * rho 2857 = rho 2858 := by
      linear_combination r3163
    have ha4 : rho 2859 * (1 + rho 2858) = rho 2856 + rho 2857 := by
      linear_combination r3164
    have ha5 : rho 2860 * (1 - rho 2858) = rho 2855 - rho 2856 - rho 2857 := by
      linear_combination r3165
    have haddx :
        rho 2859 * (1 + 3021 * (rho 2854 * seg5AccX15 rho) * (rho 2853 * seg5AccY15 rho)) =
          rho 2854 * seg5AccX15 rho + rho 2853 * seg5AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2860 * (1 - 3021 * (rho 2854 * seg5AccX15 rho) * (rho 2853 * seg5AccY15 rho)) =
          (-1) * (rho 2854 * seg5AccX15 rho) - rho 2853 * seg5AccY15 rho +
            (seg5AccY15 rho - seg5AccX15 rho * (-1)) * (rho 2853 + rho 2854) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2860 * (1 - rho 2858) = rho 2855 - rho 2856 - rho 2857 := ha5
        _ = (-1) * rho 2856 - rho 2857 + (seg5AccY15 rho - seg5AccX15 rho * (-1)) * (rho 2853 + rho 2854) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX16 rho = seg5AccX15 rho - Bool.toZMod bit * (seg5AccX15 rho - rho 2859) := by
      have hd : rho 2861 = Bool.toZMod bit * (rho 2859 - seg5AccX15 rho) := by
        rw [← hbit]
        unfold seg5AccX15
        linear_combination -r3166
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY16 rho = seg5AccY15 rho - Bool.toZMod bit * (seg5AccY15 rho - rho 2860) := by
      have hd : rho 2862 = Bool.toZMod bit * (rho 2860 - seg5AccY15 rho) := by
        rw [← hbit]
        unfold seg5AccY15
        linear_combination -r3167
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2853 * rho 2854 = rho 2863 := by linear_combination r3168
    have hd1 : rho 2853 * rho 2853 = rho 2864 := by linear_combination r3169
    have hd2 : rho 2854 * rho 2854 = rho 2865 := by linear_combination r3170
    have hd3 : rho 2866 * (rho 2854 * rho 2854 + rho 2853 * rho 2853 * (-1)) = 2 * (rho 2853 * rho 2854) := by
      rw [hd0, hd1, hd2]
      linear_combination r3171
    have hd4 : rho 2867 * (2 - (rho 2854 * rho 2854 + rho 2853 * rho 2853 * (-1))) = rho 2854 * rho 2854 - rho 2853 * rho 2853 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3172
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX15 rho : Seg5.F), (seg5AccY15 rho : Seg5.F)⟩
      ⟨(rho 2853 : Seg5.F), (rho 2854 : Seg5.F)⟩
      ⟨(rho 2859 : Seg5.F), (rho 2860 : Seg5.F)⟩
      ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩
      ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg5_rows16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3173 rho ∧ Seg5.relationRow3174 rho ∧ Seg5.relationRow3175 rho ∧ Seg5.relationRow3176 rho ∧ Seg5.relationRow3177 rho ∧ Seg5.relationRow3178 rho ∧ Seg5.relationRow3179 rho ∧ Seg5.relationRow3180 rho ∧ Seg5.relationRow3181 rho ∧ Seg5.relationRow3182 rho ∧ Seg5.relationRow3183 rho ∧ Seg5.relationRow3184 rho ∧ Seg5.relationRow3185 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩

theorem seg5_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2431 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩
        ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩
        ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩
        ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩ := by
  obtain ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩ := seg5_rows16 rho h
  unfold Seg5.relationRow3173 at r3173
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3173
  unfold Seg5.relationRow3174 at r3174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174
  unfold Seg5.relationRow3175 at r3175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3175
  unfold Seg5.relationRow3176 at r3176
  unfold Seg5.relationRow3177 at r3177
  unfold Seg5.relationRow3178 at r3178
  unfold Seg5.relationRow3179 at r3179
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3179
  unfold Seg5.relationRow3180 at r3180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3180
  unfold Seg5.relationRow3181 at r3181
  unfold Seg5.relationRow3182 at r3182
  unfold Seg5.relationRow3183 at r3183
  unfold Seg5.relationRow3184 at r3184
  unfold Seg5.relationRow3185 at r3185
  have hrung16 (bit : Bool) (hbit : rho 2431 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩
        ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩
        ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩
        ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩ := by
    have hnextx : seg5AccX17 rho = seg5AccX16 rho + rho 2874 := by
      unfold seg5AccX17 seg5AccX16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 16]
      ring
    have hnexty : seg5AccY17 rho = seg5AccY16 rho + rho 2875 := by
      unfold seg5AccY17 seg5AccY16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 16]
      ring
    have ha0 : (rho 2866 + rho 2867) * (seg5AccX16 rho + seg5AccY16 rho) = rho 2868 := by
      unfold seg5AccX16 seg5AccY16
      linear_combination r3173
    have ha1 : rho 2867 * seg5AccX16 rho = rho 2869 := by
      unfold seg5AccX16
      linear_combination r3174
    have ha2 : rho 2866 * seg5AccY16 rho = rho 2870 := by
      unfold seg5AccY16
      linear_combination r3175
    have ha3 : 3021 * rho 2869 * rho 2870 = rho 2871 := by
      linear_combination r3176
    have ha4 : rho 2872 * (1 + rho 2871) = rho 2869 + rho 2870 := by
      linear_combination r3177
    have ha5 : rho 2873 * (1 - rho 2871) = rho 2868 - rho 2869 - rho 2870 := by
      linear_combination r3178
    have haddx :
        rho 2872 * (1 + 3021 * (rho 2867 * seg5AccX16 rho) * (rho 2866 * seg5AccY16 rho)) =
          rho 2867 * seg5AccX16 rho + rho 2866 * seg5AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2873 * (1 - 3021 * (rho 2867 * seg5AccX16 rho) * (rho 2866 * seg5AccY16 rho)) =
          (-1) * (rho 2867 * seg5AccX16 rho) - rho 2866 * seg5AccY16 rho +
            (seg5AccY16 rho - seg5AccX16 rho * (-1)) * (rho 2866 + rho 2867) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2873 * (1 - rho 2871) = rho 2868 - rho 2869 - rho 2870 := ha5
        _ = (-1) * rho 2869 - rho 2870 + (seg5AccY16 rho - seg5AccX16 rho * (-1)) * (rho 2866 + rho 2867) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX17 rho = seg5AccX16 rho - Bool.toZMod bit * (seg5AccX16 rho - rho 2872) := by
      have hd : rho 2874 = Bool.toZMod bit * (rho 2872 - seg5AccX16 rho) := by
        rw [← hbit]
        unfold seg5AccX16
        linear_combination -r3179
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY17 rho = seg5AccY16 rho - Bool.toZMod bit * (seg5AccY16 rho - rho 2873) := by
      have hd : rho 2875 = Bool.toZMod bit * (rho 2873 - seg5AccY16 rho) := by
        rw [← hbit]
        unfold seg5AccY16
        linear_combination -r3180
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2866 * rho 2867 = rho 2876 := by linear_combination r3181
    have hd1 : rho 2866 * rho 2866 = rho 2877 := by linear_combination r3182
    have hd2 : rho 2867 * rho 2867 = rho 2878 := by linear_combination r3183
    have hd3 : rho 2879 * (rho 2867 * rho 2867 + rho 2866 * rho 2866 * (-1)) = 2 * (rho 2866 * rho 2867) := by
      rw [hd0, hd1, hd2]
      linear_combination r3184
    have hd4 : rho 2880 * (2 - (rho 2867 * rho 2867 + rho 2866 * rho 2866 * (-1))) = rho 2867 * rho 2867 - rho 2866 * rho 2866 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3185
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX16 rho : Seg5.F), (seg5AccY16 rho : Seg5.F)⟩
      ⟨(rho 2866 : Seg5.F), (rho 2867 : Seg5.F)⟩
      ⟨(rho 2872 : Seg5.F), (rho 2873 : Seg5.F)⟩
      ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩
      ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg5_rows17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3186 rho ∧ Seg5.relationRow3187 rho ∧ Seg5.relationRow3188 rho ∧ Seg5.relationRow3189 rho ∧ Seg5.relationRow3190 rho ∧ Seg5.relationRow3191 rho ∧ Seg5.relationRow3192 rho ∧ Seg5.relationRow3193 rho ∧ Seg5.relationRow3194 rho ∧ Seg5.relationRow3195 rho ∧ Seg5.relationRow3196 rho ∧ Seg5.relationRow3197 rho ∧ Seg5.relationRow3198 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, _⟩
  exact ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩

theorem seg5_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2432 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩
        ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩
        ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩
        ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩ := by
  obtain ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩ := seg5_rows17 rho h
  unfold Seg5.relationRow3186 at r3186
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3186
  unfold Seg5.relationRow3187 at r3187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187
  unfold Seg5.relationRow3188 at r3188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3188
  unfold Seg5.relationRow3189 at r3189
  unfold Seg5.relationRow3190 at r3190
  unfold Seg5.relationRow3191 at r3191
  unfold Seg5.relationRow3192 at r3192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3192
  unfold Seg5.relationRow3193 at r3193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3193
  unfold Seg5.relationRow3194 at r3194
  unfold Seg5.relationRow3195 at r3195
  unfold Seg5.relationRow3196 at r3196
  unfold Seg5.relationRow3197 at r3197
  unfold Seg5.relationRow3198 at r3198
  have hrung17 (bit : Bool) (hbit : rho 2432 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩
        ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩
        ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩
        ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩ := by
    have hnextx : seg5AccX18 rho = seg5AccX17 rho + rho 2887 := by
      unfold seg5AccX18 seg5AccX17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 17]
      ring
    have hnexty : seg5AccY18 rho = seg5AccY17 rho + rho 2888 := by
      unfold seg5AccY18 seg5AccY17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 17]
      ring
    have ha0 : (rho 2879 + rho 2880) * (seg5AccX17 rho + seg5AccY17 rho) = rho 2881 := by
      unfold seg5AccX17 seg5AccY17
      linear_combination r3186
    have ha1 : rho 2880 * seg5AccX17 rho = rho 2882 := by
      unfold seg5AccX17
      linear_combination r3187
    have ha2 : rho 2879 * seg5AccY17 rho = rho 2883 := by
      unfold seg5AccY17
      linear_combination r3188
    have ha3 : 3021 * rho 2882 * rho 2883 = rho 2884 := by
      linear_combination r3189
    have ha4 : rho 2885 * (1 + rho 2884) = rho 2882 + rho 2883 := by
      linear_combination r3190
    have ha5 : rho 2886 * (1 - rho 2884) = rho 2881 - rho 2882 - rho 2883 := by
      linear_combination r3191
    have haddx :
        rho 2885 * (1 + 3021 * (rho 2880 * seg5AccX17 rho) * (rho 2879 * seg5AccY17 rho)) =
          rho 2880 * seg5AccX17 rho + rho 2879 * seg5AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2886 * (1 - 3021 * (rho 2880 * seg5AccX17 rho) * (rho 2879 * seg5AccY17 rho)) =
          (-1) * (rho 2880 * seg5AccX17 rho) - rho 2879 * seg5AccY17 rho +
            (seg5AccY17 rho - seg5AccX17 rho * (-1)) * (rho 2879 + rho 2880) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2886 * (1 - rho 2884) = rho 2881 - rho 2882 - rho 2883 := ha5
        _ = (-1) * rho 2882 - rho 2883 + (seg5AccY17 rho - seg5AccX17 rho * (-1)) * (rho 2879 + rho 2880) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX18 rho = seg5AccX17 rho - Bool.toZMod bit * (seg5AccX17 rho - rho 2885) := by
      have hd : rho 2887 = Bool.toZMod bit * (rho 2885 - seg5AccX17 rho) := by
        rw [← hbit]
        unfold seg5AccX17
        linear_combination -r3192
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY18 rho = seg5AccY17 rho - Bool.toZMod bit * (seg5AccY17 rho - rho 2886) := by
      have hd : rho 2888 = Bool.toZMod bit * (rho 2886 - seg5AccY17 rho) := by
        rw [← hbit]
        unfold seg5AccY17
        linear_combination -r3193
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2879 * rho 2880 = rho 2889 := by linear_combination r3194
    have hd1 : rho 2879 * rho 2879 = rho 2890 := by linear_combination r3195
    have hd2 : rho 2880 * rho 2880 = rho 2891 := by linear_combination r3196
    have hd3 : rho 2892 * (rho 2880 * rho 2880 + rho 2879 * rho 2879 * (-1)) = 2 * (rho 2879 * rho 2880) := by
      rw [hd0, hd1, hd2]
      linear_combination r3197
    have hd4 : rho 2893 * (2 - (rho 2880 * rho 2880 + rho 2879 * rho 2879 * (-1))) = rho 2880 * rho 2880 - rho 2879 * rho 2879 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3198
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX17 rho : Seg5.F), (seg5AccY17 rho : Seg5.F)⟩
      ⟨(rho 2879 : Seg5.F), (rho 2880 : Seg5.F)⟩
      ⟨(rho 2885 : Seg5.F), (rho 2886 : Seg5.F)⟩
      ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩
      ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg5_rows18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3199 rho ∧ Seg5.relationRow3200 rho ∧ Seg5.relationRow3201 rho ∧ Seg5.relationRow3202 rho ∧ Seg5.relationRow3203 rho ∧ Seg5.relationRow3204 rho ∧ Seg5.relationRow3205 rho ∧ Seg5.relationRow3206 rho ∧ Seg5.relationRow3207 rho ∧ Seg5.relationRow3208 rho ∧ Seg5.relationRow3209 rho ∧ Seg5.relationRow3210 rho ∧ Seg5.relationRow3211 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3199⟩
  unfold Seg5.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩

theorem seg5_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2433 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩
        ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩
        ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩
        ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩ := by
  obtain ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩ := seg5_rows18 rho h
  unfold Seg5.relationRow3199 at r3199
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3199
  unfold Seg5.relationRow3200 at r3200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200
  unfold Seg5.relationRow3201 at r3201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3201
  unfold Seg5.relationRow3202 at r3202
  unfold Seg5.relationRow3203 at r3203
  unfold Seg5.relationRow3204 at r3204
  unfold Seg5.relationRow3205 at r3205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3205
  unfold Seg5.relationRow3206 at r3206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3206
  unfold Seg5.relationRow3207 at r3207
  unfold Seg5.relationRow3208 at r3208
  unfold Seg5.relationRow3209 at r3209
  unfold Seg5.relationRow3210 at r3210
  unfold Seg5.relationRow3211 at r3211
  have hrung18 (bit : Bool) (hbit : rho 2433 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩
        ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩
        ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩
        ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩ := by
    have hnextx : seg5AccX19 rho = seg5AccX18 rho + rho 2900 := by
      unfold seg5AccX19 seg5AccX18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 18]
      ring
    have hnexty : seg5AccY19 rho = seg5AccY18 rho + rho 2901 := by
      unfold seg5AccY19 seg5AccY18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 18]
      ring
    have ha0 : (rho 2892 + rho 2893) * (seg5AccX18 rho + seg5AccY18 rho) = rho 2894 := by
      unfold seg5AccX18 seg5AccY18
      linear_combination r3199
    have ha1 : rho 2893 * seg5AccX18 rho = rho 2895 := by
      unfold seg5AccX18
      linear_combination r3200
    have ha2 : rho 2892 * seg5AccY18 rho = rho 2896 := by
      unfold seg5AccY18
      linear_combination r3201
    have ha3 : 3021 * rho 2895 * rho 2896 = rho 2897 := by
      linear_combination r3202
    have ha4 : rho 2898 * (1 + rho 2897) = rho 2895 + rho 2896 := by
      linear_combination r3203
    have ha5 : rho 2899 * (1 - rho 2897) = rho 2894 - rho 2895 - rho 2896 := by
      linear_combination r3204
    have haddx :
        rho 2898 * (1 + 3021 * (rho 2893 * seg5AccX18 rho) * (rho 2892 * seg5AccY18 rho)) =
          rho 2893 * seg5AccX18 rho + rho 2892 * seg5AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2899 * (1 - 3021 * (rho 2893 * seg5AccX18 rho) * (rho 2892 * seg5AccY18 rho)) =
          (-1) * (rho 2893 * seg5AccX18 rho) - rho 2892 * seg5AccY18 rho +
            (seg5AccY18 rho - seg5AccX18 rho * (-1)) * (rho 2892 + rho 2893) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2899 * (1 - rho 2897) = rho 2894 - rho 2895 - rho 2896 := ha5
        _ = (-1) * rho 2895 - rho 2896 + (seg5AccY18 rho - seg5AccX18 rho * (-1)) * (rho 2892 + rho 2893) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX19 rho = seg5AccX18 rho - Bool.toZMod bit * (seg5AccX18 rho - rho 2898) := by
      have hd : rho 2900 = Bool.toZMod bit * (rho 2898 - seg5AccX18 rho) := by
        rw [← hbit]
        unfold seg5AccX18
        linear_combination -r3205
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY19 rho = seg5AccY18 rho - Bool.toZMod bit * (seg5AccY18 rho - rho 2899) := by
      have hd : rho 2901 = Bool.toZMod bit * (rho 2899 - seg5AccY18 rho) := by
        rw [← hbit]
        unfold seg5AccY18
        linear_combination -r3206
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2892 * rho 2893 = rho 2902 := by linear_combination r3207
    have hd1 : rho 2892 * rho 2892 = rho 2903 := by linear_combination r3208
    have hd2 : rho 2893 * rho 2893 = rho 2904 := by linear_combination r3209
    have hd3 : rho 2905 * (rho 2893 * rho 2893 + rho 2892 * rho 2892 * (-1)) = 2 * (rho 2892 * rho 2893) := by
      rw [hd0, hd1, hd2]
      linear_combination r3210
    have hd4 : rho 2906 * (2 - (rho 2893 * rho 2893 + rho 2892 * rho 2892 * (-1))) = rho 2893 * rho 2893 - rho 2892 * rho 2892 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3211
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX18 rho : Seg5.F), (seg5AccY18 rho : Seg5.F)⟩
      ⟨(rho 2892 : Seg5.F), (rho 2893 : Seg5.F)⟩
      ⟨(rho 2898 : Seg5.F), (rho 2899 : Seg5.F)⟩
      ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩
      ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg5_rows19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3212 rho ∧ Seg5.relationRow3213 rho ∧ Seg5.relationRow3214 rho ∧ Seg5.relationRow3215 rho ∧ Seg5.relationRow3216 rho ∧ Seg5.relationRow3217 rho ∧ Seg5.relationRow3218 rho ∧ Seg5.relationRow3219 rho ∧ Seg5.relationRow3220 rho ∧ Seg5.relationRow3221 rho ∧ Seg5.relationRow3222 rho ∧ Seg5.relationRow3223 rho ∧ Seg5.relationRow3224 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩

theorem seg5_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2434 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩
        ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩
        ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩
        ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩ := by
  obtain ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩ := seg5_rows19 rho h
  unfold Seg5.relationRow3212 at r3212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3212
  unfold Seg5.relationRow3213 at r3213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213
  unfold Seg5.relationRow3214 at r3214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3214
  unfold Seg5.relationRow3215 at r3215
  unfold Seg5.relationRow3216 at r3216
  unfold Seg5.relationRow3217 at r3217
  unfold Seg5.relationRow3218 at r3218
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3218
  unfold Seg5.relationRow3219 at r3219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3219
  unfold Seg5.relationRow3220 at r3220
  unfold Seg5.relationRow3221 at r3221
  unfold Seg5.relationRow3222 at r3222
  unfold Seg5.relationRow3223 at r3223
  unfold Seg5.relationRow3224 at r3224
  have hrung19 (bit : Bool) (hbit : rho 2434 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩
        ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩
        ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩
        ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩ := by
    have hnextx : seg5AccX20 rho = seg5AccX19 rho + rho 2913 := by
      unfold seg5AccX20 seg5AccX19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 19]
      ring
    have hnexty : seg5AccY20 rho = seg5AccY19 rho + rho 2914 := by
      unfold seg5AccY20 seg5AccY19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 19]
      ring
    have ha0 : (rho 2905 + rho 2906) * (seg5AccX19 rho + seg5AccY19 rho) = rho 2907 := by
      unfold seg5AccX19 seg5AccY19
      linear_combination r3212
    have ha1 : rho 2906 * seg5AccX19 rho = rho 2908 := by
      unfold seg5AccX19
      linear_combination r3213
    have ha2 : rho 2905 * seg5AccY19 rho = rho 2909 := by
      unfold seg5AccY19
      linear_combination r3214
    have ha3 : 3021 * rho 2908 * rho 2909 = rho 2910 := by
      linear_combination r3215
    have ha4 : rho 2911 * (1 + rho 2910) = rho 2908 + rho 2909 := by
      linear_combination r3216
    have ha5 : rho 2912 * (1 - rho 2910) = rho 2907 - rho 2908 - rho 2909 := by
      linear_combination r3217
    have haddx :
        rho 2911 * (1 + 3021 * (rho 2906 * seg5AccX19 rho) * (rho 2905 * seg5AccY19 rho)) =
          rho 2906 * seg5AccX19 rho + rho 2905 * seg5AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2912 * (1 - 3021 * (rho 2906 * seg5AccX19 rho) * (rho 2905 * seg5AccY19 rho)) =
          (-1) * (rho 2906 * seg5AccX19 rho) - rho 2905 * seg5AccY19 rho +
            (seg5AccY19 rho - seg5AccX19 rho * (-1)) * (rho 2905 + rho 2906) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2912 * (1 - rho 2910) = rho 2907 - rho 2908 - rho 2909 := ha5
        _ = (-1) * rho 2908 - rho 2909 + (seg5AccY19 rho - seg5AccX19 rho * (-1)) * (rho 2905 + rho 2906) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX20 rho = seg5AccX19 rho - Bool.toZMod bit * (seg5AccX19 rho - rho 2911) := by
      have hd : rho 2913 = Bool.toZMod bit * (rho 2911 - seg5AccX19 rho) := by
        rw [← hbit]
        unfold seg5AccX19
        linear_combination -r3218
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY20 rho = seg5AccY19 rho - Bool.toZMod bit * (seg5AccY19 rho - rho 2912) := by
      have hd : rho 2914 = Bool.toZMod bit * (rho 2912 - seg5AccY19 rho) := by
        rw [← hbit]
        unfold seg5AccY19
        linear_combination -r3219
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2905 * rho 2906 = rho 2915 := by linear_combination r3220
    have hd1 : rho 2905 * rho 2905 = rho 2916 := by linear_combination r3221
    have hd2 : rho 2906 * rho 2906 = rho 2917 := by linear_combination r3222
    have hd3 : rho 2918 * (rho 2906 * rho 2906 + rho 2905 * rho 2905 * (-1)) = 2 * (rho 2905 * rho 2906) := by
      rw [hd0, hd1, hd2]
      linear_combination r3223
    have hd4 : rho 2919 * (2 - (rho 2906 * rho 2906 + rho 2905 * rho 2905 * (-1))) = rho 2906 * rho 2906 - rho 2905 * rho 2905 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3224
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX19 rho : Seg5.F), (seg5AccY19 rho : Seg5.F)⟩
      ⟨(rho 2905 : Seg5.F), (rho 2906 : Seg5.F)⟩
      ⟨(rho 2911 : Seg5.F), (rho 2912 : Seg5.F)⟩
      ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩
      ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg5_rows20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3225 rho ∧ Seg5.relationRow3226 rho ∧ Seg5.relationRow3227 rho ∧ Seg5.relationRow3228 rho ∧ Seg5.relationRow3229 rho ∧ Seg5.relationRow3230 rho ∧ Seg5.relationRow3231 rho ∧ Seg5.relationRow3232 rho ∧ Seg5.relationRow3233 rho ∧ Seg5.relationRow3234 rho ∧ Seg5.relationRow3235 rho ∧ Seg5.relationRow3236 rho ∧ Seg5.relationRow3237 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩

theorem seg5_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2435 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩
        ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩
        ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩
        ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩ := by
  obtain ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩ := seg5_rows20 rho h
  unfold Seg5.relationRow3225 at r3225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3225
  unfold Seg5.relationRow3226 at r3226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226
  unfold Seg5.relationRow3227 at r3227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3227
  unfold Seg5.relationRow3228 at r3228
  unfold Seg5.relationRow3229 at r3229
  unfold Seg5.relationRow3230 at r3230
  unfold Seg5.relationRow3231 at r3231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3231
  unfold Seg5.relationRow3232 at r3232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3232
  unfold Seg5.relationRow3233 at r3233
  unfold Seg5.relationRow3234 at r3234
  unfold Seg5.relationRow3235 at r3235
  unfold Seg5.relationRow3236 at r3236
  unfold Seg5.relationRow3237 at r3237
  have hrung20 (bit : Bool) (hbit : rho 2435 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩
        ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩
        ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩
        ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩ := by
    have hnextx : seg5AccX21 rho = seg5AccX20 rho + rho 2926 := by
      unfold seg5AccX21 seg5AccX20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 20]
      ring
    have hnexty : seg5AccY21 rho = seg5AccY20 rho + rho 2927 := by
      unfold seg5AccY21 seg5AccY20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 20]
      ring
    have ha0 : (rho 2918 + rho 2919) * (seg5AccX20 rho + seg5AccY20 rho) = rho 2920 := by
      unfold seg5AccX20 seg5AccY20
      linear_combination r3225
    have ha1 : rho 2919 * seg5AccX20 rho = rho 2921 := by
      unfold seg5AccX20
      linear_combination r3226
    have ha2 : rho 2918 * seg5AccY20 rho = rho 2922 := by
      unfold seg5AccY20
      linear_combination r3227
    have ha3 : 3021 * rho 2921 * rho 2922 = rho 2923 := by
      linear_combination r3228
    have ha4 : rho 2924 * (1 + rho 2923) = rho 2921 + rho 2922 := by
      linear_combination r3229
    have ha5 : rho 2925 * (1 - rho 2923) = rho 2920 - rho 2921 - rho 2922 := by
      linear_combination r3230
    have haddx :
        rho 2924 * (1 + 3021 * (rho 2919 * seg5AccX20 rho) * (rho 2918 * seg5AccY20 rho)) =
          rho 2919 * seg5AccX20 rho + rho 2918 * seg5AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2925 * (1 - 3021 * (rho 2919 * seg5AccX20 rho) * (rho 2918 * seg5AccY20 rho)) =
          (-1) * (rho 2919 * seg5AccX20 rho) - rho 2918 * seg5AccY20 rho +
            (seg5AccY20 rho - seg5AccX20 rho * (-1)) * (rho 2918 + rho 2919) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2925 * (1 - rho 2923) = rho 2920 - rho 2921 - rho 2922 := ha5
        _ = (-1) * rho 2921 - rho 2922 + (seg5AccY20 rho - seg5AccX20 rho * (-1)) * (rho 2918 + rho 2919) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX21 rho = seg5AccX20 rho - Bool.toZMod bit * (seg5AccX20 rho - rho 2924) := by
      have hd : rho 2926 = Bool.toZMod bit * (rho 2924 - seg5AccX20 rho) := by
        rw [← hbit]
        unfold seg5AccX20
        linear_combination -r3231
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY21 rho = seg5AccY20 rho - Bool.toZMod bit * (seg5AccY20 rho - rho 2925) := by
      have hd : rho 2927 = Bool.toZMod bit * (rho 2925 - seg5AccY20 rho) := by
        rw [← hbit]
        unfold seg5AccY20
        linear_combination -r3232
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2918 * rho 2919 = rho 2928 := by linear_combination r3233
    have hd1 : rho 2918 * rho 2918 = rho 2929 := by linear_combination r3234
    have hd2 : rho 2919 * rho 2919 = rho 2930 := by linear_combination r3235
    have hd3 : rho 2931 * (rho 2919 * rho 2919 + rho 2918 * rho 2918 * (-1)) = 2 * (rho 2918 * rho 2919) := by
      rw [hd0, hd1, hd2]
      linear_combination r3236
    have hd4 : rho 2932 * (2 - (rho 2919 * rho 2919 + rho 2918 * rho 2918 * (-1))) = rho 2919 * rho 2919 - rho 2918 * rho 2918 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3237
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX20 rho : Seg5.F), (seg5AccY20 rho : Seg5.F)⟩
      ⟨(rho 2918 : Seg5.F), (rho 2919 : Seg5.F)⟩
      ⟨(rho 2924 : Seg5.F), (rho 2925 : Seg5.F)⟩
      ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩
      ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg5_rows21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3238 rho ∧ Seg5.relationRow3239 rho ∧ Seg5.relationRow3240 rho ∧ Seg5.relationRow3241 rho ∧ Seg5.relationRow3242 rho ∧ Seg5.relationRow3243 rho ∧ Seg5.relationRow3244 rho ∧ Seg5.relationRow3245 rho ∧ Seg5.relationRow3246 rho ∧ Seg5.relationRow3247 rho ∧ Seg5.relationRow3248 rho ∧ Seg5.relationRow3249 rho ∧ Seg5.relationRow3250 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩

theorem seg5_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2436 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩
        ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩
        ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩
        ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩ := by
  obtain ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩ := seg5_rows21 rho h
  unfold Seg5.relationRow3238 at r3238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3238
  unfold Seg5.relationRow3239 at r3239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239
  unfold Seg5.relationRow3240 at r3240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3240
  unfold Seg5.relationRow3241 at r3241
  unfold Seg5.relationRow3242 at r3242
  unfold Seg5.relationRow3243 at r3243
  unfold Seg5.relationRow3244 at r3244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3244
  unfold Seg5.relationRow3245 at r3245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3245
  unfold Seg5.relationRow3246 at r3246
  unfold Seg5.relationRow3247 at r3247
  unfold Seg5.relationRow3248 at r3248
  unfold Seg5.relationRow3249 at r3249
  unfold Seg5.relationRow3250 at r3250
  have hrung21 (bit : Bool) (hbit : rho 2436 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩
        ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩
        ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩
        ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩ := by
    have hnextx : seg5AccX22 rho = seg5AccX21 rho + rho 2939 := by
      unfold seg5AccX22 seg5AccX21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 21]
      ring
    have hnexty : seg5AccY22 rho = seg5AccY21 rho + rho 2940 := by
      unfold seg5AccY22 seg5AccY21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 21]
      ring
    have ha0 : (rho 2931 + rho 2932) * (seg5AccX21 rho + seg5AccY21 rho) = rho 2933 := by
      unfold seg5AccX21 seg5AccY21
      linear_combination r3238
    have ha1 : rho 2932 * seg5AccX21 rho = rho 2934 := by
      unfold seg5AccX21
      linear_combination r3239
    have ha2 : rho 2931 * seg5AccY21 rho = rho 2935 := by
      unfold seg5AccY21
      linear_combination r3240
    have ha3 : 3021 * rho 2934 * rho 2935 = rho 2936 := by
      linear_combination r3241
    have ha4 : rho 2937 * (1 + rho 2936) = rho 2934 + rho 2935 := by
      linear_combination r3242
    have ha5 : rho 2938 * (1 - rho 2936) = rho 2933 - rho 2934 - rho 2935 := by
      linear_combination r3243
    have haddx :
        rho 2937 * (1 + 3021 * (rho 2932 * seg5AccX21 rho) * (rho 2931 * seg5AccY21 rho)) =
          rho 2932 * seg5AccX21 rho + rho 2931 * seg5AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2938 * (1 - 3021 * (rho 2932 * seg5AccX21 rho) * (rho 2931 * seg5AccY21 rho)) =
          (-1) * (rho 2932 * seg5AccX21 rho) - rho 2931 * seg5AccY21 rho +
            (seg5AccY21 rho - seg5AccX21 rho * (-1)) * (rho 2931 + rho 2932) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2938 * (1 - rho 2936) = rho 2933 - rho 2934 - rho 2935 := ha5
        _ = (-1) * rho 2934 - rho 2935 + (seg5AccY21 rho - seg5AccX21 rho * (-1)) * (rho 2931 + rho 2932) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX22 rho = seg5AccX21 rho - Bool.toZMod bit * (seg5AccX21 rho - rho 2937) := by
      have hd : rho 2939 = Bool.toZMod bit * (rho 2937 - seg5AccX21 rho) := by
        rw [← hbit]
        unfold seg5AccX21
        linear_combination -r3244
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY22 rho = seg5AccY21 rho - Bool.toZMod bit * (seg5AccY21 rho - rho 2938) := by
      have hd : rho 2940 = Bool.toZMod bit * (rho 2938 - seg5AccY21 rho) := by
        rw [← hbit]
        unfold seg5AccY21
        linear_combination -r3245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2931 * rho 2932 = rho 2941 := by linear_combination r3246
    have hd1 : rho 2931 * rho 2931 = rho 2942 := by linear_combination r3247
    have hd2 : rho 2932 * rho 2932 = rho 2943 := by linear_combination r3248
    have hd3 : rho 2944 * (rho 2932 * rho 2932 + rho 2931 * rho 2931 * (-1)) = 2 * (rho 2931 * rho 2932) := by
      rw [hd0, hd1, hd2]
      linear_combination r3249
    have hd4 : rho 2945 * (2 - (rho 2932 * rho 2932 + rho 2931 * rho 2931 * (-1))) = rho 2932 * rho 2932 - rho 2931 * rho 2931 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX21 rho : Seg5.F), (seg5AccY21 rho : Seg5.F)⟩
      ⟨(rho 2931 : Seg5.F), (rho 2932 : Seg5.F)⟩
      ⟨(rho 2937 : Seg5.F), (rho 2938 : Seg5.F)⟩
      ⟨(seg5AccX22 rho : Seg5.F), (seg5AccY22 rho : Seg5.F)⟩
      ⟨(rho 2944 : Seg5.F), (rho 2945 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg5_hstep_c1 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg5_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg5_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg5_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg5_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg5_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg5_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg5_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg5_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg5_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg5_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
