import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3108 rho ∧ Seg16.relationRow3109 rho ∧ Seg16.relationRow3110 rho ∧ Seg16.relationRow3111 rho ∧ Seg16.relationRow3112 rho ∧ Seg16.relationRow3113 rho ∧ Seg16.relationRow3114 rho ∧ Seg16.relationRow3115 rho ∧ Seg16.relationRow3116 rho ∧ Seg16.relationRow3117 rho ∧ Seg16.relationRow3118 rho ∧ Seg16.relationRow3119 rho ∧ Seg16.relationRow3120 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨r3120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩

theorem seg16_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15303 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
        ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩ := by
  obtain ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩ := seg16_rows11 rho h
  unfold Seg16.relationRow3108 at r3108
  unfold Seg16.relationRow3109 at r3109
  unfold Seg16.relationRow3110 at r3110
  unfold Seg16.relationRow3111 at r3111
  unfold Seg16.relationRow3112 at r3112
  unfold Seg16.relationRow3113 at r3113
  unfold Seg16.relationRow3114 at r3114
  unfold Seg16.relationRow3115 at r3115
  unfold Seg16.relationRow3116 at r3116
  unfold Seg16.relationRow3117 at r3117
  unfold Seg16.relationRow3118 at r3118
  unfold Seg16.relationRow3119 at r3119
  unfold Seg16.relationRow3120 at r3120
  have hrung11 (bit : Bool) (hbit : rho 15303 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
        ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩ := by
    have hnextx : seg16AccX12 rho = seg16AccX11 rho + rho 15686 := by
      unfold seg16AccX12 seg16AccX11
      ring
    have hnexty : seg16AccY12 rho = seg16AccY11 rho + rho 15687 := by
      unfold seg16AccY12 seg16AccY11
      ring
    have ha0 : (rho 15678 + rho 15679) * (seg16AccX11 rho + seg16AccY11 rho) = rho 15680 := by
      unfold seg16AccX11 seg16AccY11
      linear_combination r3108
    have ha1 : rho 15679 * seg16AccX11 rho = rho 15681 := by
      unfold seg16AccX11
      linear_combination r3109
    have ha2 : rho 15678 * seg16AccY11 rho = rho 15682 := by
      unfold seg16AccY11
      linear_combination r3110
    have ha3 : 3021 * rho 15681 * rho 15682 = rho 15683 := by
      linear_combination r3111
    have ha4 : rho 15684 * (1 + rho 15683) = rho 15681 + rho 15682 := by
      linear_combination r3112
    have ha5 : rho 15685 * (1 - rho 15683) = rho 15680 - rho 15681 - rho 15682 := by
      linear_combination r3113
    have haddx :
        rho 15684 * (1 + 3021 * (rho 15679 * seg16AccX11 rho) * (rho 15678 * seg16AccY11 rho)) =
          rho 15679 * seg16AccX11 rho + rho 15678 * seg16AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15685 * (1 - 3021 * (rho 15679 * seg16AccX11 rho) * (rho 15678 * seg16AccY11 rho)) =
          (-1) * (rho 15679 * seg16AccX11 rho) - rho 15678 * seg16AccY11 rho +
            (seg16AccY11 rho - seg16AccX11 rho * (-1)) * (rho 15678 + rho 15679) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15685 * (1 - rho 15683) = rho 15680 - rho 15681 - rho 15682 := ha5
        _ = (-1) * rho 15681 - rho 15682 + (seg16AccY11 rho - seg16AccX11 rho * (-1)) * (rho 15678 + rho 15679) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX12 rho = seg16AccX11 rho - Bool.toZMod bit * (seg16AccX11 rho - rho 15684) := by
      have hd : rho 15686 = Bool.toZMod bit * (rho 15684 - seg16AccX11 rho) := by
        rw [← hbit]
        unfold seg16AccX11
        linear_combination -r3114
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY12 rho = seg16AccY11 rho - Bool.toZMod bit * (seg16AccY11 rho - rho 15685) := by
      have hd : rho 15687 = Bool.toZMod bit * (rho 15685 - seg16AccY11 rho) := by
        rw [← hbit]
        unfold seg16AccY11
        linear_combination -r3115
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15678 * rho 15679 = rho 15688 := by linear_combination r3116
    have hd1 : rho 15678 * rho 15678 = rho 15689 := by linear_combination r3117
    have hd2 : rho 15679 * rho 15679 = rho 15690 := by linear_combination r3118
    have hd3 : rho 15691 * (rho 15679 * rho 15679 + rho 15678 * rho 15678 * (-1)) = 2 * (rho 15678 * rho 15679) := by
      rw [hd0, hd1, hd2]
      linear_combination r3119
    have hd4 : rho 15692 * (2 - (rho 15679 * rho 15679 + rho 15678 * rho 15678 * (-1))) = rho 15679 * rho 15679 - rho 15678 * rho 15678 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3120
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX11 rho : Seg16.F), (seg16AccY11 rho : Seg16.F)⟩
      ⟨(rho 15678 : Seg16.F), (rho 15679 : Seg16.F)⟩
      ⟨(rho 15684 : Seg16.F), (rho 15685 : Seg16.F)⟩
      ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
      ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg16_rows12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3121 rho ∧ Seg16.relationRow3122 rho ∧ Seg16.relationRow3123 rho ∧ Seg16.relationRow3124 rho ∧ Seg16.relationRow3125 rho ∧ Seg16.relationRow3126 rho ∧ Seg16.relationRow3127 rho ∧ Seg16.relationRow3128 rho ∧ Seg16.relationRow3129 rho ∧ Seg16.relationRow3130 rho ∧ Seg16.relationRow3131 rho ∧ Seg16.relationRow3132 rho ∧ Seg16.relationRow3133 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩

theorem seg16_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15304 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩ := by
  obtain ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩ := seg16_rows12 rho h
  unfold Seg16.relationRow3121 at r3121
  unfold Seg16.relationRow3122 at r3122
  unfold Seg16.relationRow3123 at r3123
  unfold Seg16.relationRow3124 at r3124
  unfold Seg16.relationRow3125 at r3125
  unfold Seg16.relationRow3126 at r3126
  unfold Seg16.relationRow3127 at r3127
  unfold Seg16.relationRow3128 at r3128
  unfold Seg16.relationRow3129 at r3129
  unfold Seg16.relationRow3130 at r3130
  unfold Seg16.relationRow3131 at r3131
  unfold Seg16.relationRow3132 at r3132
  unfold Seg16.relationRow3133 at r3133
  have hrung12 (bit : Bool) (hbit : rho 15304 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
        ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩ := by
    have hnextx : seg16AccX13 rho = seg16AccX12 rho + rho 15699 := by
      unfold seg16AccX13 seg16AccX12
      ring
    have hnexty : seg16AccY13 rho = seg16AccY12 rho + rho 15700 := by
      unfold seg16AccY13 seg16AccY12
      ring
    have ha0 : (rho 15691 + rho 15692) * (seg16AccX12 rho + seg16AccY12 rho) = rho 15693 := by
      unfold seg16AccX12 seg16AccY12
      linear_combination r3121
    have ha1 : rho 15692 * seg16AccX12 rho = rho 15694 := by
      unfold seg16AccX12
      linear_combination r3122
    have ha2 : rho 15691 * seg16AccY12 rho = rho 15695 := by
      unfold seg16AccY12
      linear_combination r3123
    have ha3 : 3021 * rho 15694 * rho 15695 = rho 15696 := by
      linear_combination r3124
    have ha4 : rho 15697 * (1 + rho 15696) = rho 15694 + rho 15695 := by
      linear_combination r3125
    have ha5 : rho 15698 * (1 - rho 15696) = rho 15693 - rho 15694 - rho 15695 := by
      linear_combination r3126
    have haddx :
        rho 15697 * (1 + 3021 * (rho 15692 * seg16AccX12 rho) * (rho 15691 * seg16AccY12 rho)) =
          rho 15692 * seg16AccX12 rho + rho 15691 * seg16AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15698 * (1 - 3021 * (rho 15692 * seg16AccX12 rho) * (rho 15691 * seg16AccY12 rho)) =
          (-1) * (rho 15692 * seg16AccX12 rho) - rho 15691 * seg16AccY12 rho +
            (seg16AccY12 rho - seg16AccX12 rho * (-1)) * (rho 15691 + rho 15692) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15698 * (1 - rho 15696) = rho 15693 - rho 15694 - rho 15695 := ha5
        _ = (-1) * rho 15694 - rho 15695 + (seg16AccY12 rho - seg16AccX12 rho * (-1)) * (rho 15691 + rho 15692) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX13 rho = seg16AccX12 rho - Bool.toZMod bit * (seg16AccX12 rho - rho 15697) := by
      have hd : rho 15699 = Bool.toZMod bit * (rho 15697 - seg16AccX12 rho) := by
        rw [← hbit]
        unfold seg16AccX12
        linear_combination -r3127
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY13 rho = seg16AccY12 rho - Bool.toZMod bit * (seg16AccY12 rho - rho 15698) := by
      have hd : rho 15700 = Bool.toZMod bit * (rho 15698 - seg16AccY12 rho) := by
        rw [← hbit]
        unfold seg16AccY12
        linear_combination -r3128
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15691 * rho 15692 = rho 15701 := by linear_combination r3129
    have hd1 : rho 15691 * rho 15691 = rho 15702 := by linear_combination r3130
    have hd2 : rho 15692 * rho 15692 = rho 15703 := by linear_combination r3131
    have hd3 : rho 15704 * (rho 15692 * rho 15692 + rho 15691 * rho 15691 * (-1)) = 2 * (rho 15691 * rho 15692) := by
      rw [hd0, hd1, hd2]
      linear_combination r3132
    have hd4 : rho 15705 * (2 - (rho 15692 * rho 15692 + rho 15691 * rho 15691 * (-1))) = rho 15692 * rho 15692 - rho 15691 * rho 15691 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3133
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX12 rho : Seg16.F), (seg16AccY12 rho : Seg16.F)⟩
      ⟨(rho 15691 : Seg16.F), (rho 15692 : Seg16.F)⟩
      ⟨(rho 15697 : Seg16.F), (rho 15698 : Seg16.F)⟩
      ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
      ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg16_rows13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3134 rho ∧ Seg16.relationRow3135 rho ∧ Seg16.relationRow3136 rho ∧ Seg16.relationRow3137 rho ∧ Seg16.relationRow3138 rho ∧ Seg16.relationRow3139 rho ∧ Seg16.relationRow3140 rho ∧ Seg16.relationRow3141 rho ∧ Seg16.relationRow3142 rho ∧ Seg16.relationRow3143 rho ∧ Seg16.relationRow3144 rho ∧ Seg16.relationRow3145 rho ∧ Seg16.relationRow3146 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩

theorem seg16_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15305 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩ := by
  obtain ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩ := seg16_rows13 rho h
  unfold Seg16.relationRow3134 at r3134
  unfold Seg16.relationRow3135 at r3135
  unfold Seg16.relationRow3136 at r3136
  unfold Seg16.relationRow3137 at r3137
  unfold Seg16.relationRow3138 at r3138
  unfold Seg16.relationRow3139 at r3139
  unfold Seg16.relationRow3140 at r3140
  unfold Seg16.relationRow3141 at r3141
  unfold Seg16.relationRow3142 at r3142
  unfold Seg16.relationRow3143 at r3143
  unfold Seg16.relationRow3144 at r3144
  unfold Seg16.relationRow3145 at r3145
  unfold Seg16.relationRow3146 at r3146
  have hrung13 (bit : Bool) (hbit : rho 15305 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
        ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩ := by
    have hnextx : seg16AccX14 rho = seg16AccX13 rho + rho 15712 := by
      unfold seg16AccX14 seg16AccX13
      ring
    have hnexty : seg16AccY14 rho = seg16AccY13 rho + rho 15713 := by
      unfold seg16AccY14 seg16AccY13
      ring
    have ha0 : (rho 15704 + rho 15705) * (seg16AccX13 rho + seg16AccY13 rho) = rho 15706 := by
      unfold seg16AccX13 seg16AccY13
      linear_combination r3134
    have ha1 : rho 15705 * seg16AccX13 rho = rho 15707 := by
      unfold seg16AccX13
      linear_combination r3135
    have ha2 : rho 15704 * seg16AccY13 rho = rho 15708 := by
      unfold seg16AccY13
      linear_combination r3136
    have ha3 : 3021 * rho 15707 * rho 15708 = rho 15709 := by
      linear_combination r3137
    have ha4 : rho 15710 * (1 + rho 15709) = rho 15707 + rho 15708 := by
      linear_combination r3138
    have ha5 : rho 15711 * (1 - rho 15709) = rho 15706 - rho 15707 - rho 15708 := by
      linear_combination r3139
    have haddx :
        rho 15710 * (1 + 3021 * (rho 15705 * seg16AccX13 rho) * (rho 15704 * seg16AccY13 rho)) =
          rho 15705 * seg16AccX13 rho + rho 15704 * seg16AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15711 * (1 - 3021 * (rho 15705 * seg16AccX13 rho) * (rho 15704 * seg16AccY13 rho)) =
          (-1) * (rho 15705 * seg16AccX13 rho) - rho 15704 * seg16AccY13 rho +
            (seg16AccY13 rho - seg16AccX13 rho * (-1)) * (rho 15704 + rho 15705) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15711 * (1 - rho 15709) = rho 15706 - rho 15707 - rho 15708 := ha5
        _ = (-1) * rho 15707 - rho 15708 + (seg16AccY13 rho - seg16AccX13 rho * (-1)) * (rho 15704 + rho 15705) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX14 rho = seg16AccX13 rho - Bool.toZMod bit * (seg16AccX13 rho - rho 15710) := by
      have hd : rho 15712 = Bool.toZMod bit * (rho 15710 - seg16AccX13 rho) := by
        rw [← hbit]
        unfold seg16AccX13
        linear_combination -r3140
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY14 rho = seg16AccY13 rho - Bool.toZMod bit * (seg16AccY13 rho - rho 15711) := by
      have hd : rho 15713 = Bool.toZMod bit * (rho 15711 - seg16AccY13 rho) := by
        rw [← hbit]
        unfold seg16AccY13
        linear_combination -r3141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15704 * rho 15705 = rho 15714 := by linear_combination r3142
    have hd1 : rho 15704 * rho 15704 = rho 15715 := by linear_combination r3143
    have hd2 : rho 15705 * rho 15705 = rho 15716 := by linear_combination r3144
    have hd3 : rho 15717 * (rho 15705 * rho 15705 + rho 15704 * rho 15704 * (-1)) = 2 * (rho 15704 * rho 15705) := by
      rw [hd0, hd1, hd2]
      linear_combination r3145
    have hd4 : rho 15718 * (2 - (rho 15705 * rho 15705 + rho 15704 * rho 15704 * (-1))) = rho 15705 * rho 15705 - rho 15704 * rho 15704 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX13 rho : Seg16.F), (seg16AccY13 rho : Seg16.F)⟩
      ⟨(rho 15704 : Seg16.F), (rho 15705 : Seg16.F)⟩
      ⟨(rho 15710 : Seg16.F), (rho 15711 : Seg16.F)⟩
      ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
      ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg16_rows14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3147 rho ∧ Seg16.relationRow3148 rho ∧ Seg16.relationRow3149 rho ∧ Seg16.relationRow3150 rho ∧ Seg16.relationRow3151 rho ∧ Seg16.relationRow3152 rho ∧ Seg16.relationRow3153 rho ∧ Seg16.relationRow3154 rho ∧ Seg16.relationRow3155 rho ∧ Seg16.relationRow3156 rho ∧ Seg16.relationRow3157 rho ∧ Seg16.relationRow3158 rho ∧ Seg16.relationRow3159 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩

theorem seg16_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15306 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩ := by
  obtain ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩ := seg16_rows14 rho h
  unfold Seg16.relationRow3147 at r3147
  unfold Seg16.relationRow3148 at r3148
  unfold Seg16.relationRow3149 at r3149
  unfold Seg16.relationRow3150 at r3150
  unfold Seg16.relationRow3151 at r3151
  unfold Seg16.relationRow3152 at r3152
  unfold Seg16.relationRow3153 at r3153
  unfold Seg16.relationRow3154 at r3154
  unfold Seg16.relationRow3155 at r3155
  unfold Seg16.relationRow3156 at r3156
  unfold Seg16.relationRow3157 at r3157
  unfold Seg16.relationRow3158 at r3158
  unfold Seg16.relationRow3159 at r3159
  have hrung14 (bit : Bool) (hbit : rho 15306 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
        ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩ := by
    have hnextx : seg16AccX15 rho = seg16AccX14 rho + rho 15725 := by
      unfold seg16AccX15 seg16AccX14
      ring
    have hnexty : seg16AccY15 rho = seg16AccY14 rho + rho 15726 := by
      unfold seg16AccY15 seg16AccY14
      ring
    have ha0 : (rho 15717 + rho 15718) * (seg16AccX14 rho + seg16AccY14 rho) = rho 15719 := by
      unfold seg16AccX14 seg16AccY14
      linear_combination r3147
    have ha1 : rho 15718 * seg16AccX14 rho = rho 15720 := by
      unfold seg16AccX14
      linear_combination r3148
    have ha2 : rho 15717 * seg16AccY14 rho = rho 15721 := by
      unfold seg16AccY14
      linear_combination r3149
    have ha3 : 3021 * rho 15720 * rho 15721 = rho 15722 := by
      linear_combination r3150
    have ha4 : rho 15723 * (1 + rho 15722) = rho 15720 + rho 15721 := by
      linear_combination r3151
    have ha5 : rho 15724 * (1 - rho 15722) = rho 15719 - rho 15720 - rho 15721 := by
      linear_combination r3152
    have haddx :
        rho 15723 * (1 + 3021 * (rho 15718 * seg16AccX14 rho) * (rho 15717 * seg16AccY14 rho)) =
          rho 15718 * seg16AccX14 rho + rho 15717 * seg16AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15724 * (1 - 3021 * (rho 15718 * seg16AccX14 rho) * (rho 15717 * seg16AccY14 rho)) =
          (-1) * (rho 15718 * seg16AccX14 rho) - rho 15717 * seg16AccY14 rho +
            (seg16AccY14 rho - seg16AccX14 rho * (-1)) * (rho 15717 + rho 15718) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15724 * (1 - rho 15722) = rho 15719 - rho 15720 - rho 15721 := ha5
        _ = (-1) * rho 15720 - rho 15721 + (seg16AccY14 rho - seg16AccX14 rho * (-1)) * (rho 15717 + rho 15718) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX15 rho = seg16AccX14 rho - Bool.toZMod bit * (seg16AccX14 rho - rho 15723) := by
      have hd : rho 15725 = Bool.toZMod bit * (rho 15723 - seg16AccX14 rho) := by
        rw [← hbit]
        unfold seg16AccX14
        linear_combination -r3153
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY15 rho = seg16AccY14 rho - Bool.toZMod bit * (seg16AccY14 rho - rho 15724) := by
      have hd : rho 15726 = Bool.toZMod bit * (rho 15724 - seg16AccY14 rho) := by
        rw [← hbit]
        unfold seg16AccY14
        linear_combination -r3154
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15717 * rho 15718 = rho 15727 := by linear_combination r3155
    have hd1 : rho 15717 * rho 15717 = rho 15728 := by linear_combination r3156
    have hd2 : rho 15718 * rho 15718 = rho 15729 := by linear_combination r3157
    have hd3 : rho 15730 * (rho 15718 * rho 15718 + rho 15717 * rho 15717 * (-1)) = 2 * (rho 15717 * rho 15718) := by
      rw [hd0, hd1, hd2]
      linear_combination r3158
    have hd4 : rho 15731 * (2 - (rho 15718 * rho 15718 + rho 15717 * rho 15717 * (-1))) = rho 15718 * rho 15718 - rho 15717 * rho 15717 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3159
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX14 rho : Seg16.F), (seg16AccY14 rho : Seg16.F)⟩
      ⟨(rho 15717 : Seg16.F), (rho 15718 : Seg16.F)⟩
      ⟨(rho 15723 : Seg16.F), (rho 15724 : Seg16.F)⟩
      ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
      ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg16_rows15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3160 rho ∧ Seg16.relationRow3161 rho ∧ Seg16.relationRow3162 rho ∧ Seg16.relationRow3163 rho ∧ Seg16.relationRow3164 rho ∧ Seg16.relationRow3165 rho ∧ Seg16.relationRow3166 rho ∧ Seg16.relationRow3167 rho ∧ Seg16.relationRow3168 rho ∧ Seg16.relationRow3169 rho ∧ Seg16.relationRow3170 rho ∧ Seg16.relationRow3171 rho ∧ Seg16.relationRow3172 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩

theorem seg16_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15307 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩ := by
  obtain ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩ := seg16_rows15 rho h
  unfold Seg16.relationRow3160 at r3160
  unfold Seg16.relationRow3161 at r3161
  unfold Seg16.relationRow3162 at r3162
  unfold Seg16.relationRow3163 at r3163
  unfold Seg16.relationRow3164 at r3164
  unfold Seg16.relationRow3165 at r3165
  unfold Seg16.relationRow3166 at r3166
  unfold Seg16.relationRow3167 at r3167
  unfold Seg16.relationRow3168 at r3168
  unfold Seg16.relationRow3169 at r3169
  unfold Seg16.relationRow3170 at r3170
  unfold Seg16.relationRow3171 at r3171
  unfold Seg16.relationRow3172 at r3172
  have hrung15 (bit : Bool) (hbit : rho 15307 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
        ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩ := by
    have hnextx : seg16AccX16 rho = seg16AccX15 rho + rho 15738 := by
      unfold seg16AccX16 seg16AccX15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 15543 13]
      ring
    have hnexty : seg16AccY16 rho = seg16AccY15 rho + rho 15739 := by
      unfold seg16AccY16 seg16AccY15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 15544 13]
      ring
    have ha0 : (rho 15730 + rho 15731) * (seg16AccX15 rho + seg16AccY15 rho) = rho 15732 := by
      unfold seg16AccX15 seg16AccY15
      linear_combination r3160
    have ha1 : rho 15731 * seg16AccX15 rho = rho 15733 := by
      unfold seg16AccX15
      linear_combination r3161
    have ha2 : rho 15730 * seg16AccY15 rho = rho 15734 := by
      unfold seg16AccY15
      linear_combination r3162
    have ha3 : 3021 * rho 15733 * rho 15734 = rho 15735 := by
      linear_combination r3163
    have ha4 : rho 15736 * (1 + rho 15735) = rho 15733 + rho 15734 := by
      linear_combination r3164
    have ha5 : rho 15737 * (1 - rho 15735) = rho 15732 - rho 15733 - rho 15734 := by
      linear_combination r3165
    have haddx :
        rho 15736 * (1 + 3021 * (rho 15731 * seg16AccX15 rho) * (rho 15730 * seg16AccY15 rho)) =
          rho 15731 * seg16AccX15 rho + rho 15730 * seg16AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15737 * (1 - 3021 * (rho 15731 * seg16AccX15 rho) * (rho 15730 * seg16AccY15 rho)) =
          (-1) * (rho 15731 * seg16AccX15 rho) - rho 15730 * seg16AccY15 rho +
            (seg16AccY15 rho - seg16AccX15 rho * (-1)) * (rho 15730 + rho 15731) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15737 * (1 - rho 15735) = rho 15732 - rho 15733 - rho 15734 := ha5
        _ = (-1) * rho 15733 - rho 15734 + (seg16AccY15 rho - seg16AccX15 rho * (-1)) * (rho 15730 + rho 15731) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX16 rho = seg16AccX15 rho - Bool.toZMod bit * (seg16AccX15 rho - rho 15736) := by
      have hd : rho 15738 = Bool.toZMod bit * (rho 15736 - seg16AccX15 rho) := by
        rw [← hbit]
        unfold seg16AccX15
        linear_combination -r3166
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY16 rho = seg16AccY15 rho - Bool.toZMod bit * (seg16AccY15 rho - rho 15737) := by
      have hd : rho 15739 = Bool.toZMod bit * (rho 15737 - seg16AccY15 rho) := by
        rw [← hbit]
        unfold seg16AccY15
        linear_combination -r3167
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15730 * rho 15731 = rho 15740 := by linear_combination r3168
    have hd1 : rho 15730 * rho 15730 = rho 15741 := by linear_combination r3169
    have hd2 : rho 15731 * rho 15731 = rho 15742 := by linear_combination r3170
    have hd3 : rho 15743 * (rho 15731 * rho 15731 + rho 15730 * rho 15730 * (-1)) = 2 * (rho 15730 * rho 15731) := by
      rw [hd0, hd1, hd2]
      linear_combination r3171
    have hd4 : rho 15744 * (2 - (rho 15731 * rho 15731 + rho 15730 * rho 15730 * (-1))) = rho 15731 * rho 15731 - rho 15730 * rho 15730 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3172
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX15 rho : Seg16.F), (seg16AccY15 rho : Seg16.F)⟩
      ⟨(rho 15730 : Seg16.F), (rho 15731 : Seg16.F)⟩
      ⟨(rho 15736 : Seg16.F), (rho 15737 : Seg16.F)⟩
      ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
      ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg16_rows16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3173 rho ∧ Seg16.relationRow3174 rho ∧ Seg16.relationRow3175 rho ∧ Seg16.relationRow3176 rho ∧ Seg16.relationRow3177 rho ∧ Seg16.relationRow3178 rho ∧ Seg16.relationRow3179 rho ∧ Seg16.relationRow3180 rho ∧ Seg16.relationRow3181 rho ∧ Seg16.relationRow3182 rho ∧ Seg16.relationRow3183 rho ∧ Seg16.relationRow3184 rho ∧ Seg16.relationRow3185 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩

theorem seg16_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15308 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩ := by
  obtain ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩ := seg16_rows16 rho h
  unfold Seg16.relationRow3173 at r3173
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3173
  unfold Seg16.relationRow3174 at r3174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174
  unfold Seg16.relationRow3175 at r3175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3175
  unfold Seg16.relationRow3176 at r3176
  unfold Seg16.relationRow3177 at r3177
  unfold Seg16.relationRow3178 at r3178
  unfold Seg16.relationRow3179 at r3179
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3179
  unfold Seg16.relationRow3180 at r3180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3180
  unfold Seg16.relationRow3181 at r3181
  unfold Seg16.relationRow3182 at r3182
  unfold Seg16.relationRow3183 at r3183
  unfold Seg16.relationRow3184 at r3184
  unfold Seg16.relationRow3185 at r3185
  have hrung16 (bit : Bool) (hbit : rho 15308 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
        ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩ := by
    have hnextx : seg16AccX17 rho = seg16AccX16 rho + rho 15751 := by
      unfold seg16AccX17 seg16AccX16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 16]
      ring
    have hnexty : seg16AccY17 rho = seg16AccY16 rho + rho 15752 := by
      unfold seg16AccY17 seg16AccY16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 16]
      ring
    have ha0 : (rho 15743 + rho 15744) * (seg16AccX16 rho + seg16AccY16 rho) = rho 15745 := by
      unfold seg16AccX16 seg16AccY16
      linear_combination r3173
    have ha1 : rho 15744 * seg16AccX16 rho = rho 15746 := by
      unfold seg16AccX16
      linear_combination r3174
    have ha2 : rho 15743 * seg16AccY16 rho = rho 15747 := by
      unfold seg16AccY16
      linear_combination r3175
    have ha3 : 3021 * rho 15746 * rho 15747 = rho 15748 := by
      linear_combination r3176
    have ha4 : rho 15749 * (1 + rho 15748) = rho 15746 + rho 15747 := by
      linear_combination r3177
    have ha5 : rho 15750 * (1 - rho 15748) = rho 15745 - rho 15746 - rho 15747 := by
      linear_combination r3178
    have haddx :
        rho 15749 * (1 + 3021 * (rho 15744 * seg16AccX16 rho) * (rho 15743 * seg16AccY16 rho)) =
          rho 15744 * seg16AccX16 rho + rho 15743 * seg16AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15750 * (1 - 3021 * (rho 15744 * seg16AccX16 rho) * (rho 15743 * seg16AccY16 rho)) =
          (-1) * (rho 15744 * seg16AccX16 rho) - rho 15743 * seg16AccY16 rho +
            (seg16AccY16 rho - seg16AccX16 rho * (-1)) * (rho 15743 + rho 15744) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15750 * (1 - rho 15748) = rho 15745 - rho 15746 - rho 15747 := ha5
        _ = (-1) * rho 15746 - rho 15747 + (seg16AccY16 rho - seg16AccX16 rho * (-1)) * (rho 15743 + rho 15744) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX17 rho = seg16AccX16 rho - Bool.toZMod bit * (seg16AccX16 rho - rho 15749) := by
      have hd : rho 15751 = Bool.toZMod bit * (rho 15749 - seg16AccX16 rho) := by
        rw [← hbit]
        unfold seg16AccX16
        linear_combination -r3179
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY17 rho = seg16AccY16 rho - Bool.toZMod bit * (seg16AccY16 rho - rho 15750) := by
      have hd : rho 15752 = Bool.toZMod bit * (rho 15750 - seg16AccY16 rho) := by
        rw [← hbit]
        unfold seg16AccY16
        linear_combination -r3180
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15743 * rho 15744 = rho 15753 := by linear_combination r3181
    have hd1 : rho 15743 * rho 15743 = rho 15754 := by linear_combination r3182
    have hd2 : rho 15744 * rho 15744 = rho 15755 := by linear_combination r3183
    have hd3 : rho 15756 * (rho 15744 * rho 15744 + rho 15743 * rho 15743 * (-1)) = 2 * (rho 15743 * rho 15744) := by
      rw [hd0, hd1, hd2]
      linear_combination r3184
    have hd4 : rho 15757 * (2 - (rho 15744 * rho 15744 + rho 15743 * rho 15743 * (-1))) = rho 15744 * rho 15744 - rho 15743 * rho 15743 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3185
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX16 rho : Seg16.F), (seg16AccY16 rho : Seg16.F)⟩
      ⟨(rho 15743 : Seg16.F), (rho 15744 : Seg16.F)⟩
      ⟨(rho 15749 : Seg16.F), (rho 15750 : Seg16.F)⟩
      ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
      ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg16_rows17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3186 rho ∧ Seg16.relationRow3187 rho ∧ Seg16.relationRow3188 rho ∧ Seg16.relationRow3189 rho ∧ Seg16.relationRow3190 rho ∧ Seg16.relationRow3191 rho ∧ Seg16.relationRow3192 rho ∧ Seg16.relationRow3193 rho ∧ Seg16.relationRow3194 rho ∧ Seg16.relationRow3195 rho ∧ Seg16.relationRow3196 rho ∧ Seg16.relationRow3197 rho ∧ Seg16.relationRow3198 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, _⟩
  exact ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩

theorem seg16_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15309 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩ := by
  obtain ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩ := seg16_rows17 rho h
  unfold Seg16.relationRow3186 at r3186
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3186
  unfold Seg16.relationRow3187 at r3187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187
  unfold Seg16.relationRow3188 at r3188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3188
  unfold Seg16.relationRow3189 at r3189
  unfold Seg16.relationRow3190 at r3190
  unfold Seg16.relationRow3191 at r3191
  unfold Seg16.relationRow3192 at r3192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3192
  unfold Seg16.relationRow3193 at r3193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3193
  unfold Seg16.relationRow3194 at r3194
  unfold Seg16.relationRow3195 at r3195
  unfold Seg16.relationRow3196 at r3196
  unfold Seg16.relationRow3197 at r3197
  unfold Seg16.relationRow3198 at r3198
  have hrung17 (bit : Bool) (hbit : rho 15309 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
        ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩ := by
    have hnextx : seg16AccX18 rho = seg16AccX17 rho + rho 15764 := by
      unfold seg16AccX18 seg16AccX17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 17]
      ring
    have hnexty : seg16AccY18 rho = seg16AccY17 rho + rho 15765 := by
      unfold seg16AccY18 seg16AccY17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 17]
      ring
    have ha0 : (rho 15756 + rho 15757) * (seg16AccX17 rho + seg16AccY17 rho) = rho 15758 := by
      unfold seg16AccX17 seg16AccY17
      linear_combination r3186
    have ha1 : rho 15757 * seg16AccX17 rho = rho 15759 := by
      unfold seg16AccX17
      linear_combination r3187
    have ha2 : rho 15756 * seg16AccY17 rho = rho 15760 := by
      unfold seg16AccY17
      linear_combination r3188
    have ha3 : 3021 * rho 15759 * rho 15760 = rho 15761 := by
      linear_combination r3189
    have ha4 : rho 15762 * (1 + rho 15761) = rho 15759 + rho 15760 := by
      linear_combination r3190
    have ha5 : rho 15763 * (1 - rho 15761) = rho 15758 - rho 15759 - rho 15760 := by
      linear_combination r3191
    have haddx :
        rho 15762 * (1 + 3021 * (rho 15757 * seg16AccX17 rho) * (rho 15756 * seg16AccY17 rho)) =
          rho 15757 * seg16AccX17 rho + rho 15756 * seg16AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15763 * (1 - 3021 * (rho 15757 * seg16AccX17 rho) * (rho 15756 * seg16AccY17 rho)) =
          (-1) * (rho 15757 * seg16AccX17 rho) - rho 15756 * seg16AccY17 rho +
            (seg16AccY17 rho - seg16AccX17 rho * (-1)) * (rho 15756 + rho 15757) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15763 * (1 - rho 15761) = rho 15758 - rho 15759 - rho 15760 := ha5
        _ = (-1) * rho 15759 - rho 15760 + (seg16AccY17 rho - seg16AccX17 rho * (-1)) * (rho 15756 + rho 15757) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX18 rho = seg16AccX17 rho - Bool.toZMod bit * (seg16AccX17 rho - rho 15762) := by
      have hd : rho 15764 = Bool.toZMod bit * (rho 15762 - seg16AccX17 rho) := by
        rw [← hbit]
        unfold seg16AccX17
        linear_combination -r3192
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY18 rho = seg16AccY17 rho - Bool.toZMod bit * (seg16AccY17 rho - rho 15763) := by
      have hd : rho 15765 = Bool.toZMod bit * (rho 15763 - seg16AccY17 rho) := by
        rw [← hbit]
        unfold seg16AccY17
        linear_combination -r3193
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15756 * rho 15757 = rho 15766 := by linear_combination r3194
    have hd1 : rho 15756 * rho 15756 = rho 15767 := by linear_combination r3195
    have hd2 : rho 15757 * rho 15757 = rho 15768 := by linear_combination r3196
    have hd3 : rho 15769 * (rho 15757 * rho 15757 + rho 15756 * rho 15756 * (-1)) = 2 * (rho 15756 * rho 15757) := by
      rw [hd0, hd1, hd2]
      linear_combination r3197
    have hd4 : rho 15770 * (2 - (rho 15757 * rho 15757 + rho 15756 * rho 15756 * (-1))) = rho 15757 * rho 15757 - rho 15756 * rho 15756 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3198
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX17 rho : Seg16.F), (seg16AccY17 rho : Seg16.F)⟩
      ⟨(rho 15756 : Seg16.F), (rho 15757 : Seg16.F)⟩
      ⟨(rho 15762 : Seg16.F), (rho 15763 : Seg16.F)⟩
      ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
      ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg16_rows18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3199 rho ∧ Seg16.relationRow3200 rho ∧ Seg16.relationRow3201 rho ∧ Seg16.relationRow3202 rho ∧ Seg16.relationRow3203 rho ∧ Seg16.relationRow3204 rho ∧ Seg16.relationRow3205 rho ∧ Seg16.relationRow3206 rho ∧ Seg16.relationRow3207 rho ∧ Seg16.relationRow3208 rho ∧ Seg16.relationRow3209 rho ∧ Seg16.relationRow3210 rho ∧ Seg16.relationRow3211 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3199⟩
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩

theorem seg16_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15310 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩ := by
  obtain ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩ := seg16_rows18 rho h
  unfold Seg16.relationRow3199 at r3199
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3199
  unfold Seg16.relationRow3200 at r3200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200
  unfold Seg16.relationRow3201 at r3201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3201
  unfold Seg16.relationRow3202 at r3202
  unfold Seg16.relationRow3203 at r3203
  unfold Seg16.relationRow3204 at r3204
  unfold Seg16.relationRow3205 at r3205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3205
  unfold Seg16.relationRow3206 at r3206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3206
  unfold Seg16.relationRow3207 at r3207
  unfold Seg16.relationRow3208 at r3208
  unfold Seg16.relationRow3209 at r3209
  unfold Seg16.relationRow3210 at r3210
  unfold Seg16.relationRow3211 at r3211
  have hrung18 (bit : Bool) (hbit : rho 15310 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
        ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩ := by
    have hnextx : seg16AccX19 rho = seg16AccX18 rho + rho 15777 := by
      unfold seg16AccX19 seg16AccX18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 18]
      ring
    have hnexty : seg16AccY19 rho = seg16AccY18 rho + rho 15778 := by
      unfold seg16AccY19 seg16AccY18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 18]
      ring
    have ha0 : (rho 15769 + rho 15770) * (seg16AccX18 rho + seg16AccY18 rho) = rho 15771 := by
      unfold seg16AccX18 seg16AccY18
      linear_combination r3199
    have ha1 : rho 15770 * seg16AccX18 rho = rho 15772 := by
      unfold seg16AccX18
      linear_combination r3200
    have ha2 : rho 15769 * seg16AccY18 rho = rho 15773 := by
      unfold seg16AccY18
      linear_combination r3201
    have ha3 : 3021 * rho 15772 * rho 15773 = rho 15774 := by
      linear_combination r3202
    have ha4 : rho 15775 * (1 + rho 15774) = rho 15772 + rho 15773 := by
      linear_combination r3203
    have ha5 : rho 15776 * (1 - rho 15774) = rho 15771 - rho 15772 - rho 15773 := by
      linear_combination r3204
    have haddx :
        rho 15775 * (1 + 3021 * (rho 15770 * seg16AccX18 rho) * (rho 15769 * seg16AccY18 rho)) =
          rho 15770 * seg16AccX18 rho + rho 15769 * seg16AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15776 * (1 - 3021 * (rho 15770 * seg16AccX18 rho) * (rho 15769 * seg16AccY18 rho)) =
          (-1) * (rho 15770 * seg16AccX18 rho) - rho 15769 * seg16AccY18 rho +
            (seg16AccY18 rho - seg16AccX18 rho * (-1)) * (rho 15769 + rho 15770) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15776 * (1 - rho 15774) = rho 15771 - rho 15772 - rho 15773 := ha5
        _ = (-1) * rho 15772 - rho 15773 + (seg16AccY18 rho - seg16AccX18 rho * (-1)) * (rho 15769 + rho 15770) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX19 rho = seg16AccX18 rho - Bool.toZMod bit * (seg16AccX18 rho - rho 15775) := by
      have hd : rho 15777 = Bool.toZMod bit * (rho 15775 - seg16AccX18 rho) := by
        rw [← hbit]
        unfold seg16AccX18
        linear_combination -r3205
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY19 rho = seg16AccY18 rho - Bool.toZMod bit * (seg16AccY18 rho - rho 15776) := by
      have hd : rho 15778 = Bool.toZMod bit * (rho 15776 - seg16AccY18 rho) := by
        rw [← hbit]
        unfold seg16AccY18
        linear_combination -r3206
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15769 * rho 15770 = rho 15779 := by linear_combination r3207
    have hd1 : rho 15769 * rho 15769 = rho 15780 := by linear_combination r3208
    have hd2 : rho 15770 * rho 15770 = rho 15781 := by linear_combination r3209
    have hd3 : rho 15782 * (rho 15770 * rho 15770 + rho 15769 * rho 15769 * (-1)) = 2 * (rho 15769 * rho 15770) := by
      rw [hd0, hd1, hd2]
      linear_combination r3210
    have hd4 : rho 15783 * (2 - (rho 15770 * rho 15770 + rho 15769 * rho 15769 * (-1))) = rho 15770 * rho 15770 - rho 15769 * rho 15769 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3211
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX18 rho : Seg16.F), (seg16AccY18 rho : Seg16.F)⟩
      ⟨(rho 15769 : Seg16.F), (rho 15770 : Seg16.F)⟩
      ⟨(rho 15775 : Seg16.F), (rho 15776 : Seg16.F)⟩
      ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
      ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg16_rows19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3212 rho ∧ Seg16.relationRow3213 rho ∧ Seg16.relationRow3214 rho ∧ Seg16.relationRow3215 rho ∧ Seg16.relationRow3216 rho ∧ Seg16.relationRow3217 rho ∧ Seg16.relationRow3218 rho ∧ Seg16.relationRow3219 rho ∧ Seg16.relationRow3220 rho ∧ Seg16.relationRow3221 rho ∧ Seg16.relationRow3222 rho ∧ Seg16.relationRow3223 rho ∧ Seg16.relationRow3224 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩

theorem seg16_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15311 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩ := by
  obtain ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩ := seg16_rows19 rho h
  unfold Seg16.relationRow3212 at r3212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3212
  unfold Seg16.relationRow3213 at r3213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213
  unfold Seg16.relationRow3214 at r3214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3214
  unfold Seg16.relationRow3215 at r3215
  unfold Seg16.relationRow3216 at r3216
  unfold Seg16.relationRow3217 at r3217
  unfold Seg16.relationRow3218 at r3218
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3218
  unfold Seg16.relationRow3219 at r3219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3219
  unfold Seg16.relationRow3220 at r3220
  unfold Seg16.relationRow3221 at r3221
  unfold Seg16.relationRow3222 at r3222
  unfold Seg16.relationRow3223 at r3223
  unfold Seg16.relationRow3224 at r3224
  have hrung19 (bit : Bool) (hbit : rho 15311 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
        ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩ := by
    have hnextx : seg16AccX20 rho = seg16AccX19 rho + rho 15790 := by
      unfold seg16AccX20 seg16AccX19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 19]
      ring
    have hnexty : seg16AccY20 rho = seg16AccY19 rho + rho 15791 := by
      unfold seg16AccY20 seg16AccY19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 19]
      ring
    have ha0 : (rho 15782 + rho 15783) * (seg16AccX19 rho + seg16AccY19 rho) = rho 15784 := by
      unfold seg16AccX19 seg16AccY19
      linear_combination r3212
    have ha1 : rho 15783 * seg16AccX19 rho = rho 15785 := by
      unfold seg16AccX19
      linear_combination r3213
    have ha2 : rho 15782 * seg16AccY19 rho = rho 15786 := by
      unfold seg16AccY19
      linear_combination r3214
    have ha3 : 3021 * rho 15785 * rho 15786 = rho 15787 := by
      linear_combination r3215
    have ha4 : rho 15788 * (1 + rho 15787) = rho 15785 + rho 15786 := by
      linear_combination r3216
    have ha5 : rho 15789 * (1 - rho 15787) = rho 15784 - rho 15785 - rho 15786 := by
      linear_combination r3217
    have haddx :
        rho 15788 * (1 + 3021 * (rho 15783 * seg16AccX19 rho) * (rho 15782 * seg16AccY19 rho)) =
          rho 15783 * seg16AccX19 rho + rho 15782 * seg16AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15789 * (1 - 3021 * (rho 15783 * seg16AccX19 rho) * (rho 15782 * seg16AccY19 rho)) =
          (-1) * (rho 15783 * seg16AccX19 rho) - rho 15782 * seg16AccY19 rho +
            (seg16AccY19 rho - seg16AccX19 rho * (-1)) * (rho 15782 + rho 15783) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15789 * (1 - rho 15787) = rho 15784 - rho 15785 - rho 15786 := ha5
        _ = (-1) * rho 15785 - rho 15786 + (seg16AccY19 rho - seg16AccX19 rho * (-1)) * (rho 15782 + rho 15783) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX20 rho = seg16AccX19 rho - Bool.toZMod bit * (seg16AccX19 rho - rho 15788) := by
      have hd : rho 15790 = Bool.toZMod bit * (rho 15788 - seg16AccX19 rho) := by
        rw [← hbit]
        unfold seg16AccX19
        linear_combination -r3218
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY20 rho = seg16AccY19 rho - Bool.toZMod bit * (seg16AccY19 rho - rho 15789) := by
      have hd : rho 15791 = Bool.toZMod bit * (rho 15789 - seg16AccY19 rho) := by
        rw [← hbit]
        unfold seg16AccY19
        linear_combination -r3219
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15782 * rho 15783 = rho 15792 := by linear_combination r3220
    have hd1 : rho 15782 * rho 15782 = rho 15793 := by linear_combination r3221
    have hd2 : rho 15783 * rho 15783 = rho 15794 := by linear_combination r3222
    have hd3 : rho 15795 * (rho 15783 * rho 15783 + rho 15782 * rho 15782 * (-1)) = 2 * (rho 15782 * rho 15783) := by
      rw [hd0, hd1, hd2]
      linear_combination r3223
    have hd4 : rho 15796 * (2 - (rho 15783 * rho 15783 + rho 15782 * rho 15782 * (-1))) = rho 15783 * rho 15783 - rho 15782 * rho 15782 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3224
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX19 rho : Seg16.F), (seg16AccY19 rho : Seg16.F)⟩
      ⟨(rho 15782 : Seg16.F), (rho 15783 : Seg16.F)⟩
      ⟨(rho 15788 : Seg16.F), (rho 15789 : Seg16.F)⟩
      ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
      ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg16_rows20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3225 rho ∧ Seg16.relationRow3226 rho ∧ Seg16.relationRow3227 rho ∧ Seg16.relationRow3228 rho ∧ Seg16.relationRow3229 rho ∧ Seg16.relationRow3230 rho ∧ Seg16.relationRow3231 rho ∧ Seg16.relationRow3232 rho ∧ Seg16.relationRow3233 rho ∧ Seg16.relationRow3234 rho ∧ Seg16.relationRow3235 rho ∧ Seg16.relationRow3236 rho ∧ Seg16.relationRow3237 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩

theorem seg16_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15312 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩ := by
  obtain ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩ := seg16_rows20 rho h
  unfold Seg16.relationRow3225 at r3225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3225
  unfold Seg16.relationRow3226 at r3226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226
  unfold Seg16.relationRow3227 at r3227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3227
  unfold Seg16.relationRow3228 at r3228
  unfold Seg16.relationRow3229 at r3229
  unfold Seg16.relationRow3230 at r3230
  unfold Seg16.relationRow3231 at r3231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3231
  unfold Seg16.relationRow3232 at r3232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3232
  unfold Seg16.relationRow3233 at r3233
  unfold Seg16.relationRow3234 at r3234
  unfold Seg16.relationRow3235 at r3235
  unfold Seg16.relationRow3236 at r3236
  unfold Seg16.relationRow3237 at r3237
  have hrung20 (bit : Bool) (hbit : rho 15312 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
        ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩ := by
    have hnextx : seg16AccX21 rho = seg16AccX20 rho + rho 15803 := by
      unfold seg16AccX21 seg16AccX20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 20]
      ring
    have hnexty : seg16AccY21 rho = seg16AccY20 rho + rho 15804 := by
      unfold seg16AccY21 seg16AccY20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 20]
      ring
    have ha0 : (rho 15795 + rho 15796) * (seg16AccX20 rho + seg16AccY20 rho) = rho 15797 := by
      unfold seg16AccX20 seg16AccY20
      linear_combination r3225
    have ha1 : rho 15796 * seg16AccX20 rho = rho 15798 := by
      unfold seg16AccX20
      linear_combination r3226
    have ha2 : rho 15795 * seg16AccY20 rho = rho 15799 := by
      unfold seg16AccY20
      linear_combination r3227
    have ha3 : 3021 * rho 15798 * rho 15799 = rho 15800 := by
      linear_combination r3228
    have ha4 : rho 15801 * (1 + rho 15800) = rho 15798 + rho 15799 := by
      linear_combination r3229
    have ha5 : rho 15802 * (1 - rho 15800) = rho 15797 - rho 15798 - rho 15799 := by
      linear_combination r3230
    have haddx :
        rho 15801 * (1 + 3021 * (rho 15796 * seg16AccX20 rho) * (rho 15795 * seg16AccY20 rho)) =
          rho 15796 * seg16AccX20 rho + rho 15795 * seg16AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15802 * (1 - 3021 * (rho 15796 * seg16AccX20 rho) * (rho 15795 * seg16AccY20 rho)) =
          (-1) * (rho 15796 * seg16AccX20 rho) - rho 15795 * seg16AccY20 rho +
            (seg16AccY20 rho - seg16AccX20 rho * (-1)) * (rho 15795 + rho 15796) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15802 * (1 - rho 15800) = rho 15797 - rho 15798 - rho 15799 := ha5
        _ = (-1) * rho 15798 - rho 15799 + (seg16AccY20 rho - seg16AccX20 rho * (-1)) * (rho 15795 + rho 15796) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX21 rho = seg16AccX20 rho - Bool.toZMod bit * (seg16AccX20 rho - rho 15801) := by
      have hd : rho 15803 = Bool.toZMod bit * (rho 15801 - seg16AccX20 rho) := by
        rw [← hbit]
        unfold seg16AccX20
        linear_combination -r3231
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY21 rho = seg16AccY20 rho - Bool.toZMod bit * (seg16AccY20 rho - rho 15802) := by
      have hd : rho 15804 = Bool.toZMod bit * (rho 15802 - seg16AccY20 rho) := by
        rw [← hbit]
        unfold seg16AccY20
        linear_combination -r3232
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15795 * rho 15796 = rho 15805 := by linear_combination r3233
    have hd1 : rho 15795 * rho 15795 = rho 15806 := by linear_combination r3234
    have hd2 : rho 15796 * rho 15796 = rho 15807 := by linear_combination r3235
    have hd3 : rho 15808 * (rho 15796 * rho 15796 + rho 15795 * rho 15795 * (-1)) = 2 * (rho 15795 * rho 15796) := by
      rw [hd0, hd1, hd2]
      linear_combination r3236
    have hd4 : rho 15809 * (2 - (rho 15796 * rho 15796 + rho 15795 * rho 15795 * (-1))) = rho 15796 * rho 15796 - rho 15795 * rho 15795 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3237
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX20 rho : Seg16.F), (seg16AccY20 rho : Seg16.F)⟩
      ⟨(rho 15795 : Seg16.F), (rho 15796 : Seg16.F)⟩
      ⟨(rho 15801 : Seg16.F), (rho 15802 : Seg16.F)⟩
      ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
      ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg16_rows21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3238 rho ∧ Seg16.relationRow3239 rho ∧ Seg16.relationRow3240 rho ∧ Seg16.relationRow3241 rho ∧ Seg16.relationRow3242 rho ∧ Seg16.relationRow3243 rho ∧ Seg16.relationRow3244 rho ∧ Seg16.relationRow3245 rho ∧ Seg16.relationRow3246 rho ∧ Seg16.relationRow3247 rho ∧ Seg16.relationRow3248 rho ∧ Seg16.relationRow3249 rho ∧ Seg16.relationRow3250 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩

theorem seg16_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15313 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
        ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
        ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩ := by
  obtain ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩ := seg16_rows21 rho h
  unfold Seg16.relationRow3238 at r3238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3238
  unfold Seg16.relationRow3239 at r3239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239
  unfold Seg16.relationRow3240 at r3240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3240
  unfold Seg16.relationRow3241 at r3241
  unfold Seg16.relationRow3242 at r3242
  unfold Seg16.relationRow3243 at r3243
  unfold Seg16.relationRow3244 at r3244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3244
  unfold Seg16.relationRow3245 at r3245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3245
  unfold Seg16.relationRow3246 at r3246
  unfold Seg16.relationRow3247 at r3247
  unfold Seg16.relationRow3248 at r3248
  unfold Seg16.relationRow3249 at r3249
  unfold Seg16.relationRow3250 at r3250
  have hrung21 (bit : Bool) (hbit : rho 15313 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
        ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
        ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
        ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩ := by
    have hnextx : seg16AccX22 rho = seg16AccX21 rho + rho 15816 := by
      unfold seg16AccX22 seg16AccX21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 21]
      ring
    have hnexty : seg16AccY22 rho = seg16AccY21 rho + rho 15817 := by
      unfold seg16AccY22 seg16AccY21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 21]
      ring
    have ha0 : (rho 15808 + rho 15809) * (seg16AccX21 rho + seg16AccY21 rho) = rho 15810 := by
      unfold seg16AccX21 seg16AccY21
      linear_combination r3238
    have ha1 : rho 15809 * seg16AccX21 rho = rho 15811 := by
      unfold seg16AccX21
      linear_combination r3239
    have ha2 : rho 15808 * seg16AccY21 rho = rho 15812 := by
      unfold seg16AccY21
      linear_combination r3240
    have ha3 : 3021 * rho 15811 * rho 15812 = rho 15813 := by
      linear_combination r3241
    have ha4 : rho 15814 * (1 + rho 15813) = rho 15811 + rho 15812 := by
      linear_combination r3242
    have ha5 : rho 15815 * (1 - rho 15813) = rho 15810 - rho 15811 - rho 15812 := by
      linear_combination r3243
    have haddx :
        rho 15814 * (1 + 3021 * (rho 15809 * seg16AccX21 rho) * (rho 15808 * seg16AccY21 rho)) =
          rho 15809 * seg16AccX21 rho + rho 15808 * seg16AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 15815 * (1 - 3021 * (rho 15809 * seg16AccX21 rho) * (rho 15808 * seg16AccY21 rho)) =
          (-1) * (rho 15809 * seg16AccX21 rho) - rho 15808 * seg16AccY21 rho +
            (seg16AccY21 rho - seg16AccX21 rho * (-1)) * (rho 15808 + rho 15809) := by
      rw [ha1, ha2, ha3]
      calc
        rho 15815 * (1 - rho 15813) = rho 15810 - rho 15811 - rho 15812 := ha5
        _ = (-1) * rho 15811 - rho 15812 + (seg16AccY21 rho - seg16AccX21 rho * (-1)) * (rho 15808 + rho 15809) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX22 rho = seg16AccX21 rho - Bool.toZMod bit * (seg16AccX21 rho - rho 15814) := by
      have hd : rho 15816 = Bool.toZMod bit * (rho 15814 - seg16AccX21 rho) := by
        rw [← hbit]
        unfold seg16AccX21
        linear_combination -r3244
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY22 rho = seg16AccY21 rho - Bool.toZMod bit * (seg16AccY21 rho - rho 15815) := by
      have hd : rho 15817 = Bool.toZMod bit * (rho 15815 - seg16AccY21 rho) := by
        rw [← hbit]
        unfold seg16AccY21
        linear_combination -r3245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 15808 * rho 15809 = rho 15818 := by linear_combination r3246
    have hd1 : rho 15808 * rho 15808 = rho 15819 := by linear_combination r3247
    have hd2 : rho 15809 * rho 15809 = rho 15820 := by linear_combination r3248
    have hd3 : rho 15821 * (rho 15809 * rho 15809 + rho 15808 * rho 15808 * (-1)) = 2 * (rho 15808 * rho 15809) := by
      rw [hd0, hd1, hd2]
      linear_combination r3249
    have hd4 : rho 15822 * (2 - (rho 15809 * rho 15809 + rho 15808 * rho 15808 * (-1))) = rho 15809 * rho 15809 - rho 15808 * rho 15808 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX21 rho : Seg16.F), (seg16AccY21 rho : Seg16.F)⟩
      ⟨(rho 15808 : Seg16.F), (rho 15809 : Seg16.F)⟩
      ⟨(rho 15814 : Seg16.F), (rho 15815 : Seg16.F)⟩
      ⟨(seg16AccX22 rho : Seg16.F), (seg16AccY22 rho : Seg16.F)⟩
      ⟨(rho 15821 : Seg16.F), (rho 15822 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg16_hstep_c1 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg16_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg16_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg16_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg16_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg16_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg16_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg16_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg16_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg16_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg16_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
