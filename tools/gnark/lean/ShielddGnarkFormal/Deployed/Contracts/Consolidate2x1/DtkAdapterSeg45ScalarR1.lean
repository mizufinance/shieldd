import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3108 rho ∧ Seg45.relationRow3109 rho ∧ Seg45.relationRow3110 rho ∧ Seg45.relationRow3111 rho ∧ Seg45.relationRow3112 rho ∧ Seg45.relationRow3113 rho ∧ Seg45.relationRow3114 rho ∧ Seg45.relationRow3115 rho ∧ Seg45.relationRow3116 rho ∧ Seg45.relationRow3117 rho ∧ Seg45.relationRow3118 rho ∧ Seg45.relationRow3119 rho ∧ Seg45.relationRow3120 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨r3120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩

theorem seg45_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40959 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
        ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩ := by
  obtain ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩ := seg45_rows11 rho h
  unfold Seg45.relationRow3108 at r3108
  unfold Seg45.relationRow3109 at r3109
  unfold Seg45.relationRow3110 at r3110
  unfold Seg45.relationRow3111 at r3111
  unfold Seg45.relationRow3112 at r3112
  unfold Seg45.relationRow3113 at r3113
  unfold Seg45.relationRow3114 at r3114
  unfold Seg45.relationRow3115 at r3115
  unfold Seg45.relationRow3116 at r3116
  unfold Seg45.relationRow3117 at r3117
  unfold Seg45.relationRow3118 at r3118
  unfold Seg45.relationRow3119 at r3119
  unfold Seg45.relationRow3120 at r3120
  have hrung11 (bit : Bool) (hbit : rho 40959 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
        ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩ := by
    have hnextx : seg45AccX12 rho = seg45AccX11 rho + rho 41342 := by
      unfold seg45AccX12 seg45AccX11
      ring
    have hnexty : seg45AccY12 rho = seg45AccY11 rho + rho 41343 := by
      unfold seg45AccY12 seg45AccY11
      ring
    have ha0 : (rho 41334 + rho 41335) * (seg45AccX11 rho + seg45AccY11 rho) = rho 41336 := by
      unfold seg45AccX11 seg45AccY11
      linear_combination r3108
    have ha1 : rho 41335 * seg45AccX11 rho = rho 41337 := by
      unfold seg45AccX11
      linear_combination r3109
    have ha2 : rho 41334 * seg45AccY11 rho = rho 41338 := by
      unfold seg45AccY11
      linear_combination r3110
    have ha3 : 3021 * rho 41337 * rho 41338 = rho 41339 := by
      linear_combination r3111
    have ha4 : rho 41340 * (1 + rho 41339) = rho 41337 + rho 41338 := by
      linear_combination r3112
    have ha5 : rho 41341 * (1 - rho 41339) = rho 41336 - rho 41337 - rho 41338 := by
      linear_combination r3113
    have haddx :
        rho 41340 * (1 + 3021 * (rho 41335 * seg45AccX11 rho) * (rho 41334 * seg45AccY11 rho)) =
          rho 41335 * seg45AccX11 rho + rho 41334 * seg45AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41341 * (1 - 3021 * (rho 41335 * seg45AccX11 rho) * (rho 41334 * seg45AccY11 rho)) =
          (-1) * (rho 41335 * seg45AccX11 rho) - rho 41334 * seg45AccY11 rho +
            (seg45AccY11 rho - seg45AccX11 rho * (-1)) * (rho 41334 + rho 41335) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41341 * (1 - rho 41339) = rho 41336 - rho 41337 - rho 41338 := ha5
        _ = (-1) * rho 41337 - rho 41338 + (seg45AccY11 rho - seg45AccX11 rho * (-1)) * (rho 41334 + rho 41335) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX12 rho = seg45AccX11 rho - Bool.toZMod bit * (seg45AccX11 rho - rho 41340) := by
      have hd : rho 41342 = Bool.toZMod bit * (rho 41340 - seg45AccX11 rho) := by
        rw [← hbit]
        unfold seg45AccX11
        linear_combination -r3114
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY12 rho = seg45AccY11 rho - Bool.toZMod bit * (seg45AccY11 rho - rho 41341) := by
      have hd : rho 41343 = Bool.toZMod bit * (rho 41341 - seg45AccY11 rho) := by
        rw [← hbit]
        unfold seg45AccY11
        linear_combination -r3115
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41334 * rho 41335 = rho 41344 := by linear_combination r3116
    have hd1 : rho 41334 * rho 41334 = rho 41345 := by linear_combination r3117
    have hd2 : rho 41335 * rho 41335 = rho 41346 := by linear_combination r3118
    have hd3 : rho 41347 * (rho 41335 * rho 41335 + rho 41334 * rho 41334 * (-1)) = 2 * (rho 41334 * rho 41335) := by
      rw [hd0, hd1, hd2]
      linear_combination r3119
    have hd4 : rho 41348 * (2 - (rho 41335 * rho 41335 + rho 41334 * rho 41334 * (-1))) = rho 41335 * rho 41335 - rho 41334 * rho 41334 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3120
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX11 rho : Seg45.F), (seg45AccY11 rho : Seg45.F)⟩
      ⟨(rho 41334 : Seg45.F), (rho 41335 : Seg45.F)⟩
      ⟨(rho 41340 : Seg45.F), (rho 41341 : Seg45.F)⟩
      ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
      ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg45_rows12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3121 rho ∧ Seg45.relationRow3122 rho ∧ Seg45.relationRow3123 rho ∧ Seg45.relationRow3124 rho ∧ Seg45.relationRow3125 rho ∧ Seg45.relationRow3126 rho ∧ Seg45.relationRow3127 rho ∧ Seg45.relationRow3128 rho ∧ Seg45.relationRow3129 rho ∧ Seg45.relationRow3130 rho ∧ Seg45.relationRow3131 rho ∧ Seg45.relationRow3132 rho ∧ Seg45.relationRow3133 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩

theorem seg45_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40960 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩ := by
  obtain ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩ := seg45_rows12 rho h
  unfold Seg45.relationRow3121 at r3121
  unfold Seg45.relationRow3122 at r3122
  unfold Seg45.relationRow3123 at r3123
  unfold Seg45.relationRow3124 at r3124
  unfold Seg45.relationRow3125 at r3125
  unfold Seg45.relationRow3126 at r3126
  unfold Seg45.relationRow3127 at r3127
  unfold Seg45.relationRow3128 at r3128
  unfold Seg45.relationRow3129 at r3129
  unfold Seg45.relationRow3130 at r3130
  unfold Seg45.relationRow3131 at r3131
  unfold Seg45.relationRow3132 at r3132
  unfold Seg45.relationRow3133 at r3133
  have hrung12 (bit : Bool) (hbit : rho 40960 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
        ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩ := by
    have hnextx : seg45AccX13 rho = seg45AccX12 rho + rho 41355 := by
      unfold seg45AccX13 seg45AccX12
      ring
    have hnexty : seg45AccY13 rho = seg45AccY12 rho + rho 41356 := by
      unfold seg45AccY13 seg45AccY12
      ring
    have ha0 : (rho 41347 + rho 41348) * (seg45AccX12 rho + seg45AccY12 rho) = rho 41349 := by
      unfold seg45AccX12 seg45AccY12
      linear_combination r3121
    have ha1 : rho 41348 * seg45AccX12 rho = rho 41350 := by
      unfold seg45AccX12
      linear_combination r3122
    have ha2 : rho 41347 * seg45AccY12 rho = rho 41351 := by
      unfold seg45AccY12
      linear_combination r3123
    have ha3 : 3021 * rho 41350 * rho 41351 = rho 41352 := by
      linear_combination r3124
    have ha4 : rho 41353 * (1 + rho 41352) = rho 41350 + rho 41351 := by
      linear_combination r3125
    have ha5 : rho 41354 * (1 - rho 41352) = rho 41349 - rho 41350 - rho 41351 := by
      linear_combination r3126
    have haddx :
        rho 41353 * (1 + 3021 * (rho 41348 * seg45AccX12 rho) * (rho 41347 * seg45AccY12 rho)) =
          rho 41348 * seg45AccX12 rho + rho 41347 * seg45AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41354 * (1 - 3021 * (rho 41348 * seg45AccX12 rho) * (rho 41347 * seg45AccY12 rho)) =
          (-1) * (rho 41348 * seg45AccX12 rho) - rho 41347 * seg45AccY12 rho +
            (seg45AccY12 rho - seg45AccX12 rho * (-1)) * (rho 41347 + rho 41348) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41354 * (1 - rho 41352) = rho 41349 - rho 41350 - rho 41351 := ha5
        _ = (-1) * rho 41350 - rho 41351 + (seg45AccY12 rho - seg45AccX12 rho * (-1)) * (rho 41347 + rho 41348) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX13 rho = seg45AccX12 rho - Bool.toZMod bit * (seg45AccX12 rho - rho 41353) := by
      have hd : rho 41355 = Bool.toZMod bit * (rho 41353 - seg45AccX12 rho) := by
        rw [← hbit]
        unfold seg45AccX12
        linear_combination -r3127
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY13 rho = seg45AccY12 rho - Bool.toZMod bit * (seg45AccY12 rho - rho 41354) := by
      have hd : rho 41356 = Bool.toZMod bit * (rho 41354 - seg45AccY12 rho) := by
        rw [← hbit]
        unfold seg45AccY12
        linear_combination -r3128
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41347 * rho 41348 = rho 41357 := by linear_combination r3129
    have hd1 : rho 41347 * rho 41347 = rho 41358 := by linear_combination r3130
    have hd2 : rho 41348 * rho 41348 = rho 41359 := by linear_combination r3131
    have hd3 : rho 41360 * (rho 41348 * rho 41348 + rho 41347 * rho 41347 * (-1)) = 2 * (rho 41347 * rho 41348) := by
      rw [hd0, hd1, hd2]
      linear_combination r3132
    have hd4 : rho 41361 * (2 - (rho 41348 * rho 41348 + rho 41347 * rho 41347 * (-1))) = rho 41348 * rho 41348 - rho 41347 * rho 41347 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3133
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX12 rho : Seg45.F), (seg45AccY12 rho : Seg45.F)⟩
      ⟨(rho 41347 : Seg45.F), (rho 41348 : Seg45.F)⟩
      ⟨(rho 41353 : Seg45.F), (rho 41354 : Seg45.F)⟩
      ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
      ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg45_rows13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3134 rho ∧ Seg45.relationRow3135 rho ∧ Seg45.relationRow3136 rho ∧ Seg45.relationRow3137 rho ∧ Seg45.relationRow3138 rho ∧ Seg45.relationRow3139 rho ∧ Seg45.relationRow3140 rho ∧ Seg45.relationRow3141 rho ∧ Seg45.relationRow3142 rho ∧ Seg45.relationRow3143 rho ∧ Seg45.relationRow3144 rho ∧ Seg45.relationRow3145 rho ∧ Seg45.relationRow3146 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩

theorem seg45_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40961 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩ := by
  obtain ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩ := seg45_rows13 rho h
  unfold Seg45.relationRow3134 at r3134
  unfold Seg45.relationRow3135 at r3135
  unfold Seg45.relationRow3136 at r3136
  unfold Seg45.relationRow3137 at r3137
  unfold Seg45.relationRow3138 at r3138
  unfold Seg45.relationRow3139 at r3139
  unfold Seg45.relationRow3140 at r3140
  unfold Seg45.relationRow3141 at r3141
  unfold Seg45.relationRow3142 at r3142
  unfold Seg45.relationRow3143 at r3143
  unfold Seg45.relationRow3144 at r3144
  unfold Seg45.relationRow3145 at r3145
  unfold Seg45.relationRow3146 at r3146
  have hrung13 (bit : Bool) (hbit : rho 40961 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
        ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩ := by
    have hnextx : seg45AccX14 rho = seg45AccX13 rho + rho 41368 := by
      unfold seg45AccX14 seg45AccX13
      ring
    have hnexty : seg45AccY14 rho = seg45AccY13 rho + rho 41369 := by
      unfold seg45AccY14 seg45AccY13
      ring
    have ha0 : (rho 41360 + rho 41361) * (seg45AccX13 rho + seg45AccY13 rho) = rho 41362 := by
      unfold seg45AccX13 seg45AccY13
      linear_combination r3134
    have ha1 : rho 41361 * seg45AccX13 rho = rho 41363 := by
      unfold seg45AccX13
      linear_combination r3135
    have ha2 : rho 41360 * seg45AccY13 rho = rho 41364 := by
      unfold seg45AccY13
      linear_combination r3136
    have ha3 : 3021 * rho 41363 * rho 41364 = rho 41365 := by
      linear_combination r3137
    have ha4 : rho 41366 * (1 + rho 41365) = rho 41363 + rho 41364 := by
      linear_combination r3138
    have ha5 : rho 41367 * (1 - rho 41365) = rho 41362 - rho 41363 - rho 41364 := by
      linear_combination r3139
    have haddx :
        rho 41366 * (1 + 3021 * (rho 41361 * seg45AccX13 rho) * (rho 41360 * seg45AccY13 rho)) =
          rho 41361 * seg45AccX13 rho + rho 41360 * seg45AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41367 * (1 - 3021 * (rho 41361 * seg45AccX13 rho) * (rho 41360 * seg45AccY13 rho)) =
          (-1) * (rho 41361 * seg45AccX13 rho) - rho 41360 * seg45AccY13 rho +
            (seg45AccY13 rho - seg45AccX13 rho * (-1)) * (rho 41360 + rho 41361) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41367 * (1 - rho 41365) = rho 41362 - rho 41363 - rho 41364 := ha5
        _ = (-1) * rho 41363 - rho 41364 + (seg45AccY13 rho - seg45AccX13 rho * (-1)) * (rho 41360 + rho 41361) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX14 rho = seg45AccX13 rho - Bool.toZMod bit * (seg45AccX13 rho - rho 41366) := by
      have hd : rho 41368 = Bool.toZMod bit * (rho 41366 - seg45AccX13 rho) := by
        rw [← hbit]
        unfold seg45AccX13
        linear_combination -r3140
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY14 rho = seg45AccY13 rho - Bool.toZMod bit * (seg45AccY13 rho - rho 41367) := by
      have hd : rho 41369 = Bool.toZMod bit * (rho 41367 - seg45AccY13 rho) := by
        rw [← hbit]
        unfold seg45AccY13
        linear_combination -r3141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41360 * rho 41361 = rho 41370 := by linear_combination r3142
    have hd1 : rho 41360 * rho 41360 = rho 41371 := by linear_combination r3143
    have hd2 : rho 41361 * rho 41361 = rho 41372 := by linear_combination r3144
    have hd3 : rho 41373 * (rho 41361 * rho 41361 + rho 41360 * rho 41360 * (-1)) = 2 * (rho 41360 * rho 41361) := by
      rw [hd0, hd1, hd2]
      linear_combination r3145
    have hd4 : rho 41374 * (2 - (rho 41361 * rho 41361 + rho 41360 * rho 41360 * (-1))) = rho 41361 * rho 41361 - rho 41360 * rho 41360 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX13 rho : Seg45.F), (seg45AccY13 rho : Seg45.F)⟩
      ⟨(rho 41360 : Seg45.F), (rho 41361 : Seg45.F)⟩
      ⟨(rho 41366 : Seg45.F), (rho 41367 : Seg45.F)⟩
      ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
      ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg45_rows14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3147 rho ∧ Seg45.relationRow3148 rho ∧ Seg45.relationRow3149 rho ∧ Seg45.relationRow3150 rho ∧ Seg45.relationRow3151 rho ∧ Seg45.relationRow3152 rho ∧ Seg45.relationRow3153 rho ∧ Seg45.relationRow3154 rho ∧ Seg45.relationRow3155 rho ∧ Seg45.relationRow3156 rho ∧ Seg45.relationRow3157 rho ∧ Seg45.relationRow3158 rho ∧ Seg45.relationRow3159 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩

theorem seg45_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40962 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩ := by
  obtain ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩ := seg45_rows14 rho h
  unfold Seg45.relationRow3147 at r3147
  unfold Seg45.relationRow3148 at r3148
  unfold Seg45.relationRow3149 at r3149
  unfold Seg45.relationRow3150 at r3150
  unfold Seg45.relationRow3151 at r3151
  unfold Seg45.relationRow3152 at r3152
  unfold Seg45.relationRow3153 at r3153
  unfold Seg45.relationRow3154 at r3154
  unfold Seg45.relationRow3155 at r3155
  unfold Seg45.relationRow3156 at r3156
  unfold Seg45.relationRow3157 at r3157
  unfold Seg45.relationRow3158 at r3158
  unfold Seg45.relationRow3159 at r3159
  have hrung14 (bit : Bool) (hbit : rho 40962 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
        ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩ := by
    have hnextx : seg45AccX15 rho = seg45AccX14 rho + rho 41381 := by
      unfold seg45AccX15 seg45AccX14
      ring
    have hnexty : seg45AccY15 rho = seg45AccY14 rho + rho 41382 := by
      unfold seg45AccY15 seg45AccY14
      ring
    have ha0 : (rho 41373 + rho 41374) * (seg45AccX14 rho + seg45AccY14 rho) = rho 41375 := by
      unfold seg45AccX14 seg45AccY14
      linear_combination r3147
    have ha1 : rho 41374 * seg45AccX14 rho = rho 41376 := by
      unfold seg45AccX14
      linear_combination r3148
    have ha2 : rho 41373 * seg45AccY14 rho = rho 41377 := by
      unfold seg45AccY14
      linear_combination r3149
    have ha3 : 3021 * rho 41376 * rho 41377 = rho 41378 := by
      linear_combination r3150
    have ha4 : rho 41379 * (1 + rho 41378) = rho 41376 + rho 41377 := by
      linear_combination r3151
    have ha5 : rho 41380 * (1 - rho 41378) = rho 41375 - rho 41376 - rho 41377 := by
      linear_combination r3152
    have haddx :
        rho 41379 * (1 + 3021 * (rho 41374 * seg45AccX14 rho) * (rho 41373 * seg45AccY14 rho)) =
          rho 41374 * seg45AccX14 rho + rho 41373 * seg45AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41380 * (1 - 3021 * (rho 41374 * seg45AccX14 rho) * (rho 41373 * seg45AccY14 rho)) =
          (-1) * (rho 41374 * seg45AccX14 rho) - rho 41373 * seg45AccY14 rho +
            (seg45AccY14 rho - seg45AccX14 rho * (-1)) * (rho 41373 + rho 41374) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41380 * (1 - rho 41378) = rho 41375 - rho 41376 - rho 41377 := ha5
        _ = (-1) * rho 41376 - rho 41377 + (seg45AccY14 rho - seg45AccX14 rho * (-1)) * (rho 41373 + rho 41374) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX15 rho = seg45AccX14 rho - Bool.toZMod bit * (seg45AccX14 rho - rho 41379) := by
      have hd : rho 41381 = Bool.toZMod bit * (rho 41379 - seg45AccX14 rho) := by
        rw [← hbit]
        unfold seg45AccX14
        linear_combination -r3153
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY15 rho = seg45AccY14 rho - Bool.toZMod bit * (seg45AccY14 rho - rho 41380) := by
      have hd : rho 41382 = Bool.toZMod bit * (rho 41380 - seg45AccY14 rho) := by
        rw [← hbit]
        unfold seg45AccY14
        linear_combination -r3154
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41373 * rho 41374 = rho 41383 := by linear_combination r3155
    have hd1 : rho 41373 * rho 41373 = rho 41384 := by linear_combination r3156
    have hd2 : rho 41374 * rho 41374 = rho 41385 := by linear_combination r3157
    have hd3 : rho 41386 * (rho 41374 * rho 41374 + rho 41373 * rho 41373 * (-1)) = 2 * (rho 41373 * rho 41374) := by
      rw [hd0, hd1, hd2]
      linear_combination r3158
    have hd4 : rho 41387 * (2 - (rho 41374 * rho 41374 + rho 41373 * rho 41373 * (-1))) = rho 41374 * rho 41374 - rho 41373 * rho 41373 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3159
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX14 rho : Seg45.F), (seg45AccY14 rho : Seg45.F)⟩
      ⟨(rho 41373 : Seg45.F), (rho 41374 : Seg45.F)⟩
      ⟨(rho 41379 : Seg45.F), (rho 41380 : Seg45.F)⟩
      ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
      ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg45_rows15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3160 rho ∧ Seg45.relationRow3161 rho ∧ Seg45.relationRow3162 rho ∧ Seg45.relationRow3163 rho ∧ Seg45.relationRow3164 rho ∧ Seg45.relationRow3165 rho ∧ Seg45.relationRow3166 rho ∧ Seg45.relationRow3167 rho ∧ Seg45.relationRow3168 rho ∧ Seg45.relationRow3169 rho ∧ Seg45.relationRow3170 rho ∧ Seg45.relationRow3171 rho ∧ Seg45.relationRow3172 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩

theorem seg45_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40963 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩ := by
  obtain ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩ := seg45_rows15 rho h
  unfold Seg45.relationRow3160 at r3160
  unfold Seg45.relationRow3161 at r3161
  unfold Seg45.relationRow3162 at r3162
  unfold Seg45.relationRow3163 at r3163
  unfold Seg45.relationRow3164 at r3164
  unfold Seg45.relationRow3165 at r3165
  unfold Seg45.relationRow3166 at r3166
  unfold Seg45.relationRow3167 at r3167
  unfold Seg45.relationRow3168 at r3168
  unfold Seg45.relationRow3169 at r3169
  unfold Seg45.relationRow3170 at r3170
  unfold Seg45.relationRow3171 at r3171
  unfold Seg45.relationRow3172 at r3172
  have hrung15 (bit : Bool) (hbit : rho 40963 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
        ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩ := by
    have hnextx : seg45AccX16 rho = seg45AccX15 rho + rho 41394 := by
      unfold seg45AccX16 seg45AccX15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 41199 13]
      ring
    have hnexty : seg45AccY16 rho = seg45AccY15 rho + rho 41395 := by
      unfold seg45AccY16 seg45AccY15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 41200 13]
      ring
    have ha0 : (rho 41386 + rho 41387) * (seg45AccX15 rho + seg45AccY15 rho) = rho 41388 := by
      unfold seg45AccX15 seg45AccY15
      linear_combination r3160
    have ha1 : rho 41387 * seg45AccX15 rho = rho 41389 := by
      unfold seg45AccX15
      linear_combination r3161
    have ha2 : rho 41386 * seg45AccY15 rho = rho 41390 := by
      unfold seg45AccY15
      linear_combination r3162
    have ha3 : 3021 * rho 41389 * rho 41390 = rho 41391 := by
      linear_combination r3163
    have ha4 : rho 41392 * (1 + rho 41391) = rho 41389 + rho 41390 := by
      linear_combination r3164
    have ha5 : rho 41393 * (1 - rho 41391) = rho 41388 - rho 41389 - rho 41390 := by
      linear_combination r3165
    have haddx :
        rho 41392 * (1 + 3021 * (rho 41387 * seg45AccX15 rho) * (rho 41386 * seg45AccY15 rho)) =
          rho 41387 * seg45AccX15 rho + rho 41386 * seg45AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41393 * (1 - 3021 * (rho 41387 * seg45AccX15 rho) * (rho 41386 * seg45AccY15 rho)) =
          (-1) * (rho 41387 * seg45AccX15 rho) - rho 41386 * seg45AccY15 rho +
            (seg45AccY15 rho - seg45AccX15 rho * (-1)) * (rho 41386 + rho 41387) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41393 * (1 - rho 41391) = rho 41388 - rho 41389 - rho 41390 := ha5
        _ = (-1) * rho 41389 - rho 41390 + (seg45AccY15 rho - seg45AccX15 rho * (-1)) * (rho 41386 + rho 41387) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX16 rho = seg45AccX15 rho - Bool.toZMod bit * (seg45AccX15 rho - rho 41392) := by
      have hd : rho 41394 = Bool.toZMod bit * (rho 41392 - seg45AccX15 rho) := by
        rw [← hbit]
        unfold seg45AccX15
        linear_combination -r3166
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY16 rho = seg45AccY15 rho - Bool.toZMod bit * (seg45AccY15 rho - rho 41393) := by
      have hd : rho 41395 = Bool.toZMod bit * (rho 41393 - seg45AccY15 rho) := by
        rw [← hbit]
        unfold seg45AccY15
        linear_combination -r3167
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41386 * rho 41387 = rho 41396 := by linear_combination r3168
    have hd1 : rho 41386 * rho 41386 = rho 41397 := by linear_combination r3169
    have hd2 : rho 41387 * rho 41387 = rho 41398 := by linear_combination r3170
    have hd3 : rho 41399 * (rho 41387 * rho 41387 + rho 41386 * rho 41386 * (-1)) = 2 * (rho 41386 * rho 41387) := by
      rw [hd0, hd1, hd2]
      linear_combination r3171
    have hd4 : rho 41400 * (2 - (rho 41387 * rho 41387 + rho 41386 * rho 41386 * (-1))) = rho 41387 * rho 41387 - rho 41386 * rho 41386 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3172
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX15 rho : Seg45.F), (seg45AccY15 rho : Seg45.F)⟩
      ⟨(rho 41386 : Seg45.F), (rho 41387 : Seg45.F)⟩
      ⟨(rho 41392 : Seg45.F), (rho 41393 : Seg45.F)⟩
      ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
      ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg45_rows16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3173 rho ∧ Seg45.relationRow3174 rho ∧ Seg45.relationRow3175 rho ∧ Seg45.relationRow3176 rho ∧ Seg45.relationRow3177 rho ∧ Seg45.relationRow3178 rho ∧ Seg45.relationRow3179 rho ∧ Seg45.relationRow3180 rho ∧ Seg45.relationRow3181 rho ∧ Seg45.relationRow3182 rho ∧ Seg45.relationRow3183 rho ∧ Seg45.relationRow3184 rho ∧ Seg45.relationRow3185 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩

theorem seg45_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40964 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩ := by
  obtain ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩ := seg45_rows16 rho h
  unfold Seg45.relationRow3173 at r3173
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3173
  unfold Seg45.relationRow3174 at r3174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174
  unfold Seg45.relationRow3175 at r3175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3175
  unfold Seg45.relationRow3176 at r3176
  unfold Seg45.relationRow3177 at r3177
  unfold Seg45.relationRow3178 at r3178
  unfold Seg45.relationRow3179 at r3179
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3179
  unfold Seg45.relationRow3180 at r3180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3180
  unfold Seg45.relationRow3181 at r3181
  unfold Seg45.relationRow3182 at r3182
  unfold Seg45.relationRow3183 at r3183
  unfold Seg45.relationRow3184 at r3184
  unfold Seg45.relationRow3185 at r3185
  have hrung16 (bit : Bool) (hbit : rho 40964 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
        ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩ := by
    have hnextx : seg45AccX17 rho = seg45AccX16 rho + rho 41407 := by
      unfold seg45AccX17 seg45AccX16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 16]
      ring
    have hnexty : seg45AccY17 rho = seg45AccY16 rho + rho 41408 := by
      unfold seg45AccY17 seg45AccY16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 16]
      ring
    have ha0 : (rho 41399 + rho 41400) * (seg45AccX16 rho + seg45AccY16 rho) = rho 41401 := by
      unfold seg45AccX16 seg45AccY16
      linear_combination r3173
    have ha1 : rho 41400 * seg45AccX16 rho = rho 41402 := by
      unfold seg45AccX16
      linear_combination r3174
    have ha2 : rho 41399 * seg45AccY16 rho = rho 41403 := by
      unfold seg45AccY16
      linear_combination r3175
    have ha3 : 3021 * rho 41402 * rho 41403 = rho 41404 := by
      linear_combination r3176
    have ha4 : rho 41405 * (1 + rho 41404) = rho 41402 + rho 41403 := by
      linear_combination r3177
    have ha5 : rho 41406 * (1 - rho 41404) = rho 41401 - rho 41402 - rho 41403 := by
      linear_combination r3178
    have haddx :
        rho 41405 * (1 + 3021 * (rho 41400 * seg45AccX16 rho) * (rho 41399 * seg45AccY16 rho)) =
          rho 41400 * seg45AccX16 rho + rho 41399 * seg45AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41406 * (1 - 3021 * (rho 41400 * seg45AccX16 rho) * (rho 41399 * seg45AccY16 rho)) =
          (-1) * (rho 41400 * seg45AccX16 rho) - rho 41399 * seg45AccY16 rho +
            (seg45AccY16 rho - seg45AccX16 rho * (-1)) * (rho 41399 + rho 41400) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41406 * (1 - rho 41404) = rho 41401 - rho 41402 - rho 41403 := ha5
        _ = (-1) * rho 41402 - rho 41403 + (seg45AccY16 rho - seg45AccX16 rho * (-1)) * (rho 41399 + rho 41400) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX17 rho = seg45AccX16 rho - Bool.toZMod bit * (seg45AccX16 rho - rho 41405) := by
      have hd : rho 41407 = Bool.toZMod bit * (rho 41405 - seg45AccX16 rho) := by
        rw [← hbit]
        unfold seg45AccX16
        linear_combination -r3179
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY17 rho = seg45AccY16 rho - Bool.toZMod bit * (seg45AccY16 rho - rho 41406) := by
      have hd : rho 41408 = Bool.toZMod bit * (rho 41406 - seg45AccY16 rho) := by
        rw [← hbit]
        unfold seg45AccY16
        linear_combination -r3180
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41399 * rho 41400 = rho 41409 := by linear_combination r3181
    have hd1 : rho 41399 * rho 41399 = rho 41410 := by linear_combination r3182
    have hd2 : rho 41400 * rho 41400 = rho 41411 := by linear_combination r3183
    have hd3 : rho 41412 * (rho 41400 * rho 41400 + rho 41399 * rho 41399 * (-1)) = 2 * (rho 41399 * rho 41400) := by
      rw [hd0, hd1, hd2]
      linear_combination r3184
    have hd4 : rho 41413 * (2 - (rho 41400 * rho 41400 + rho 41399 * rho 41399 * (-1))) = rho 41400 * rho 41400 - rho 41399 * rho 41399 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3185
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX16 rho : Seg45.F), (seg45AccY16 rho : Seg45.F)⟩
      ⟨(rho 41399 : Seg45.F), (rho 41400 : Seg45.F)⟩
      ⟨(rho 41405 : Seg45.F), (rho 41406 : Seg45.F)⟩
      ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
      ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg45_rows17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3186 rho ∧ Seg45.relationRow3187 rho ∧ Seg45.relationRow3188 rho ∧ Seg45.relationRow3189 rho ∧ Seg45.relationRow3190 rho ∧ Seg45.relationRow3191 rho ∧ Seg45.relationRow3192 rho ∧ Seg45.relationRow3193 rho ∧ Seg45.relationRow3194 rho ∧ Seg45.relationRow3195 rho ∧ Seg45.relationRow3196 rho ∧ Seg45.relationRow3197 rho ∧ Seg45.relationRow3198 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, _⟩
  exact ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩

theorem seg45_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40965 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩ := by
  obtain ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩ := seg45_rows17 rho h
  unfold Seg45.relationRow3186 at r3186
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3186
  unfold Seg45.relationRow3187 at r3187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187
  unfold Seg45.relationRow3188 at r3188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3188
  unfold Seg45.relationRow3189 at r3189
  unfold Seg45.relationRow3190 at r3190
  unfold Seg45.relationRow3191 at r3191
  unfold Seg45.relationRow3192 at r3192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3192
  unfold Seg45.relationRow3193 at r3193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3193
  unfold Seg45.relationRow3194 at r3194
  unfold Seg45.relationRow3195 at r3195
  unfold Seg45.relationRow3196 at r3196
  unfold Seg45.relationRow3197 at r3197
  unfold Seg45.relationRow3198 at r3198
  have hrung17 (bit : Bool) (hbit : rho 40965 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
        ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩ := by
    have hnextx : seg45AccX18 rho = seg45AccX17 rho + rho 41420 := by
      unfold seg45AccX18 seg45AccX17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 17]
      ring
    have hnexty : seg45AccY18 rho = seg45AccY17 rho + rho 41421 := by
      unfold seg45AccY18 seg45AccY17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 17]
      ring
    have ha0 : (rho 41412 + rho 41413) * (seg45AccX17 rho + seg45AccY17 rho) = rho 41414 := by
      unfold seg45AccX17 seg45AccY17
      linear_combination r3186
    have ha1 : rho 41413 * seg45AccX17 rho = rho 41415 := by
      unfold seg45AccX17
      linear_combination r3187
    have ha2 : rho 41412 * seg45AccY17 rho = rho 41416 := by
      unfold seg45AccY17
      linear_combination r3188
    have ha3 : 3021 * rho 41415 * rho 41416 = rho 41417 := by
      linear_combination r3189
    have ha4 : rho 41418 * (1 + rho 41417) = rho 41415 + rho 41416 := by
      linear_combination r3190
    have ha5 : rho 41419 * (1 - rho 41417) = rho 41414 - rho 41415 - rho 41416 := by
      linear_combination r3191
    have haddx :
        rho 41418 * (1 + 3021 * (rho 41413 * seg45AccX17 rho) * (rho 41412 * seg45AccY17 rho)) =
          rho 41413 * seg45AccX17 rho + rho 41412 * seg45AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41419 * (1 - 3021 * (rho 41413 * seg45AccX17 rho) * (rho 41412 * seg45AccY17 rho)) =
          (-1) * (rho 41413 * seg45AccX17 rho) - rho 41412 * seg45AccY17 rho +
            (seg45AccY17 rho - seg45AccX17 rho * (-1)) * (rho 41412 + rho 41413) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41419 * (1 - rho 41417) = rho 41414 - rho 41415 - rho 41416 := ha5
        _ = (-1) * rho 41415 - rho 41416 + (seg45AccY17 rho - seg45AccX17 rho * (-1)) * (rho 41412 + rho 41413) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX18 rho = seg45AccX17 rho - Bool.toZMod bit * (seg45AccX17 rho - rho 41418) := by
      have hd : rho 41420 = Bool.toZMod bit * (rho 41418 - seg45AccX17 rho) := by
        rw [← hbit]
        unfold seg45AccX17
        linear_combination -r3192
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY18 rho = seg45AccY17 rho - Bool.toZMod bit * (seg45AccY17 rho - rho 41419) := by
      have hd : rho 41421 = Bool.toZMod bit * (rho 41419 - seg45AccY17 rho) := by
        rw [← hbit]
        unfold seg45AccY17
        linear_combination -r3193
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41412 * rho 41413 = rho 41422 := by linear_combination r3194
    have hd1 : rho 41412 * rho 41412 = rho 41423 := by linear_combination r3195
    have hd2 : rho 41413 * rho 41413 = rho 41424 := by linear_combination r3196
    have hd3 : rho 41425 * (rho 41413 * rho 41413 + rho 41412 * rho 41412 * (-1)) = 2 * (rho 41412 * rho 41413) := by
      rw [hd0, hd1, hd2]
      linear_combination r3197
    have hd4 : rho 41426 * (2 - (rho 41413 * rho 41413 + rho 41412 * rho 41412 * (-1))) = rho 41413 * rho 41413 - rho 41412 * rho 41412 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3198
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX17 rho : Seg45.F), (seg45AccY17 rho : Seg45.F)⟩
      ⟨(rho 41412 : Seg45.F), (rho 41413 : Seg45.F)⟩
      ⟨(rho 41418 : Seg45.F), (rho 41419 : Seg45.F)⟩
      ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
      ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg45_rows18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3199 rho ∧ Seg45.relationRow3200 rho ∧ Seg45.relationRow3201 rho ∧ Seg45.relationRow3202 rho ∧ Seg45.relationRow3203 rho ∧ Seg45.relationRow3204 rho ∧ Seg45.relationRow3205 rho ∧ Seg45.relationRow3206 rho ∧ Seg45.relationRow3207 rho ∧ Seg45.relationRow3208 rho ∧ Seg45.relationRow3209 rho ∧ Seg45.relationRow3210 rho ∧ Seg45.relationRow3211 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3199⟩
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩

theorem seg45_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40966 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩ := by
  obtain ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩ := seg45_rows18 rho h
  unfold Seg45.relationRow3199 at r3199
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3199
  unfold Seg45.relationRow3200 at r3200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200
  unfold Seg45.relationRow3201 at r3201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3201
  unfold Seg45.relationRow3202 at r3202
  unfold Seg45.relationRow3203 at r3203
  unfold Seg45.relationRow3204 at r3204
  unfold Seg45.relationRow3205 at r3205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3205
  unfold Seg45.relationRow3206 at r3206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3206
  unfold Seg45.relationRow3207 at r3207
  unfold Seg45.relationRow3208 at r3208
  unfold Seg45.relationRow3209 at r3209
  unfold Seg45.relationRow3210 at r3210
  unfold Seg45.relationRow3211 at r3211
  have hrung18 (bit : Bool) (hbit : rho 40966 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
        ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩ := by
    have hnextx : seg45AccX19 rho = seg45AccX18 rho + rho 41433 := by
      unfold seg45AccX19 seg45AccX18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 18]
      ring
    have hnexty : seg45AccY19 rho = seg45AccY18 rho + rho 41434 := by
      unfold seg45AccY19 seg45AccY18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 18]
      ring
    have ha0 : (rho 41425 + rho 41426) * (seg45AccX18 rho + seg45AccY18 rho) = rho 41427 := by
      unfold seg45AccX18 seg45AccY18
      linear_combination r3199
    have ha1 : rho 41426 * seg45AccX18 rho = rho 41428 := by
      unfold seg45AccX18
      linear_combination r3200
    have ha2 : rho 41425 * seg45AccY18 rho = rho 41429 := by
      unfold seg45AccY18
      linear_combination r3201
    have ha3 : 3021 * rho 41428 * rho 41429 = rho 41430 := by
      linear_combination r3202
    have ha4 : rho 41431 * (1 + rho 41430) = rho 41428 + rho 41429 := by
      linear_combination r3203
    have ha5 : rho 41432 * (1 - rho 41430) = rho 41427 - rho 41428 - rho 41429 := by
      linear_combination r3204
    have haddx :
        rho 41431 * (1 + 3021 * (rho 41426 * seg45AccX18 rho) * (rho 41425 * seg45AccY18 rho)) =
          rho 41426 * seg45AccX18 rho + rho 41425 * seg45AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41432 * (1 - 3021 * (rho 41426 * seg45AccX18 rho) * (rho 41425 * seg45AccY18 rho)) =
          (-1) * (rho 41426 * seg45AccX18 rho) - rho 41425 * seg45AccY18 rho +
            (seg45AccY18 rho - seg45AccX18 rho * (-1)) * (rho 41425 + rho 41426) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41432 * (1 - rho 41430) = rho 41427 - rho 41428 - rho 41429 := ha5
        _ = (-1) * rho 41428 - rho 41429 + (seg45AccY18 rho - seg45AccX18 rho * (-1)) * (rho 41425 + rho 41426) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX19 rho = seg45AccX18 rho - Bool.toZMod bit * (seg45AccX18 rho - rho 41431) := by
      have hd : rho 41433 = Bool.toZMod bit * (rho 41431 - seg45AccX18 rho) := by
        rw [← hbit]
        unfold seg45AccX18
        linear_combination -r3205
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY19 rho = seg45AccY18 rho - Bool.toZMod bit * (seg45AccY18 rho - rho 41432) := by
      have hd : rho 41434 = Bool.toZMod bit * (rho 41432 - seg45AccY18 rho) := by
        rw [← hbit]
        unfold seg45AccY18
        linear_combination -r3206
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41425 * rho 41426 = rho 41435 := by linear_combination r3207
    have hd1 : rho 41425 * rho 41425 = rho 41436 := by linear_combination r3208
    have hd2 : rho 41426 * rho 41426 = rho 41437 := by linear_combination r3209
    have hd3 : rho 41438 * (rho 41426 * rho 41426 + rho 41425 * rho 41425 * (-1)) = 2 * (rho 41425 * rho 41426) := by
      rw [hd0, hd1, hd2]
      linear_combination r3210
    have hd4 : rho 41439 * (2 - (rho 41426 * rho 41426 + rho 41425 * rho 41425 * (-1))) = rho 41426 * rho 41426 - rho 41425 * rho 41425 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3211
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX18 rho : Seg45.F), (seg45AccY18 rho : Seg45.F)⟩
      ⟨(rho 41425 : Seg45.F), (rho 41426 : Seg45.F)⟩
      ⟨(rho 41431 : Seg45.F), (rho 41432 : Seg45.F)⟩
      ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
      ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg45_rows19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3212 rho ∧ Seg45.relationRow3213 rho ∧ Seg45.relationRow3214 rho ∧ Seg45.relationRow3215 rho ∧ Seg45.relationRow3216 rho ∧ Seg45.relationRow3217 rho ∧ Seg45.relationRow3218 rho ∧ Seg45.relationRow3219 rho ∧ Seg45.relationRow3220 rho ∧ Seg45.relationRow3221 rho ∧ Seg45.relationRow3222 rho ∧ Seg45.relationRow3223 rho ∧ Seg45.relationRow3224 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩

theorem seg45_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40967 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩ := by
  obtain ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩ := seg45_rows19 rho h
  unfold Seg45.relationRow3212 at r3212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3212
  unfold Seg45.relationRow3213 at r3213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213
  unfold Seg45.relationRow3214 at r3214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3214
  unfold Seg45.relationRow3215 at r3215
  unfold Seg45.relationRow3216 at r3216
  unfold Seg45.relationRow3217 at r3217
  unfold Seg45.relationRow3218 at r3218
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3218
  unfold Seg45.relationRow3219 at r3219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3219
  unfold Seg45.relationRow3220 at r3220
  unfold Seg45.relationRow3221 at r3221
  unfold Seg45.relationRow3222 at r3222
  unfold Seg45.relationRow3223 at r3223
  unfold Seg45.relationRow3224 at r3224
  have hrung19 (bit : Bool) (hbit : rho 40967 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
        ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩ := by
    have hnextx : seg45AccX20 rho = seg45AccX19 rho + rho 41446 := by
      unfold seg45AccX20 seg45AccX19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 19]
      ring
    have hnexty : seg45AccY20 rho = seg45AccY19 rho + rho 41447 := by
      unfold seg45AccY20 seg45AccY19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 19]
      ring
    have ha0 : (rho 41438 + rho 41439) * (seg45AccX19 rho + seg45AccY19 rho) = rho 41440 := by
      unfold seg45AccX19 seg45AccY19
      linear_combination r3212
    have ha1 : rho 41439 * seg45AccX19 rho = rho 41441 := by
      unfold seg45AccX19
      linear_combination r3213
    have ha2 : rho 41438 * seg45AccY19 rho = rho 41442 := by
      unfold seg45AccY19
      linear_combination r3214
    have ha3 : 3021 * rho 41441 * rho 41442 = rho 41443 := by
      linear_combination r3215
    have ha4 : rho 41444 * (1 + rho 41443) = rho 41441 + rho 41442 := by
      linear_combination r3216
    have ha5 : rho 41445 * (1 - rho 41443) = rho 41440 - rho 41441 - rho 41442 := by
      linear_combination r3217
    have haddx :
        rho 41444 * (1 + 3021 * (rho 41439 * seg45AccX19 rho) * (rho 41438 * seg45AccY19 rho)) =
          rho 41439 * seg45AccX19 rho + rho 41438 * seg45AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41445 * (1 - 3021 * (rho 41439 * seg45AccX19 rho) * (rho 41438 * seg45AccY19 rho)) =
          (-1) * (rho 41439 * seg45AccX19 rho) - rho 41438 * seg45AccY19 rho +
            (seg45AccY19 rho - seg45AccX19 rho * (-1)) * (rho 41438 + rho 41439) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41445 * (1 - rho 41443) = rho 41440 - rho 41441 - rho 41442 := ha5
        _ = (-1) * rho 41441 - rho 41442 + (seg45AccY19 rho - seg45AccX19 rho * (-1)) * (rho 41438 + rho 41439) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX20 rho = seg45AccX19 rho - Bool.toZMod bit * (seg45AccX19 rho - rho 41444) := by
      have hd : rho 41446 = Bool.toZMod bit * (rho 41444 - seg45AccX19 rho) := by
        rw [← hbit]
        unfold seg45AccX19
        linear_combination -r3218
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY20 rho = seg45AccY19 rho - Bool.toZMod bit * (seg45AccY19 rho - rho 41445) := by
      have hd : rho 41447 = Bool.toZMod bit * (rho 41445 - seg45AccY19 rho) := by
        rw [← hbit]
        unfold seg45AccY19
        linear_combination -r3219
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41438 * rho 41439 = rho 41448 := by linear_combination r3220
    have hd1 : rho 41438 * rho 41438 = rho 41449 := by linear_combination r3221
    have hd2 : rho 41439 * rho 41439 = rho 41450 := by linear_combination r3222
    have hd3 : rho 41451 * (rho 41439 * rho 41439 + rho 41438 * rho 41438 * (-1)) = 2 * (rho 41438 * rho 41439) := by
      rw [hd0, hd1, hd2]
      linear_combination r3223
    have hd4 : rho 41452 * (2 - (rho 41439 * rho 41439 + rho 41438 * rho 41438 * (-1))) = rho 41439 * rho 41439 - rho 41438 * rho 41438 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3224
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX19 rho : Seg45.F), (seg45AccY19 rho : Seg45.F)⟩
      ⟨(rho 41438 : Seg45.F), (rho 41439 : Seg45.F)⟩
      ⟨(rho 41444 : Seg45.F), (rho 41445 : Seg45.F)⟩
      ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
      ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg45_rows20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3225 rho ∧ Seg45.relationRow3226 rho ∧ Seg45.relationRow3227 rho ∧ Seg45.relationRow3228 rho ∧ Seg45.relationRow3229 rho ∧ Seg45.relationRow3230 rho ∧ Seg45.relationRow3231 rho ∧ Seg45.relationRow3232 rho ∧ Seg45.relationRow3233 rho ∧ Seg45.relationRow3234 rho ∧ Seg45.relationRow3235 rho ∧ Seg45.relationRow3236 rho ∧ Seg45.relationRow3237 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩

theorem seg45_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40968 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩ := by
  obtain ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩ := seg45_rows20 rho h
  unfold Seg45.relationRow3225 at r3225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3225
  unfold Seg45.relationRow3226 at r3226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226
  unfold Seg45.relationRow3227 at r3227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3227
  unfold Seg45.relationRow3228 at r3228
  unfold Seg45.relationRow3229 at r3229
  unfold Seg45.relationRow3230 at r3230
  unfold Seg45.relationRow3231 at r3231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3231
  unfold Seg45.relationRow3232 at r3232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3232
  unfold Seg45.relationRow3233 at r3233
  unfold Seg45.relationRow3234 at r3234
  unfold Seg45.relationRow3235 at r3235
  unfold Seg45.relationRow3236 at r3236
  unfold Seg45.relationRow3237 at r3237
  have hrung20 (bit : Bool) (hbit : rho 40968 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
        ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩ := by
    have hnextx : seg45AccX21 rho = seg45AccX20 rho + rho 41459 := by
      unfold seg45AccX21 seg45AccX20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 20]
      ring
    have hnexty : seg45AccY21 rho = seg45AccY20 rho + rho 41460 := by
      unfold seg45AccY21 seg45AccY20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 20]
      ring
    have ha0 : (rho 41451 + rho 41452) * (seg45AccX20 rho + seg45AccY20 rho) = rho 41453 := by
      unfold seg45AccX20 seg45AccY20
      linear_combination r3225
    have ha1 : rho 41452 * seg45AccX20 rho = rho 41454 := by
      unfold seg45AccX20
      linear_combination r3226
    have ha2 : rho 41451 * seg45AccY20 rho = rho 41455 := by
      unfold seg45AccY20
      linear_combination r3227
    have ha3 : 3021 * rho 41454 * rho 41455 = rho 41456 := by
      linear_combination r3228
    have ha4 : rho 41457 * (1 + rho 41456) = rho 41454 + rho 41455 := by
      linear_combination r3229
    have ha5 : rho 41458 * (1 - rho 41456) = rho 41453 - rho 41454 - rho 41455 := by
      linear_combination r3230
    have haddx :
        rho 41457 * (1 + 3021 * (rho 41452 * seg45AccX20 rho) * (rho 41451 * seg45AccY20 rho)) =
          rho 41452 * seg45AccX20 rho + rho 41451 * seg45AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41458 * (1 - 3021 * (rho 41452 * seg45AccX20 rho) * (rho 41451 * seg45AccY20 rho)) =
          (-1) * (rho 41452 * seg45AccX20 rho) - rho 41451 * seg45AccY20 rho +
            (seg45AccY20 rho - seg45AccX20 rho * (-1)) * (rho 41451 + rho 41452) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41458 * (1 - rho 41456) = rho 41453 - rho 41454 - rho 41455 := ha5
        _ = (-1) * rho 41454 - rho 41455 + (seg45AccY20 rho - seg45AccX20 rho * (-1)) * (rho 41451 + rho 41452) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX21 rho = seg45AccX20 rho - Bool.toZMod bit * (seg45AccX20 rho - rho 41457) := by
      have hd : rho 41459 = Bool.toZMod bit * (rho 41457 - seg45AccX20 rho) := by
        rw [← hbit]
        unfold seg45AccX20
        linear_combination -r3231
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY21 rho = seg45AccY20 rho - Bool.toZMod bit * (seg45AccY20 rho - rho 41458) := by
      have hd : rho 41460 = Bool.toZMod bit * (rho 41458 - seg45AccY20 rho) := by
        rw [← hbit]
        unfold seg45AccY20
        linear_combination -r3232
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41451 * rho 41452 = rho 41461 := by linear_combination r3233
    have hd1 : rho 41451 * rho 41451 = rho 41462 := by linear_combination r3234
    have hd2 : rho 41452 * rho 41452 = rho 41463 := by linear_combination r3235
    have hd3 : rho 41464 * (rho 41452 * rho 41452 + rho 41451 * rho 41451 * (-1)) = 2 * (rho 41451 * rho 41452) := by
      rw [hd0, hd1, hd2]
      linear_combination r3236
    have hd4 : rho 41465 * (2 - (rho 41452 * rho 41452 + rho 41451 * rho 41451 * (-1))) = rho 41452 * rho 41452 - rho 41451 * rho 41451 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3237
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX20 rho : Seg45.F), (seg45AccY20 rho : Seg45.F)⟩
      ⟨(rho 41451 : Seg45.F), (rho 41452 : Seg45.F)⟩
      ⟨(rho 41457 : Seg45.F), (rho 41458 : Seg45.F)⟩
      ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
      ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg45_rows21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3238 rho ∧ Seg45.relationRow3239 rho ∧ Seg45.relationRow3240 rho ∧ Seg45.relationRow3241 rho ∧ Seg45.relationRow3242 rho ∧ Seg45.relationRow3243 rho ∧ Seg45.relationRow3244 rho ∧ Seg45.relationRow3245 rho ∧ Seg45.relationRow3246 rho ∧ Seg45.relationRow3247 rho ∧ Seg45.relationRow3248 rho ∧ Seg45.relationRow3249 rho ∧ Seg45.relationRow3250 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩

theorem seg45_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 40969 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
        ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
        ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩ := by
  obtain ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩ := seg45_rows21 rho h
  unfold Seg45.relationRow3238 at r3238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3238
  unfold Seg45.relationRow3239 at r3239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239
  unfold Seg45.relationRow3240 at r3240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3240
  unfold Seg45.relationRow3241 at r3241
  unfold Seg45.relationRow3242 at r3242
  unfold Seg45.relationRow3243 at r3243
  unfold Seg45.relationRow3244 at r3244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3244
  unfold Seg45.relationRow3245 at r3245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3245
  unfold Seg45.relationRow3246 at r3246
  unfold Seg45.relationRow3247 at r3247
  unfold Seg45.relationRow3248 at r3248
  unfold Seg45.relationRow3249 at r3249
  unfold Seg45.relationRow3250 at r3250
  have hrung21 (bit : Bool) (hbit : rho 40969 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
        ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
        ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
        ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩ := by
    have hnextx : seg45AccX22 rho = seg45AccX21 rho + rho 41472 := by
      unfold seg45AccX22 seg45AccX21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 21]
      ring
    have hnexty : seg45AccY22 rho = seg45AccY21 rho + rho 41473 := by
      unfold seg45AccY22 seg45AccY21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 21]
      ring
    have ha0 : (rho 41464 + rho 41465) * (seg45AccX21 rho + seg45AccY21 rho) = rho 41466 := by
      unfold seg45AccX21 seg45AccY21
      linear_combination r3238
    have ha1 : rho 41465 * seg45AccX21 rho = rho 41467 := by
      unfold seg45AccX21
      linear_combination r3239
    have ha2 : rho 41464 * seg45AccY21 rho = rho 41468 := by
      unfold seg45AccY21
      linear_combination r3240
    have ha3 : 3021 * rho 41467 * rho 41468 = rho 41469 := by
      linear_combination r3241
    have ha4 : rho 41470 * (1 + rho 41469) = rho 41467 + rho 41468 := by
      linear_combination r3242
    have ha5 : rho 41471 * (1 - rho 41469) = rho 41466 - rho 41467 - rho 41468 := by
      linear_combination r3243
    have haddx :
        rho 41470 * (1 + 3021 * (rho 41465 * seg45AccX21 rho) * (rho 41464 * seg45AccY21 rho)) =
          rho 41465 * seg45AccX21 rho + rho 41464 * seg45AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 41471 * (1 - 3021 * (rho 41465 * seg45AccX21 rho) * (rho 41464 * seg45AccY21 rho)) =
          (-1) * (rho 41465 * seg45AccX21 rho) - rho 41464 * seg45AccY21 rho +
            (seg45AccY21 rho - seg45AccX21 rho * (-1)) * (rho 41464 + rho 41465) := by
      rw [ha1, ha2, ha3]
      calc
        rho 41471 * (1 - rho 41469) = rho 41466 - rho 41467 - rho 41468 := ha5
        _ = (-1) * rho 41467 - rho 41468 + (seg45AccY21 rho - seg45AccX21 rho * (-1)) * (rho 41464 + rho 41465) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX22 rho = seg45AccX21 rho - Bool.toZMod bit * (seg45AccX21 rho - rho 41470) := by
      have hd : rho 41472 = Bool.toZMod bit * (rho 41470 - seg45AccX21 rho) := by
        rw [← hbit]
        unfold seg45AccX21
        linear_combination -r3244
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY22 rho = seg45AccY21 rho - Bool.toZMod bit * (seg45AccY21 rho - rho 41471) := by
      have hd : rho 41473 = Bool.toZMod bit * (rho 41471 - seg45AccY21 rho) := by
        rw [← hbit]
        unfold seg45AccY21
        linear_combination -r3245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 41464 * rho 41465 = rho 41474 := by linear_combination r3246
    have hd1 : rho 41464 * rho 41464 = rho 41475 := by linear_combination r3247
    have hd2 : rho 41465 * rho 41465 = rho 41476 := by linear_combination r3248
    have hd3 : rho 41477 * (rho 41465 * rho 41465 + rho 41464 * rho 41464 * (-1)) = 2 * (rho 41464 * rho 41465) := by
      rw [hd0, hd1, hd2]
      linear_combination r3249
    have hd4 : rho 41478 * (2 - (rho 41465 * rho 41465 + rho 41464 * rho 41464 * (-1))) = rho 41465 * rho 41465 - rho 41464 * rho 41464 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX21 rho : Seg45.F), (seg45AccY21 rho : Seg45.F)⟩
      ⟨(rho 41464 : Seg45.F), (rho 41465 : Seg45.F)⟩
      ⟨(rho 41470 : Seg45.F), (rho 41471 : Seg45.F)⟩
      ⟨(seg45AccX22 rho : Seg45.F), (seg45AccY22 rho : Seg45.F)⟩
      ⟨(rho 41477 : Seg45.F), (rho 41478 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg45_hstep_c1 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg45_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg45_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg45_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg45_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg45_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg45_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg45_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg45_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg45_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg45_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
