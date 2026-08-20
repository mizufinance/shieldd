import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem bits_bool (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation rho) :
    ∀ i : Nat, i < 32 →
      rho (1 + i) = 0 ∨ rho (1 + i) = 1 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hb0 : rho 1 = 0 ∨ rho 1 = 1 :=
    (mul_eq_zero.mp (show rho 1 * (1 - rho 1) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow0 at r0
      linear_combination r0)).imp
      id (fun hx => by linear_combination -hx)
  have hb1 : rho 2 = 0 ∨ rho 2 = 1 :=
    (mul_eq_zero.mp (show rho 2 * (1 - rho 2) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1 at r1
      linear_combination r1)).imp
      id (fun hx => by linear_combination -hx)
  have hb2 : rho 3 = 0 ∨ rho 3 = 1 :=
    (mul_eq_zero.mp (show rho 3 * (1 - rho 3) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow2 at r2
      linear_combination r2)).imp
      id (fun hx => by linear_combination -hx)
  have hb3 : rho 4 = 0 ∨ rho 4 = 1 :=
    (mul_eq_zero.mp (show rho 4 * (1 - rho 4) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow3 at r3
      linear_combination r3)).imp
      id (fun hx => by linear_combination -hx)
  have hb4 : rho 5 = 0 ∨ rho 5 = 1 :=
    (mul_eq_zero.mp (show rho 5 * (1 - rho 5) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4 at r4
      linear_combination r4)).imp
      id (fun hx => by linear_combination -hx)
  have hb5 : rho 6 = 0 ∨ rho 6 = 1 :=
    (mul_eq_zero.mp (show rho 6 * (1 - rho 6) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5 at r5
      linear_combination r5)).imp
      id (fun hx => by linear_combination -hx)
  have hb6 : rho 7 = 0 ∨ rho 7 = 1 :=
    (mul_eq_zero.mp (show rho 7 * (1 - rho 7) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow6 at r6
      linear_combination r6)).imp
      id (fun hx => by linear_combination -hx)
  have hb7 : rho 8 = 0 ∨ rho 8 = 1 :=
    (mul_eq_zero.mp (show rho 8 * (1 - rho 8) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow7 at r7
      linear_combination r7)).imp
      id (fun hx => by linear_combination -hx)
  have hb8 : rho 9 = 0 ∨ rho 9 = 1 :=
    (mul_eq_zero.mp (show rho 9 * (1 - rho 9) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow8 at r8
      linear_combination r8)).imp
      id (fun hx => by linear_combination -hx)
  have hb9 : rho 10 = 0 ∨ rho 10 = 1 :=
    (mul_eq_zero.mp (show rho 10 * (1 - rho 10) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow9 at r9
      linear_combination r9)).imp
      id (fun hx => by linear_combination -hx)
  have hb10 : rho 11 = 0 ∨ rho 11 = 1 :=
    (mul_eq_zero.mp (show rho 11 * (1 - rho 11) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow10 at r10
      linear_combination r10)).imp
      id (fun hx => by linear_combination -hx)
  have hb11 : rho 12 = 0 ∨ rho 12 = 1 :=
    (mul_eq_zero.mp (show rho 12 * (1 - rho 12) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow11 at r11
      linear_combination r11)).imp
      id (fun hx => by linear_combination -hx)
  have hb12 : rho 13 = 0 ∨ rho 13 = 1 :=
    (mul_eq_zero.mp (show rho 13 * (1 - rho 13) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow12 at r12
      linear_combination r12)).imp
      id (fun hx => by linear_combination -hx)
  have hb13 : rho 14 = 0 ∨ rho 14 = 1 :=
    (mul_eq_zero.mp (show rho 14 * (1 - rho 14) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow13 at r13
      linear_combination r13)).imp
      id (fun hx => by linear_combination -hx)
  have hb14 : rho 15 = 0 ∨ rho 15 = 1 :=
    (mul_eq_zero.mp (show rho 15 * (1 - rho 15) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow14 at r14
      linear_combination r14)).imp
      id (fun hx => by linear_combination -hx)
  have hb15 : rho 16 = 0 ∨ rho 16 = 1 :=
    (mul_eq_zero.mp (show rho 16 * (1 - rho 16) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow15 at r15
      linear_combination r15)).imp
      id (fun hx => by linear_combination -hx)
  have hb16 : rho 17 = 0 ∨ rho 17 = 1 :=
    (mul_eq_zero.mp (show rho 17 * (1 - rho 17) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow16 at r16
      linear_combination r16)).imp
      id (fun hx => by linear_combination -hx)
  have hb17 : rho 18 = 0 ∨ rho 18 = 1 :=
    (mul_eq_zero.mp (show rho 18 * (1 - rho 18) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow17 at r17
      linear_combination r17)).imp
      id (fun hx => by linear_combination -hx)
  have hb18 : rho 19 = 0 ∨ rho 19 = 1 :=
    (mul_eq_zero.mp (show rho 19 * (1 - rho 19) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow18 at r18
      linear_combination r18)).imp
      id (fun hx => by linear_combination -hx)
  have hb19 : rho 20 = 0 ∨ rho 20 = 1 :=
    (mul_eq_zero.mp (show rho 20 * (1 - rho 20) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow19 at r19
      linear_combination r19)).imp
      id (fun hx => by linear_combination -hx)
  have hb20 : rho 21 = 0 ∨ rho 21 = 1 :=
    (mul_eq_zero.mp (show rho 21 * (1 - rho 21) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow20 at r20
      linear_combination r20)).imp
      id (fun hx => by linear_combination -hx)
  have hb21 : rho 22 = 0 ∨ rho 22 = 1 :=
    (mul_eq_zero.mp (show rho 22 * (1 - rho 22) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow21 at r21
      linear_combination r21)).imp
      id (fun hx => by linear_combination -hx)
  have hb22 : rho 23 = 0 ∨ rho 23 = 1 :=
    (mul_eq_zero.mp (show rho 23 * (1 - rho 23) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow22 at r22
      linear_combination r22)).imp
      id (fun hx => by linear_combination -hx)
  have hb23 : rho 24 = 0 ∨ rho 24 = 1 :=
    (mul_eq_zero.mp (show rho 24 * (1 - rho 24) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow23 at r23
      linear_combination r23)).imp
      id (fun hx => by linear_combination -hx)
  have hb24 : rho 25 = 0 ∨ rho 25 = 1 :=
    (mul_eq_zero.mp (show rho 25 * (1 - rho 25) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow24 at r24
      linear_combination r24)).imp
      id (fun hx => by linear_combination -hx)
  have hb25 : rho 26 = 0 ∨ rho 26 = 1 :=
    (mul_eq_zero.mp (show rho 26 * (1 - rho 26) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow25 at r25
      linear_combination r25)).imp
      id (fun hx => by linear_combination -hx)
  have hb26 : rho 27 = 0 ∨ rho 27 = 1 :=
    (mul_eq_zero.mp (show rho 27 * (1 - rho 27) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow26 at r26
      linear_combination r26)).imp
      id (fun hx => by linear_combination -hx)
  have hb27 : rho 28 = 0 ∨ rho 28 = 1 :=
    (mul_eq_zero.mp (show rho 28 * (1 - rho 28) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow27 at r27
      linear_combination r27)).imp
      id (fun hx => by linear_combination -hx)
  have hb28 : rho 29 = 0 ∨ rho 29 = 1 :=
    (mul_eq_zero.mp (show rho 29 * (1 - rho 29) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow28 at r28
      linear_combination r28)).imp
      id (fun hx => by linear_combination -hx)
  have hb29 : rho 30 = 0 ∨ rho 30 = 1 :=
    (mul_eq_zero.mp (show rho 30 * (1 - rho 30) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow29 at r29
      linear_combination r29)).imp
      id (fun hx => by linear_combination -hx)
  have hb30 : rho 31 = 0 ∨ rho 31 = 1 :=
    (mul_eq_zero.mp (show rho 31 * (1 - rho 31) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow30 at r30
      linear_combination r30)).imp
      id (fun hx => by linear_combination -hx)
  have hb31 : rho 32 = 0 ∨ rho 32 = 1 :=
    (mul_eq_zero.mp (show rho 32 * (1 - rho 32) = 0 by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow31 at r31
      linear_combination r31)).imp
      id (fun hx => by linear_combination -hx)
  intro i hi
  interval_cases i
  · simpa using hb0
  · simpa using hb1
  · simpa using hb2
  · simpa using hb3
  · simpa using hb4
  · simpa using hb5
  · simpa using hb6
  · simpa using hb7
  · simpa using hb8
  · simpa using hb9
  · simpa using hb10
  · simpa using hb11
  · simpa using hb12
  · simpa using hb13
  · simpa using hb14
  · simpa using hb15
  · simpa using hb16
  · simpa using hb17
  · simpa using hb18
  · simpa using hb19
  · simpa using hb20
  · simpa using hb21
  · simpa using hb22
  · simpa using hb23
  · simpa using hb24
  · simpa using hb25
  · simpa using hb26
  · simpa using hb27
  · simpa using hb28
  · simpa using hb29
  · simpa using hb30
  · simpa using hb31

theorem position_recompose (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation rho) :
    rho 33 =
      (1 : F) * rho 1
      + (2 : F) * rho 2
      + (4 : F) * rho 3
      + (8 : F) * rho 4
      + (16 : F) * rho 5
      + (32 : F) * rho 6
      + (64 : F) * rho 7
      + (128 : F) * rho 8
      + (256 : F) * rho 9
      + (512 : F) * rho 10
      + (1024 : F) * rho 11
      + (2048 : F) * rho 12
      + (4096 : F) * rho 13
      + (8192 : F) * rho 14
      + (16384 : F) * rho 15
      + (32768 : F) * rho 16
      + (65536 : F) * rho 17
      + (131072 : F) * rho 18
      + (262144 : F) * rho 19
      + (524288 : F) * rho 20
      + (1048576 : F) * rho 21
      + (2097152 : F) * rho 22
      + (4194304 : F) * rho 23
      + (8388608 : F) * rho 24
      + (16777216 : F) * rho 25
      + (33554432 : F) * rho 26
      + (67108864 : F) * rho 27
      + (134217728 : F) * rho 28
      + (268435456 : F) * rho 29
      + (536870912 : F) * rho 30
      + (1073741824 : F) * rho 31
      + (2147483648 : F) * rho 32 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart0 at p0
  rcases p0 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r32, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow32 at r32
  linear_combination -r32

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
