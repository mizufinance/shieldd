import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3108 rho ∧ Seg34.relationRow3109 rho ∧ Seg34.relationRow3110 rho ∧ Seg34.relationRow3111 rho ∧ Seg34.relationRow3112 rho ∧ Seg34.relationRow3113 rho ∧ Seg34.relationRow3114 rho ∧ Seg34.relationRow3115 rho ∧ Seg34.relationRow3116 rho ∧ Seg34.relationRow3117 rho ∧ Seg34.relationRow3118 rho ∧ Seg34.relationRow3119 rho ∧ Seg34.relationRow3120 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart38 at p38
  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119⟩
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨r3120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩

theorem seg34_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34003 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
        ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩ := by
  obtain ⟨r3108, r3109, r3110, r3111, r3112, r3113, r3114, r3115, r3116, r3117, r3118, r3119, r3120⟩ := seg34_rows11 rho h
  unfold Seg34.relationRow3108 at r3108
  unfold Seg34.relationRow3109 at r3109
  unfold Seg34.relationRow3110 at r3110
  unfold Seg34.relationRow3111 at r3111
  unfold Seg34.relationRow3112 at r3112
  unfold Seg34.relationRow3113 at r3113
  unfold Seg34.relationRow3114 at r3114
  unfold Seg34.relationRow3115 at r3115
  unfold Seg34.relationRow3116 at r3116
  unfold Seg34.relationRow3117 at r3117
  unfold Seg34.relationRow3118 at r3118
  unfold Seg34.relationRow3119 at r3119
  unfold Seg34.relationRow3120 at r3120
  have hrung11 (bit : Bool) (hbit : rho 34003 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
        ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩ := by
    have hnextx : seg34AccX12 rho = seg34AccX11 rho + rho 34386 := by
      unfold seg34AccX12 seg34AccX11
      ring
    have hnexty : seg34AccY12 rho = seg34AccY11 rho + rho 34387 := by
      unfold seg34AccY12 seg34AccY11
      ring
    have ha0 : (rho 34378 + rho 34379) * (seg34AccX11 rho + seg34AccY11 rho) = rho 34380 := by
      unfold seg34AccX11 seg34AccY11
      linear_combination r3108
    have ha1 : rho 34379 * seg34AccX11 rho = rho 34381 := by
      unfold seg34AccX11
      linear_combination r3109
    have ha2 : rho 34378 * seg34AccY11 rho = rho 34382 := by
      unfold seg34AccY11
      linear_combination r3110
    have ha3 : 3021 * rho 34381 * rho 34382 = rho 34383 := by
      linear_combination r3111
    have ha4 : rho 34384 * (1 + rho 34383) = rho 34381 + rho 34382 := by
      linear_combination r3112
    have ha5 : rho 34385 * (1 - rho 34383) = rho 34380 - rho 34381 - rho 34382 := by
      linear_combination r3113
    have haddx :
        rho 34384 * (1 + 3021 * (rho 34379 * seg34AccX11 rho) * (rho 34378 * seg34AccY11 rho)) =
          rho 34379 * seg34AccX11 rho + rho 34378 * seg34AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34385 * (1 - 3021 * (rho 34379 * seg34AccX11 rho) * (rho 34378 * seg34AccY11 rho)) =
          (-1) * (rho 34379 * seg34AccX11 rho) - rho 34378 * seg34AccY11 rho +
            (seg34AccY11 rho - seg34AccX11 rho * (-1)) * (rho 34378 + rho 34379) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34385 * (1 - rho 34383) = rho 34380 - rho 34381 - rho 34382 := ha5
        _ = (-1) * rho 34381 - rho 34382 + (seg34AccY11 rho - seg34AccX11 rho * (-1)) * (rho 34378 + rho 34379) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX12 rho = seg34AccX11 rho - Bool.toZMod bit * (seg34AccX11 rho - rho 34384) := by
      have hd : rho 34386 = Bool.toZMod bit * (rho 34384 - seg34AccX11 rho) := by
        rw [← hbit]
        unfold seg34AccX11
        linear_combination -r3114
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY12 rho = seg34AccY11 rho - Bool.toZMod bit * (seg34AccY11 rho - rho 34385) := by
      have hd : rho 34387 = Bool.toZMod bit * (rho 34385 - seg34AccY11 rho) := by
        rw [← hbit]
        unfold seg34AccY11
        linear_combination -r3115
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34378 * rho 34379 = rho 34388 := by linear_combination r3116
    have hd1 : rho 34378 * rho 34378 = rho 34389 := by linear_combination r3117
    have hd2 : rho 34379 * rho 34379 = rho 34390 := by linear_combination r3118
    have hd3 : rho 34391 * (rho 34379 * rho 34379 + rho 34378 * rho 34378 * (-1)) = 2 * (rho 34378 * rho 34379) := by
      rw [hd0, hd1, hd2]
      linear_combination r3119
    have hd4 : rho 34392 * (2 - (rho 34379 * rho 34379 + rho 34378 * rho 34378 * (-1))) = rho 34379 * rho 34379 - rho 34378 * rho 34378 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3120
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX11 rho : Seg34.F), (seg34AccY11 rho : Seg34.F)⟩
      ⟨(rho 34378 : Seg34.F), (rho 34379 : Seg34.F)⟩
      ⟨(rho 34384 : Seg34.F), (rho 34385 : Seg34.F)⟩
      ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
      ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg34_rows12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3121 rho ∧ Seg34.relationRow3122 rho ∧ Seg34.relationRow3123 rho ∧ Seg34.relationRow3124 rho ∧ Seg34.relationRow3125 rho ∧ Seg34.relationRow3126 rho ∧ Seg34.relationRow3127 rho ∧ Seg34.relationRow3128 rho ∧ Seg34.relationRow3129 rho ∧ Seg34.relationRow3130 rho ∧ Seg34.relationRow3131 rho ∧ Seg34.relationRow3132 rho ∧ Seg34.relationRow3133 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩

theorem seg34_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34004 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩ := by
  obtain ⟨r3121, r3122, r3123, r3124, r3125, r3126, r3127, r3128, r3129, r3130, r3131, r3132, r3133⟩ := seg34_rows12 rho h
  unfold Seg34.relationRow3121 at r3121
  unfold Seg34.relationRow3122 at r3122
  unfold Seg34.relationRow3123 at r3123
  unfold Seg34.relationRow3124 at r3124
  unfold Seg34.relationRow3125 at r3125
  unfold Seg34.relationRow3126 at r3126
  unfold Seg34.relationRow3127 at r3127
  unfold Seg34.relationRow3128 at r3128
  unfold Seg34.relationRow3129 at r3129
  unfold Seg34.relationRow3130 at r3130
  unfold Seg34.relationRow3131 at r3131
  unfold Seg34.relationRow3132 at r3132
  unfold Seg34.relationRow3133 at r3133
  have hrung12 (bit : Bool) (hbit : rho 34004 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
        ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩ := by
    have hnextx : seg34AccX13 rho = seg34AccX12 rho + rho 34399 := by
      unfold seg34AccX13 seg34AccX12
      ring
    have hnexty : seg34AccY13 rho = seg34AccY12 rho + rho 34400 := by
      unfold seg34AccY13 seg34AccY12
      ring
    have ha0 : (rho 34391 + rho 34392) * (seg34AccX12 rho + seg34AccY12 rho) = rho 34393 := by
      unfold seg34AccX12 seg34AccY12
      linear_combination r3121
    have ha1 : rho 34392 * seg34AccX12 rho = rho 34394 := by
      unfold seg34AccX12
      linear_combination r3122
    have ha2 : rho 34391 * seg34AccY12 rho = rho 34395 := by
      unfold seg34AccY12
      linear_combination r3123
    have ha3 : 3021 * rho 34394 * rho 34395 = rho 34396 := by
      linear_combination r3124
    have ha4 : rho 34397 * (1 + rho 34396) = rho 34394 + rho 34395 := by
      linear_combination r3125
    have ha5 : rho 34398 * (1 - rho 34396) = rho 34393 - rho 34394 - rho 34395 := by
      linear_combination r3126
    have haddx :
        rho 34397 * (1 + 3021 * (rho 34392 * seg34AccX12 rho) * (rho 34391 * seg34AccY12 rho)) =
          rho 34392 * seg34AccX12 rho + rho 34391 * seg34AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34398 * (1 - 3021 * (rho 34392 * seg34AccX12 rho) * (rho 34391 * seg34AccY12 rho)) =
          (-1) * (rho 34392 * seg34AccX12 rho) - rho 34391 * seg34AccY12 rho +
            (seg34AccY12 rho - seg34AccX12 rho * (-1)) * (rho 34391 + rho 34392) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34398 * (1 - rho 34396) = rho 34393 - rho 34394 - rho 34395 := ha5
        _ = (-1) * rho 34394 - rho 34395 + (seg34AccY12 rho - seg34AccX12 rho * (-1)) * (rho 34391 + rho 34392) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX13 rho = seg34AccX12 rho - Bool.toZMod bit * (seg34AccX12 rho - rho 34397) := by
      have hd : rho 34399 = Bool.toZMod bit * (rho 34397 - seg34AccX12 rho) := by
        rw [← hbit]
        unfold seg34AccX12
        linear_combination -r3127
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY13 rho = seg34AccY12 rho - Bool.toZMod bit * (seg34AccY12 rho - rho 34398) := by
      have hd : rho 34400 = Bool.toZMod bit * (rho 34398 - seg34AccY12 rho) := by
        rw [← hbit]
        unfold seg34AccY12
        linear_combination -r3128
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34391 * rho 34392 = rho 34401 := by linear_combination r3129
    have hd1 : rho 34391 * rho 34391 = rho 34402 := by linear_combination r3130
    have hd2 : rho 34392 * rho 34392 = rho 34403 := by linear_combination r3131
    have hd3 : rho 34404 * (rho 34392 * rho 34392 + rho 34391 * rho 34391 * (-1)) = 2 * (rho 34391 * rho 34392) := by
      rw [hd0, hd1, hd2]
      linear_combination r3132
    have hd4 : rho 34405 * (2 - (rho 34392 * rho 34392 + rho 34391 * rho 34391 * (-1))) = rho 34392 * rho 34392 - rho 34391 * rho 34391 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3133
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX12 rho : Seg34.F), (seg34AccY12 rho : Seg34.F)⟩
      ⟨(rho 34391 : Seg34.F), (rho 34392 : Seg34.F)⟩
      ⟨(rho 34397 : Seg34.F), (rho 34398 : Seg34.F)⟩
      ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
      ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg34_rows13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3134 rho ∧ Seg34.relationRow3135 rho ∧ Seg34.relationRow3136 rho ∧ Seg34.relationRow3137 rho ∧ Seg34.relationRow3138 rho ∧ Seg34.relationRow3139 rho ∧ Seg34.relationRow3140 rho ∧ Seg34.relationRow3141 rho ∧ Seg34.relationRow3142 rho ∧ Seg34.relationRow3143 rho ∧ Seg34.relationRow3144 rho ∧ Seg34.relationRow3145 rho ∧ Seg34.relationRow3146 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩

theorem seg34_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩ := by
  obtain ⟨r3134, r3135, r3136, r3137, r3138, r3139, r3140, r3141, r3142, r3143, r3144, r3145, r3146⟩ := seg34_rows13 rho h
  unfold Seg34.relationRow3134 at r3134
  unfold Seg34.relationRow3135 at r3135
  unfold Seg34.relationRow3136 at r3136
  unfold Seg34.relationRow3137 at r3137
  unfold Seg34.relationRow3138 at r3138
  unfold Seg34.relationRow3139 at r3139
  unfold Seg34.relationRow3140 at r3140
  unfold Seg34.relationRow3141 at r3141
  unfold Seg34.relationRow3142 at r3142
  unfold Seg34.relationRow3143 at r3143
  unfold Seg34.relationRow3144 at r3144
  unfold Seg34.relationRow3145 at r3145
  unfold Seg34.relationRow3146 at r3146
  have hrung13 (bit : Bool) (hbit : rho 34005 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
        ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩ := by
    have hnextx : seg34AccX14 rho = seg34AccX13 rho + rho 34412 := by
      unfold seg34AccX14 seg34AccX13
      ring
    have hnexty : seg34AccY14 rho = seg34AccY13 rho + rho 34413 := by
      unfold seg34AccY14 seg34AccY13
      ring
    have ha0 : (rho 34404 + rho 34405) * (seg34AccX13 rho + seg34AccY13 rho) = rho 34406 := by
      unfold seg34AccX13 seg34AccY13
      linear_combination r3134
    have ha1 : rho 34405 * seg34AccX13 rho = rho 34407 := by
      unfold seg34AccX13
      linear_combination r3135
    have ha2 : rho 34404 * seg34AccY13 rho = rho 34408 := by
      unfold seg34AccY13
      linear_combination r3136
    have ha3 : 3021 * rho 34407 * rho 34408 = rho 34409 := by
      linear_combination r3137
    have ha4 : rho 34410 * (1 + rho 34409) = rho 34407 + rho 34408 := by
      linear_combination r3138
    have ha5 : rho 34411 * (1 - rho 34409) = rho 34406 - rho 34407 - rho 34408 := by
      linear_combination r3139
    have haddx :
        rho 34410 * (1 + 3021 * (rho 34405 * seg34AccX13 rho) * (rho 34404 * seg34AccY13 rho)) =
          rho 34405 * seg34AccX13 rho + rho 34404 * seg34AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34411 * (1 - 3021 * (rho 34405 * seg34AccX13 rho) * (rho 34404 * seg34AccY13 rho)) =
          (-1) * (rho 34405 * seg34AccX13 rho) - rho 34404 * seg34AccY13 rho +
            (seg34AccY13 rho - seg34AccX13 rho * (-1)) * (rho 34404 + rho 34405) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34411 * (1 - rho 34409) = rho 34406 - rho 34407 - rho 34408 := ha5
        _ = (-1) * rho 34407 - rho 34408 + (seg34AccY13 rho - seg34AccX13 rho * (-1)) * (rho 34404 + rho 34405) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX14 rho = seg34AccX13 rho - Bool.toZMod bit * (seg34AccX13 rho - rho 34410) := by
      have hd : rho 34412 = Bool.toZMod bit * (rho 34410 - seg34AccX13 rho) := by
        rw [← hbit]
        unfold seg34AccX13
        linear_combination -r3140
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY14 rho = seg34AccY13 rho - Bool.toZMod bit * (seg34AccY13 rho - rho 34411) := by
      have hd : rho 34413 = Bool.toZMod bit * (rho 34411 - seg34AccY13 rho) := by
        rw [← hbit]
        unfold seg34AccY13
        linear_combination -r3141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34404 * rho 34405 = rho 34414 := by linear_combination r3142
    have hd1 : rho 34404 * rho 34404 = rho 34415 := by linear_combination r3143
    have hd2 : rho 34405 * rho 34405 = rho 34416 := by linear_combination r3144
    have hd3 : rho 34417 * (rho 34405 * rho 34405 + rho 34404 * rho 34404 * (-1)) = 2 * (rho 34404 * rho 34405) := by
      rw [hd0, hd1, hd2]
      linear_combination r3145
    have hd4 : rho 34418 * (2 - (rho 34405 * rho 34405 + rho 34404 * rho 34404 * (-1))) = rho 34405 * rho 34405 - rho 34404 * rho 34404 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX13 rho : Seg34.F), (seg34AccY13 rho : Seg34.F)⟩
      ⟨(rho 34404 : Seg34.F), (rho 34405 : Seg34.F)⟩
      ⟨(rho 34410 : Seg34.F), (rho 34411 : Seg34.F)⟩
      ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
      ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg34_rows14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3147 rho ∧ Seg34.relationRow3148 rho ∧ Seg34.relationRow3149 rho ∧ Seg34.relationRow3150 rho ∧ Seg34.relationRow3151 rho ∧ Seg34.relationRow3152 rho ∧ Seg34.relationRow3153 rho ∧ Seg34.relationRow3154 rho ∧ Seg34.relationRow3155 rho ∧ Seg34.relationRow3156 rho ∧ Seg34.relationRow3157 rho ∧ Seg34.relationRow3158 rho ∧ Seg34.relationRow3159 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩

theorem seg34_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩ := by
  obtain ⟨r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, r3155, r3156, r3157, r3158, r3159⟩ := seg34_rows14 rho h
  unfold Seg34.relationRow3147 at r3147
  unfold Seg34.relationRow3148 at r3148
  unfold Seg34.relationRow3149 at r3149
  unfold Seg34.relationRow3150 at r3150
  unfold Seg34.relationRow3151 at r3151
  unfold Seg34.relationRow3152 at r3152
  unfold Seg34.relationRow3153 at r3153
  unfold Seg34.relationRow3154 at r3154
  unfold Seg34.relationRow3155 at r3155
  unfold Seg34.relationRow3156 at r3156
  unfold Seg34.relationRow3157 at r3157
  unfold Seg34.relationRow3158 at r3158
  unfold Seg34.relationRow3159 at r3159
  have hrung14 (bit : Bool) (hbit : rho 34006 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
        ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩ := by
    have hnextx : seg34AccX15 rho = seg34AccX14 rho + rho 34425 := by
      unfold seg34AccX15 seg34AccX14
      ring
    have hnexty : seg34AccY15 rho = seg34AccY14 rho + rho 34426 := by
      unfold seg34AccY15 seg34AccY14
      ring
    have ha0 : (rho 34417 + rho 34418) * (seg34AccX14 rho + seg34AccY14 rho) = rho 34419 := by
      unfold seg34AccX14 seg34AccY14
      linear_combination r3147
    have ha1 : rho 34418 * seg34AccX14 rho = rho 34420 := by
      unfold seg34AccX14
      linear_combination r3148
    have ha2 : rho 34417 * seg34AccY14 rho = rho 34421 := by
      unfold seg34AccY14
      linear_combination r3149
    have ha3 : 3021 * rho 34420 * rho 34421 = rho 34422 := by
      linear_combination r3150
    have ha4 : rho 34423 * (1 + rho 34422) = rho 34420 + rho 34421 := by
      linear_combination r3151
    have ha5 : rho 34424 * (1 - rho 34422) = rho 34419 - rho 34420 - rho 34421 := by
      linear_combination r3152
    have haddx :
        rho 34423 * (1 + 3021 * (rho 34418 * seg34AccX14 rho) * (rho 34417 * seg34AccY14 rho)) =
          rho 34418 * seg34AccX14 rho + rho 34417 * seg34AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34424 * (1 - 3021 * (rho 34418 * seg34AccX14 rho) * (rho 34417 * seg34AccY14 rho)) =
          (-1) * (rho 34418 * seg34AccX14 rho) - rho 34417 * seg34AccY14 rho +
            (seg34AccY14 rho - seg34AccX14 rho * (-1)) * (rho 34417 + rho 34418) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34424 * (1 - rho 34422) = rho 34419 - rho 34420 - rho 34421 := ha5
        _ = (-1) * rho 34420 - rho 34421 + (seg34AccY14 rho - seg34AccX14 rho * (-1)) * (rho 34417 + rho 34418) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX15 rho = seg34AccX14 rho - Bool.toZMod bit * (seg34AccX14 rho - rho 34423) := by
      have hd : rho 34425 = Bool.toZMod bit * (rho 34423 - seg34AccX14 rho) := by
        rw [← hbit]
        unfold seg34AccX14
        linear_combination -r3153
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY15 rho = seg34AccY14 rho - Bool.toZMod bit * (seg34AccY14 rho - rho 34424) := by
      have hd : rho 34426 = Bool.toZMod bit * (rho 34424 - seg34AccY14 rho) := by
        rw [← hbit]
        unfold seg34AccY14
        linear_combination -r3154
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34417 * rho 34418 = rho 34427 := by linear_combination r3155
    have hd1 : rho 34417 * rho 34417 = rho 34428 := by linear_combination r3156
    have hd2 : rho 34418 * rho 34418 = rho 34429 := by linear_combination r3157
    have hd3 : rho 34430 * (rho 34418 * rho 34418 + rho 34417 * rho 34417 * (-1)) = 2 * (rho 34417 * rho 34418) := by
      rw [hd0, hd1, hd2]
      linear_combination r3158
    have hd4 : rho 34431 * (2 - (rho 34418 * rho 34418 + rho 34417 * rho 34417 * (-1))) = rho 34418 * rho 34418 - rho 34417 * rho 34417 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3159
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX14 rho : Seg34.F), (seg34AccY14 rho : Seg34.F)⟩
      ⟨(rho 34417 : Seg34.F), (rho 34418 : Seg34.F)⟩
      ⟨(rho 34423 : Seg34.F), (rho 34424 : Seg34.F)⟩
      ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
      ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg34_rows15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3160 rho ∧ Seg34.relationRow3161 rho ∧ Seg34.relationRow3162 rho ∧ Seg34.relationRow3163 rho ∧ Seg34.relationRow3164 rho ∧ Seg34.relationRow3165 rho ∧ Seg34.relationRow3166 rho ∧ Seg34.relationRow3167 rho ∧ Seg34.relationRow3168 rho ∧ Seg34.relationRow3169 rho ∧ Seg34.relationRow3170 rho ∧ Seg34.relationRow3171 rho ∧ Seg34.relationRow3172 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩

theorem seg34_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩ := by
  obtain ⟨r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, r3168, r3169, r3170, r3171, r3172⟩ := seg34_rows15 rho h
  unfold Seg34.relationRow3160 at r3160
  unfold Seg34.relationRow3161 at r3161
  unfold Seg34.relationRow3162 at r3162
  unfold Seg34.relationRow3163 at r3163
  unfold Seg34.relationRow3164 at r3164
  unfold Seg34.relationRow3165 at r3165
  unfold Seg34.relationRow3166 at r3166
  unfold Seg34.relationRow3167 at r3167
  unfold Seg34.relationRow3168 at r3168
  unfold Seg34.relationRow3169 at r3169
  unfold Seg34.relationRow3170 at r3170
  unfold Seg34.relationRow3171 at r3171
  unfold Seg34.relationRow3172 at r3172
  have hrung15 (bit : Bool) (hbit : rho 34007 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
        ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩ := by
    have hnextx : seg34AccX16 rho = seg34AccX15 rho + rho 34438 := by
      unfold seg34AccX16 seg34AccX15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 34243 13]
      ring
    have hnexty : seg34AccY16 rho = seg34AccY15 rho + rho 34439 := by
      unfold seg34AccY16 seg34AccY15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 34244 13]
      ring
    have ha0 : (rho 34430 + rho 34431) * (seg34AccX15 rho + seg34AccY15 rho) = rho 34432 := by
      unfold seg34AccX15 seg34AccY15
      linear_combination r3160
    have ha1 : rho 34431 * seg34AccX15 rho = rho 34433 := by
      unfold seg34AccX15
      linear_combination r3161
    have ha2 : rho 34430 * seg34AccY15 rho = rho 34434 := by
      unfold seg34AccY15
      linear_combination r3162
    have ha3 : 3021 * rho 34433 * rho 34434 = rho 34435 := by
      linear_combination r3163
    have ha4 : rho 34436 * (1 + rho 34435) = rho 34433 + rho 34434 := by
      linear_combination r3164
    have ha5 : rho 34437 * (1 - rho 34435) = rho 34432 - rho 34433 - rho 34434 := by
      linear_combination r3165
    have haddx :
        rho 34436 * (1 + 3021 * (rho 34431 * seg34AccX15 rho) * (rho 34430 * seg34AccY15 rho)) =
          rho 34431 * seg34AccX15 rho + rho 34430 * seg34AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34437 * (1 - 3021 * (rho 34431 * seg34AccX15 rho) * (rho 34430 * seg34AccY15 rho)) =
          (-1) * (rho 34431 * seg34AccX15 rho) - rho 34430 * seg34AccY15 rho +
            (seg34AccY15 rho - seg34AccX15 rho * (-1)) * (rho 34430 + rho 34431) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34437 * (1 - rho 34435) = rho 34432 - rho 34433 - rho 34434 := ha5
        _ = (-1) * rho 34433 - rho 34434 + (seg34AccY15 rho - seg34AccX15 rho * (-1)) * (rho 34430 + rho 34431) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX16 rho = seg34AccX15 rho - Bool.toZMod bit * (seg34AccX15 rho - rho 34436) := by
      have hd : rho 34438 = Bool.toZMod bit * (rho 34436 - seg34AccX15 rho) := by
        rw [← hbit]
        unfold seg34AccX15
        linear_combination -r3166
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY16 rho = seg34AccY15 rho - Bool.toZMod bit * (seg34AccY15 rho - rho 34437) := by
      have hd : rho 34439 = Bool.toZMod bit * (rho 34437 - seg34AccY15 rho) := by
        rw [← hbit]
        unfold seg34AccY15
        linear_combination -r3167
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34430 * rho 34431 = rho 34440 := by linear_combination r3168
    have hd1 : rho 34430 * rho 34430 = rho 34441 := by linear_combination r3169
    have hd2 : rho 34431 * rho 34431 = rho 34442 := by linear_combination r3170
    have hd3 : rho 34443 * (rho 34431 * rho 34431 + rho 34430 * rho 34430 * (-1)) = 2 * (rho 34430 * rho 34431) := by
      rw [hd0, hd1, hd2]
      linear_combination r3171
    have hd4 : rho 34444 * (2 - (rho 34431 * rho 34431 + rho 34430 * rho 34430 * (-1))) = rho 34431 * rho 34431 - rho 34430 * rho 34430 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3172
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX15 rho : Seg34.F), (seg34AccY15 rho : Seg34.F)⟩
      ⟨(rho 34430 : Seg34.F), (rho 34431 : Seg34.F)⟩
      ⟨(rho 34436 : Seg34.F), (rho 34437 : Seg34.F)⟩
      ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
      ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg34_rows16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3173 rho ∧ Seg34.relationRow3174 rho ∧ Seg34.relationRow3175 rho ∧ Seg34.relationRow3176 rho ∧ Seg34.relationRow3177 rho ∧ Seg34.relationRow3178 rho ∧ Seg34.relationRow3179 rho ∧ Seg34.relationRow3180 rho ∧ Seg34.relationRow3181 rho ∧ Seg34.relationRow3182 rho ∧ Seg34.relationRow3183 rho ∧ Seg34.relationRow3184 rho ∧ Seg34.relationRow3185 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩

theorem seg34_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩ := by
  obtain ⟨r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, r3181, r3182, r3183, r3184, r3185⟩ := seg34_rows16 rho h
  unfold Seg34.relationRow3173 at r3173
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3173
  unfold Seg34.relationRow3174 at r3174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174
  unfold Seg34.relationRow3175 at r3175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3175
  unfold Seg34.relationRow3176 at r3176
  unfold Seg34.relationRow3177 at r3177
  unfold Seg34.relationRow3178 at r3178
  unfold Seg34.relationRow3179 at r3179
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3179
  unfold Seg34.relationRow3180 at r3180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3180
  unfold Seg34.relationRow3181 at r3181
  unfold Seg34.relationRow3182 at r3182
  unfold Seg34.relationRow3183 at r3183
  unfold Seg34.relationRow3184 at r3184
  unfold Seg34.relationRow3185 at r3185
  have hrung16 (bit : Bool) (hbit : rho 34008 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
        ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩ := by
    have hnextx : seg34AccX17 rho = seg34AccX16 rho + rho 34451 := by
      unfold seg34AccX17 seg34AccX16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 16]
      ring
    have hnexty : seg34AccY17 rho = seg34AccY16 rho + rho 34452 := by
      unfold seg34AccY17 seg34AccY16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 16]
      ring
    have ha0 : (rho 34443 + rho 34444) * (seg34AccX16 rho + seg34AccY16 rho) = rho 34445 := by
      unfold seg34AccX16 seg34AccY16
      linear_combination r3173
    have ha1 : rho 34444 * seg34AccX16 rho = rho 34446 := by
      unfold seg34AccX16
      linear_combination r3174
    have ha2 : rho 34443 * seg34AccY16 rho = rho 34447 := by
      unfold seg34AccY16
      linear_combination r3175
    have ha3 : 3021 * rho 34446 * rho 34447 = rho 34448 := by
      linear_combination r3176
    have ha4 : rho 34449 * (1 + rho 34448) = rho 34446 + rho 34447 := by
      linear_combination r3177
    have ha5 : rho 34450 * (1 - rho 34448) = rho 34445 - rho 34446 - rho 34447 := by
      linear_combination r3178
    have haddx :
        rho 34449 * (1 + 3021 * (rho 34444 * seg34AccX16 rho) * (rho 34443 * seg34AccY16 rho)) =
          rho 34444 * seg34AccX16 rho + rho 34443 * seg34AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34450 * (1 - 3021 * (rho 34444 * seg34AccX16 rho) * (rho 34443 * seg34AccY16 rho)) =
          (-1) * (rho 34444 * seg34AccX16 rho) - rho 34443 * seg34AccY16 rho +
            (seg34AccY16 rho - seg34AccX16 rho * (-1)) * (rho 34443 + rho 34444) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34450 * (1 - rho 34448) = rho 34445 - rho 34446 - rho 34447 := ha5
        _ = (-1) * rho 34446 - rho 34447 + (seg34AccY16 rho - seg34AccX16 rho * (-1)) * (rho 34443 + rho 34444) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX17 rho = seg34AccX16 rho - Bool.toZMod bit * (seg34AccX16 rho - rho 34449) := by
      have hd : rho 34451 = Bool.toZMod bit * (rho 34449 - seg34AccX16 rho) := by
        rw [← hbit]
        unfold seg34AccX16
        linear_combination -r3179
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY17 rho = seg34AccY16 rho - Bool.toZMod bit * (seg34AccY16 rho - rho 34450) := by
      have hd : rho 34452 = Bool.toZMod bit * (rho 34450 - seg34AccY16 rho) := by
        rw [← hbit]
        unfold seg34AccY16
        linear_combination -r3180
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34443 * rho 34444 = rho 34453 := by linear_combination r3181
    have hd1 : rho 34443 * rho 34443 = rho 34454 := by linear_combination r3182
    have hd2 : rho 34444 * rho 34444 = rho 34455 := by linear_combination r3183
    have hd3 : rho 34456 * (rho 34444 * rho 34444 + rho 34443 * rho 34443 * (-1)) = 2 * (rho 34443 * rho 34444) := by
      rw [hd0, hd1, hd2]
      linear_combination r3184
    have hd4 : rho 34457 * (2 - (rho 34444 * rho 34444 + rho 34443 * rho 34443 * (-1))) = rho 34444 * rho 34444 - rho 34443 * rho 34443 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3185
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX16 rho : Seg34.F), (seg34AccY16 rho : Seg34.F)⟩
      ⟨(rho 34443 : Seg34.F), (rho 34444 : Seg34.F)⟩
      ⟨(rho 34449 : Seg34.F), (rho 34450 : Seg34.F)⟩
      ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
      ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg34_rows17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3186 rho ∧ Seg34.relationRow3187 rho ∧ Seg34.relationRow3188 rho ∧ Seg34.relationRow3189 rho ∧ Seg34.relationRow3190 rho ∧ Seg34.relationRow3191 rho ∧ Seg34.relationRow3192 rho ∧ Seg34.relationRow3193 rho ∧ Seg34.relationRow3194 rho ∧ Seg34.relationRow3195 rho ∧ Seg34.relationRow3196 rho ∧ Seg34.relationRow3197 rho ∧ Seg34.relationRow3198 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198, _⟩
  exact ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩

theorem seg34_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩ := by
  obtain ⟨r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, r3194, r3195, r3196, r3197, r3198⟩ := seg34_rows17 rho h
  unfold Seg34.relationRow3186 at r3186
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3186
  unfold Seg34.relationRow3187 at r3187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187
  unfold Seg34.relationRow3188 at r3188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3188
  unfold Seg34.relationRow3189 at r3189
  unfold Seg34.relationRow3190 at r3190
  unfold Seg34.relationRow3191 at r3191
  unfold Seg34.relationRow3192 at r3192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3192
  unfold Seg34.relationRow3193 at r3193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3193
  unfold Seg34.relationRow3194 at r3194
  unfold Seg34.relationRow3195 at r3195
  unfold Seg34.relationRow3196 at r3196
  unfold Seg34.relationRow3197 at r3197
  unfold Seg34.relationRow3198 at r3198
  have hrung17 (bit : Bool) (hbit : rho 34009 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
        ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩ := by
    have hnextx : seg34AccX18 rho = seg34AccX17 rho + rho 34464 := by
      unfold seg34AccX18 seg34AccX17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 17]
      ring
    have hnexty : seg34AccY18 rho = seg34AccY17 rho + rho 34465 := by
      unfold seg34AccY18 seg34AccY17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 17]
      ring
    have ha0 : (rho 34456 + rho 34457) * (seg34AccX17 rho + seg34AccY17 rho) = rho 34458 := by
      unfold seg34AccX17 seg34AccY17
      linear_combination r3186
    have ha1 : rho 34457 * seg34AccX17 rho = rho 34459 := by
      unfold seg34AccX17
      linear_combination r3187
    have ha2 : rho 34456 * seg34AccY17 rho = rho 34460 := by
      unfold seg34AccY17
      linear_combination r3188
    have ha3 : 3021 * rho 34459 * rho 34460 = rho 34461 := by
      linear_combination r3189
    have ha4 : rho 34462 * (1 + rho 34461) = rho 34459 + rho 34460 := by
      linear_combination r3190
    have ha5 : rho 34463 * (1 - rho 34461) = rho 34458 - rho 34459 - rho 34460 := by
      linear_combination r3191
    have haddx :
        rho 34462 * (1 + 3021 * (rho 34457 * seg34AccX17 rho) * (rho 34456 * seg34AccY17 rho)) =
          rho 34457 * seg34AccX17 rho + rho 34456 * seg34AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34463 * (1 - 3021 * (rho 34457 * seg34AccX17 rho) * (rho 34456 * seg34AccY17 rho)) =
          (-1) * (rho 34457 * seg34AccX17 rho) - rho 34456 * seg34AccY17 rho +
            (seg34AccY17 rho - seg34AccX17 rho * (-1)) * (rho 34456 + rho 34457) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34463 * (1 - rho 34461) = rho 34458 - rho 34459 - rho 34460 := ha5
        _ = (-1) * rho 34459 - rho 34460 + (seg34AccY17 rho - seg34AccX17 rho * (-1)) * (rho 34456 + rho 34457) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX18 rho = seg34AccX17 rho - Bool.toZMod bit * (seg34AccX17 rho - rho 34462) := by
      have hd : rho 34464 = Bool.toZMod bit * (rho 34462 - seg34AccX17 rho) := by
        rw [← hbit]
        unfold seg34AccX17
        linear_combination -r3192
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY18 rho = seg34AccY17 rho - Bool.toZMod bit * (seg34AccY17 rho - rho 34463) := by
      have hd : rho 34465 = Bool.toZMod bit * (rho 34463 - seg34AccY17 rho) := by
        rw [← hbit]
        unfold seg34AccY17
        linear_combination -r3193
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34456 * rho 34457 = rho 34466 := by linear_combination r3194
    have hd1 : rho 34456 * rho 34456 = rho 34467 := by linear_combination r3195
    have hd2 : rho 34457 * rho 34457 = rho 34468 := by linear_combination r3196
    have hd3 : rho 34469 * (rho 34457 * rho 34457 + rho 34456 * rho 34456 * (-1)) = 2 * (rho 34456 * rho 34457) := by
      rw [hd0, hd1, hd2]
      linear_combination r3197
    have hd4 : rho 34470 * (2 - (rho 34457 * rho 34457 + rho 34456 * rho 34456 * (-1))) = rho 34457 * rho 34457 - rho 34456 * rho 34456 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3198
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX17 rho : Seg34.F), (seg34AccY17 rho : Seg34.F)⟩
      ⟨(rho 34456 : Seg34.F), (rho 34457 : Seg34.F)⟩
      ⟨(rho 34462 : Seg34.F), (rho 34463 : Seg34.F)⟩
      ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
      ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg34_rows18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3199 rho ∧ Seg34.relationRow3200 rho ∧ Seg34.relationRow3201 rho ∧ Seg34.relationRow3202 rho ∧ Seg34.relationRow3203 rho ∧ Seg34.relationRow3204 rho ∧ Seg34.relationRow3205 rho ∧ Seg34.relationRow3206 rho ∧ Seg34.relationRow3207 rho ∧ Seg34.relationRow3208 rho ∧ Seg34.relationRow3209 rho ∧ Seg34.relationRow3210 rho ∧ Seg34.relationRow3211 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3199⟩
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩

theorem seg34_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩ := by
  obtain ⟨r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206, r3207, r3208, r3209, r3210, r3211⟩ := seg34_rows18 rho h
  unfold Seg34.relationRow3199 at r3199
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3199
  unfold Seg34.relationRow3200 at r3200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200
  unfold Seg34.relationRow3201 at r3201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3201
  unfold Seg34.relationRow3202 at r3202
  unfold Seg34.relationRow3203 at r3203
  unfold Seg34.relationRow3204 at r3204
  unfold Seg34.relationRow3205 at r3205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3205
  unfold Seg34.relationRow3206 at r3206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3206
  unfold Seg34.relationRow3207 at r3207
  unfold Seg34.relationRow3208 at r3208
  unfold Seg34.relationRow3209 at r3209
  unfold Seg34.relationRow3210 at r3210
  unfold Seg34.relationRow3211 at r3211
  have hrung18 (bit : Bool) (hbit : rho 34010 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
        ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩ := by
    have hnextx : seg34AccX19 rho = seg34AccX18 rho + rho 34477 := by
      unfold seg34AccX19 seg34AccX18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 18]
      ring
    have hnexty : seg34AccY19 rho = seg34AccY18 rho + rho 34478 := by
      unfold seg34AccY19 seg34AccY18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 18]
      ring
    have ha0 : (rho 34469 + rho 34470) * (seg34AccX18 rho + seg34AccY18 rho) = rho 34471 := by
      unfold seg34AccX18 seg34AccY18
      linear_combination r3199
    have ha1 : rho 34470 * seg34AccX18 rho = rho 34472 := by
      unfold seg34AccX18
      linear_combination r3200
    have ha2 : rho 34469 * seg34AccY18 rho = rho 34473 := by
      unfold seg34AccY18
      linear_combination r3201
    have ha3 : 3021 * rho 34472 * rho 34473 = rho 34474 := by
      linear_combination r3202
    have ha4 : rho 34475 * (1 + rho 34474) = rho 34472 + rho 34473 := by
      linear_combination r3203
    have ha5 : rho 34476 * (1 - rho 34474) = rho 34471 - rho 34472 - rho 34473 := by
      linear_combination r3204
    have haddx :
        rho 34475 * (1 + 3021 * (rho 34470 * seg34AccX18 rho) * (rho 34469 * seg34AccY18 rho)) =
          rho 34470 * seg34AccX18 rho + rho 34469 * seg34AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34476 * (1 - 3021 * (rho 34470 * seg34AccX18 rho) * (rho 34469 * seg34AccY18 rho)) =
          (-1) * (rho 34470 * seg34AccX18 rho) - rho 34469 * seg34AccY18 rho +
            (seg34AccY18 rho - seg34AccX18 rho * (-1)) * (rho 34469 + rho 34470) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34476 * (1 - rho 34474) = rho 34471 - rho 34472 - rho 34473 := ha5
        _ = (-1) * rho 34472 - rho 34473 + (seg34AccY18 rho - seg34AccX18 rho * (-1)) * (rho 34469 + rho 34470) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX19 rho = seg34AccX18 rho - Bool.toZMod bit * (seg34AccX18 rho - rho 34475) := by
      have hd : rho 34477 = Bool.toZMod bit * (rho 34475 - seg34AccX18 rho) := by
        rw [← hbit]
        unfold seg34AccX18
        linear_combination -r3205
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY19 rho = seg34AccY18 rho - Bool.toZMod bit * (seg34AccY18 rho - rho 34476) := by
      have hd : rho 34478 = Bool.toZMod bit * (rho 34476 - seg34AccY18 rho) := by
        rw [← hbit]
        unfold seg34AccY18
        linear_combination -r3206
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34469 * rho 34470 = rho 34479 := by linear_combination r3207
    have hd1 : rho 34469 * rho 34469 = rho 34480 := by linear_combination r3208
    have hd2 : rho 34470 * rho 34470 = rho 34481 := by linear_combination r3209
    have hd3 : rho 34482 * (rho 34470 * rho 34470 + rho 34469 * rho 34469 * (-1)) = 2 * (rho 34469 * rho 34470) := by
      rw [hd0, hd1, hd2]
      linear_combination r3210
    have hd4 : rho 34483 * (2 - (rho 34470 * rho 34470 + rho 34469 * rho 34469 * (-1))) = rho 34470 * rho 34470 - rho 34469 * rho 34469 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3211
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX18 rho : Seg34.F), (seg34AccY18 rho : Seg34.F)⟩
      ⟨(rho 34469 : Seg34.F), (rho 34470 : Seg34.F)⟩
      ⟨(rho 34475 : Seg34.F), (rho 34476 : Seg34.F)⟩
      ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
      ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg34_rows19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3212 rho ∧ Seg34.relationRow3213 rho ∧ Seg34.relationRow3214 rho ∧ Seg34.relationRow3215 rho ∧ Seg34.relationRow3216 rho ∧ Seg34.relationRow3217 rho ∧ Seg34.relationRow3218 rho ∧ Seg34.relationRow3219 rho ∧ Seg34.relationRow3220 rho ∧ Seg34.relationRow3221 rho ∧ Seg34.relationRow3222 rho ∧ Seg34.relationRow3223 rho ∧ Seg34.relationRow3224 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩

theorem seg34_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34011 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩ := by
  obtain ⟨r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, r3220, r3221, r3222, r3223, r3224⟩ := seg34_rows19 rho h
  unfold Seg34.relationRow3212 at r3212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3212
  unfold Seg34.relationRow3213 at r3213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213
  unfold Seg34.relationRow3214 at r3214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3214
  unfold Seg34.relationRow3215 at r3215
  unfold Seg34.relationRow3216 at r3216
  unfold Seg34.relationRow3217 at r3217
  unfold Seg34.relationRow3218 at r3218
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3218
  unfold Seg34.relationRow3219 at r3219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3219
  unfold Seg34.relationRow3220 at r3220
  unfold Seg34.relationRow3221 at r3221
  unfold Seg34.relationRow3222 at r3222
  unfold Seg34.relationRow3223 at r3223
  unfold Seg34.relationRow3224 at r3224
  have hrung19 (bit : Bool) (hbit : rho 34011 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
        ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩ := by
    have hnextx : seg34AccX20 rho = seg34AccX19 rho + rho 34490 := by
      unfold seg34AccX20 seg34AccX19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 19]
      ring
    have hnexty : seg34AccY20 rho = seg34AccY19 rho + rho 34491 := by
      unfold seg34AccY20 seg34AccY19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 19]
      ring
    have ha0 : (rho 34482 + rho 34483) * (seg34AccX19 rho + seg34AccY19 rho) = rho 34484 := by
      unfold seg34AccX19 seg34AccY19
      linear_combination r3212
    have ha1 : rho 34483 * seg34AccX19 rho = rho 34485 := by
      unfold seg34AccX19
      linear_combination r3213
    have ha2 : rho 34482 * seg34AccY19 rho = rho 34486 := by
      unfold seg34AccY19
      linear_combination r3214
    have ha3 : 3021 * rho 34485 * rho 34486 = rho 34487 := by
      linear_combination r3215
    have ha4 : rho 34488 * (1 + rho 34487) = rho 34485 + rho 34486 := by
      linear_combination r3216
    have ha5 : rho 34489 * (1 - rho 34487) = rho 34484 - rho 34485 - rho 34486 := by
      linear_combination r3217
    have haddx :
        rho 34488 * (1 + 3021 * (rho 34483 * seg34AccX19 rho) * (rho 34482 * seg34AccY19 rho)) =
          rho 34483 * seg34AccX19 rho + rho 34482 * seg34AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34489 * (1 - 3021 * (rho 34483 * seg34AccX19 rho) * (rho 34482 * seg34AccY19 rho)) =
          (-1) * (rho 34483 * seg34AccX19 rho) - rho 34482 * seg34AccY19 rho +
            (seg34AccY19 rho - seg34AccX19 rho * (-1)) * (rho 34482 + rho 34483) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34489 * (1 - rho 34487) = rho 34484 - rho 34485 - rho 34486 := ha5
        _ = (-1) * rho 34485 - rho 34486 + (seg34AccY19 rho - seg34AccX19 rho * (-1)) * (rho 34482 + rho 34483) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX20 rho = seg34AccX19 rho - Bool.toZMod bit * (seg34AccX19 rho - rho 34488) := by
      have hd : rho 34490 = Bool.toZMod bit * (rho 34488 - seg34AccX19 rho) := by
        rw [← hbit]
        unfold seg34AccX19
        linear_combination -r3218
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY20 rho = seg34AccY19 rho - Bool.toZMod bit * (seg34AccY19 rho - rho 34489) := by
      have hd : rho 34491 = Bool.toZMod bit * (rho 34489 - seg34AccY19 rho) := by
        rw [← hbit]
        unfold seg34AccY19
        linear_combination -r3219
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34482 * rho 34483 = rho 34492 := by linear_combination r3220
    have hd1 : rho 34482 * rho 34482 = rho 34493 := by linear_combination r3221
    have hd2 : rho 34483 * rho 34483 = rho 34494 := by linear_combination r3222
    have hd3 : rho 34495 * (rho 34483 * rho 34483 + rho 34482 * rho 34482 * (-1)) = 2 * (rho 34482 * rho 34483) := by
      rw [hd0, hd1, hd2]
      linear_combination r3223
    have hd4 : rho 34496 * (2 - (rho 34483 * rho 34483 + rho 34482 * rho 34482 * (-1))) = rho 34483 * rho 34483 - rho 34482 * rho 34482 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3224
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX19 rho : Seg34.F), (seg34AccY19 rho : Seg34.F)⟩
      ⟨(rho 34482 : Seg34.F), (rho 34483 : Seg34.F)⟩
      ⟨(rho 34488 : Seg34.F), (rho 34489 : Seg34.F)⟩
      ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
      ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg34_rows20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3225 rho ∧ Seg34.relationRow3226 rho ∧ Seg34.relationRow3227 rho ∧ Seg34.relationRow3228 rho ∧ Seg34.relationRow3229 rho ∧ Seg34.relationRow3230 rho ∧ Seg34.relationRow3231 rho ∧ Seg34.relationRow3232 rho ∧ Seg34.relationRow3233 rho ∧ Seg34.relationRow3234 rho ∧ Seg34.relationRow3235 rho ∧ Seg34.relationRow3236 rho ∧ Seg34.relationRow3237 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩

theorem seg34_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34012 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩ := by
  obtain ⟨r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, r3233, r3234, r3235, r3236, r3237⟩ := seg34_rows20 rho h
  unfold Seg34.relationRow3225 at r3225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3225
  unfold Seg34.relationRow3226 at r3226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226
  unfold Seg34.relationRow3227 at r3227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3227
  unfold Seg34.relationRow3228 at r3228
  unfold Seg34.relationRow3229 at r3229
  unfold Seg34.relationRow3230 at r3230
  unfold Seg34.relationRow3231 at r3231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3231
  unfold Seg34.relationRow3232 at r3232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3232
  unfold Seg34.relationRow3233 at r3233
  unfold Seg34.relationRow3234 at r3234
  unfold Seg34.relationRow3235 at r3235
  unfold Seg34.relationRow3236 at r3236
  unfold Seg34.relationRow3237 at r3237
  have hrung20 (bit : Bool) (hbit : rho 34012 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
        ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩ := by
    have hnextx : seg34AccX21 rho = seg34AccX20 rho + rho 34503 := by
      unfold seg34AccX21 seg34AccX20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 20]
      ring
    have hnexty : seg34AccY21 rho = seg34AccY20 rho + rho 34504 := by
      unfold seg34AccY21 seg34AccY20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 20]
      ring
    have ha0 : (rho 34495 + rho 34496) * (seg34AccX20 rho + seg34AccY20 rho) = rho 34497 := by
      unfold seg34AccX20 seg34AccY20
      linear_combination r3225
    have ha1 : rho 34496 * seg34AccX20 rho = rho 34498 := by
      unfold seg34AccX20
      linear_combination r3226
    have ha2 : rho 34495 * seg34AccY20 rho = rho 34499 := by
      unfold seg34AccY20
      linear_combination r3227
    have ha3 : 3021 * rho 34498 * rho 34499 = rho 34500 := by
      linear_combination r3228
    have ha4 : rho 34501 * (1 + rho 34500) = rho 34498 + rho 34499 := by
      linear_combination r3229
    have ha5 : rho 34502 * (1 - rho 34500) = rho 34497 - rho 34498 - rho 34499 := by
      linear_combination r3230
    have haddx :
        rho 34501 * (1 + 3021 * (rho 34496 * seg34AccX20 rho) * (rho 34495 * seg34AccY20 rho)) =
          rho 34496 * seg34AccX20 rho + rho 34495 * seg34AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34502 * (1 - 3021 * (rho 34496 * seg34AccX20 rho) * (rho 34495 * seg34AccY20 rho)) =
          (-1) * (rho 34496 * seg34AccX20 rho) - rho 34495 * seg34AccY20 rho +
            (seg34AccY20 rho - seg34AccX20 rho * (-1)) * (rho 34495 + rho 34496) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34502 * (1 - rho 34500) = rho 34497 - rho 34498 - rho 34499 := ha5
        _ = (-1) * rho 34498 - rho 34499 + (seg34AccY20 rho - seg34AccX20 rho * (-1)) * (rho 34495 + rho 34496) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX21 rho = seg34AccX20 rho - Bool.toZMod bit * (seg34AccX20 rho - rho 34501) := by
      have hd : rho 34503 = Bool.toZMod bit * (rho 34501 - seg34AccX20 rho) := by
        rw [← hbit]
        unfold seg34AccX20
        linear_combination -r3231
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY21 rho = seg34AccY20 rho - Bool.toZMod bit * (seg34AccY20 rho - rho 34502) := by
      have hd : rho 34504 = Bool.toZMod bit * (rho 34502 - seg34AccY20 rho) := by
        rw [← hbit]
        unfold seg34AccY20
        linear_combination -r3232
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34495 * rho 34496 = rho 34505 := by linear_combination r3233
    have hd1 : rho 34495 * rho 34495 = rho 34506 := by linear_combination r3234
    have hd2 : rho 34496 * rho 34496 = rho 34507 := by linear_combination r3235
    have hd3 : rho 34508 * (rho 34496 * rho 34496 + rho 34495 * rho 34495 * (-1)) = 2 * (rho 34495 * rho 34496) := by
      rw [hd0, hd1, hd2]
      linear_combination r3236
    have hd4 : rho 34509 * (2 - (rho 34496 * rho 34496 + rho 34495 * rho 34495 * (-1))) = rho 34496 * rho 34496 - rho 34495 * rho 34495 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3237
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX20 rho : Seg34.F), (seg34AccY20 rho : Seg34.F)⟩
      ⟨(rho 34495 : Seg34.F), (rho 34496 : Seg34.F)⟩
      ⟨(rho 34501 : Seg34.F), (rho 34502 : Seg34.F)⟩
      ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
      ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg34_rows21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3238 rho ∧ Seg34.relationRow3239 rho ∧ Seg34.relationRow3240 rho ∧ Seg34.relationRow3241 rho ∧ Seg34.relationRow3242 rho ∧ Seg34.relationRow3243 rho ∧ Seg34.relationRow3244 rho ∧ Seg34.relationRow3245 rho ∧ Seg34.relationRow3246 rho ∧ Seg34.relationRow3247 rho ∧ Seg34.relationRow3248 rho ∧ Seg34.relationRow3249 rho ∧ Seg34.relationRow3250 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩

theorem seg34_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34013 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
        ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
        ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩ := by
  obtain ⟨r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, r3246, r3247, r3248, r3249, r3250⟩ := seg34_rows21 rho h
  unfold Seg34.relationRow3238 at r3238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3238
  unfold Seg34.relationRow3239 at r3239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239
  unfold Seg34.relationRow3240 at r3240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3240
  unfold Seg34.relationRow3241 at r3241
  unfold Seg34.relationRow3242 at r3242
  unfold Seg34.relationRow3243 at r3243
  unfold Seg34.relationRow3244 at r3244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3244
  unfold Seg34.relationRow3245 at r3245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3245
  unfold Seg34.relationRow3246 at r3246
  unfold Seg34.relationRow3247 at r3247
  unfold Seg34.relationRow3248 at r3248
  unfold Seg34.relationRow3249 at r3249
  unfold Seg34.relationRow3250 at r3250
  have hrung21 (bit : Bool) (hbit : rho 34013 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
        ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
        ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
        ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩ := by
    have hnextx : seg34AccX22 rho = seg34AccX21 rho + rho 34516 := by
      unfold seg34AccX22 seg34AccX21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 21]
      ring
    have hnexty : seg34AccY22 rho = seg34AccY21 rho + rho 34517 := by
      unfold seg34AccY22 seg34AccY21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 21]
      ring
    have ha0 : (rho 34508 + rho 34509) * (seg34AccX21 rho + seg34AccY21 rho) = rho 34510 := by
      unfold seg34AccX21 seg34AccY21
      linear_combination r3238
    have ha1 : rho 34509 * seg34AccX21 rho = rho 34511 := by
      unfold seg34AccX21
      linear_combination r3239
    have ha2 : rho 34508 * seg34AccY21 rho = rho 34512 := by
      unfold seg34AccY21
      linear_combination r3240
    have ha3 : 3021 * rho 34511 * rho 34512 = rho 34513 := by
      linear_combination r3241
    have ha4 : rho 34514 * (1 + rho 34513) = rho 34511 + rho 34512 := by
      linear_combination r3242
    have ha5 : rho 34515 * (1 - rho 34513) = rho 34510 - rho 34511 - rho 34512 := by
      linear_combination r3243
    have haddx :
        rho 34514 * (1 + 3021 * (rho 34509 * seg34AccX21 rho) * (rho 34508 * seg34AccY21 rho)) =
          rho 34509 * seg34AccX21 rho + rho 34508 * seg34AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 34515 * (1 - 3021 * (rho 34509 * seg34AccX21 rho) * (rho 34508 * seg34AccY21 rho)) =
          (-1) * (rho 34509 * seg34AccX21 rho) - rho 34508 * seg34AccY21 rho +
            (seg34AccY21 rho - seg34AccX21 rho * (-1)) * (rho 34508 + rho 34509) := by
      rw [ha1, ha2, ha3]
      calc
        rho 34515 * (1 - rho 34513) = rho 34510 - rho 34511 - rho 34512 := ha5
        _ = (-1) * rho 34511 - rho 34512 + (seg34AccY21 rho - seg34AccX21 rho * (-1)) * (rho 34508 + rho 34509) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX22 rho = seg34AccX21 rho - Bool.toZMod bit * (seg34AccX21 rho - rho 34514) := by
      have hd : rho 34516 = Bool.toZMod bit * (rho 34514 - seg34AccX21 rho) := by
        rw [← hbit]
        unfold seg34AccX21
        linear_combination -r3244
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY22 rho = seg34AccY21 rho - Bool.toZMod bit * (seg34AccY21 rho - rho 34515) := by
      have hd : rho 34517 = Bool.toZMod bit * (rho 34515 - seg34AccY21 rho) := by
        rw [← hbit]
        unfold seg34AccY21
        linear_combination -r3245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 34508 * rho 34509 = rho 34518 := by linear_combination r3246
    have hd1 : rho 34508 * rho 34508 = rho 34519 := by linear_combination r3247
    have hd2 : rho 34509 * rho 34509 = rho 34520 := by linear_combination r3248
    have hd3 : rho 34521 * (rho 34509 * rho 34509 + rho 34508 * rho 34508 * (-1)) = 2 * (rho 34508 * rho 34509) := by
      rw [hd0, hd1, hd2]
      linear_combination r3249
    have hd4 : rho 34522 * (2 - (rho 34509 * rho 34509 + rho 34508 * rho 34508 * (-1))) = rho 34509 * rho 34509 - rho 34508 * rho 34508 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX21 rho : Seg34.F), (seg34AccY21 rho : Seg34.F)⟩
      ⟨(rho 34508 : Seg34.F), (rho 34509 : Seg34.F)⟩
      ⟨(rho 34514 : Seg34.F), (rho 34515 : Seg34.F)⟩
      ⟨(seg34AccX22 rho : Seg34.F), (seg34AccY22 rho : Seg34.F)⟩
      ⟨(rho 34521 : Seg34.F), (rho 34522 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg34_hstep_c1 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg34_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg34_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg34_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg34_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg34_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg34_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg34_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg34_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg34_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg34_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
