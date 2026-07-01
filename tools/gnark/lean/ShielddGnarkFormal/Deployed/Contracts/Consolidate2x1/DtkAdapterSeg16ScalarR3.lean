import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15388 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4213 Seg16.relationLc515 Seg16.relationLc515Part0 Seg16.relationLc515Part1 Seg16.relationLc515Part2 Seg16.relationLc515Part3 Seg16.relationLc515Part4 Seg16.relationLc515Part5 Seg16.relationLc515Part6 at r4213
  unfold Seg16.relationRow4214 Seg16.relationLc516 Seg16.relationLc516Part0 Seg16.relationLc516Part1 Seg16.relationLc516Part2 at r4214
  unfold Seg16.relationRow4215 Seg16.relationLc517 Seg16.relationLc517Part0 Seg16.relationLc517Part1 Seg16.relationLc517Part2 Seg16.relationLc517Part3 at r4215
  unfold Seg16.relationRow4216 at r4216
  unfold Seg16.relationRow4217 at r4217
  unfold Seg16.relationRow4218 at r4218
  unfold Seg16.relationRow4219 Seg16.relationLc518 Seg16.relationLc518Part0 Seg16.relationLc518Part1 Seg16.relationLc518Part2 Seg16.relationLc518Part3 at r4219
  unfold Seg16.relationRow4220 Seg16.relationLc519 Seg16.relationLc519Part0 Seg16.relationLc519Part1 Seg16.relationLc519Part2 Seg16.relationLc519Part3 at r4220
  unfold Seg16.relationRow4221 at r4221
  unfold Seg16.relationRow4222 at r4222
  unfold Seg16.relationRow4223 at r4223
  unfold Seg16.relationRow4224 at r4224
  unfold Seg16.relationRow4225 at r4225
  have hrung96 (bit : Bool) (hbit : rho 15388 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩ := by
    have ha0 : (rho 16783 + rho 16784) * (seg16AccX96 rho + seg16AccY96 rho) = rho 16785 := by
      rw [seg16LadderFlatX96_eq, seg16LadderFlatY96_eq]
      unfold seg16LadderFlatX96 seg16LadderFlatY96
      linear_combination r4213
    have ha1 : rho 16784 * seg16AccX96 rho = rho 16786 := by
      rw [seg16LadderFlatX96_eq]
      unfold seg16LadderFlatX96
      linear_combination r4214
    have ha2 : rho 16783 * seg16AccY96 rho = rho 16787 := by
      rw [seg16LadderFlatY96_eq]
      unfold seg16LadderFlatY96
      linear_combination r4215
    have ha3 : 3021 * rho 16786 * rho 16787 = rho 16788 := by
      linear_combination r4216
    have ha4 : rho 16789 * (1 + rho 16788) = rho 16786 + rho 16787 := by
      linear_combination r4217
    have ha5 : rho 16790 * (1 - rho 16788) = rho 16785 - rho 16786 - rho 16787 := by
      linear_combination r4218
    have haddx :
        rho 16789 * (1 + 3021 * (rho 16784 * seg16AccX96 rho) * (rho 16783 * seg16AccY96 rho)) =
          rho 16784 * seg16AccX96 rho + rho 16783 * seg16AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16790 * (1 - 3021 * (rho 16784 * seg16AccX96 rho) * (rho 16783 * seg16AccY96 rho)) =
          (-1) * (rho 16784 * seg16AccX96 rho) - rho 16783 * seg16AccY96 rho +
            (seg16AccY96 rho - seg16AccX96 rho * (-1)) * (rho 16783 + rho 16784) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16790 * (1 - rho 16788) = rho 16785 - rho 16786 - rho 16787 := ha5
        _ = (-1) * rho 16786 - rho 16787 + (seg16AccY96 rho - seg16AccX96 rho * (-1)) * (rho 16783 + rho 16784) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX97 rho = seg16AccX96 rho - Bool.toZMod bit * (seg16AccX96 rho - rho 16789) := by
      have hd : rho 16791 = Bool.toZMod bit * (rho 16789 - seg16AccX96 rho) := by
        rw [← hbit, seg16LadderFlatX96_eq]
        unfold seg16LadderFlatX96
        linear_combination -r4219
      unfold seg16AccX97
      linear_combination hd
    have hsely : seg16AccY97 rho = seg16AccY96 rho - Bool.toZMod bit * (seg16AccY96 rho - rho 16790) := by
      have hd : rho 16792 = Bool.toZMod bit * (rho 16790 - seg16AccY96 rho) := by
        rw [← hbit, seg16LadderFlatY96_eq]
        unfold seg16LadderFlatY96
        linear_combination -r4220
      unfold seg16AccY97
      linear_combination hd
    have hd0 : rho 16783 * rho 16784 = rho 16793 := by linear_combination r4221
    have hd1 : rho 16783 * rho 16783 = rho 16794 := by linear_combination r4222
    have hd2 : rho 16784 * rho 16784 = rho 16795 := by linear_combination r4223
    have hd3 : rho 16796 * (rho 16784 * rho 16784 + rho 16783 * rho 16783 * (-1)) = 2 * (rho 16783 * rho 16784) := by
      rw [hd0, hd1, hd2]
      linear_combination r4224
    have hd4 : rho 16797 * (2 - (rho 16784 * rho 16784 + rho 16783 * rho 16783 * (-1))) = rho 16784 * rho 16784 - rho 16783 * rho 16783 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4225
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
      ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
      ⟨(rho 16789 : Seg16.F), (rho 16790 : Seg16.F)⟩
      ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
      ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg16_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15389 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  unfold Seg16.relationRow4226 Seg16.relationLc520 Seg16.relationLc520Part0 Seg16.relationLc520Part1 Seg16.relationLc520Part2 Seg16.relationLc520Part3 Seg16.relationLc520Part4 Seg16.relationLc520Part5 Seg16.relationLc520Part6 at r4226
  unfold Seg16.relationRow4227 Seg16.relationLc521 Seg16.relationLc521Part0 Seg16.relationLc521Part1 Seg16.relationLc521Part2 Seg16.relationLc521Part3 at r4227
  unfold Seg16.relationRow4228 Seg16.relationLc522 Seg16.relationLc522Part0 Seg16.relationLc522Part1 Seg16.relationLc522Part2 Seg16.relationLc522Part3 at r4228
  unfold Seg16.relationRow4229 at r4229
  unfold Seg16.relationRow4230 at r4230
  unfold Seg16.relationRow4231 at r4231
  unfold Seg16.relationRow4232 Seg16.relationLc523 Seg16.relationLc523Part0 Seg16.relationLc523Part1 Seg16.relationLc523Part2 Seg16.relationLc523Part3 at r4232
  unfold Seg16.relationRow4233 Seg16.relationLc524 Seg16.relationLc524Part0 Seg16.relationLc524Part1 Seg16.relationLc524Part2 Seg16.relationLc524Part3 at r4233
  unfold Seg16.relationRow4234 at r4234
  unfold Seg16.relationRow4235 at r4235
  unfold Seg16.relationRow4236 at r4236
  unfold Seg16.relationRow4237 at r4237
  unfold Seg16.relationRow4238 at r4238
  have hrung97 (bit : Bool) (hbit : rho 15389 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩ := by
    have ha0 : (rho 16796 + rho 16797) * (seg16AccX97 rho + seg16AccY97 rho) = rho 16798 := by
      rw [seg16LadderFlatX97_eq, seg16LadderFlatY97_eq]
      unfold seg16LadderFlatX97 seg16LadderFlatY97
      linear_combination r4226
    have ha1 : rho 16797 * seg16AccX97 rho = rho 16799 := by
      rw [seg16LadderFlatX97_eq]
      unfold seg16LadderFlatX97
      linear_combination r4227
    have ha2 : rho 16796 * seg16AccY97 rho = rho 16800 := by
      rw [seg16LadderFlatY97_eq]
      unfold seg16LadderFlatY97
      linear_combination r4228
    have ha3 : 3021 * rho 16799 * rho 16800 = rho 16801 := by
      linear_combination r4229
    have ha4 : rho 16802 * (1 + rho 16801) = rho 16799 + rho 16800 := by
      linear_combination r4230
    have ha5 : rho 16803 * (1 - rho 16801) = rho 16798 - rho 16799 - rho 16800 := by
      linear_combination r4231
    have haddx :
        rho 16802 * (1 + 3021 * (rho 16797 * seg16AccX97 rho) * (rho 16796 * seg16AccY97 rho)) =
          rho 16797 * seg16AccX97 rho + rho 16796 * seg16AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16803 * (1 - 3021 * (rho 16797 * seg16AccX97 rho) * (rho 16796 * seg16AccY97 rho)) =
          (-1) * (rho 16797 * seg16AccX97 rho) - rho 16796 * seg16AccY97 rho +
            (seg16AccY97 rho - seg16AccX97 rho * (-1)) * (rho 16796 + rho 16797) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16803 * (1 - rho 16801) = rho 16798 - rho 16799 - rho 16800 := ha5
        _ = (-1) * rho 16799 - rho 16800 + (seg16AccY97 rho - seg16AccX97 rho * (-1)) * (rho 16796 + rho 16797) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX98 rho = seg16AccX97 rho - Bool.toZMod bit * (seg16AccX97 rho - rho 16802) := by
      have hd : rho 16804 = Bool.toZMod bit * (rho 16802 - seg16AccX97 rho) := by
        rw [← hbit, seg16LadderFlatX97_eq]
        unfold seg16LadderFlatX97
        linear_combination -r4232
      unfold seg16AccX98
      linear_combination hd
    have hsely : seg16AccY98 rho = seg16AccY97 rho - Bool.toZMod bit * (seg16AccY97 rho - rho 16803) := by
      have hd : rho 16805 = Bool.toZMod bit * (rho 16803 - seg16AccY97 rho) := by
        rw [← hbit, seg16LadderFlatY97_eq]
        unfold seg16LadderFlatY97
        linear_combination -r4233
      unfold seg16AccY98
      linear_combination hd
    have hd0 : rho 16796 * rho 16797 = rho 16806 := by linear_combination r4234
    have hd1 : rho 16796 * rho 16796 = rho 16807 := by linear_combination r4235
    have hd2 : rho 16797 * rho 16797 = rho 16808 := by linear_combination r4236
    have hd3 : rho 16809 * (rho 16797 * rho 16797 + rho 16796 * rho 16796 * (-1)) = 2 * (rho 16796 * rho 16797) := by
      rw [hd0, hd1, hd2]
      linear_combination r4237
    have hd4 : rho 16810 * (2 - (rho 16797 * rho 16797 + rho 16796 * rho 16796 * (-1))) = rho 16797 * rho 16797 - rho 16796 * rho 16796 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4238
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
      ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
      ⟨(rho 16802 : Seg16.F), (rho 16803 : Seg16.F)⟩
      ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
      ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg16_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15390 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4239 Seg16.relationLc525 Seg16.relationLc525Part0 Seg16.relationLc525Part1 Seg16.relationLc525Part2 Seg16.relationLc525Part3 Seg16.relationLc525Part4 Seg16.relationLc525Part5 Seg16.relationLc525Part6 at r4239
  unfold Seg16.relationRow4240 Seg16.relationLc526 Seg16.relationLc526Part0 Seg16.relationLc526Part1 Seg16.relationLc526Part2 Seg16.relationLc526Part3 at r4240
  unfold Seg16.relationRow4241 Seg16.relationLc527 Seg16.relationLc527Part0 Seg16.relationLc527Part1 Seg16.relationLc527Part2 Seg16.relationLc527Part3 at r4241
  unfold Seg16.relationRow4242 at r4242
  unfold Seg16.relationRow4243 at r4243
  unfold Seg16.relationRow4244 at r4244
  unfold Seg16.relationRow4245 Seg16.relationLc528 Seg16.relationLc528Part0 Seg16.relationLc528Part1 Seg16.relationLc528Part2 Seg16.relationLc528Part3 at r4245
  unfold Seg16.relationRow4246 Seg16.relationLc529 Seg16.relationLc529Part0 Seg16.relationLc529Part1 Seg16.relationLc529Part2 Seg16.relationLc529Part3 at r4246
  unfold Seg16.relationRow4247 at r4247
  unfold Seg16.relationRow4248 at r4248
  unfold Seg16.relationRow4249 at r4249
  unfold Seg16.relationRow4250 at r4250
  unfold Seg16.relationRow4251 at r4251
  have hrung98 (bit : Bool) (hbit : rho 15390 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩ := by
    have ha0 : (rho 16809 + rho 16810) * (seg16AccX98 rho + seg16AccY98 rho) = rho 16811 := by
      rw [seg16LadderFlatX98_eq, seg16LadderFlatY98_eq]
      unfold seg16LadderFlatX98 seg16LadderFlatY98
      linear_combination r4239
    have ha1 : rho 16810 * seg16AccX98 rho = rho 16812 := by
      rw [seg16LadderFlatX98_eq]
      unfold seg16LadderFlatX98
      linear_combination r4240
    have ha2 : rho 16809 * seg16AccY98 rho = rho 16813 := by
      rw [seg16LadderFlatY98_eq]
      unfold seg16LadderFlatY98
      linear_combination r4241
    have ha3 : 3021 * rho 16812 * rho 16813 = rho 16814 := by
      linear_combination r4242
    have ha4 : rho 16815 * (1 + rho 16814) = rho 16812 + rho 16813 := by
      linear_combination r4243
    have ha5 : rho 16816 * (1 - rho 16814) = rho 16811 - rho 16812 - rho 16813 := by
      linear_combination r4244
    have haddx :
        rho 16815 * (1 + 3021 * (rho 16810 * seg16AccX98 rho) * (rho 16809 * seg16AccY98 rho)) =
          rho 16810 * seg16AccX98 rho + rho 16809 * seg16AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16816 * (1 - 3021 * (rho 16810 * seg16AccX98 rho) * (rho 16809 * seg16AccY98 rho)) =
          (-1) * (rho 16810 * seg16AccX98 rho) - rho 16809 * seg16AccY98 rho +
            (seg16AccY98 rho - seg16AccX98 rho * (-1)) * (rho 16809 + rho 16810) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16816 * (1 - rho 16814) = rho 16811 - rho 16812 - rho 16813 := ha5
        _ = (-1) * rho 16812 - rho 16813 + (seg16AccY98 rho - seg16AccX98 rho * (-1)) * (rho 16809 + rho 16810) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX99 rho = seg16AccX98 rho - Bool.toZMod bit * (seg16AccX98 rho - rho 16815) := by
      have hd : rho 16817 = Bool.toZMod bit * (rho 16815 - seg16AccX98 rho) := by
        rw [← hbit, seg16LadderFlatX98_eq]
        unfold seg16LadderFlatX98
        linear_combination -r4245
      unfold seg16AccX99
      linear_combination hd
    have hsely : seg16AccY99 rho = seg16AccY98 rho - Bool.toZMod bit * (seg16AccY98 rho - rho 16816) := by
      have hd : rho 16818 = Bool.toZMod bit * (rho 16816 - seg16AccY98 rho) := by
        rw [← hbit, seg16LadderFlatY98_eq]
        unfold seg16LadderFlatY98
        linear_combination -r4246
      unfold seg16AccY99
      linear_combination hd
    have hd0 : rho 16809 * rho 16810 = rho 16819 := by linear_combination r4247
    have hd1 : rho 16809 * rho 16809 = rho 16820 := by linear_combination r4248
    have hd2 : rho 16810 * rho 16810 = rho 16821 := by linear_combination r4249
    have hd3 : rho 16822 * (rho 16810 * rho 16810 + rho 16809 * rho 16809 * (-1)) = 2 * (rho 16809 * rho 16810) := by
      rw [hd0, hd1, hd2]
      linear_combination r4250
    have hd4 : rho 16823 * (2 - (rho 16810 * rho 16810 + rho 16809 * rho 16809 * (-1))) = rho 16810 * rho 16810 - rho 16809 * rho 16809 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4251
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
      ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
      ⟨(rho 16815 : Seg16.F), (rho 16816 : Seg16.F)⟩
      ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
      ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg16_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15391 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4252 Seg16.relationLc530 Seg16.relationLc530Part0 Seg16.relationLc530Part1 Seg16.relationLc530Part2 Seg16.relationLc530Part3 Seg16.relationLc530Part4 Seg16.relationLc530Part5 Seg16.relationLc530Part6 at r4252
  unfold Seg16.relationRow4253 Seg16.relationLc531 Seg16.relationLc531Part0 Seg16.relationLc531Part1 Seg16.relationLc531Part2 Seg16.relationLc531Part3 at r4253
  unfold Seg16.relationRow4254 Seg16.relationLc532 Seg16.relationLc532Part0 Seg16.relationLc532Part1 Seg16.relationLc532Part2 Seg16.relationLc532Part3 at r4254
  unfold Seg16.relationRow4255 at r4255
  unfold Seg16.relationRow4256 at r4256
  unfold Seg16.relationRow4257 at r4257
  unfold Seg16.relationRow4258 Seg16.relationLc533 Seg16.relationLc533Part0 Seg16.relationLc533Part1 Seg16.relationLc533Part2 Seg16.relationLc533Part3 at r4258
  unfold Seg16.relationRow4259 Seg16.relationLc534 Seg16.relationLc534Part0 Seg16.relationLc534Part1 Seg16.relationLc534Part2 Seg16.relationLc534Part3 at r4259
  unfold Seg16.relationRow4260 at r4260
  unfold Seg16.relationRow4261 at r4261
  unfold Seg16.relationRow4262 at r4262
  unfold Seg16.relationRow4263 at r4263
  unfold Seg16.relationRow4264 at r4264
  have hrung99 (bit : Bool) (hbit : rho 15391 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩ := by
    have ha0 : (rho 16822 + rho 16823) * (seg16AccX99 rho + seg16AccY99 rho) = rho 16824 := by
      rw [seg16LadderFlatX99_eq, seg16LadderFlatY99_eq]
      unfold seg16LadderFlatX99 seg16LadderFlatY99
      linear_combination r4252
    have ha1 : rho 16823 * seg16AccX99 rho = rho 16825 := by
      rw [seg16LadderFlatX99_eq]
      unfold seg16LadderFlatX99
      linear_combination r4253
    have ha2 : rho 16822 * seg16AccY99 rho = rho 16826 := by
      rw [seg16LadderFlatY99_eq]
      unfold seg16LadderFlatY99
      linear_combination r4254
    have ha3 : 3021 * rho 16825 * rho 16826 = rho 16827 := by
      linear_combination r4255
    have ha4 : rho 16828 * (1 + rho 16827) = rho 16825 + rho 16826 := by
      linear_combination r4256
    have ha5 : rho 16829 * (1 - rho 16827) = rho 16824 - rho 16825 - rho 16826 := by
      linear_combination r4257
    have haddx :
        rho 16828 * (1 + 3021 * (rho 16823 * seg16AccX99 rho) * (rho 16822 * seg16AccY99 rho)) =
          rho 16823 * seg16AccX99 rho + rho 16822 * seg16AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16829 * (1 - 3021 * (rho 16823 * seg16AccX99 rho) * (rho 16822 * seg16AccY99 rho)) =
          (-1) * (rho 16823 * seg16AccX99 rho) - rho 16822 * seg16AccY99 rho +
            (seg16AccY99 rho - seg16AccX99 rho * (-1)) * (rho 16822 + rho 16823) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16829 * (1 - rho 16827) = rho 16824 - rho 16825 - rho 16826 := ha5
        _ = (-1) * rho 16825 - rho 16826 + (seg16AccY99 rho - seg16AccX99 rho * (-1)) * (rho 16822 + rho 16823) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX100 rho = seg16AccX99 rho - Bool.toZMod bit * (seg16AccX99 rho - rho 16828) := by
      have hd : rho 16830 = Bool.toZMod bit * (rho 16828 - seg16AccX99 rho) := by
        rw [← hbit, seg16LadderFlatX99_eq]
        unfold seg16LadderFlatX99
        linear_combination -r4258
      unfold seg16AccX100
      linear_combination hd
    have hsely : seg16AccY100 rho = seg16AccY99 rho - Bool.toZMod bit * (seg16AccY99 rho - rho 16829) := by
      have hd : rho 16831 = Bool.toZMod bit * (rho 16829 - seg16AccY99 rho) := by
        rw [← hbit, seg16LadderFlatY99_eq]
        unfold seg16LadderFlatY99
        linear_combination -r4259
      unfold seg16AccY100
      linear_combination hd
    have hd0 : rho 16822 * rho 16823 = rho 16832 := by linear_combination r4260
    have hd1 : rho 16822 * rho 16822 = rho 16833 := by linear_combination r4261
    have hd2 : rho 16823 * rho 16823 = rho 16834 := by linear_combination r4262
    have hd3 : rho 16835 * (rho 16823 * rho 16823 + rho 16822 * rho 16822 * (-1)) = 2 * (rho 16822 * rho 16823) := by
      rw [hd0, hd1, hd2]
      linear_combination r4263
    have hd4 : rho 16836 * (2 - (rho 16823 * rho 16823 + rho 16822 * rho 16822 * (-1))) = rho 16823 * rho 16823 - rho 16822 * rho 16822 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
      ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
      ⟨(rho 16828 : Seg16.F), (rho 16829 : Seg16.F)⟩
      ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
      ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg16_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15392 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4265 Seg16.relationLc535 Seg16.relationLc535Part0 Seg16.relationLc535Part1 Seg16.relationLc535Part2 Seg16.relationLc535Part3 Seg16.relationLc535Part4 Seg16.relationLc535Part5 Seg16.relationLc535Part6 at r4265
  unfold Seg16.relationRow4266 Seg16.relationLc536 Seg16.relationLc536Part0 Seg16.relationLc536Part1 Seg16.relationLc536Part2 Seg16.relationLc536Part3 at r4266
  unfold Seg16.relationRow4267 Seg16.relationLc537 Seg16.relationLc537Part0 Seg16.relationLc537Part1 Seg16.relationLc537Part2 Seg16.relationLc537Part3 at r4267
  unfold Seg16.relationRow4268 at r4268
  unfold Seg16.relationRow4269 at r4269
  unfold Seg16.relationRow4270 at r4270
  unfold Seg16.relationRow4271 Seg16.relationLc538 Seg16.relationLc538Part0 Seg16.relationLc538Part1 Seg16.relationLc538Part2 Seg16.relationLc538Part3 at r4271
  unfold Seg16.relationRow4272 Seg16.relationLc539 Seg16.relationLc539Part0 Seg16.relationLc539Part1 Seg16.relationLc539Part2 Seg16.relationLc539Part3 at r4272
  unfold Seg16.relationRow4273 at r4273
  unfold Seg16.relationRow4274 at r4274
  unfold Seg16.relationRow4275 at r4275
  unfold Seg16.relationRow4276 at r4276
  unfold Seg16.relationRow4277 at r4277
  have hrung100 (bit : Bool) (hbit : rho 15392 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩ := by
    have ha0 : (rho 16835 + rho 16836) * (seg16AccX100 rho + seg16AccY100 rho) = rho 16837 := by
      rw [seg16LadderFlatX100_eq, seg16LadderFlatY100_eq]
      unfold seg16LadderFlatX100 seg16LadderFlatY100
      linear_combination r4265
    have ha1 : rho 16836 * seg16AccX100 rho = rho 16838 := by
      rw [seg16LadderFlatX100_eq]
      unfold seg16LadderFlatX100
      linear_combination r4266
    have ha2 : rho 16835 * seg16AccY100 rho = rho 16839 := by
      rw [seg16LadderFlatY100_eq]
      unfold seg16LadderFlatY100
      linear_combination r4267
    have ha3 : 3021 * rho 16838 * rho 16839 = rho 16840 := by
      linear_combination r4268
    have ha4 : rho 16841 * (1 + rho 16840) = rho 16838 + rho 16839 := by
      linear_combination r4269
    have ha5 : rho 16842 * (1 - rho 16840) = rho 16837 - rho 16838 - rho 16839 := by
      linear_combination r4270
    have haddx :
        rho 16841 * (1 + 3021 * (rho 16836 * seg16AccX100 rho) * (rho 16835 * seg16AccY100 rho)) =
          rho 16836 * seg16AccX100 rho + rho 16835 * seg16AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16842 * (1 - 3021 * (rho 16836 * seg16AccX100 rho) * (rho 16835 * seg16AccY100 rho)) =
          (-1) * (rho 16836 * seg16AccX100 rho) - rho 16835 * seg16AccY100 rho +
            (seg16AccY100 rho - seg16AccX100 rho * (-1)) * (rho 16835 + rho 16836) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16842 * (1 - rho 16840) = rho 16837 - rho 16838 - rho 16839 := ha5
        _ = (-1) * rho 16838 - rho 16839 + (seg16AccY100 rho - seg16AccX100 rho * (-1)) * (rho 16835 + rho 16836) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX101 rho = seg16AccX100 rho - Bool.toZMod bit * (seg16AccX100 rho - rho 16841) := by
      have hd : rho 16843 = Bool.toZMod bit * (rho 16841 - seg16AccX100 rho) := by
        rw [← hbit, seg16LadderFlatX100_eq]
        unfold seg16LadderFlatX100
        linear_combination -r4271
      unfold seg16AccX101
      linear_combination hd
    have hsely : seg16AccY101 rho = seg16AccY100 rho - Bool.toZMod bit * (seg16AccY100 rho - rho 16842) := by
      have hd : rho 16844 = Bool.toZMod bit * (rho 16842 - seg16AccY100 rho) := by
        rw [← hbit, seg16LadderFlatY100_eq]
        unfold seg16LadderFlatY100
        linear_combination -r4272
      unfold seg16AccY101
      linear_combination hd
    have hd0 : rho 16835 * rho 16836 = rho 16845 := by linear_combination r4273
    have hd1 : rho 16835 * rho 16835 = rho 16846 := by linear_combination r4274
    have hd2 : rho 16836 * rho 16836 = rho 16847 := by linear_combination r4275
    have hd3 : rho 16848 * (rho 16836 * rho 16836 + rho 16835 * rho 16835 * (-1)) = 2 * (rho 16835 * rho 16836) := by
      rw [hd0, hd1, hd2]
      linear_combination r4276
    have hd4 : rho 16849 * (2 - (rho 16836 * rho 16836 + rho 16835 * rho 16835 * (-1))) = rho 16836 * rho 16836 - rho 16835 * rho 16835 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4277
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
      ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
      ⟨(rho 16841 : Seg16.F), (rho 16842 : Seg16.F)⟩
      ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
      ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg16_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15393 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4278 Seg16.relationLc540 Seg16.relationLc540Part0 Seg16.relationLc540Part1 Seg16.relationLc540Part2 Seg16.relationLc540Part3 Seg16.relationLc540Part4 Seg16.relationLc540Part5 Seg16.relationLc540Part6 at r4278
  unfold Seg16.relationRow4279 Seg16.relationLc541 Seg16.relationLc541Part0 Seg16.relationLc541Part1 Seg16.relationLc541Part2 Seg16.relationLc541Part3 at r4279
  unfold Seg16.relationRow4280 Seg16.relationLc542 Seg16.relationLc542Part0 Seg16.relationLc542Part1 Seg16.relationLc542Part2 Seg16.relationLc542Part3 at r4280
  unfold Seg16.relationRow4281 at r4281
  unfold Seg16.relationRow4282 at r4282
  unfold Seg16.relationRow4283 at r4283
  unfold Seg16.relationRow4284 Seg16.relationLc543 Seg16.relationLc543Part0 Seg16.relationLc543Part1 Seg16.relationLc543Part2 Seg16.relationLc543Part3 at r4284
  unfold Seg16.relationRow4285 Seg16.relationLc544 Seg16.relationLc544Part0 Seg16.relationLc544Part1 Seg16.relationLc544Part2 Seg16.relationLc544Part3 at r4285
  unfold Seg16.relationRow4286 at r4286
  unfold Seg16.relationRow4287 at r4287
  unfold Seg16.relationRow4288 at r4288
  unfold Seg16.relationRow4289 at r4289
  unfold Seg16.relationRow4290 at r4290
  have hrung101 (bit : Bool) (hbit : rho 15393 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩ := by
    have ha0 : (rho 16848 + rho 16849) * (seg16AccX101 rho + seg16AccY101 rho) = rho 16850 := by
      rw [seg16LadderFlatX101_eq, seg16LadderFlatY101_eq]
      unfold seg16LadderFlatX101 seg16LadderFlatY101
      linear_combination r4278
    have ha1 : rho 16849 * seg16AccX101 rho = rho 16851 := by
      rw [seg16LadderFlatX101_eq]
      unfold seg16LadderFlatX101
      linear_combination r4279
    have ha2 : rho 16848 * seg16AccY101 rho = rho 16852 := by
      rw [seg16LadderFlatY101_eq]
      unfold seg16LadderFlatY101
      linear_combination r4280
    have ha3 : 3021 * rho 16851 * rho 16852 = rho 16853 := by
      linear_combination r4281
    have ha4 : rho 16854 * (1 + rho 16853) = rho 16851 + rho 16852 := by
      linear_combination r4282
    have ha5 : rho 16855 * (1 - rho 16853) = rho 16850 - rho 16851 - rho 16852 := by
      linear_combination r4283
    have haddx :
        rho 16854 * (1 + 3021 * (rho 16849 * seg16AccX101 rho) * (rho 16848 * seg16AccY101 rho)) =
          rho 16849 * seg16AccX101 rho + rho 16848 * seg16AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16855 * (1 - 3021 * (rho 16849 * seg16AccX101 rho) * (rho 16848 * seg16AccY101 rho)) =
          (-1) * (rho 16849 * seg16AccX101 rho) - rho 16848 * seg16AccY101 rho +
            (seg16AccY101 rho - seg16AccX101 rho * (-1)) * (rho 16848 + rho 16849) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16855 * (1 - rho 16853) = rho 16850 - rho 16851 - rho 16852 := ha5
        _ = (-1) * rho 16851 - rho 16852 + (seg16AccY101 rho - seg16AccX101 rho * (-1)) * (rho 16848 + rho 16849) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX102 rho = seg16AccX101 rho - Bool.toZMod bit * (seg16AccX101 rho - rho 16854) := by
      have hd : rho 16856 = Bool.toZMod bit * (rho 16854 - seg16AccX101 rho) := by
        rw [← hbit, seg16LadderFlatX101_eq]
        unfold seg16LadderFlatX101
        linear_combination -r4284
      unfold seg16AccX102
      linear_combination hd
    have hsely : seg16AccY102 rho = seg16AccY101 rho - Bool.toZMod bit * (seg16AccY101 rho - rho 16855) := by
      have hd : rho 16857 = Bool.toZMod bit * (rho 16855 - seg16AccY101 rho) := by
        rw [← hbit, seg16LadderFlatY101_eq]
        unfold seg16LadderFlatY101
        linear_combination -r4285
      unfold seg16AccY102
      linear_combination hd
    have hd0 : rho 16848 * rho 16849 = rho 16858 := by linear_combination r4286
    have hd1 : rho 16848 * rho 16848 = rho 16859 := by linear_combination r4287
    have hd2 : rho 16849 * rho 16849 = rho 16860 := by linear_combination r4288
    have hd3 : rho 16861 * (rho 16849 * rho 16849 + rho 16848 * rho 16848 * (-1)) = 2 * (rho 16848 * rho 16849) := by
      rw [hd0, hd1, hd2]
      linear_combination r4289
    have hd4 : rho 16862 * (2 - (rho 16849 * rho 16849 + rho 16848 * rho 16848 * (-1))) = rho 16849 * rho 16849 - rho 16848 * rho 16848 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4290
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
      ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
      ⟨(rho 16854 : Seg16.F), (rho 16855 : Seg16.F)⟩
      ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
      ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg16_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15394 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4291 Seg16.relationLc545 Seg16.relationLc545Part0 Seg16.relationLc545Part1 Seg16.relationLc545Part2 Seg16.relationLc545Part3 Seg16.relationLc545Part4 Seg16.relationLc545Part5 Seg16.relationLc545Part6 at r4291
  unfold Seg16.relationRow4292 Seg16.relationLc546 Seg16.relationLc546Part0 Seg16.relationLc546Part1 Seg16.relationLc546Part2 Seg16.relationLc546Part3 at r4292
  unfold Seg16.relationRow4293 Seg16.relationLc547 Seg16.relationLc547Part0 Seg16.relationLc547Part1 Seg16.relationLc547Part2 Seg16.relationLc547Part3 at r4293
  unfold Seg16.relationRow4294 at r4294
  unfold Seg16.relationRow4295 at r4295
  unfold Seg16.relationRow4296 at r4296
  unfold Seg16.relationRow4297 Seg16.relationLc548 Seg16.relationLc548Part0 Seg16.relationLc548Part1 Seg16.relationLc548Part2 Seg16.relationLc548Part3 at r4297
  unfold Seg16.relationRow4298 Seg16.relationLc549 Seg16.relationLc549Part0 Seg16.relationLc549Part1 Seg16.relationLc549Part2 Seg16.relationLc549Part3 at r4298
  unfold Seg16.relationRow4299 at r4299
  unfold Seg16.relationRow4300 at r4300
  unfold Seg16.relationRow4301 at r4301
  unfold Seg16.relationRow4302 at r4302
  unfold Seg16.relationRow4303 at r4303
  have hrung102 (bit : Bool) (hbit : rho 15394 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩ := by
    have ha0 : (rho 16861 + rho 16862) * (seg16AccX102 rho + seg16AccY102 rho) = rho 16863 := by
      rw [seg16LadderFlatX102_eq, seg16LadderFlatY102_eq]
      unfold seg16LadderFlatX102 seg16LadderFlatY102
      linear_combination r4291
    have ha1 : rho 16862 * seg16AccX102 rho = rho 16864 := by
      rw [seg16LadderFlatX102_eq]
      unfold seg16LadderFlatX102
      linear_combination r4292
    have ha2 : rho 16861 * seg16AccY102 rho = rho 16865 := by
      rw [seg16LadderFlatY102_eq]
      unfold seg16LadderFlatY102
      linear_combination r4293
    have ha3 : 3021 * rho 16864 * rho 16865 = rho 16866 := by
      linear_combination r4294
    have ha4 : rho 16867 * (1 + rho 16866) = rho 16864 + rho 16865 := by
      linear_combination r4295
    have ha5 : rho 16868 * (1 - rho 16866) = rho 16863 - rho 16864 - rho 16865 := by
      linear_combination r4296
    have haddx :
        rho 16867 * (1 + 3021 * (rho 16862 * seg16AccX102 rho) * (rho 16861 * seg16AccY102 rho)) =
          rho 16862 * seg16AccX102 rho + rho 16861 * seg16AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16868 * (1 - 3021 * (rho 16862 * seg16AccX102 rho) * (rho 16861 * seg16AccY102 rho)) =
          (-1) * (rho 16862 * seg16AccX102 rho) - rho 16861 * seg16AccY102 rho +
            (seg16AccY102 rho - seg16AccX102 rho * (-1)) * (rho 16861 + rho 16862) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16868 * (1 - rho 16866) = rho 16863 - rho 16864 - rho 16865 := ha5
        _ = (-1) * rho 16864 - rho 16865 + (seg16AccY102 rho - seg16AccX102 rho * (-1)) * (rho 16861 + rho 16862) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX103 rho = seg16AccX102 rho - Bool.toZMod bit * (seg16AccX102 rho - rho 16867) := by
      have hd : rho 16869 = Bool.toZMod bit * (rho 16867 - seg16AccX102 rho) := by
        rw [← hbit, seg16LadderFlatX102_eq]
        unfold seg16LadderFlatX102
        linear_combination -r4297
      unfold seg16AccX103
      linear_combination hd
    have hsely : seg16AccY103 rho = seg16AccY102 rho - Bool.toZMod bit * (seg16AccY102 rho - rho 16868) := by
      have hd : rho 16870 = Bool.toZMod bit * (rho 16868 - seg16AccY102 rho) := by
        rw [← hbit, seg16LadderFlatY102_eq]
        unfold seg16LadderFlatY102
        linear_combination -r4298
      unfold seg16AccY103
      linear_combination hd
    have hd0 : rho 16861 * rho 16862 = rho 16871 := by linear_combination r4299
    have hd1 : rho 16861 * rho 16861 = rho 16872 := by linear_combination r4300
    have hd2 : rho 16862 * rho 16862 = rho 16873 := by linear_combination r4301
    have hd3 : rho 16874 * (rho 16862 * rho 16862 + rho 16861 * rho 16861 * (-1)) = 2 * (rho 16861 * rho 16862) := by
      rw [hd0, hd1, hd2]
      linear_combination r4302
    have hd4 : rho 16875 * (2 - (rho 16862 * rho 16862 + rho 16861 * rho 16861 * (-1))) = rho 16862 * rho 16862 - rho 16861 * rho 16861 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4303
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
      ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
      ⟨(rho 16867 : Seg16.F), (rho 16868 : Seg16.F)⟩
      ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
      ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg16_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15395 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, _, _, _⟩
  unfold Seg16.relationRow4304 Seg16.relationLc550 Seg16.relationLc550Part0 Seg16.relationLc550Part1 Seg16.relationLc550Part2 Seg16.relationLc550Part3 Seg16.relationLc550Part4 Seg16.relationLc550Part5 Seg16.relationLc550Part6 at r4304
  unfold Seg16.relationRow4305 Seg16.relationLc551 Seg16.relationLc551Part0 Seg16.relationLc551Part1 Seg16.relationLc551Part2 Seg16.relationLc551Part3 at r4305
  unfold Seg16.relationRow4306 Seg16.relationLc552 Seg16.relationLc552Part0 Seg16.relationLc552Part1 Seg16.relationLc552Part2 Seg16.relationLc552Part3 at r4306
  unfold Seg16.relationRow4307 at r4307
  unfold Seg16.relationRow4308 at r4308
  unfold Seg16.relationRow4309 at r4309
  unfold Seg16.relationRow4310 Seg16.relationLc553 Seg16.relationLc553Part0 Seg16.relationLc553Part1 Seg16.relationLc553Part2 Seg16.relationLc553Part3 at r4310
  unfold Seg16.relationRow4311 Seg16.relationLc554 Seg16.relationLc554Part0 Seg16.relationLc554Part1 Seg16.relationLc554Part2 Seg16.relationLc554Part3 at r4311
  unfold Seg16.relationRow4312 at r4312
  unfold Seg16.relationRow4313 at r4313
  unfold Seg16.relationRow4314 at r4314
  unfold Seg16.relationRow4315 at r4315
  unfold Seg16.relationRow4316 at r4316
  have hrung103 (bit : Bool) (hbit : rho 15395 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩ := by
    have ha0 : (rho 16874 + rho 16875) * (seg16AccX103 rho + seg16AccY103 rho) = rho 16876 := by
      rw [seg16LadderFlatX103_eq, seg16LadderFlatY103_eq]
      unfold seg16LadderFlatX103 seg16LadderFlatY103
      linear_combination r4304
    have ha1 : rho 16875 * seg16AccX103 rho = rho 16877 := by
      rw [seg16LadderFlatX103_eq]
      unfold seg16LadderFlatX103
      linear_combination r4305
    have ha2 : rho 16874 * seg16AccY103 rho = rho 16878 := by
      rw [seg16LadderFlatY103_eq]
      unfold seg16LadderFlatY103
      linear_combination r4306
    have ha3 : 3021 * rho 16877 * rho 16878 = rho 16879 := by
      linear_combination r4307
    have ha4 : rho 16880 * (1 + rho 16879) = rho 16877 + rho 16878 := by
      linear_combination r4308
    have ha5 : rho 16881 * (1 - rho 16879) = rho 16876 - rho 16877 - rho 16878 := by
      linear_combination r4309
    have haddx :
        rho 16880 * (1 + 3021 * (rho 16875 * seg16AccX103 rho) * (rho 16874 * seg16AccY103 rho)) =
          rho 16875 * seg16AccX103 rho + rho 16874 * seg16AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16881 * (1 - 3021 * (rho 16875 * seg16AccX103 rho) * (rho 16874 * seg16AccY103 rho)) =
          (-1) * (rho 16875 * seg16AccX103 rho) - rho 16874 * seg16AccY103 rho +
            (seg16AccY103 rho - seg16AccX103 rho * (-1)) * (rho 16874 + rho 16875) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16881 * (1 - rho 16879) = rho 16876 - rho 16877 - rho 16878 := ha5
        _ = (-1) * rho 16877 - rho 16878 + (seg16AccY103 rho - seg16AccX103 rho * (-1)) * (rho 16874 + rho 16875) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX104 rho = seg16AccX103 rho - Bool.toZMod bit * (seg16AccX103 rho - rho 16880) := by
      have hd : rho 16882 = Bool.toZMod bit * (rho 16880 - seg16AccX103 rho) := by
        rw [← hbit, seg16LadderFlatX103_eq]
        unfold seg16LadderFlatX103
        linear_combination -r4310
      unfold seg16AccX104
      linear_combination hd
    have hsely : seg16AccY104 rho = seg16AccY103 rho - Bool.toZMod bit * (seg16AccY103 rho - rho 16881) := by
      have hd : rho 16883 = Bool.toZMod bit * (rho 16881 - seg16AccY103 rho) := by
        rw [← hbit, seg16LadderFlatY103_eq]
        unfold seg16LadderFlatY103
        linear_combination -r4311
      unfold seg16AccY104
      linear_combination hd
    have hd0 : rho 16874 * rho 16875 = rho 16884 := by linear_combination r4312
    have hd1 : rho 16874 * rho 16874 = rho 16885 := by linear_combination r4313
    have hd2 : rho 16875 * rho 16875 = rho 16886 := by linear_combination r4314
    have hd3 : rho 16887 * (rho 16875 * rho 16875 + rho 16874 * rho 16874 * (-1)) = 2 * (rho 16874 * rho 16875) := by
      rw [hd0, hd1, hd2]
      linear_combination r4315
    have hd4 : rho 16888 * (2 - (rho 16875 * rho 16875 + rho 16874 * rho 16874 * (-1))) = rho 16875 * rho 16875 - rho 16874 * rho 16874 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4316
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
      ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
      ⟨(rho 16880 : Seg16.F), (rho 16881 : Seg16.F)⟩
      ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
      ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg16_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15396 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4317, r4318, r4319⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4317 Seg16.relationLc555 Seg16.relationLc555Part0 Seg16.relationLc555Part1 Seg16.relationLc555Part2 Seg16.relationLc555Part3 Seg16.relationLc555Part4 Seg16.relationLc555Part5 Seg16.relationLc555Part6 at r4317
  unfold Seg16.relationRow4318 Seg16.relationLc556 Seg16.relationLc556Part0 Seg16.relationLc556Part1 Seg16.relationLc556Part2 Seg16.relationLc556Part3 at r4318
  unfold Seg16.relationRow4319 Seg16.relationLc557 Seg16.relationLc557Part0 Seg16.relationLc557Part1 Seg16.relationLc557Part2 Seg16.relationLc557Part3 at r4319
  unfold Seg16.relationRow4320 at r4320
  unfold Seg16.relationRow4321 at r4321
  unfold Seg16.relationRow4322 at r4322
  unfold Seg16.relationRow4323 Seg16.relationLc558 Seg16.relationLc558Part0 Seg16.relationLc558Part1 Seg16.relationLc558Part2 Seg16.relationLc558Part3 at r4323
  unfold Seg16.relationRow4324 Seg16.relationLc559 Seg16.relationLc559Part0 Seg16.relationLc559Part1 Seg16.relationLc559Part2 Seg16.relationLc559Part3 at r4324
  unfold Seg16.relationRow4325 at r4325
  unfold Seg16.relationRow4326 at r4326
  unfold Seg16.relationRow4327 at r4327
  unfold Seg16.relationRow4328 at r4328
  unfold Seg16.relationRow4329 at r4329
  have hrung104 (bit : Bool) (hbit : rho 15396 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩ := by
    have ha0 : (rho 16887 + rho 16888) * (seg16AccX104 rho + seg16AccY104 rho) = rho 16889 := by
      rw [seg16LadderFlatX104_eq, seg16LadderFlatY104_eq]
      unfold seg16LadderFlatX104 seg16LadderFlatY104
      linear_combination r4317
    have ha1 : rho 16888 * seg16AccX104 rho = rho 16890 := by
      rw [seg16LadderFlatX104_eq]
      unfold seg16LadderFlatX104
      linear_combination r4318
    have ha2 : rho 16887 * seg16AccY104 rho = rho 16891 := by
      rw [seg16LadderFlatY104_eq]
      unfold seg16LadderFlatY104
      linear_combination r4319
    have ha3 : 3021 * rho 16890 * rho 16891 = rho 16892 := by
      linear_combination r4320
    have ha4 : rho 16893 * (1 + rho 16892) = rho 16890 + rho 16891 := by
      linear_combination r4321
    have ha5 : rho 16894 * (1 - rho 16892) = rho 16889 - rho 16890 - rho 16891 := by
      linear_combination r4322
    have haddx :
        rho 16893 * (1 + 3021 * (rho 16888 * seg16AccX104 rho) * (rho 16887 * seg16AccY104 rho)) =
          rho 16888 * seg16AccX104 rho + rho 16887 * seg16AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16894 * (1 - 3021 * (rho 16888 * seg16AccX104 rho) * (rho 16887 * seg16AccY104 rho)) =
          (-1) * (rho 16888 * seg16AccX104 rho) - rho 16887 * seg16AccY104 rho +
            (seg16AccY104 rho - seg16AccX104 rho * (-1)) * (rho 16887 + rho 16888) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16894 * (1 - rho 16892) = rho 16889 - rho 16890 - rho 16891 := ha5
        _ = (-1) * rho 16890 - rho 16891 + (seg16AccY104 rho - seg16AccX104 rho * (-1)) * (rho 16887 + rho 16888) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX105 rho = seg16AccX104 rho - Bool.toZMod bit * (seg16AccX104 rho - rho 16893) := by
      have hd : rho 16895 = Bool.toZMod bit * (rho 16893 - seg16AccX104 rho) := by
        rw [← hbit, seg16LadderFlatX104_eq]
        unfold seg16LadderFlatX104
        linear_combination -r4323
      unfold seg16AccX105
      linear_combination hd
    have hsely : seg16AccY105 rho = seg16AccY104 rho - Bool.toZMod bit * (seg16AccY104 rho - rho 16894) := by
      have hd : rho 16896 = Bool.toZMod bit * (rho 16894 - seg16AccY104 rho) := by
        rw [← hbit, seg16LadderFlatY104_eq]
        unfold seg16LadderFlatY104
        linear_combination -r4324
      unfold seg16AccY105
      linear_combination hd
    have hd0 : rho 16887 * rho 16888 = rho 16897 := by linear_combination r4325
    have hd1 : rho 16887 * rho 16887 = rho 16898 := by linear_combination r4326
    have hd2 : rho 16888 * rho 16888 = rho 16899 := by linear_combination r4327
    have hd3 : rho 16900 * (rho 16888 * rho 16888 + rho 16887 * rho 16887 * (-1)) = 2 * (rho 16887 * rho 16888) := by
      rw [hd0, hd1, hd2]
      linear_combination r4328
    have hd4 : rho 16901 * (2 - (rho 16888 * rho 16888 + rho 16887 * rho 16887 * (-1))) = rho 16888 * rho 16888 - rho 16887 * rho 16887 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4329
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
      ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
      ⟨(rho 16893 : Seg16.F), (rho 16894 : Seg16.F)⟩
      ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
      ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg16_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15397 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4330 Seg16.relationLc560 Seg16.relationLc560Part0 Seg16.relationLc560Part1 Seg16.relationLc560Part2 Seg16.relationLc560Part3 Seg16.relationLc560Part4 Seg16.relationLc560Part5 Seg16.relationLc560Part6 at r4330
  unfold Seg16.relationRow4331 Seg16.relationLc561 Seg16.relationLc561Part0 Seg16.relationLc561Part1 Seg16.relationLc561Part2 Seg16.relationLc561Part3 at r4331
  unfold Seg16.relationRow4332 Seg16.relationLc562 Seg16.relationLc562Part0 Seg16.relationLc562Part1 Seg16.relationLc562Part2 Seg16.relationLc562Part3 at r4332
  unfold Seg16.relationRow4333 at r4333
  unfold Seg16.relationRow4334 at r4334
  unfold Seg16.relationRow4335 at r4335
  unfold Seg16.relationRow4336 Seg16.relationLc563 Seg16.relationLc563Part0 Seg16.relationLc563Part1 Seg16.relationLc563Part2 Seg16.relationLc563Part3 at r4336
  unfold Seg16.relationRow4337 Seg16.relationLc564 Seg16.relationLc564Part0 Seg16.relationLc564Part1 Seg16.relationLc564Part2 Seg16.relationLc564Part3 at r4337
  unfold Seg16.relationRow4338 at r4338
  unfold Seg16.relationRow4339 at r4339
  unfold Seg16.relationRow4340 at r4340
  unfold Seg16.relationRow4341 at r4341
  unfold Seg16.relationRow4342 at r4342
  have hrung105 (bit : Bool) (hbit : rho 15397 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩ := by
    have ha0 : (rho 16900 + rho 16901) * (seg16AccX105 rho + seg16AccY105 rho) = rho 16902 := by
      rw [seg16LadderFlatX105_eq, seg16LadderFlatY105_eq]
      unfold seg16LadderFlatX105 seg16LadderFlatY105
      linear_combination r4330
    have ha1 : rho 16901 * seg16AccX105 rho = rho 16903 := by
      rw [seg16LadderFlatX105_eq]
      unfold seg16LadderFlatX105
      linear_combination r4331
    have ha2 : rho 16900 * seg16AccY105 rho = rho 16904 := by
      rw [seg16LadderFlatY105_eq]
      unfold seg16LadderFlatY105
      linear_combination r4332
    have ha3 : 3021 * rho 16903 * rho 16904 = rho 16905 := by
      linear_combination r4333
    have ha4 : rho 16906 * (1 + rho 16905) = rho 16903 + rho 16904 := by
      linear_combination r4334
    have ha5 : rho 16907 * (1 - rho 16905) = rho 16902 - rho 16903 - rho 16904 := by
      linear_combination r4335
    have haddx :
        rho 16906 * (1 + 3021 * (rho 16901 * seg16AccX105 rho) * (rho 16900 * seg16AccY105 rho)) =
          rho 16901 * seg16AccX105 rho + rho 16900 * seg16AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16907 * (1 - 3021 * (rho 16901 * seg16AccX105 rho) * (rho 16900 * seg16AccY105 rho)) =
          (-1) * (rho 16901 * seg16AccX105 rho) - rho 16900 * seg16AccY105 rho +
            (seg16AccY105 rho - seg16AccX105 rho * (-1)) * (rho 16900 + rho 16901) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16907 * (1 - rho 16905) = rho 16902 - rho 16903 - rho 16904 := ha5
        _ = (-1) * rho 16903 - rho 16904 + (seg16AccY105 rho - seg16AccX105 rho * (-1)) * (rho 16900 + rho 16901) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX106 rho = seg16AccX105 rho - Bool.toZMod bit * (seg16AccX105 rho - rho 16906) := by
      have hd : rho 16908 = Bool.toZMod bit * (rho 16906 - seg16AccX105 rho) := by
        rw [← hbit, seg16LadderFlatX105_eq]
        unfold seg16LadderFlatX105
        linear_combination -r4336
      unfold seg16AccX106
      linear_combination hd
    have hsely : seg16AccY106 rho = seg16AccY105 rho - Bool.toZMod bit * (seg16AccY105 rho - rho 16907) := by
      have hd : rho 16909 = Bool.toZMod bit * (rho 16907 - seg16AccY105 rho) := by
        rw [← hbit, seg16LadderFlatY105_eq]
        unfold seg16LadderFlatY105
        linear_combination -r4337
      unfold seg16AccY106
      linear_combination hd
    have hd0 : rho 16900 * rho 16901 = rho 16910 := by linear_combination r4338
    have hd1 : rho 16900 * rho 16900 = rho 16911 := by linear_combination r4339
    have hd2 : rho 16901 * rho 16901 = rho 16912 := by linear_combination r4340
    have hd3 : rho 16913 * (rho 16901 * rho 16901 + rho 16900 * rho 16900 * (-1)) = 2 * (rho 16900 * rho 16901) := by
      rw [hd0, hd1, hd2]
      linear_combination r4341
    have hd4 : rho 16914 * (2 - (rho 16901 * rho 16901 + rho 16900 * rho 16900 * (-1))) = rho 16901 * rho 16901 - rho 16900 * rho 16900 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4342
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
      ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
      ⟨(rho 16906 : Seg16.F), (rho 16907 : Seg16.F)⟩
      ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
      ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg16_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15398 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4343 Seg16.relationLc565 Seg16.relationLc565Part0 Seg16.relationLc565Part1 Seg16.relationLc565Part2 Seg16.relationLc565Part3 Seg16.relationLc565Part4 Seg16.relationLc565Part5 Seg16.relationLc565Part6 at r4343
  unfold Seg16.relationRow4344 Seg16.relationLc566 Seg16.relationLc566Part0 Seg16.relationLc566Part1 Seg16.relationLc566Part2 Seg16.relationLc566Part3 at r4344
  unfold Seg16.relationRow4345 Seg16.relationLc567 Seg16.relationLc567Part0 Seg16.relationLc567Part1 Seg16.relationLc567Part2 Seg16.relationLc567Part3 at r4345
  unfold Seg16.relationRow4346 at r4346
  unfold Seg16.relationRow4347 at r4347
  unfold Seg16.relationRow4348 at r4348
  unfold Seg16.relationRow4349 Seg16.relationLc568 Seg16.relationLc568Part0 Seg16.relationLc568Part1 Seg16.relationLc568Part2 Seg16.relationLc568Part3 at r4349
  unfold Seg16.relationRow4350 Seg16.relationLc569 Seg16.relationLc569Part0 Seg16.relationLc569Part1 Seg16.relationLc569Part2 Seg16.relationLc569Part3 at r4350
  unfold Seg16.relationRow4351 at r4351
  unfold Seg16.relationRow4352 at r4352
  unfold Seg16.relationRow4353 at r4353
  unfold Seg16.relationRow4354 at r4354
  unfold Seg16.relationRow4355 at r4355
  have hrung106 (bit : Bool) (hbit : rho 15398 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩ := by
    have ha0 : (rho 16913 + rho 16914) * (seg16AccX106 rho + seg16AccY106 rho) = rho 16915 := by
      rw [seg16LadderFlatX106_eq, seg16LadderFlatY106_eq]
      unfold seg16LadderFlatX106 seg16LadderFlatY106
      linear_combination r4343
    have ha1 : rho 16914 * seg16AccX106 rho = rho 16916 := by
      rw [seg16LadderFlatX106_eq]
      unfold seg16LadderFlatX106
      linear_combination r4344
    have ha2 : rho 16913 * seg16AccY106 rho = rho 16917 := by
      rw [seg16LadderFlatY106_eq]
      unfold seg16LadderFlatY106
      linear_combination r4345
    have ha3 : 3021 * rho 16916 * rho 16917 = rho 16918 := by
      linear_combination r4346
    have ha4 : rho 16919 * (1 + rho 16918) = rho 16916 + rho 16917 := by
      linear_combination r4347
    have ha5 : rho 16920 * (1 - rho 16918) = rho 16915 - rho 16916 - rho 16917 := by
      linear_combination r4348
    have haddx :
        rho 16919 * (1 + 3021 * (rho 16914 * seg16AccX106 rho) * (rho 16913 * seg16AccY106 rho)) =
          rho 16914 * seg16AccX106 rho + rho 16913 * seg16AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16920 * (1 - 3021 * (rho 16914 * seg16AccX106 rho) * (rho 16913 * seg16AccY106 rho)) =
          (-1) * (rho 16914 * seg16AccX106 rho) - rho 16913 * seg16AccY106 rho +
            (seg16AccY106 rho - seg16AccX106 rho * (-1)) * (rho 16913 + rho 16914) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16920 * (1 - rho 16918) = rho 16915 - rho 16916 - rho 16917 := ha5
        _ = (-1) * rho 16916 - rho 16917 + (seg16AccY106 rho - seg16AccX106 rho * (-1)) * (rho 16913 + rho 16914) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX107 rho = seg16AccX106 rho - Bool.toZMod bit * (seg16AccX106 rho - rho 16919) := by
      have hd : rho 16921 = Bool.toZMod bit * (rho 16919 - seg16AccX106 rho) := by
        rw [← hbit, seg16LadderFlatX106_eq]
        unfold seg16LadderFlatX106
        linear_combination -r4349
      unfold seg16AccX107
      linear_combination hd
    have hsely : seg16AccY107 rho = seg16AccY106 rho - Bool.toZMod bit * (seg16AccY106 rho - rho 16920) := by
      have hd : rho 16922 = Bool.toZMod bit * (rho 16920 - seg16AccY106 rho) := by
        rw [← hbit, seg16LadderFlatY106_eq]
        unfold seg16LadderFlatY106
        linear_combination -r4350
      unfold seg16AccY107
      linear_combination hd
    have hd0 : rho 16913 * rho 16914 = rho 16923 := by linear_combination r4351
    have hd1 : rho 16913 * rho 16913 = rho 16924 := by linear_combination r4352
    have hd2 : rho 16914 * rho 16914 = rho 16925 := by linear_combination r4353
    have hd3 : rho 16926 * (rho 16914 * rho 16914 + rho 16913 * rho 16913 * (-1)) = 2 * (rho 16913 * rho 16914) := by
      rw [hd0, hd1, hd2]
      linear_combination r4354
    have hd4 : rho 16927 * (2 - (rho 16914 * rho 16914 + rho 16913 * rho 16913 * (-1))) = rho 16914 * rho 16914 - rho 16913 * rho 16913 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4355
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
      ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
      ⟨(rho 16919 : Seg16.F), (rho 16920 : Seg16.F)⟩
      ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
      ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg16_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15399 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4356 Seg16.relationLc570 Seg16.relationLc570Part0 Seg16.relationLc570Part1 Seg16.relationLc570Part2 Seg16.relationLc570Part3 Seg16.relationLc570Part4 Seg16.relationLc570Part5 Seg16.relationLc570Part6 at r4356
  unfold Seg16.relationRow4357 Seg16.relationLc571 Seg16.relationLc571Part0 Seg16.relationLc571Part1 Seg16.relationLc571Part2 Seg16.relationLc571Part3 at r4357
  unfold Seg16.relationRow4358 Seg16.relationLc572 Seg16.relationLc572Part0 Seg16.relationLc572Part1 Seg16.relationLc572Part2 Seg16.relationLc572Part3 at r4358
  unfold Seg16.relationRow4359 at r4359
  unfold Seg16.relationRow4360 at r4360
  unfold Seg16.relationRow4361 at r4361
  unfold Seg16.relationRow4362 Seg16.relationLc573 Seg16.relationLc573Part0 Seg16.relationLc573Part1 Seg16.relationLc573Part2 Seg16.relationLc573Part3 at r4362
  unfold Seg16.relationRow4363 Seg16.relationLc574 Seg16.relationLc574Part0 Seg16.relationLc574Part1 Seg16.relationLc574Part2 Seg16.relationLc574Part3 at r4363
  unfold Seg16.relationRow4364 at r4364
  unfold Seg16.relationRow4365 at r4365
  unfold Seg16.relationRow4366 at r4366
  unfold Seg16.relationRow4367 at r4367
  unfold Seg16.relationRow4368 at r4368
  have hrung107 (bit : Bool) (hbit : rho 15399 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩ := by
    have ha0 : (rho 16926 + rho 16927) * (seg16AccX107 rho + seg16AccY107 rho) = rho 16928 := by
      rw [seg16LadderFlatX107_eq, seg16LadderFlatY107_eq]
      unfold seg16LadderFlatX107 seg16LadderFlatY107
      linear_combination r4356
    have ha1 : rho 16927 * seg16AccX107 rho = rho 16929 := by
      rw [seg16LadderFlatX107_eq]
      unfold seg16LadderFlatX107
      linear_combination r4357
    have ha2 : rho 16926 * seg16AccY107 rho = rho 16930 := by
      rw [seg16LadderFlatY107_eq]
      unfold seg16LadderFlatY107
      linear_combination r4358
    have ha3 : 3021 * rho 16929 * rho 16930 = rho 16931 := by
      linear_combination r4359
    have ha4 : rho 16932 * (1 + rho 16931) = rho 16929 + rho 16930 := by
      linear_combination r4360
    have ha5 : rho 16933 * (1 - rho 16931) = rho 16928 - rho 16929 - rho 16930 := by
      linear_combination r4361
    have haddx :
        rho 16932 * (1 + 3021 * (rho 16927 * seg16AccX107 rho) * (rho 16926 * seg16AccY107 rho)) =
          rho 16927 * seg16AccX107 rho + rho 16926 * seg16AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16933 * (1 - 3021 * (rho 16927 * seg16AccX107 rho) * (rho 16926 * seg16AccY107 rho)) =
          (-1) * (rho 16927 * seg16AccX107 rho) - rho 16926 * seg16AccY107 rho +
            (seg16AccY107 rho - seg16AccX107 rho * (-1)) * (rho 16926 + rho 16927) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16933 * (1 - rho 16931) = rho 16928 - rho 16929 - rho 16930 := ha5
        _ = (-1) * rho 16929 - rho 16930 + (seg16AccY107 rho - seg16AccX107 rho * (-1)) * (rho 16926 + rho 16927) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX108 rho = seg16AccX107 rho - Bool.toZMod bit * (seg16AccX107 rho - rho 16932) := by
      have hd : rho 16934 = Bool.toZMod bit * (rho 16932 - seg16AccX107 rho) := by
        rw [← hbit, seg16LadderFlatX107_eq]
        unfold seg16LadderFlatX107
        linear_combination -r4362
      unfold seg16AccX108
      linear_combination hd
    have hsely : seg16AccY108 rho = seg16AccY107 rho - Bool.toZMod bit * (seg16AccY107 rho - rho 16933) := by
      have hd : rho 16935 = Bool.toZMod bit * (rho 16933 - seg16AccY107 rho) := by
        rw [← hbit, seg16LadderFlatY107_eq]
        unfold seg16LadderFlatY107
        linear_combination -r4363
      unfold seg16AccY108
      linear_combination hd
    have hd0 : rho 16926 * rho 16927 = rho 16936 := by linear_combination r4364
    have hd1 : rho 16926 * rho 16926 = rho 16937 := by linear_combination r4365
    have hd2 : rho 16927 * rho 16927 = rho 16938 := by linear_combination r4366
    have hd3 : rho 16939 * (rho 16927 * rho 16927 + rho 16926 * rho 16926 * (-1)) = 2 * (rho 16926 * rho 16927) := by
      rw [hd0, hd1, hd2]
      linear_combination r4367
    have hd4 : rho 16940 * (2 - (rho 16927 * rho 16927 + rho 16926 * rho 16926 * (-1))) = rho 16927 * rho 16927 - rho 16926 * rho 16926 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4368
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
      ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
      ⟨(rho 16932 : Seg16.F), (rho 16933 : Seg16.F)⟩
      ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
      ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg16_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15400 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4369 Seg16.relationLc575 Seg16.relationLc575Part0 Seg16.relationLc575Part1 Seg16.relationLc575Part2 Seg16.relationLc575Part3 Seg16.relationLc575Part4 Seg16.relationLc575Part5 Seg16.relationLc575Part6 at r4369
  unfold Seg16.relationRow4370 Seg16.relationLc576 Seg16.relationLc576Part0 Seg16.relationLc576Part1 Seg16.relationLc576Part2 Seg16.relationLc576Part3 at r4370
  unfold Seg16.relationRow4371 Seg16.relationLc577 Seg16.relationLc577Part0 Seg16.relationLc577Part1 Seg16.relationLc577Part2 Seg16.relationLc577Part3 at r4371
  unfold Seg16.relationRow4372 at r4372
  unfold Seg16.relationRow4373 at r4373
  unfold Seg16.relationRow4374 at r4374
  unfold Seg16.relationRow4375 Seg16.relationLc578 Seg16.relationLc578Part0 Seg16.relationLc578Part1 Seg16.relationLc578Part2 Seg16.relationLc578Part3 at r4375
  unfold Seg16.relationRow4376 Seg16.relationLc579 Seg16.relationLc579Part0 Seg16.relationLc579Part1 Seg16.relationLc579Part2 Seg16.relationLc579Part3 at r4376
  unfold Seg16.relationRow4377 at r4377
  unfold Seg16.relationRow4378 at r4378
  unfold Seg16.relationRow4379 at r4379
  unfold Seg16.relationRow4380 at r4380
  unfold Seg16.relationRow4381 at r4381
  have hrung108 (bit : Bool) (hbit : rho 15400 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩ := by
    have ha0 : (rho 16939 + rho 16940) * (seg16AccX108 rho + seg16AccY108 rho) = rho 16941 := by
      rw [seg16LadderFlatX108_eq, seg16LadderFlatY108_eq]
      unfold seg16LadderFlatX108 seg16LadderFlatY108
      linear_combination r4369
    have ha1 : rho 16940 * seg16AccX108 rho = rho 16942 := by
      rw [seg16LadderFlatX108_eq]
      unfold seg16LadderFlatX108
      linear_combination r4370
    have ha2 : rho 16939 * seg16AccY108 rho = rho 16943 := by
      rw [seg16LadderFlatY108_eq]
      unfold seg16LadderFlatY108
      linear_combination r4371
    have ha3 : 3021 * rho 16942 * rho 16943 = rho 16944 := by
      linear_combination r4372
    have ha4 : rho 16945 * (1 + rho 16944) = rho 16942 + rho 16943 := by
      linear_combination r4373
    have ha5 : rho 16946 * (1 - rho 16944) = rho 16941 - rho 16942 - rho 16943 := by
      linear_combination r4374
    have haddx :
        rho 16945 * (1 + 3021 * (rho 16940 * seg16AccX108 rho) * (rho 16939 * seg16AccY108 rho)) =
          rho 16940 * seg16AccX108 rho + rho 16939 * seg16AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16946 * (1 - 3021 * (rho 16940 * seg16AccX108 rho) * (rho 16939 * seg16AccY108 rho)) =
          (-1) * (rho 16940 * seg16AccX108 rho) - rho 16939 * seg16AccY108 rho +
            (seg16AccY108 rho - seg16AccX108 rho * (-1)) * (rho 16939 + rho 16940) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16946 * (1 - rho 16944) = rho 16941 - rho 16942 - rho 16943 := ha5
        _ = (-1) * rho 16942 - rho 16943 + (seg16AccY108 rho - seg16AccX108 rho * (-1)) * (rho 16939 + rho 16940) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX109 rho = seg16AccX108 rho - Bool.toZMod bit * (seg16AccX108 rho - rho 16945) := by
      have hd : rho 16947 = Bool.toZMod bit * (rho 16945 - seg16AccX108 rho) := by
        rw [← hbit, seg16LadderFlatX108_eq]
        unfold seg16LadderFlatX108
        linear_combination -r4375
      unfold seg16AccX109
      linear_combination hd
    have hsely : seg16AccY109 rho = seg16AccY108 rho - Bool.toZMod bit * (seg16AccY108 rho - rho 16946) := by
      have hd : rho 16948 = Bool.toZMod bit * (rho 16946 - seg16AccY108 rho) := by
        rw [← hbit, seg16LadderFlatY108_eq]
        unfold seg16LadderFlatY108
        linear_combination -r4376
      unfold seg16AccY109
      linear_combination hd
    have hd0 : rho 16939 * rho 16940 = rho 16949 := by linear_combination r4377
    have hd1 : rho 16939 * rho 16939 = rho 16950 := by linear_combination r4378
    have hd2 : rho 16940 * rho 16940 = rho 16951 := by linear_combination r4379
    have hd3 : rho 16952 * (rho 16940 * rho 16940 + rho 16939 * rho 16939 * (-1)) = 2 * (rho 16939 * rho 16940) := by
      rw [hd0, hd1, hd2]
      linear_combination r4380
    have hd4 : rho 16953 * (2 - (rho 16940 * rho 16940 + rho 16939 * rho 16939 * (-1))) = rho 16940 * rho 16940 - rho 16939 * rho 16939 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4381
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
      ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
      ⟨(rho 16945 : Seg16.F), (rho 16946 : Seg16.F)⟩
      ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
      ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg16_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15401 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, _, _, _, _, _⟩
  unfold Seg16.relationRow4382 Seg16.relationLc580 Seg16.relationLc580Part0 Seg16.relationLc580Part1 Seg16.relationLc580Part2 Seg16.relationLc580Part3 Seg16.relationLc580Part4 Seg16.relationLc580Part5 Seg16.relationLc580Part6 at r4382
  unfold Seg16.relationRow4383 Seg16.relationLc581 Seg16.relationLc581Part0 Seg16.relationLc581Part1 Seg16.relationLc581Part2 Seg16.relationLc581Part3 at r4383
  unfold Seg16.relationRow4384 Seg16.relationLc582 Seg16.relationLc582Part0 Seg16.relationLc582Part1 Seg16.relationLc582Part2 Seg16.relationLc582Part3 at r4384
  unfold Seg16.relationRow4385 at r4385
  unfold Seg16.relationRow4386 at r4386
  unfold Seg16.relationRow4387 at r4387
  unfold Seg16.relationRow4388 Seg16.relationLc583 Seg16.relationLc583Part0 Seg16.relationLc583Part1 Seg16.relationLc583Part2 Seg16.relationLc583Part3 at r4388
  unfold Seg16.relationRow4389 Seg16.relationLc584 Seg16.relationLc584Part0 Seg16.relationLc584Part1 Seg16.relationLc584Part2 Seg16.relationLc584Part3 at r4389
  unfold Seg16.relationRow4390 at r4390
  unfold Seg16.relationRow4391 at r4391
  unfold Seg16.relationRow4392 at r4392
  unfold Seg16.relationRow4393 at r4393
  unfold Seg16.relationRow4394 at r4394
  have hrung109 (bit : Bool) (hbit : rho 15401 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩ := by
    have ha0 : (rho 16952 + rho 16953) * (seg16AccX109 rho + seg16AccY109 rho) = rho 16954 := by
      rw [seg16LadderFlatX109_eq, seg16LadderFlatY109_eq]
      unfold seg16LadderFlatX109 seg16LadderFlatY109
      linear_combination r4382
    have ha1 : rho 16953 * seg16AccX109 rho = rho 16955 := by
      rw [seg16LadderFlatX109_eq]
      unfold seg16LadderFlatX109
      linear_combination r4383
    have ha2 : rho 16952 * seg16AccY109 rho = rho 16956 := by
      rw [seg16LadderFlatY109_eq]
      unfold seg16LadderFlatY109
      linear_combination r4384
    have ha3 : 3021 * rho 16955 * rho 16956 = rho 16957 := by
      linear_combination r4385
    have ha4 : rho 16958 * (1 + rho 16957) = rho 16955 + rho 16956 := by
      linear_combination r4386
    have ha5 : rho 16959 * (1 - rho 16957) = rho 16954 - rho 16955 - rho 16956 := by
      linear_combination r4387
    have haddx :
        rho 16958 * (1 + 3021 * (rho 16953 * seg16AccX109 rho) * (rho 16952 * seg16AccY109 rho)) =
          rho 16953 * seg16AccX109 rho + rho 16952 * seg16AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16959 * (1 - 3021 * (rho 16953 * seg16AccX109 rho) * (rho 16952 * seg16AccY109 rho)) =
          (-1) * (rho 16953 * seg16AccX109 rho) - rho 16952 * seg16AccY109 rho +
            (seg16AccY109 rho - seg16AccX109 rho * (-1)) * (rho 16952 + rho 16953) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16959 * (1 - rho 16957) = rho 16954 - rho 16955 - rho 16956 := ha5
        _ = (-1) * rho 16955 - rho 16956 + (seg16AccY109 rho - seg16AccX109 rho * (-1)) * (rho 16952 + rho 16953) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX110 rho = seg16AccX109 rho - Bool.toZMod bit * (seg16AccX109 rho - rho 16958) := by
      have hd : rho 16960 = Bool.toZMod bit * (rho 16958 - seg16AccX109 rho) := by
        rw [← hbit, seg16LadderFlatX109_eq]
        unfold seg16LadderFlatX109
        linear_combination -r4388
      unfold seg16AccX110
      linear_combination hd
    have hsely : seg16AccY110 rho = seg16AccY109 rho - Bool.toZMod bit * (seg16AccY109 rho - rho 16959) := by
      have hd : rho 16961 = Bool.toZMod bit * (rho 16959 - seg16AccY109 rho) := by
        rw [← hbit, seg16LadderFlatY109_eq]
        unfold seg16LadderFlatY109
        linear_combination -r4389
      unfold seg16AccY110
      linear_combination hd
    have hd0 : rho 16952 * rho 16953 = rho 16962 := by linear_combination r4390
    have hd1 : rho 16952 * rho 16952 = rho 16963 := by linear_combination r4391
    have hd2 : rho 16953 * rho 16953 = rho 16964 := by linear_combination r4392
    have hd3 : rho 16965 * (rho 16953 * rho 16953 + rho 16952 * rho 16952 * (-1)) = 2 * (rho 16952 * rho 16953) := by
      rw [hd0, hd1, hd2]
      linear_combination r4393
    have hd4 : rho 16966 * (2 - (rho 16953 * rho 16953 + rho 16952 * rho 16952 * (-1))) = rho 16953 * rho 16953 - rho 16952 * rho 16952 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4394
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
      ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
      ⟨(rho 16958 : Seg16.F), (rho 16959 : Seg16.F)⟩
      ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
      ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg16_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15402 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4395 Seg16.relationLc585 Seg16.relationLc585Part0 Seg16.relationLc585Part1 Seg16.relationLc585Part2 Seg16.relationLc585Part3 Seg16.relationLc585Part4 Seg16.relationLc585Part5 Seg16.relationLc585Part6 at r4395
  unfold Seg16.relationRow4396 Seg16.relationLc586 Seg16.relationLc586Part0 Seg16.relationLc586Part1 Seg16.relationLc586Part2 Seg16.relationLc586Part3 at r4396
  unfold Seg16.relationRow4397 Seg16.relationLc587 Seg16.relationLc587Part0 Seg16.relationLc587Part1 Seg16.relationLc587Part2 Seg16.relationLc587Part3 at r4397
  unfold Seg16.relationRow4398 at r4398
  unfold Seg16.relationRow4399 at r4399
  unfold Seg16.relationRow4400 at r4400
  unfold Seg16.relationRow4401 Seg16.relationLc588 Seg16.relationLc588Part0 Seg16.relationLc588Part1 Seg16.relationLc588Part2 Seg16.relationLc588Part3 at r4401
  unfold Seg16.relationRow4402 Seg16.relationLc589 Seg16.relationLc589Part0 Seg16.relationLc589Part1 Seg16.relationLc589Part2 Seg16.relationLc589Part3 at r4402
  unfold Seg16.relationRow4403 at r4403
  unfold Seg16.relationRow4404 at r4404
  unfold Seg16.relationRow4405 at r4405
  unfold Seg16.relationRow4406 at r4406
  unfold Seg16.relationRow4407 at r4407
  have hrung110 (bit : Bool) (hbit : rho 15402 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩ := by
    have ha0 : (rho 16965 + rho 16966) * (seg16AccX110 rho + seg16AccY110 rho) = rho 16967 := by
      rw [seg16LadderFlatX110_eq, seg16LadderFlatY110_eq]
      unfold seg16LadderFlatX110 seg16LadderFlatY110
      linear_combination r4395
    have ha1 : rho 16966 * seg16AccX110 rho = rho 16968 := by
      rw [seg16LadderFlatX110_eq]
      unfold seg16LadderFlatX110
      linear_combination r4396
    have ha2 : rho 16965 * seg16AccY110 rho = rho 16969 := by
      rw [seg16LadderFlatY110_eq]
      unfold seg16LadderFlatY110
      linear_combination r4397
    have ha3 : 3021 * rho 16968 * rho 16969 = rho 16970 := by
      linear_combination r4398
    have ha4 : rho 16971 * (1 + rho 16970) = rho 16968 + rho 16969 := by
      linear_combination r4399
    have ha5 : rho 16972 * (1 - rho 16970) = rho 16967 - rho 16968 - rho 16969 := by
      linear_combination r4400
    have haddx :
        rho 16971 * (1 + 3021 * (rho 16966 * seg16AccX110 rho) * (rho 16965 * seg16AccY110 rho)) =
          rho 16966 * seg16AccX110 rho + rho 16965 * seg16AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16972 * (1 - 3021 * (rho 16966 * seg16AccX110 rho) * (rho 16965 * seg16AccY110 rho)) =
          (-1) * (rho 16966 * seg16AccX110 rho) - rho 16965 * seg16AccY110 rho +
            (seg16AccY110 rho - seg16AccX110 rho * (-1)) * (rho 16965 + rho 16966) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16972 * (1 - rho 16970) = rho 16967 - rho 16968 - rho 16969 := ha5
        _ = (-1) * rho 16968 - rho 16969 + (seg16AccY110 rho - seg16AccX110 rho * (-1)) * (rho 16965 + rho 16966) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX111 rho = seg16AccX110 rho - Bool.toZMod bit * (seg16AccX110 rho - rho 16971) := by
      have hd : rho 16973 = Bool.toZMod bit * (rho 16971 - seg16AccX110 rho) := by
        rw [← hbit, seg16LadderFlatX110_eq]
        unfold seg16LadderFlatX110
        linear_combination -r4401
      unfold seg16AccX111
      linear_combination hd
    have hsely : seg16AccY111 rho = seg16AccY110 rho - Bool.toZMod bit * (seg16AccY110 rho - rho 16972) := by
      have hd : rho 16974 = Bool.toZMod bit * (rho 16972 - seg16AccY110 rho) := by
        rw [← hbit, seg16LadderFlatY110_eq]
        unfold seg16LadderFlatY110
        linear_combination -r4402
      unfold seg16AccY111
      linear_combination hd
    have hd0 : rho 16965 * rho 16966 = rho 16975 := by linear_combination r4403
    have hd1 : rho 16965 * rho 16965 = rho 16976 := by linear_combination r4404
    have hd2 : rho 16966 * rho 16966 = rho 16977 := by linear_combination r4405
    have hd3 : rho 16978 * (rho 16966 * rho 16966 + rho 16965 * rho 16965 * (-1)) = 2 * (rho 16965 * rho 16966) := by
      rw [hd0, hd1, hd2]
      linear_combination r4406
    have hd4 : rho 16979 * (2 - (rho 16966 * rho 16966 + rho 16965 * rho 16965 * (-1))) = rho 16966 * rho 16966 - rho 16965 * rho 16965 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4407
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
      ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
      ⟨(rho 16971 : Seg16.F), (rho 16972 : Seg16.F)⟩
      ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
      ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg16_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15403 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4408 Seg16.relationLc590 Seg16.relationLc590Part0 Seg16.relationLc590Part1 Seg16.relationLc590Part2 Seg16.relationLc590Part3 Seg16.relationLc590Part4 Seg16.relationLc590Part5 Seg16.relationLc590Part6 at r4408
  unfold Seg16.relationRow4409 Seg16.relationLc591 Seg16.relationLc591Part0 Seg16.relationLc591Part1 Seg16.relationLc591Part2 Seg16.relationLc591Part3 at r4409
  unfold Seg16.relationRow4410 Seg16.relationLc592 Seg16.relationLc592Part0 Seg16.relationLc592Part1 Seg16.relationLc592Part2 Seg16.relationLc592Part3 at r4410
  unfold Seg16.relationRow4411 at r4411
  unfold Seg16.relationRow4412 at r4412
  unfold Seg16.relationRow4413 at r4413
  unfold Seg16.relationRow4414 Seg16.relationLc593 Seg16.relationLc593Part0 Seg16.relationLc593Part1 Seg16.relationLc593Part2 Seg16.relationLc593Part3 at r4414
  unfold Seg16.relationRow4415 Seg16.relationLc594 Seg16.relationLc594Part0 Seg16.relationLc594Part1 Seg16.relationLc594Part2 Seg16.relationLc594Part3 at r4415
  unfold Seg16.relationRow4416 at r4416
  unfold Seg16.relationRow4417 at r4417
  unfold Seg16.relationRow4418 at r4418
  unfold Seg16.relationRow4419 at r4419
  unfold Seg16.relationRow4420 at r4420
  have hrung111 (bit : Bool) (hbit : rho 15403 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩ := by
    have ha0 : (rho 16978 + rho 16979) * (seg16AccX111 rho + seg16AccY111 rho) = rho 16980 := by
      rw [seg16LadderFlatX111_eq, seg16LadderFlatY111_eq]
      unfold seg16LadderFlatX111 seg16LadderFlatY111
      linear_combination r4408
    have ha1 : rho 16979 * seg16AccX111 rho = rho 16981 := by
      rw [seg16LadderFlatX111_eq]
      unfold seg16LadderFlatX111
      linear_combination r4409
    have ha2 : rho 16978 * seg16AccY111 rho = rho 16982 := by
      rw [seg16LadderFlatY111_eq]
      unfold seg16LadderFlatY111
      linear_combination r4410
    have ha3 : 3021 * rho 16981 * rho 16982 = rho 16983 := by
      linear_combination r4411
    have ha4 : rho 16984 * (1 + rho 16983) = rho 16981 + rho 16982 := by
      linear_combination r4412
    have ha5 : rho 16985 * (1 - rho 16983) = rho 16980 - rho 16981 - rho 16982 := by
      linear_combination r4413
    have haddx :
        rho 16984 * (1 + 3021 * (rho 16979 * seg16AccX111 rho) * (rho 16978 * seg16AccY111 rho)) =
          rho 16979 * seg16AccX111 rho + rho 16978 * seg16AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16985 * (1 - 3021 * (rho 16979 * seg16AccX111 rho) * (rho 16978 * seg16AccY111 rho)) =
          (-1) * (rho 16979 * seg16AccX111 rho) - rho 16978 * seg16AccY111 rho +
            (seg16AccY111 rho - seg16AccX111 rho * (-1)) * (rho 16978 + rho 16979) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16985 * (1 - rho 16983) = rho 16980 - rho 16981 - rho 16982 := ha5
        _ = (-1) * rho 16981 - rho 16982 + (seg16AccY111 rho - seg16AccX111 rho * (-1)) * (rho 16978 + rho 16979) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX112 rho = seg16AccX111 rho - Bool.toZMod bit * (seg16AccX111 rho - rho 16984) := by
      have hd : rho 16986 = Bool.toZMod bit * (rho 16984 - seg16AccX111 rho) := by
        rw [← hbit, seg16LadderFlatX111_eq]
        unfold seg16LadderFlatX111
        linear_combination -r4414
      unfold seg16AccX112
      linear_combination hd
    have hsely : seg16AccY112 rho = seg16AccY111 rho - Bool.toZMod bit * (seg16AccY111 rho - rho 16985) := by
      have hd : rho 16987 = Bool.toZMod bit * (rho 16985 - seg16AccY111 rho) := by
        rw [← hbit, seg16LadderFlatY111_eq]
        unfold seg16LadderFlatY111
        linear_combination -r4415
      unfold seg16AccY112
      linear_combination hd
    have hd0 : rho 16978 * rho 16979 = rho 16988 := by linear_combination r4416
    have hd1 : rho 16978 * rho 16978 = rho 16989 := by linear_combination r4417
    have hd2 : rho 16979 * rho 16979 = rho 16990 := by linear_combination r4418
    have hd3 : rho 16991 * (rho 16979 * rho 16979 + rho 16978 * rho 16978 * (-1)) = 2 * (rho 16978 * rho 16979) := by
      rw [hd0, hd1, hd2]
      linear_combination r4419
    have hd4 : rho 16992 * (2 - (rho 16979 * rho 16979 + rho 16978 * rho 16978 * (-1))) = rho 16979 * rho 16979 - rho 16978 * rho 16978 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4420
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
      ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
      ⟨(rho 16984 : Seg16.F), (rho 16985 : Seg16.F)⟩
      ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
      ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg16_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15404 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4421 Seg16.relationLc595 Seg16.relationLc595Part0 Seg16.relationLc595Part1 Seg16.relationLc595Part2 Seg16.relationLc595Part3 Seg16.relationLc595Part4 Seg16.relationLc595Part5 Seg16.relationLc595Part6 Seg16.relationLc595Part7 at r4421
  unfold Seg16.relationRow4422 Seg16.relationLc596 Seg16.relationLc596Part0 Seg16.relationLc596Part1 Seg16.relationLc596Part2 Seg16.relationLc596Part3 at r4422
  unfold Seg16.relationRow4423 Seg16.relationLc597 Seg16.relationLc597Part0 Seg16.relationLc597Part1 Seg16.relationLc597Part2 Seg16.relationLc597Part3 at r4423
  unfold Seg16.relationRow4424 at r4424
  unfold Seg16.relationRow4425 at r4425
  unfold Seg16.relationRow4426 at r4426
  unfold Seg16.relationRow4427 Seg16.relationLc598 Seg16.relationLc598Part0 Seg16.relationLc598Part1 Seg16.relationLc598Part2 Seg16.relationLc598Part3 at r4427
  unfold Seg16.relationRow4428 Seg16.relationLc599 Seg16.relationLc599Part0 Seg16.relationLc599Part1 Seg16.relationLc599Part2 Seg16.relationLc599Part3 at r4428
  unfold Seg16.relationRow4429 at r4429
  unfold Seg16.relationRow4430 at r4430
  unfold Seg16.relationRow4431 at r4431
  unfold Seg16.relationRow4432 at r4432
  unfold Seg16.relationRow4433 at r4433
  have hrung112 (bit : Bool) (hbit : rho 15404 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩ := by
    have ha0 : (rho 16991 + rho 16992) * (seg16AccX112 rho + seg16AccY112 rho) = rho 16993 := by
      rw [seg16LadderFlatX112_eq, seg16LadderFlatY112_eq]
      unfold seg16LadderFlatX112 seg16LadderFlatY112
      linear_combination r4421
    have ha1 : rho 16992 * seg16AccX112 rho = rho 16994 := by
      rw [seg16LadderFlatX112_eq]
      unfold seg16LadderFlatX112
      linear_combination r4422
    have ha2 : rho 16991 * seg16AccY112 rho = rho 16995 := by
      rw [seg16LadderFlatY112_eq]
      unfold seg16LadderFlatY112
      linear_combination r4423
    have ha3 : 3021 * rho 16994 * rho 16995 = rho 16996 := by
      linear_combination r4424
    have ha4 : rho 16997 * (1 + rho 16996) = rho 16994 + rho 16995 := by
      linear_combination r4425
    have ha5 : rho 16998 * (1 - rho 16996) = rho 16993 - rho 16994 - rho 16995 := by
      linear_combination r4426
    have haddx :
        rho 16997 * (1 + 3021 * (rho 16992 * seg16AccX112 rho) * (rho 16991 * seg16AccY112 rho)) =
          rho 16992 * seg16AccX112 rho + rho 16991 * seg16AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16998 * (1 - 3021 * (rho 16992 * seg16AccX112 rho) * (rho 16991 * seg16AccY112 rho)) =
          (-1) * (rho 16992 * seg16AccX112 rho) - rho 16991 * seg16AccY112 rho +
            (seg16AccY112 rho - seg16AccX112 rho * (-1)) * (rho 16991 + rho 16992) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16998 * (1 - rho 16996) = rho 16993 - rho 16994 - rho 16995 := ha5
        _ = (-1) * rho 16994 - rho 16995 + (seg16AccY112 rho - seg16AccX112 rho * (-1)) * (rho 16991 + rho 16992) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX113 rho = seg16AccX112 rho - Bool.toZMod bit * (seg16AccX112 rho - rho 16997) := by
      have hd : rho 16999 = Bool.toZMod bit * (rho 16997 - seg16AccX112 rho) := by
        rw [← hbit, seg16LadderFlatX112_eq]
        unfold seg16LadderFlatX112
        linear_combination -r4427
      unfold seg16AccX113
      linear_combination hd
    have hsely : seg16AccY113 rho = seg16AccY112 rho - Bool.toZMod bit * (seg16AccY112 rho - rho 16998) := by
      have hd : rho 17000 = Bool.toZMod bit * (rho 16998 - seg16AccY112 rho) := by
        rw [← hbit, seg16LadderFlatY112_eq]
        unfold seg16LadderFlatY112
        linear_combination -r4428
      unfold seg16AccY113
      linear_combination hd
    have hd0 : rho 16991 * rho 16992 = rho 17001 := by linear_combination r4429
    have hd1 : rho 16991 * rho 16991 = rho 17002 := by linear_combination r4430
    have hd2 : rho 16992 * rho 16992 = rho 17003 := by linear_combination r4431
    have hd3 : rho 17004 * (rho 16992 * rho 16992 + rho 16991 * rho 16991 * (-1)) = 2 * (rho 16991 * rho 16992) := by
      rw [hd0, hd1, hd2]
      linear_combination r4432
    have hd4 : rho 17005 * (2 - (rho 16992 * rho 16992 + rho 16991 * rho 16991 * (-1))) = rho 16992 * rho 16992 - rho 16991 * rho 16991 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4433
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
      ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
      ⟨(rho 16997 : Seg16.F), (rho 16998 : Seg16.F)⟩
      ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
      ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg16_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15405 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4434 Seg16.relationLc600 Seg16.relationLc600Part0 Seg16.relationLc600Part1 Seg16.relationLc600Part2 Seg16.relationLc600Part3 Seg16.relationLc600Part4 Seg16.relationLc600Part5 Seg16.relationLc600Part6 Seg16.relationLc600Part7 at r4434
  unfold Seg16.relationRow4435 Seg16.relationLc601 Seg16.relationLc601Part0 Seg16.relationLc601Part1 Seg16.relationLc601Part2 Seg16.relationLc601Part3 at r4435
  unfold Seg16.relationRow4436 Seg16.relationLc602 Seg16.relationLc602Part0 Seg16.relationLc602Part1 Seg16.relationLc602Part2 Seg16.relationLc602Part3 at r4436
  unfold Seg16.relationRow4437 at r4437
  unfold Seg16.relationRow4438 at r4438
  unfold Seg16.relationRow4439 at r4439
  unfold Seg16.relationRow4440 Seg16.relationLc603 Seg16.relationLc603Part0 Seg16.relationLc603Part1 Seg16.relationLc603Part2 Seg16.relationLc603Part3 at r4440
  unfold Seg16.relationRow4441 Seg16.relationLc604 Seg16.relationLc604Part0 Seg16.relationLc604Part1 Seg16.relationLc604Part2 Seg16.relationLc604Part3 at r4441
  unfold Seg16.relationRow4442 at r4442
  unfold Seg16.relationRow4443 at r4443
  unfold Seg16.relationRow4444 at r4444
  unfold Seg16.relationRow4445 at r4445
  unfold Seg16.relationRow4446 at r4446
  have hrung113 (bit : Bool) (hbit : rho 15405 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩ := by
    have ha0 : (rho 17004 + rho 17005) * (seg16AccX113 rho + seg16AccY113 rho) = rho 17006 := by
      rw [seg16LadderFlatX113_eq, seg16LadderFlatY113_eq]
      unfold seg16LadderFlatX113 seg16LadderFlatY113
      linear_combination r4434
    have ha1 : rho 17005 * seg16AccX113 rho = rho 17007 := by
      rw [seg16LadderFlatX113_eq]
      unfold seg16LadderFlatX113
      linear_combination r4435
    have ha2 : rho 17004 * seg16AccY113 rho = rho 17008 := by
      rw [seg16LadderFlatY113_eq]
      unfold seg16LadderFlatY113
      linear_combination r4436
    have ha3 : 3021 * rho 17007 * rho 17008 = rho 17009 := by
      linear_combination r4437
    have ha4 : rho 17010 * (1 + rho 17009) = rho 17007 + rho 17008 := by
      linear_combination r4438
    have ha5 : rho 17011 * (1 - rho 17009) = rho 17006 - rho 17007 - rho 17008 := by
      linear_combination r4439
    have haddx :
        rho 17010 * (1 + 3021 * (rho 17005 * seg16AccX113 rho) * (rho 17004 * seg16AccY113 rho)) =
          rho 17005 * seg16AccX113 rho + rho 17004 * seg16AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17011 * (1 - 3021 * (rho 17005 * seg16AccX113 rho) * (rho 17004 * seg16AccY113 rho)) =
          (-1) * (rho 17005 * seg16AccX113 rho) - rho 17004 * seg16AccY113 rho +
            (seg16AccY113 rho - seg16AccX113 rho * (-1)) * (rho 17004 + rho 17005) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17011 * (1 - rho 17009) = rho 17006 - rho 17007 - rho 17008 := ha5
        _ = (-1) * rho 17007 - rho 17008 + (seg16AccY113 rho - seg16AccX113 rho * (-1)) * (rho 17004 + rho 17005) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX114 rho = seg16AccX113 rho - Bool.toZMod bit * (seg16AccX113 rho - rho 17010) := by
      have hd : rho 17012 = Bool.toZMod bit * (rho 17010 - seg16AccX113 rho) := by
        rw [← hbit, seg16LadderFlatX113_eq]
        unfold seg16LadderFlatX113
        linear_combination -r4440
      unfold seg16AccX114
      linear_combination hd
    have hsely : seg16AccY114 rho = seg16AccY113 rho - Bool.toZMod bit * (seg16AccY113 rho - rho 17011) := by
      have hd : rho 17013 = Bool.toZMod bit * (rho 17011 - seg16AccY113 rho) := by
        rw [← hbit, seg16LadderFlatY113_eq]
        unfold seg16LadderFlatY113
        linear_combination -r4441
      unfold seg16AccY114
      linear_combination hd
    have hd0 : rho 17004 * rho 17005 = rho 17014 := by linear_combination r4442
    have hd1 : rho 17004 * rho 17004 = rho 17015 := by linear_combination r4443
    have hd2 : rho 17005 * rho 17005 = rho 17016 := by linear_combination r4444
    have hd3 : rho 17017 * (rho 17005 * rho 17005 + rho 17004 * rho 17004 * (-1)) = 2 * (rho 17004 * rho 17005) := by
      rw [hd0, hd1, hd2]
      linear_combination r4445
    have hd4 : rho 17018 * (2 - (rho 17005 * rho 17005 + rho 17004 * rho 17004 * (-1))) = rho 17005 * rho 17005 - rho 17004 * rho 17004 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
      ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
      ⟨(rho 17010 : Seg16.F), (rho 17011 : Seg16.F)⟩
      ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
      ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg16_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15406 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4447 Seg16.relationLc605 Seg16.relationLc605Part0 Seg16.relationLc605Part1 Seg16.relationLc605Part2 Seg16.relationLc605Part3 Seg16.relationLc605Part4 Seg16.relationLc605Part5 Seg16.relationLc605Part6 Seg16.relationLc605Part7 at r4447
  unfold Seg16.relationRow4448 Seg16.relationLc606 Seg16.relationLc606Part0 Seg16.relationLc606Part1 Seg16.relationLc606Part2 Seg16.relationLc606Part3 at r4448
  unfold Seg16.relationRow4449 Seg16.relationLc607 Seg16.relationLc607Part0 Seg16.relationLc607Part1 Seg16.relationLc607Part2 Seg16.relationLc607Part3 at r4449
  unfold Seg16.relationRow4450 at r4450
  unfold Seg16.relationRow4451 at r4451
  unfold Seg16.relationRow4452 at r4452
  unfold Seg16.relationRow4453 Seg16.relationLc608 Seg16.relationLc608Part0 Seg16.relationLc608Part1 Seg16.relationLc608Part2 Seg16.relationLc608Part3 at r4453
  unfold Seg16.relationRow4454 Seg16.relationLc609 Seg16.relationLc609Part0 Seg16.relationLc609Part1 Seg16.relationLc609Part2 Seg16.relationLc609Part3 at r4454
  unfold Seg16.relationRow4455 at r4455
  unfold Seg16.relationRow4456 at r4456
  unfold Seg16.relationRow4457 at r4457
  unfold Seg16.relationRow4458 at r4458
  unfold Seg16.relationRow4459 at r4459
  have hrung114 (bit : Bool) (hbit : rho 15406 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩ := by
    have ha0 : (rho 17017 + rho 17018) * (seg16AccX114 rho + seg16AccY114 rho) = rho 17019 := by
      rw [seg16LadderFlatX114_eq, seg16LadderFlatY114_eq]
      unfold seg16LadderFlatX114 seg16LadderFlatY114
      linear_combination r4447
    have ha1 : rho 17018 * seg16AccX114 rho = rho 17020 := by
      rw [seg16LadderFlatX114_eq]
      unfold seg16LadderFlatX114
      linear_combination r4448
    have ha2 : rho 17017 * seg16AccY114 rho = rho 17021 := by
      rw [seg16LadderFlatY114_eq]
      unfold seg16LadderFlatY114
      linear_combination r4449
    have ha3 : 3021 * rho 17020 * rho 17021 = rho 17022 := by
      linear_combination r4450
    have ha4 : rho 17023 * (1 + rho 17022) = rho 17020 + rho 17021 := by
      linear_combination r4451
    have ha5 : rho 17024 * (1 - rho 17022) = rho 17019 - rho 17020 - rho 17021 := by
      linear_combination r4452
    have haddx :
        rho 17023 * (1 + 3021 * (rho 17018 * seg16AccX114 rho) * (rho 17017 * seg16AccY114 rho)) =
          rho 17018 * seg16AccX114 rho + rho 17017 * seg16AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17024 * (1 - 3021 * (rho 17018 * seg16AccX114 rho) * (rho 17017 * seg16AccY114 rho)) =
          (-1) * (rho 17018 * seg16AccX114 rho) - rho 17017 * seg16AccY114 rho +
            (seg16AccY114 rho - seg16AccX114 rho * (-1)) * (rho 17017 + rho 17018) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17024 * (1 - rho 17022) = rho 17019 - rho 17020 - rho 17021 := ha5
        _ = (-1) * rho 17020 - rho 17021 + (seg16AccY114 rho - seg16AccX114 rho * (-1)) * (rho 17017 + rho 17018) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX115 rho = seg16AccX114 rho - Bool.toZMod bit * (seg16AccX114 rho - rho 17023) := by
      have hd : rho 17025 = Bool.toZMod bit * (rho 17023 - seg16AccX114 rho) := by
        rw [← hbit, seg16LadderFlatX114_eq]
        unfold seg16LadderFlatX114
        linear_combination -r4453
      unfold seg16AccX115
      linear_combination hd
    have hsely : seg16AccY115 rho = seg16AccY114 rho - Bool.toZMod bit * (seg16AccY114 rho - rho 17024) := by
      have hd : rho 17026 = Bool.toZMod bit * (rho 17024 - seg16AccY114 rho) := by
        rw [← hbit, seg16LadderFlatY114_eq]
        unfold seg16LadderFlatY114
        linear_combination -r4454
      unfold seg16AccY115
      linear_combination hd
    have hd0 : rho 17017 * rho 17018 = rho 17027 := by linear_combination r4455
    have hd1 : rho 17017 * rho 17017 = rho 17028 := by linear_combination r4456
    have hd2 : rho 17018 * rho 17018 = rho 17029 := by linear_combination r4457
    have hd3 : rho 17030 * (rho 17018 * rho 17018 + rho 17017 * rho 17017 * (-1)) = 2 * (rho 17017 * rho 17018) := by
      rw [hd0, hd1, hd2]
      linear_combination r4458
    have hd4 : rho 17031 * (2 - (rho 17018 * rho 17018 + rho 17017 * rho 17017 * (-1))) = rho 17018 * rho 17018 - rho 17017 * rho 17017 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4459
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
      ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
      ⟨(rho 17023 : Seg16.F), (rho 17024 : Seg16.F)⟩
      ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
      ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg16_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15407 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4460 Seg16.relationLc610 Seg16.relationLc610Part0 Seg16.relationLc610Part1 Seg16.relationLc610Part2 Seg16.relationLc610Part3 Seg16.relationLc610Part4 Seg16.relationLc610Part5 Seg16.relationLc610Part6 Seg16.relationLc610Part7 at r4460
  unfold Seg16.relationRow4461 Seg16.relationLc611 Seg16.relationLc611Part0 Seg16.relationLc611Part1 Seg16.relationLc611Part2 Seg16.relationLc611Part3 at r4461
  unfold Seg16.relationRow4462 Seg16.relationLc612 Seg16.relationLc612Part0 Seg16.relationLc612Part1 Seg16.relationLc612Part2 Seg16.relationLc612Part3 at r4462
  unfold Seg16.relationRow4463 at r4463
  unfold Seg16.relationRow4464 at r4464
  unfold Seg16.relationRow4465 at r4465
  unfold Seg16.relationRow4466 Seg16.relationLc613 Seg16.relationLc613Part0 Seg16.relationLc613Part1 Seg16.relationLc613Part2 Seg16.relationLc613Part3 at r4466
  unfold Seg16.relationRow4467 Seg16.relationLc614 Seg16.relationLc614Part0 Seg16.relationLc614Part1 Seg16.relationLc614Part2 Seg16.relationLc614Part3 at r4467
  unfold Seg16.relationRow4468 at r4468
  unfold Seg16.relationRow4469 at r4469
  unfold Seg16.relationRow4470 at r4470
  unfold Seg16.relationRow4471 at r4471
  unfold Seg16.relationRow4472 at r4472
  have hrung115 (bit : Bool) (hbit : rho 15407 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩ := by
    have ha0 : (rho 17030 + rho 17031) * (seg16AccX115 rho + seg16AccY115 rho) = rho 17032 := by
      rw [seg16LadderFlatX115_eq, seg16LadderFlatY115_eq]
      unfold seg16LadderFlatX115 seg16LadderFlatY115
      linear_combination r4460
    have ha1 : rho 17031 * seg16AccX115 rho = rho 17033 := by
      rw [seg16LadderFlatX115_eq]
      unfold seg16LadderFlatX115
      linear_combination r4461
    have ha2 : rho 17030 * seg16AccY115 rho = rho 17034 := by
      rw [seg16LadderFlatY115_eq]
      unfold seg16LadderFlatY115
      linear_combination r4462
    have ha3 : 3021 * rho 17033 * rho 17034 = rho 17035 := by
      linear_combination r4463
    have ha4 : rho 17036 * (1 + rho 17035) = rho 17033 + rho 17034 := by
      linear_combination r4464
    have ha5 : rho 17037 * (1 - rho 17035) = rho 17032 - rho 17033 - rho 17034 := by
      linear_combination r4465
    have haddx :
        rho 17036 * (1 + 3021 * (rho 17031 * seg16AccX115 rho) * (rho 17030 * seg16AccY115 rho)) =
          rho 17031 * seg16AccX115 rho + rho 17030 * seg16AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17037 * (1 - 3021 * (rho 17031 * seg16AccX115 rho) * (rho 17030 * seg16AccY115 rho)) =
          (-1) * (rho 17031 * seg16AccX115 rho) - rho 17030 * seg16AccY115 rho +
            (seg16AccY115 rho - seg16AccX115 rho * (-1)) * (rho 17030 + rho 17031) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17037 * (1 - rho 17035) = rho 17032 - rho 17033 - rho 17034 := ha5
        _ = (-1) * rho 17033 - rho 17034 + (seg16AccY115 rho - seg16AccX115 rho * (-1)) * (rho 17030 + rho 17031) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX116 rho = seg16AccX115 rho - Bool.toZMod bit * (seg16AccX115 rho - rho 17036) := by
      have hd : rho 17038 = Bool.toZMod bit * (rho 17036 - seg16AccX115 rho) := by
        rw [← hbit, seg16LadderFlatX115_eq]
        unfold seg16LadderFlatX115
        linear_combination -r4466
      unfold seg16AccX116
      linear_combination hd
    have hsely : seg16AccY116 rho = seg16AccY115 rho - Bool.toZMod bit * (seg16AccY115 rho - rho 17037) := by
      have hd : rho 17039 = Bool.toZMod bit * (rho 17037 - seg16AccY115 rho) := by
        rw [← hbit, seg16LadderFlatY115_eq]
        unfold seg16LadderFlatY115
        linear_combination -r4467
      unfold seg16AccY116
      linear_combination hd
    have hd0 : rho 17030 * rho 17031 = rho 17040 := by linear_combination r4468
    have hd1 : rho 17030 * rho 17030 = rho 17041 := by linear_combination r4469
    have hd2 : rho 17031 * rho 17031 = rho 17042 := by linear_combination r4470
    have hd3 : rho 17043 * (rho 17031 * rho 17031 + rho 17030 * rho 17030 * (-1)) = 2 * (rho 17030 * rho 17031) := by
      rw [hd0, hd1, hd2]
      linear_combination r4471
    have hd4 : rho 17044 * (2 - (rho 17031 * rho 17031 + rho 17030 * rho 17030 * (-1))) = rho 17031 * rho 17031 - rho 17030 * rho 17030 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4472
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
      ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
      ⟨(rho 17036 : Seg16.F), (rho 17037 : Seg16.F)⟩
      ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
      ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg16_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15408 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4473 Seg16.relationLc615 Seg16.relationLc615Part0 Seg16.relationLc615Part1 Seg16.relationLc615Part2 Seg16.relationLc615Part3 Seg16.relationLc615Part4 Seg16.relationLc615Part5 Seg16.relationLc615Part6 Seg16.relationLc615Part7 at r4473
  unfold Seg16.relationRow4474 Seg16.relationLc616 Seg16.relationLc616Part0 Seg16.relationLc616Part1 Seg16.relationLc616Part2 Seg16.relationLc616Part3 at r4474
  unfold Seg16.relationRow4475 Seg16.relationLc617 Seg16.relationLc617Part0 Seg16.relationLc617Part1 Seg16.relationLc617Part2 Seg16.relationLc617Part3 at r4475
  unfold Seg16.relationRow4476 at r4476
  unfold Seg16.relationRow4477 at r4477
  unfold Seg16.relationRow4478 at r4478
  unfold Seg16.relationRow4479 Seg16.relationLc618 Seg16.relationLc618Part0 Seg16.relationLc618Part1 Seg16.relationLc618Part2 Seg16.relationLc618Part3 at r4479
  unfold Seg16.relationRow4480 Seg16.relationLc619 Seg16.relationLc619Part0 Seg16.relationLc619Part1 Seg16.relationLc619Part2 Seg16.relationLc619Part3 at r4480
  unfold Seg16.relationRow4481 at r4481
  unfold Seg16.relationRow4482 at r4482
  unfold Seg16.relationRow4483 at r4483
  unfold Seg16.relationRow4484 at r4484
  unfold Seg16.relationRow4485 at r4485
  have hrung116 (bit : Bool) (hbit : rho 15408 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩ := by
    have ha0 : (rho 17043 + rho 17044) * (seg16AccX116 rho + seg16AccY116 rho) = rho 17045 := by
      rw [seg16LadderFlatX116_eq, seg16LadderFlatY116_eq]
      unfold seg16LadderFlatX116 seg16LadderFlatY116
      linear_combination r4473
    have ha1 : rho 17044 * seg16AccX116 rho = rho 17046 := by
      rw [seg16LadderFlatX116_eq]
      unfold seg16LadderFlatX116
      linear_combination r4474
    have ha2 : rho 17043 * seg16AccY116 rho = rho 17047 := by
      rw [seg16LadderFlatY116_eq]
      unfold seg16LadderFlatY116
      linear_combination r4475
    have ha3 : 3021 * rho 17046 * rho 17047 = rho 17048 := by
      linear_combination r4476
    have ha4 : rho 17049 * (1 + rho 17048) = rho 17046 + rho 17047 := by
      linear_combination r4477
    have ha5 : rho 17050 * (1 - rho 17048) = rho 17045 - rho 17046 - rho 17047 := by
      linear_combination r4478
    have haddx :
        rho 17049 * (1 + 3021 * (rho 17044 * seg16AccX116 rho) * (rho 17043 * seg16AccY116 rho)) =
          rho 17044 * seg16AccX116 rho + rho 17043 * seg16AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17050 * (1 - 3021 * (rho 17044 * seg16AccX116 rho) * (rho 17043 * seg16AccY116 rho)) =
          (-1) * (rho 17044 * seg16AccX116 rho) - rho 17043 * seg16AccY116 rho +
            (seg16AccY116 rho - seg16AccX116 rho * (-1)) * (rho 17043 + rho 17044) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17050 * (1 - rho 17048) = rho 17045 - rho 17046 - rho 17047 := ha5
        _ = (-1) * rho 17046 - rho 17047 + (seg16AccY116 rho - seg16AccX116 rho * (-1)) * (rho 17043 + rho 17044) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX117 rho = seg16AccX116 rho - Bool.toZMod bit * (seg16AccX116 rho - rho 17049) := by
      have hd : rho 17051 = Bool.toZMod bit * (rho 17049 - seg16AccX116 rho) := by
        rw [← hbit, seg16LadderFlatX116_eq]
        unfold seg16LadderFlatX116
        linear_combination -r4479
      unfold seg16AccX117
      linear_combination hd
    have hsely : seg16AccY117 rho = seg16AccY116 rho - Bool.toZMod bit * (seg16AccY116 rho - rho 17050) := by
      have hd : rho 17052 = Bool.toZMod bit * (rho 17050 - seg16AccY116 rho) := by
        rw [← hbit, seg16LadderFlatY116_eq]
        unfold seg16LadderFlatY116
        linear_combination -r4480
      unfold seg16AccY117
      linear_combination hd
    have hd0 : rho 17043 * rho 17044 = rho 17053 := by linear_combination r4481
    have hd1 : rho 17043 * rho 17043 = rho 17054 := by linear_combination r4482
    have hd2 : rho 17044 * rho 17044 = rho 17055 := by linear_combination r4483
    have hd3 : rho 17056 * (rho 17044 * rho 17044 + rho 17043 * rho 17043 * (-1)) = 2 * (rho 17043 * rho 17044) := by
      rw [hd0, hd1, hd2]
      linear_combination r4484
    have hd4 : rho 17057 * (2 - (rho 17044 * rho 17044 + rho 17043 * rho 17043 * (-1))) = rho 17044 * rho 17044 - rho 17043 * rho 17043 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4485
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
      ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
      ⟨(rho 17049 : Seg16.F), (rho 17050 : Seg16.F)⟩
      ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
      ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg16_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15409 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4486 Seg16.relationLc620 Seg16.relationLc620Part0 Seg16.relationLc620Part1 Seg16.relationLc620Part2 Seg16.relationLc620Part3 Seg16.relationLc620Part4 Seg16.relationLc620Part5 Seg16.relationLc620Part6 Seg16.relationLc620Part7 at r4486
  unfold Seg16.relationRow4487 Seg16.relationLc621 Seg16.relationLc621Part0 Seg16.relationLc621Part1 Seg16.relationLc621Part2 Seg16.relationLc621Part3 at r4487
  unfold Seg16.relationRow4488 Seg16.relationLc622 Seg16.relationLc622Part0 Seg16.relationLc622Part1 Seg16.relationLc622Part2 Seg16.relationLc622Part3 at r4488
  unfold Seg16.relationRow4489 at r4489
  unfold Seg16.relationRow4490 at r4490
  unfold Seg16.relationRow4491 at r4491
  unfold Seg16.relationRow4492 Seg16.relationLc623 Seg16.relationLc623Part0 Seg16.relationLc623Part1 Seg16.relationLc623Part2 Seg16.relationLc623Part3 at r4492
  unfold Seg16.relationRow4493 Seg16.relationLc624 Seg16.relationLc624Part0 Seg16.relationLc624Part1 Seg16.relationLc624Part2 Seg16.relationLc624Part3 at r4493
  unfold Seg16.relationRow4494 at r4494
  unfold Seg16.relationRow4495 at r4495
  unfold Seg16.relationRow4496 at r4496
  unfold Seg16.relationRow4497 at r4497
  unfold Seg16.relationRow4498 at r4498
  have hrung117 (bit : Bool) (hbit : rho 15409 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩ := by
    have ha0 : (rho 17056 + rho 17057) * (seg16AccX117 rho + seg16AccY117 rho) = rho 17058 := by
      rw [seg16LadderFlatX117_eq, seg16LadderFlatY117_eq]
      unfold seg16LadderFlatX117 seg16LadderFlatY117
      linear_combination r4486
    have ha1 : rho 17057 * seg16AccX117 rho = rho 17059 := by
      rw [seg16LadderFlatX117_eq]
      unfold seg16LadderFlatX117
      linear_combination r4487
    have ha2 : rho 17056 * seg16AccY117 rho = rho 17060 := by
      rw [seg16LadderFlatY117_eq]
      unfold seg16LadderFlatY117
      linear_combination r4488
    have ha3 : 3021 * rho 17059 * rho 17060 = rho 17061 := by
      linear_combination r4489
    have ha4 : rho 17062 * (1 + rho 17061) = rho 17059 + rho 17060 := by
      linear_combination r4490
    have ha5 : rho 17063 * (1 - rho 17061) = rho 17058 - rho 17059 - rho 17060 := by
      linear_combination r4491
    have haddx :
        rho 17062 * (1 + 3021 * (rho 17057 * seg16AccX117 rho) * (rho 17056 * seg16AccY117 rho)) =
          rho 17057 * seg16AccX117 rho + rho 17056 * seg16AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17063 * (1 - 3021 * (rho 17057 * seg16AccX117 rho) * (rho 17056 * seg16AccY117 rho)) =
          (-1) * (rho 17057 * seg16AccX117 rho) - rho 17056 * seg16AccY117 rho +
            (seg16AccY117 rho - seg16AccX117 rho * (-1)) * (rho 17056 + rho 17057) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17063 * (1 - rho 17061) = rho 17058 - rho 17059 - rho 17060 := ha5
        _ = (-1) * rho 17059 - rho 17060 + (seg16AccY117 rho - seg16AccX117 rho * (-1)) * (rho 17056 + rho 17057) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX118 rho = seg16AccX117 rho - Bool.toZMod bit * (seg16AccX117 rho - rho 17062) := by
      have hd : rho 17064 = Bool.toZMod bit * (rho 17062 - seg16AccX117 rho) := by
        rw [← hbit, seg16LadderFlatX117_eq]
        unfold seg16LadderFlatX117
        linear_combination -r4492
      unfold seg16AccX118
      linear_combination hd
    have hsely : seg16AccY118 rho = seg16AccY117 rho - Bool.toZMod bit * (seg16AccY117 rho - rho 17063) := by
      have hd : rho 17065 = Bool.toZMod bit * (rho 17063 - seg16AccY117 rho) := by
        rw [← hbit, seg16LadderFlatY117_eq]
        unfold seg16LadderFlatY117
        linear_combination -r4493
      unfold seg16AccY118
      linear_combination hd
    have hd0 : rho 17056 * rho 17057 = rho 17066 := by linear_combination r4494
    have hd1 : rho 17056 * rho 17056 = rho 17067 := by linear_combination r4495
    have hd2 : rho 17057 * rho 17057 = rho 17068 := by linear_combination r4496
    have hd3 : rho 17069 * (rho 17057 * rho 17057 + rho 17056 * rho 17056 * (-1)) = 2 * (rho 17056 * rho 17057) := by
      rw [hd0, hd1, hd2]
      linear_combination r4497
    have hd4 : rho 17070 * (2 - (rho 17057 * rho 17057 + rho 17056 * rho 17056 * (-1))) = rho 17057 * rho 17057 - rho 17056 * rho 17056 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4498
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
      ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
      ⟨(rho 17062 : Seg16.F), (rho 17063 : Seg16.F)⟩
      ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
      ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg16_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15410 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4499 Seg16.relationLc625 Seg16.relationLc625Part0 Seg16.relationLc625Part1 Seg16.relationLc625Part2 Seg16.relationLc625Part3 Seg16.relationLc625Part4 Seg16.relationLc625Part5 Seg16.relationLc625Part6 Seg16.relationLc625Part7 at r4499
  unfold Seg16.relationRow4500 Seg16.relationLc626 Seg16.relationLc626Part0 Seg16.relationLc626Part1 Seg16.relationLc626Part2 Seg16.relationLc626Part3 at r4500
  unfold Seg16.relationRow4501 Seg16.relationLc627 Seg16.relationLc627Part0 Seg16.relationLc627Part1 Seg16.relationLc627Part2 Seg16.relationLc627Part3 at r4501
  unfold Seg16.relationRow4502 at r4502
  unfold Seg16.relationRow4503 at r4503
  unfold Seg16.relationRow4504 at r4504
  unfold Seg16.relationRow4505 Seg16.relationLc628 Seg16.relationLc628Part0 Seg16.relationLc628Part1 Seg16.relationLc628Part2 Seg16.relationLc628Part3 at r4505
  unfold Seg16.relationRow4506 Seg16.relationLc629 Seg16.relationLc629Part0 Seg16.relationLc629Part1 Seg16.relationLc629Part2 Seg16.relationLc629Part3 at r4506
  unfold Seg16.relationRow4507 at r4507
  unfold Seg16.relationRow4508 at r4508
  unfold Seg16.relationRow4509 at r4509
  unfold Seg16.relationRow4510 at r4510
  unfold Seg16.relationRow4511 at r4511
  have hrung118 (bit : Bool) (hbit : rho 15410 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩ := by
    have ha0 : (rho 17069 + rho 17070) * (seg16AccX118 rho + seg16AccY118 rho) = rho 17071 := by
      rw [seg16LadderFlatX118_eq, seg16LadderFlatY118_eq]
      unfold seg16LadderFlatX118 seg16LadderFlatY118
      linear_combination r4499
    have ha1 : rho 17070 * seg16AccX118 rho = rho 17072 := by
      rw [seg16LadderFlatX118_eq]
      unfold seg16LadderFlatX118
      linear_combination r4500
    have ha2 : rho 17069 * seg16AccY118 rho = rho 17073 := by
      rw [seg16LadderFlatY118_eq]
      unfold seg16LadderFlatY118
      linear_combination r4501
    have ha3 : 3021 * rho 17072 * rho 17073 = rho 17074 := by
      linear_combination r4502
    have ha4 : rho 17075 * (1 + rho 17074) = rho 17072 + rho 17073 := by
      linear_combination r4503
    have ha5 : rho 17076 * (1 - rho 17074) = rho 17071 - rho 17072 - rho 17073 := by
      linear_combination r4504
    have haddx :
        rho 17075 * (1 + 3021 * (rho 17070 * seg16AccX118 rho) * (rho 17069 * seg16AccY118 rho)) =
          rho 17070 * seg16AccX118 rho + rho 17069 * seg16AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17076 * (1 - 3021 * (rho 17070 * seg16AccX118 rho) * (rho 17069 * seg16AccY118 rho)) =
          (-1) * (rho 17070 * seg16AccX118 rho) - rho 17069 * seg16AccY118 rho +
            (seg16AccY118 rho - seg16AccX118 rho * (-1)) * (rho 17069 + rho 17070) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17076 * (1 - rho 17074) = rho 17071 - rho 17072 - rho 17073 := ha5
        _ = (-1) * rho 17072 - rho 17073 + (seg16AccY118 rho - seg16AccX118 rho * (-1)) * (rho 17069 + rho 17070) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX119 rho = seg16AccX118 rho - Bool.toZMod bit * (seg16AccX118 rho - rho 17075) := by
      have hd : rho 17077 = Bool.toZMod bit * (rho 17075 - seg16AccX118 rho) := by
        rw [← hbit, seg16LadderFlatX118_eq]
        unfold seg16LadderFlatX118
        linear_combination -r4505
      unfold seg16AccX119
      linear_combination hd
    have hsely : seg16AccY119 rho = seg16AccY118 rho - Bool.toZMod bit * (seg16AccY118 rho - rho 17076) := by
      have hd : rho 17078 = Bool.toZMod bit * (rho 17076 - seg16AccY118 rho) := by
        rw [← hbit, seg16LadderFlatY118_eq]
        unfold seg16LadderFlatY118
        linear_combination -r4506
      unfold seg16AccY119
      linear_combination hd
    have hd0 : rho 17069 * rho 17070 = rho 17079 := by linear_combination r4507
    have hd1 : rho 17069 * rho 17069 = rho 17080 := by linear_combination r4508
    have hd2 : rho 17070 * rho 17070 = rho 17081 := by linear_combination r4509
    have hd3 : rho 17082 * (rho 17070 * rho 17070 + rho 17069 * rho 17069 * (-1)) = 2 * (rho 17069 * rho 17070) := by
      rw [hd0, hd1, hd2]
      linear_combination r4510
    have hd4 : rho 17083 * (2 - (rho 17070 * rho 17070 + rho 17069 * rho 17069 * (-1))) = rho 17070 * rho 17070 - rho 17069 * rho 17069 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4511
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
      ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
      ⟨(rho 17075 : Seg16.F), (rho 17076 : Seg16.F)⟩
      ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
      ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg16_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15411 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4512 Seg16.relationLc630 Seg16.relationLc630Part0 Seg16.relationLc630Part1 Seg16.relationLc630Part2 Seg16.relationLc630Part3 Seg16.relationLc630Part4 Seg16.relationLc630Part5 Seg16.relationLc630Part6 Seg16.relationLc630Part7 at r4512
  unfold Seg16.relationRow4513 Seg16.relationLc631 Seg16.relationLc631Part0 Seg16.relationLc631Part1 Seg16.relationLc631Part2 Seg16.relationLc631Part3 at r4513
  unfold Seg16.relationRow4514 Seg16.relationLc632 Seg16.relationLc632Part0 Seg16.relationLc632Part1 Seg16.relationLc632Part2 Seg16.relationLc632Part3 at r4514
  unfold Seg16.relationRow4515 at r4515
  unfold Seg16.relationRow4516 at r4516
  unfold Seg16.relationRow4517 at r4517
  unfold Seg16.relationRow4518 Seg16.relationLc633 Seg16.relationLc633Part0 Seg16.relationLc633Part1 Seg16.relationLc633Part2 Seg16.relationLc633Part3 at r4518
  unfold Seg16.relationRow4519 Seg16.relationLc634 Seg16.relationLc634Part0 Seg16.relationLc634Part1 Seg16.relationLc634Part2 Seg16.relationLc634Part3 at r4519
  unfold Seg16.relationRow4520 at r4520
  unfold Seg16.relationRow4521 at r4521
  unfold Seg16.relationRow4522 at r4522
  unfold Seg16.relationRow4523 at r4523
  unfold Seg16.relationRow4524 at r4524
  have hrung119 (bit : Bool) (hbit : rho 15411 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩ := by
    have ha0 : (rho 17082 + rho 17083) * (seg16AccX119 rho + seg16AccY119 rho) = rho 17084 := by
      rw [seg16LadderFlatX119_eq, seg16LadderFlatY119_eq]
      unfold seg16LadderFlatX119 seg16LadderFlatY119
      linear_combination r4512
    have ha1 : rho 17083 * seg16AccX119 rho = rho 17085 := by
      rw [seg16LadderFlatX119_eq]
      unfold seg16LadderFlatX119
      linear_combination r4513
    have ha2 : rho 17082 * seg16AccY119 rho = rho 17086 := by
      rw [seg16LadderFlatY119_eq]
      unfold seg16LadderFlatY119
      linear_combination r4514
    have ha3 : 3021 * rho 17085 * rho 17086 = rho 17087 := by
      linear_combination r4515
    have ha4 : rho 17088 * (1 + rho 17087) = rho 17085 + rho 17086 := by
      linear_combination r4516
    have ha5 : rho 17089 * (1 - rho 17087) = rho 17084 - rho 17085 - rho 17086 := by
      linear_combination r4517
    have haddx :
        rho 17088 * (1 + 3021 * (rho 17083 * seg16AccX119 rho) * (rho 17082 * seg16AccY119 rho)) =
          rho 17083 * seg16AccX119 rho + rho 17082 * seg16AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17089 * (1 - 3021 * (rho 17083 * seg16AccX119 rho) * (rho 17082 * seg16AccY119 rho)) =
          (-1) * (rho 17083 * seg16AccX119 rho) - rho 17082 * seg16AccY119 rho +
            (seg16AccY119 rho - seg16AccX119 rho * (-1)) * (rho 17082 + rho 17083) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17089 * (1 - rho 17087) = rho 17084 - rho 17085 - rho 17086 := ha5
        _ = (-1) * rho 17085 - rho 17086 + (seg16AccY119 rho - seg16AccX119 rho * (-1)) * (rho 17082 + rho 17083) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX120 rho = seg16AccX119 rho - Bool.toZMod bit * (seg16AccX119 rho - rho 17088) := by
      have hd : rho 17090 = Bool.toZMod bit * (rho 17088 - seg16AccX119 rho) := by
        rw [← hbit, seg16LadderFlatX119_eq]
        unfold seg16LadderFlatX119
        linear_combination -r4518
      unfold seg16AccX120
      linear_combination hd
    have hsely : seg16AccY120 rho = seg16AccY119 rho - Bool.toZMod bit * (seg16AccY119 rho - rho 17089) := by
      have hd : rho 17091 = Bool.toZMod bit * (rho 17089 - seg16AccY119 rho) := by
        rw [← hbit, seg16LadderFlatY119_eq]
        unfold seg16LadderFlatY119
        linear_combination -r4519
      unfold seg16AccY120
      linear_combination hd
    have hd0 : rho 17082 * rho 17083 = rho 17092 := by linear_combination r4520
    have hd1 : rho 17082 * rho 17082 = rho 17093 := by linear_combination r4521
    have hd2 : rho 17083 * rho 17083 = rho 17094 := by linear_combination r4522
    have hd3 : rho 17095 * (rho 17083 * rho 17083 + rho 17082 * rho 17082 * (-1)) = 2 * (rho 17082 * rho 17083) := by
      rw [hd0, hd1, hd2]
      linear_combination r4523
    have hd4 : rho 17096 * (2 - (rho 17083 * rho 17083 + rho 17082 * rho 17082 * (-1))) = rho 17083 * rho 17083 - rho 17082 * rho 17082 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4524
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
      ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
      ⟨(rho 17088 : Seg16.F), (rho 17089 : Seg16.F)⟩
      ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
      ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg16_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15412 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4525 Seg16.relationLc635 Seg16.relationLc635Part0 Seg16.relationLc635Part1 Seg16.relationLc635Part2 Seg16.relationLc635Part3 Seg16.relationLc635Part4 Seg16.relationLc635Part5 Seg16.relationLc635Part6 Seg16.relationLc635Part7 at r4525
  unfold Seg16.relationRow4526 Seg16.relationLc636 Seg16.relationLc636Part0 Seg16.relationLc636Part1 Seg16.relationLc636Part2 Seg16.relationLc636Part3 at r4526
  unfold Seg16.relationRow4527 Seg16.relationLc637 Seg16.relationLc637Part0 Seg16.relationLc637Part1 Seg16.relationLc637Part2 Seg16.relationLc637Part3 at r4527
  unfold Seg16.relationRow4528 at r4528
  unfold Seg16.relationRow4529 at r4529
  unfold Seg16.relationRow4530 at r4530
  unfold Seg16.relationRow4531 Seg16.relationLc638 Seg16.relationLc638Part0 Seg16.relationLc638Part1 Seg16.relationLc638Part2 Seg16.relationLc638Part3 at r4531
  unfold Seg16.relationRow4532 Seg16.relationLc639 Seg16.relationLc639Part0 Seg16.relationLc639Part1 Seg16.relationLc639Part2 Seg16.relationLc639Part3 at r4532
  unfold Seg16.relationRow4533 at r4533
  unfold Seg16.relationRow4534 at r4534
  unfold Seg16.relationRow4535 at r4535
  unfold Seg16.relationRow4536 at r4536
  unfold Seg16.relationRow4537 at r4537
  have hrung120 (bit : Bool) (hbit : rho 15412 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩ := by
    have ha0 : (rho 17095 + rho 17096) * (seg16AccX120 rho + seg16AccY120 rho) = rho 17097 := by
      rw [seg16LadderFlatX120_eq, seg16LadderFlatY120_eq]
      unfold seg16LadderFlatX120 seg16LadderFlatY120
      linear_combination r4525
    have ha1 : rho 17096 * seg16AccX120 rho = rho 17098 := by
      rw [seg16LadderFlatX120_eq]
      unfold seg16LadderFlatX120
      linear_combination r4526
    have ha2 : rho 17095 * seg16AccY120 rho = rho 17099 := by
      rw [seg16LadderFlatY120_eq]
      unfold seg16LadderFlatY120
      linear_combination r4527
    have ha3 : 3021 * rho 17098 * rho 17099 = rho 17100 := by
      linear_combination r4528
    have ha4 : rho 17101 * (1 + rho 17100) = rho 17098 + rho 17099 := by
      linear_combination r4529
    have ha5 : rho 17102 * (1 - rho 17100) = rho 17097 - rho 17098 - rho 17099 := by
      linear_combination r4530
    have haddx :
        rho 17101 * (1 + 3021 * (rho 17096 * seg16AccX120 rho) * (rho 17095 * seg16AccY120 rho)) =
          rho 17096 * seg16AccX120 rho + rho 17095 * seg16AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17102 * (1 - 3021 * (rho 17096 * seg16AccX120 rho) * (rho 17095 * seg16AccY120 rho)) =
          (-1) * (rho 17096 * seg16AccX120 rho) - rho 17095 * seg16AccY120 rho +
            (seg16AccY120 rho - seg16AccX120 rho * (-1)) * (rho 17095 + rho 17096) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17102 * (1 - rho 17100) = rho 17097 - rho 17098 - rho 17099 := ha5
        _ = (-1) * rho 17098 - rho 17099 + (seg16AccY120 rho - seg16AccX120 rho * (-1)) * (rho 17095 + rho 17096) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX121 rho = seg16AccX120 rho - Bool.toZMod bit * (seg16AccX120 rho - rho 17101) := by
      have hd : rho 17103 = Bool.toZMod bit * (rho 17101 - seg16AccX120 rho) := by
        rw [← hbit, seg16LadderFlatX120_eq]
        unfold seg16LadderFlatX120
        linear_combination -r4531
      unfold seg16AccX121
      linear_combination hd
    have hsely : seg16AccY121 rho = seg16AccY120 rho - Bool.toZMod bit * (seg16AccY120 rho - rho 17102) := by
      have hd : rho 17104 = Bool.toZMod bit * (rho 17102 - seg16AccY120 rho) := by
        rw [← hbit, seg16LadderFlatY120_eq]
        unfold seg16LadderFlatY120
        linear_combination -r4532
      unfold seg16AccY121
      linear_combination hd
    have hd0 : rho 17095 * rho 17096 = rho 17105 := by linear_combination r4533
    have hd1 : rho 17095 * rho 17095 = rho 17106 := by linear_combination r4534
    have hd2 : rho 17096 * rho 17096 = rho 17107 := by linear_combination r4535
    have hd3 : rho 17108 * (rho 17096 * rho 17096 + rho 17095 * rho 17095 * (-1)) = 2 * (rho 17095 * rho 17096) := by
      rw [hd0, hd1, hd2]
      linear_combination r4536
    have hd4 : rho 17109 * (2 - (rho 17096 * rho 17096 + rho 17095 * rho 17095 * (-1))) = rho 17096 * rho 17096 - rho 17095 * rho 17095 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4537
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
      ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
      ⟨(rho 17101 : Seg16.F), (rho 17102 : Seg16.F)⟩
      ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
      ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg16_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15413 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4538 Seg16.relationLc640 Seg16.relationLc640Part0 Seg16.relationLc640Part1 Seg16.relationLc640Part2 Seg16.relationLc640Part3 Seg16.relationLc640Part4 Seg16.relationLc640Part5 Seg16.relationLc640Part6 Seg16.relationLc640Part7 at r4538
  unfold Seg16.relationRow4539 Seg16.relationLc641 Seg16.relationLc641Part0 Seg16.relationLc641Part1 Seg16.relationLc641Part2 Seg16.relationLc641Part3 at r4539
  unfold Seg16.relationRow4540 Seg16.relationLc642 Seg16.relationLc642Part0 Seg16.relationLc642Part1 Seg16.relationLc642Part2 Seg16.relationLc642Part3 at r4540
  unfold Seg16.relationRow4541 at r4541
  unfold Seg16.relationRow4542 at r4542
  unfold Seg16.relationRow4543 at r4543
  unfold Seg16.relationRow4544 Seg16.relationLc643 Seg16.relationLc643Part0 Seg16.relationLc643Part1 Seg16.relationLc643Part2 Seg16.relationLc643Part3 at r4544
  unfold Seg16.relationRow4545 Seg16.relationLc644 Seg16.relationLc644Part0 Seg16.relationLc644Part1 Seg16.relationLc644Part2 Seg16.relationLc644Part3 at r4545
  unfold Seg16.relationRow4546 at r4546
  unfold Seg16.relationRow4547 at r4547
  unfold Seg16.relationRow4548 at r4548
  unfold Seg16.relationRow4549 at r4549
  unfold Seg16.relationRow4550 at r4550
  have hrung121 (bit : Bool) (hbit : rho 15413 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩ := by
    have ha0 : (rho 17108 + rho 17109) * (seg16AccX121 rho + seg16AccY121 rho) = rho 17110 := by
      rw [seg16LadderFlatX121_eq, seg16LadderFlatY121_eq]
      unfold seg16LadderFlatX121 seg16LadderFlatY121
      linear_combination r4538
    have ha1 : rho 17109 * seg16AccX121 rho = rho 17111 := by
      rw [seg16LadderFlatX121_eq]
      unfold seg16LadderFlatX121
      linear_combination r4539
    have ha2 : rho 17108 * seg16AccY121 rho = rho 17112 := by
      rw [seg16LadderFlatY121_eq]
      unfold seg16LadderFlatY121
      linear_combination r4540
    have ha3 : 3021 * rho 17111 * rho 17112 = rho 17113 := by
      linear_combination r4541
    have ha4 : rho 17114 * (1 + rho 17113) = rho 17111 + rho 17112 := by
      linear_combination r4542
    have ha5 : rho 17115 * (1 - rho 17113) = rho 17110 - rho 17111 - rho 17112 := by
      linear_combination r4543
    have haddx :
        rho 17114 * (1 + 3021 * (rho 17109 * seg16AccX121 rho) * (rho 17108 * seg16AccY121 rho)) =
          rho 17109 * seg16AccX121 rho + rho 17108 * seg16AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17115 * (1 - 3021 * (rho 17109 * seg16AccX121 rho) * (rho 17108 * seg16AccY121 rho)) =
          (-1) * (rho 17109 * seg16AccX121 rho) - rho 17108 * seg16AccY121 rho +
            (seg16AccY121 rho - seg16AccX121 rho * (-1)) * (rho 17108 + rho 17109) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17115 * (1 - rho 17113) = rho 17110 - rho 17111 - rho 17112 := ha5
        _ = (-1) * rho 17111 - rho 17112 + (seg16AccY121 rho - seg16AccX121 rho * (-1)) * (rho 17108 + rho 17109) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX122 rho = seg16AccX121 rho - Bool.toZMod bit * (seg16AccX121 rho - rho 17114) := by
      have hd : rho 17116 = Bool.toZMod bit * (rho 17114 - seg16AccX121 rho) := by
        rw [← hbit, seg16LadderFlatX121_eq]
        unfold seg16LadderFlatX121
        linear_combination -r4544
      unfold seg16AccX122
      linear_combination hd
    have hsely : seg16AccY122 rho = seg16AccY121 rho - Bool.toZMod bit * (seg16AccY121 rho - rho 17115) := by
      have hd : rho 17117 = Bool.toZMod bit * (rho 17115 - seg16AccY121 rho) := by
        rw [← hbit, seg16LadderFlatY121_eq]
        unfold seg16LadderFlatY121
        linear_combination -r4545
      unfold seg16AccY122
      linear_combination hd
    have hd0 : rho 17108 * rho 17109 = rho 17118 := by linear_combination r4546
    have hd1 : rho 17108 * rho 17108 = rho 17119 := by linear_combination r4547
    have hd2 : rho 17109 * rho 17109 = rho 17120 := by linear_combination r4548
    have hd3 : rho 17121 * (rho 17109 * rho 17109 + rho 17108 * rho 17108 * (-1)) = 2 * (rho 17108 * rho 17109) := by
      rw [hd0, hd1, hd2]
      linear_combination r4549
    have hd4 : rho 17122 * (2 - (rho 17109 * rho 17109 + rho 17108 * rho 17108 * (-1))) = rho 17109 * rho 17109 - rho 17108 * rho 17108 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4550
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
      ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
      ⟨(rho 17114 : Seg16.F), (rho 17115 : Seg16.F)⟩
      ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
      ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg16_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15414 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4551 Seg16.relationLc645 Seg16.relationLc645Part0 Seg16.relationLc645Part1 Seg16.relationLc645Part2 Seg16.relationLc645Part3 Seg16.relationLc645Part4 Seg16.relationLc645Part5 Seg16.relationLc645Part6 Seg16.relationLc645Part7 at r4551
  unfold Seg16.relationRow4552 Seg16.relationLc646 Seg16.relationLc646Part0 Seg16.relationLc646Part1 Seg16.relationLc646Part2 Seg16.relationLc646Part3 at r4552
  unfold Seg16.relationRow4553 Seg16.relationLc647 Seg16.relationLc647Part0 Seg16.relationLc647Part1 Seg16.relationLc647Part2 Seg16.relationLc647Part3 at r4553
  unfold Seg16.relationRow4554 at r4554
  unfold Seg16.relationRow4555 at r4555
  unfold Seg16.relationRow4556 at r4556
  unfold Seg16.relationRow4557 Seg16.relationLc648 Seg16.relationLc648Part0 Seg16.relationLc648Part1 Seg16.relationLc648Part2 Seg16.relationLc648Part3 at r4557
  unfold Seg16.relationRow4558 Seg16.relationLc649 Seg16.relationLc649Part0 Seg16.relationLc649Part1 Seg16.relationLc649Part2 Seg16.relationLc649Part3 at r4558
  unfold Seg16.relationRow4559 at r4559
  unfold Seg16.relationRow4560 at r4560
  unfold Seg16.relationRow4561 at r4561
  unfold Seg16.relationRow4562 at r4562
  unfold Seg16.relationRow4563 at r4563
  have hrung122 (bit : Bool) (hbit : rho 15414 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
        ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩ := by
    have ha0 : (rho 17121 + rho 17122) * (seg16AccX122 rho + seg16AccY122 rho) = rho 17123 := by
      rw [seg16LadderFlatX122_eq, seg16LadderFlatY122_eq]
      unfold seg16LadderFlatX122 seg16LadderFlatY122
      linear_combination r4551
    have ha1 : rho 17122 * seg16AccX122 rho = rho 17124 := by
      rw [seg16LadderFlatX122_eq]
      unfold seg16LadderFlatX122
      linear_combination r4552
    have ha2 : rho 17121 * seg16AccY122 rho = rho 17125 := by
      rw [seg16LadderFlatY122_eq]
      unfold seg16LadderFlatY122
      linear_combination r4553
    have ha3 : 3021 * rho 17124 * rho 17125 = rho 17126 := by
      linear_combination r4554
    have ha4 : rho 17127 * (1 + rho 17126) = rho 17124 + rho 17125 := by
      linear_combination r4555
    have ha5 : rho 17128 * (1 - rho 17126) = rho 17123 - rho 17124 - rho 17125 := by
      linear_combination r4556
    have haddx :
        rho 17127 * (1 + 3021 * (rho 17122 * seg16AccX122 rho) * (rho 17121 * seg16AccY122 rho)) =
          rho 17122 * seg16AccX122 rho + rho 17121 * seg16AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17128 * (1 - 3021 * (rho 17122 * seg16AccX122 rho) * (rho 17121 * seg16AccY122 rho)) =
          (-1) * (rho 17122 * seg16AccX122 rho) - rho 17121 * seg16AccY122 rho +
            (seg16AccY122 rho - seg16AccX122 rho * (-1)) * (rho 17121 + rho 17122) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17128 * (1 - rho 17126) = rho 17123 - rho 17124 - rho 17125 := ha5
        _ = (-1) * rho 17124 - rho 17125 + (seg16AccY122 rho - seg16AccX122 rho * (-1)) * (rho 17121 + rho 17122) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX123 rho = seg16AccX122 rho - Bool.toZMod bit * (seg16AccX122 rho - rho 17127) := by
      have hd : rho 17129 = Bool.toZMod bit * (rho 17127 - seg16AccX122 rho) := by
        rw [← hbit, seg16LadderFlatX122_eq]
        unfold seg16LadderFlatX122
        linear_combination -r4557
      unfold seg16AccX123
      linear_combination hd
    have hsely : seg16AccY123 rho = seg16AccY122 rho - Bool.toZMod bit * (seg16AccY122 rho - rho 17128) := by
      have hd : rho 17130 = Bool.toZMod bit * (rho 17128 - seg16AccY122 rho) := by
        rw [← hbit, seg16LadderFlatY122_eq]
        unfold seg16LadderFlatY122
        linear_combination -r4558
      unfold seg16AccY123
      linear_combination hd
    have hd0 : rho 17121 * rho 17122 = rho 17131 := by linear_combination r4559
    have hd1 : rho 17121 * rho 17121 = rho 17132 := by linear_combination r4560
    have hd2 : rho 17122 * rho 17122 = rho 17133 := by linear_combination r4561
    have hd3 : rho 17134 * (rho 17122 * rho 17122 + rho 17121 * rho 17121 * (-1)) = 2 * (rho 17121 * rho 17122) := by
      rw [hd0, hd1, hd2]
      linear_combination r4562
    have hd4 : rho 17135 * (2 - (rho 17122 * rho 17122 + rho 17121 * rho 17121 * (-1))) = rho 17122 * rho 17122 - rho 17121 * rho 17121 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4563
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX122 rho : Seg16.F), (seg16AccY122 rho : Seg16.F)⟩
      ⟨(rho 17121 : Seg16.F), (rho 17122 : Seg16.F)⟩
      ⟨(rho 17127 : Seg16.F), (rho 17128 : Seg16.F)⟩
      ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
      ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg16_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15415 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4564 Seg16.relationLc650 Seg16.relationLc650Part0 Seg16.relationLc650Part1 Seg16.relationLc650Part2 Seg16.relationLc650Part3 Seg16.relationLc650Part4 Seg16.relationLc650Part5 Seg16.relationLc650Part6 Seg16.relationLc650Part7 at r4564
  unfold Seg16.relationRow4565 Seg16.relationLc651 Seg16.relationLc651Part0 Seg16.relationLc651Part1 Seg16.relationLc651Part2 Seg16.relationLc651Part3 at r4565
  unfold Seg16.relationRow4566 Seg16.relationLc652 Seg16.relationLc652Part0 Seg16.relationLc652Part1 Seg16.relationLc652Part2 Seg16.relationLc652Part3 at r4566
  unfold Seg16.relationRow4567 at r4567
  unfold Seg16.relationRow4568 at r4568
  unfold Seg16.relationRow4569 at r4569
  unfold Seg16.relationRow4570 Seg16.relationLc653 Seg16.relationLc653Part0 Seg16.relationLc653Part1 Seg16.relationLc653Part2 Seg16.relationLc653Part3 at r4570
  unfold Seg16.relationRow4571 Seg16.relationLc654 Seg16.relationLc654Part0 Seg16.relationLc654Part1 Seg16.relationLc654Part2 Seg16.relationLc654Part3 at r4571
  unfold Seg16.relationRow4572 at r4572
  unfold Seg16.relationRow4573 at r4573
  unfold Seg16.relationRow4574 at r4574
  unfold Seg16.relationRow4575 at r4575
  unfold Seg16.relationRow4576 at r4576
  have hrung123 (bit : Bool) (hbit : rho 15415 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
        ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩ := by
    have ha0 : (rho 17134 + rho 17135) * (seg16AccX123 rho + seg16AccY123 rho) = rho 17136 := by
      rw [seg16LadderFlatX123_eq, seg16LadderFlatY123_eq]
      unfold seg16LadderFlatX123 seg16LadderFlatY123
      linear_combination r4564
    have ha1 : rho 17135 * seg16AccX123 rho = rho 17137 := by
      rw [seg16LadderFlatX123_eq]
      unfold seg16LadderFlatX123
      linear_combination r4565
    have ha2 : rho 17134 * seg16AccY123 rho = rho 17138 := by
      rw [seg16LadderFlatY123_eq]
      unfold seg16LadderFlatY123
      linear_combination r4566
    have ha3 : 3021 * rho 17137 * rho 17138 = rho 17139 := by
      linear_combination r4567
    have ha4 : rho 17140 * (1 + rho 17139) = rho 17137 + rho 17138 := by
      linear_combination r4568
    have ha5 : rho 17141 * (1 - rho 17139) = rho 17136 - rho 17137 - rho 17138 := by
      linear_combination r4569
    have haddx :
        rho 17140 * (1 + 3021 * (rho 17135 * seg16AccX123 rho) * (rho 17134 * seg16AccY123 rho)) =
          rho 17135 * seg16AccX123 rho + rho 17134 * seg16AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17141 * (1 - 3021 * (rho 17135 * seg16AccX123 rho) * (rho 17134 * seg16AccY123 rho)) =
          (-1) * (rho 17135 * seg16AccX123 rho) - rho 17134 * seg16AccY123 rho +
            (seg16AccY123 rho - seg16AccX123 rho * (-1)) * (rho 17134 + rho 17135) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17141 * (1 - rho 17139) = rho 17136 - rho 17137 - rho 17138 := ha5
        _ = (-1) * rho 17137 - rho 17138 + (seg16AccY123 rho - seg16AccX123 rho * (-1)) * (rho 17134 + rho 17135) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX124 rho = seg16AccX123 rho - Bool.toZMod bit * (seg16AccX123 rho - rho 17140) := by
      have hd : rho 17142 = Bool.toZMod bit * (rho 17140 - seg16AccX123 rho) := by
        rw [← hbit, seg16LadderFlatX123_eq]
        unfold seg16LadderFlatX123
        linear_combination -r4570
      unfold seg16AccX124
      linear_combination hd
    have hsely : seg16AccY124 rho = seg16AccY123 rho - Bool.toZMod bit * (seg16AccY123 rho - rho 17141) := by
      have hd : rho 17143 = Bool.toZMod bit * (rho 17141 - seg16AccY123 rho) := by
        rw [← hbit, seg16LadderFlatY123_eq]
        unfold seg16LadderFlatY123
        linear_combination -r4571
      unfold seg16AccY124
      linear_combination hd
    have hd0 : rho 17134 * rho 17135 = rho 17144 := by linear_combination r4572
    have hd1 : rho 17134 * rho 17134 = rho 17145 := by linear_combination r4573
    have hd2 : rho 17135 * rho 17135 = rho 17146 := by linear_combination r4574
    have hd3 : rho 17147 * (rho 17135 * rho 17135 + rho 17134 * rho 17134 * (-1)) = 2 * (rho 17134 * rho 17135) := by
      rw [hd0, hd1, hd2]
      linear_combination r4575
    have hd4 : rho 17148 * (2 - (rho 17135 * rho 17135 + rho 17134 * rho 17134 * (-1))) = rho 17135 * rho 17135 - rho 17134 * rho 17134 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4576
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX123 rho : Seg16.F), (seg16AccY123 rho : Seg16.F)⟩
      ⟨(rho 17134 : Seg16.F), (rho 17135 : Seg16.F)⟩
      ⟨(rho 17140 : Seg16.F), (rho 17141 : Seg16.F)⟩
      ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
      ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg16_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15416 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4577 Seg16.relationLc655 Seg16.relationLc655Part0 Seg16.relationLc655Part1 Seg16.relationLc655Part2 Seg16.relationLc655Part3 Seg16.relationLc655Part4 Seg16.relationLc655Part5 Seg16.relationLc655Part6 Seg16.relationLc655Part7 at r4577
  unfold Seg16.relationRow4578 Seg16.relationLc656 Seg16.relationLc656Part0 Seg16.relationLc656Part1 Seg16.relationLc656Part2 Seg16.relationLc656Part3 at r4578
  unfold Seg16.relationRow4579 Seg16.relationLc657 Seg16.relationLc657Part0 Seg16.relationLc657Part1 Seg16.relationLc657Part2 Seg16.relationLc657Part3 at r4579
  unfold Seg16.relationRow4580 at r4580
  unfold Seg16.relationRow4581 at r4581
  unfold Seg16.relationRow4582 at r4582
  unfold Seg16.relationRow4583 Seg16.relationLc658 Seg16.relationLc658Part0 Seg16.relationLc658Part1 Seg16.relationLc658Part2 Seg16.relationLc658Part3 at r4583
  unfold Seg16.relationRow4584 Seg16.relationLc659 Seg16.relationLc659Part0 Seg16.relationLc659Part1 Seg16.relationLc659Part2 Seg16.relationLc659Part3 at r4584
  unfold Seg16.relationRow4585 at r4585
  unfold Seg16.relationRow4586 at r4586
  unfold Seg16.relationRow4587 at r4587
  unfold Seg16.relationRow4588 at r4588
  unfold Seg16.relationRow4589 at r4589
  have hrung124 (bit : Bool) (hbit : rho 15416 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
        ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩ := by
    have ha0 : (rho 17147 + rho 17148) * (seg16AccX124 rho + seg16AccY124 rho) = rho 17149 := by
      rw [seg16LadderFlatX124_eq, seg16LadderFlatY124_eq]
      unfold seg16LadderFlatX124 seg16LadderFlatY124
      linear_combination r4577
    have ha1 : rho 17148 * seg16AccX124 rho = rho 17150 := by
      rw [seg16LadderFlatX124_eq]
      unfold seg16LadderFlatX124
      linear_combination r4578
    have ha2 : rho 17147 * seg16AccY124 rho = rho 17151 := by
      rw [seg16LadderFlatY124_eq]
      unfold seg16LadderFlatY124
      linear_combination r4579
    have ha3 : 3021 * rho 17150 * rho 17151 = rho 17152 := by
      linear_combination r4580
    have ha4 : rho 17153 * (1 + rho 17152) = rho 17150 + rho 17151 := by
      linear_combination r4581
    have ha5 : rho 17154 * (1 - rho 17152) = rho 17149 - rho 17150 - rho 17151 := by
      linear_combination r4582
    have haddx :
        rho 17153 * (1 + 3021 * (rho 17148 * seg16AccX124 rho) * (rho 17147 * seg16AccY124 rho)) =
          rho 17148 * seg16AccX124 rho + rho 17147 * seg16AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17154 * (1 - 3021 * (rho 17148 * seg16AccX124 rho) * (rho 17147 * seg16AccY124 rho)) =
          (-1) * (rho 17148 * seg16AccX124 rho) - rho 17147 * seg16AccY124 rho +
            (seg16AccY124 rho - seg16AccX124 rho * (-1)) * (rho 17147 + rho 17148) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17154 * (1 - rho 17152) = rho 17149 - rho 17150 - rho 17151 := ha5
        _ = (-1) * rho 17150 - rho 17151 + (seg16AccY124 rho - seg16AccX124 rho * (-1)) * (rho 17147 + rho 17148) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX125 rho = seg16AccX124 rho - Bool.toZMod bit * (seg16AccX124 rho - rho 17153) := by
      have hd : rho 17155 = Bool.toZMod bit * (rho 17153 - seg16AccX124 rho) := by
        rw [← hbit, seg16LadderFlatX124_eq]
        unfold seg16LadderFlatX124
        linear_combination -r4583
      unfold seg16AccX125
      linear_combination hd
    have hsely : seg16AccY125 rho = seg16AccY124 rho - Bool.toZMod bit * (seg16AccY124 rho - rho 17154) := by
      have hd : rho 17156 = Bool.toZMod bit * (rho 17154 - seg16AccY124 rho) := by
        rw [← hbit, seg16LadderFlatY124_eq]
        unfold seg16LadderFlatY124
        linear_combination -r4584
      unfold seg16AccY125
      linear_combination hd
    have hd0 : rho 17147 * rho 17148 = rho 17157 := by linear_combination r4585
    have hd1 : rho 17147 * rho 17147 = rho 17158 := by linear_combination r4586
    have hd2 : rho 17148 * rho 17148 = rho 17159 := by linear_combination r4587
    have hd3 : rho 17160 * (rho 17148 * rho 17148 + rho 17147 * rho 17147 * (-1)) = 2 * (rho 17147 * rho 17148) := by
      rw [hd0, hd1, hd2]
      linear_combination r4588
    have hd4 : rho 17161 * (2 - (rho 17148 * rho 17148 + rho 17147 * rho 17147 * (-1))) = rho 17148 * rho 17148 - rho 17147 * rho 17147 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4589
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX124 rho : Seg16.F), (seg16AccY124 rho : Seg16.F)⟩
      ⟨(rho 17147 : Seg16.F), (rho 17148 : Seg16.F)⟩
      ⟨(rho 17153 : Seg16.F), (rho 17154 : Seg16.F)⟩
      ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
      ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg16_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15417 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4590 Seg16.relationLc660 Seg16.relationLc660Part0 Seg16.relationLc660Part1 Seg16.relationLc660Part2 Seg16.relationLc660Part3 Seg16.relationLc660Part4 Seg16.relationLc660Part5 Seg16.relationLc660Part6 Seg16.relationLc660Part7 at r4590
  unfold Seg16.relationRow4591 Seg16.relationLc661 Seg16.relationLc661Part0 Seg16.relationLc661Part1 Seg16.relationLc661Part2 Seg16.relationLc661Part3 at r4591
  unfold Seg16.relationRow4592 Seg16.relationLc662 Seg16.relationLc662Part0 Seg16.relationLc662Part1 Seg16.relationLc662Part2 Seg16.relationLc662Part3 at r4592
  unfold Seg16.relationRow4593 at r4593
  unfold Seg16.relationRow4594 at r4594
  unfold Seg16.relationRow4595 at r4595
  unfold Seg16.relationRow4596 Seg16.relationLc663 Seg16.relationLc663Part0 Seg16.relationLc663Part1 Seg16.relationLc663Part2 Seg16.relationLc663Part3 at r4596
  unfold Seg16.relationRow4597 Seg16.relationLc664 Seg16.relationLc664Part0 Seg16.relationLc664Part1 Seg16.relationLc664Part2 Seg16.relationLc664Part3 at r4597
  unfold Seg16.relationRow4598 at r4598
  unfold Seg16.relationRow4599 at r4599
  unfold Seg16.relationRow4600 at r4600
  unfold Seg16.relationRow4601 at r4601
  unfold Seg16.relationRow4602 at r4602
  have hrung125 (bit : Bool) (hbit : rho 15417 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
        ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩ := by
    have ha0 : (rho 17160 + rho 17161) * (seg16AccX125 rho + seg16AccY125 rho) = rho 17162 := by
      rw [seg16LadderFlatX125_eq, seg16LadderFlatY125_eq]
      unfold seg16LadderFlatX125 seg16LadderFlatY125
      linear_combination r4590
    have ha1 : rho 17161 * seg16AccX125 rho = rho 17163 := by
      rw [seg16LadderFlatX125_eq]
      unfold seg16LadderFlatX125
      linear_combination r4591
    have ha2 : rho 17160 * seg16AccY125 rho = rho 17164 := by
      rw [seg16LadderFlatY125_eq]
      unfold seg16LadderFlatY125
      linear_combination r4592
    have ha3 : 3021 * rho 17163 * rho 17164 = rho 17165 := by
      linear_combination r4593
    have ha4 : rho 17166 * (1 + rho 17165) = rho 17163 + rho 17164 := by
      linear_combination r4594
    have ha5 : rho 17167 * (1 - rho 17165) = rho 17162 - rho 17163 - rho 17164 := by
      linear_combination r4595
    have haddx :
        rho 17166 * (1 + 3021 * (rho 17161 * seg16AccX125 rho) * (rho 17160 * seg16AccY125 rho)) =
          rho 17161 * seg16AccX125 rho + rho 17160 * seg16AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17167 * (1 - 3021 * (rho 17161 * seg16AccX125 rho) * (rho 17160 * seg16AccY125 rho)) =
          (-1) * (rho 17161 * seg16AccX125 rho) - rho 17160 * seg16AccY125 rho +
            (seg16AccY125 rho - seg16AccX125 rho * (-1)) * (rho 17160 + rho 17161) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17167 * (1 - rho 17165) = rho 17162 - rho 17163 - rho 17164 := ha5
        _ = (-1) * rho 17163 - rho 17164 + (seg16AccY125 rho - seg16AccX125 rho * (-1)) * (rho 17160 + rho 17161) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX126 rho = seg16AccX125 rho - Bool.toZMod bit * (seg16AccX125 rho - rho 17166) := by
      have hd : rho 17168 = Bool.toZMod bit * (rho 17166 - seg16AccX125 rho) := by
        rw [← hbit, seg16LadderFlatX125_eq]
        unfold seg16LadderFlatX125
        linear_combination -r4596
      unfold seg16AccX126
      linear_combination hd
    have hsely : seg16AccY126 rho = seg16AccY125 rho - Bool.toZMod bit * (seg16AccY125 rho - rho 17167) := by
      have hd : rho 17169 = Bool.toZMod bit * (rho 17167 - seg16AccY125 rho) := by
        rw [← hbit, seg16LadderFlatY125_eq]
        unfold seg16LadderFlatY125
        linear_combination -r4597
      unfold seg16AccY126
      linear_combination hd
    have hd0 : rho 17160 * rho 17161 = rho 17170 := by linear_combination r4598
    have hd1 : rho 17160 * rho 17160 = rho 17171 := by linear_combination r4599
    have hd2 : rho 17161 * rho 17161 = rho 17172 := by linear_combination r4600
    have hd3 : rho 17173 * (rho 17161 * rho 17161 + rho 17160 * rho 17160 * (-1)) = 2 * (rho 17160 * rho 17161) := by
      rw [hd0, hd1, hd2]
      linear_combination r4601
    have hd4 : rho 17174 * (2 - (rho 17161 * rho 17161 + rho 17160 * rho 17160 * (-1))) = rho 17161 * rho 17161 - rho 17160 * rho 17160 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4602
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX125 rho : Seg16.F), (seg16AccY125 rho : Seg16.F)⟩
      ⟨(rho 17160 : Seg16.F), (rho 17161 : Seg16.F)⟩
      ⟨(rho 17166 : Seg16.F), (rho 17167 : Seg16.F)⟩
      ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
      ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg16_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15418 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4603 Seg16.relationLc665 Seg16.relationLc665Part0 Seg16.relationLc665Part1 Seg16.relationLc665Part2 Seg16.relationLc665Part3 Seg16.relationLc665Part4 Seg16.relationLc665Part5 Seg16.relationLc665Part6 Seg16.relationLc665Part7 at r4603
  unfold Seg16.relationRow4604 Seg16.relationLc666 Seg16.relationLc666Part0 Seg16.relationLc666Part1 Seg16.relationLc666Part2 Seg16.relationLc666Part3 at r4604
  unfold Seg16.relationRow4605 Seg16.relationLc667 Seg16.relationLc667Part0 Seg16.relationLc667Part1 Seg16.relationLc667Part2 Seg16.relationLc667Part3 at r4605
  unfold Seg16.relationRow4606 at r4606
  unfold Seg16.relationRow4607 at r4607
  unfold Seg16.relationRow4608 at r4608
  unfold Seg16.relationRow4609 Seg16.relationLc668 Seg16.relationLc668Part0 Seg16.relationLc668Part1 Seg16.relationLc668Part2 Seg16.relationLc668Part3 at r4609
  unfold Seg16.relationRow4610 Seg16.relationLc669 Seg16.relationLc669Part0 Seg16.relationLc669Part1 Seg16.relationLc669Part2 Seg16.relationLc669Part3 at r4610
  unfold Seg16.relationRow4611 at r4611
  unfold Seg16.relationRow4612 at r4612
  unfold Seg16.relationRow4613 at r4613
  unfold Seg16.relationRow4614 at r4614
  unfold Seg16.relationRow4615 at r4615
  have hrung126 (bit : Bool) (hbit : rho 15418 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
        ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩ := by
    have ha0 : (rho 17173 + rho 17174) * (seg16AccX126 rho + seg16AccY126 rho) = rho 17175 := by
      rw [seg16LadderFlatX126_eq, seg16LadderFlatY126_eq]
      unfold seg16LadderFlatX126 seg16LadderFlatY126
      linear_combination r4603
    have ha1 : rho 17174 * seg16AccX126 rho = rho 17176 := by
      rw [seg16LadderFlatX126_eq]
      unfold seg16LadderFlatX126
      linear_combination r4604
    have ha2 : rho 17173 * seg16AccY126 rho = rho 17177 := by
      rw [seg16LadderFlatY126_eq]
      unfold seg16LadderFlatY126
      linear_combination r4605
    have ha3 : 3021 * rho 17176 * rho 17177 = rho 17178 := by
      linear_combination r4606
    have ha4 : rho 17179 * (1 + rho 17178) = rho 17176 + rho 17177 := by
      linear_combination r4607
    have ha5 : rho 17180 * (1 - rho 17178) = rho 17175 - rho 17176 - rho 17177 := by
      linear_combination r4608
    have haddx :
        rho 17179 * (1 + 3021 * (rho 17174 * seg16AccX126 rho) * (rho 17173 * seg16AccY126 rho)) =
          rho 17174 * seg16AccX126 rho + rho 17173 * seg16AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17180 * (1 - 3021 * (rho 17174 * seg16AccX126 rho) * (rho 17173 * seg16AccY126 rho)) =
          (-1) * (rho 17174 * seg16AccX126 rho) - rho 17173 * seg16AccY126 rho +
            (seg16AccY126 rho - seg16AccX126 rho * (-1)) * (rho 17173 + rho 17174) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17180 * (1 - rho 17178) = rho 17175 - rho 17176 - rho 17177 := ha5
        _ = (-1) * rho 17176 - rho 17177 + (seg16AccY126 rho - seg16AccX126 rho * (-1)) * (rho 17173 + rho 17174) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX127 rho = seg16AccX126 rho - Bool.toZMod bit * (seg16AccX126 rho - rho 17179) := by
      have hd : rho 17181 = Bool.toZMod bit * (rho 17179 - seg16AccX126 rho) := by
        rw [← hbit, seg16LadderFlatX126_eq]
        unfold seg16LadderFlatX126
        linear_combination -r4609
      unfold seg16AccX127
      linear_combination hd
    have hsely : seg16AccY127 rho = seg16AccY126 rho - Bool.toZMod bit * (seg16AccY126 rho - rho 17180) := by
      have hd : rho 17182 = Bool.toZMod bit * (rho 17180 - seg16AccY126 rho) := by
        rw [← hbit, seg16LadderFlatY126_eq]
        unfold seg16LadderFlatY126
        linear_combination -r4610
      unfold seg16AccY127
      linear_combination hd
    have hd0 : rho 17173 * rho 17174 = rho 17183 := by linear_combination r4611
    have hd1 : rho 17173 * rho 17173 = rho 17184 := by linear_combination r4612
    have hd2 : rho 17174 * rho 17174 = rho 17185 := by linear_combination r4613
    have hd3 : rho 17186 * (rho 17174 * rho 17174 + rho 17173 * rho 17173 * (-1)) = 2 * (rho 17173 * rho 17174) := by
      rw [hd0, hd1, hd2]
      linear_combination r4614
    have hd4 : rho 17187 * (2 - (rho 17174 * rho 17174 + rho 17173 * rho 17173 * (-1))) = rho 17174 * rho 17174 - rho 17173 * rho 17173 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4615
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX126 rho : Seg16.F), (seg16AccY126 rho : Seg16.F)⟩
      ⟨(rho 17173 : Seg16.F), (rho 17174 : Seg16.F)⟩
      ⟨(rho 17179 : Seg16.F), (rho 17180 : Seg16.F)⟩
      ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
      ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg16_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15419 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩ := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow4616 Seg16.relationLc670 Seg16.relationLc670Part0 Seg16.relationLc670Part1 Seg16.relationLc670Part2 Seg16.relationLc670Part3 Seg16.relationLc670Part4 Seg16.relationLc670Part5 Seg16.relationLc670Part6 Seg16.relationLc670Part7 at r4616
  unfold Seg16.relationRow4617 Seg16.relationLc671 Seg16.relationLc671Part0 Seg16.relationLc671Part1 Seg16.relationLc671Part2 Seg16.relationLc671Part3 at r4617
  unfold Seg16.relationRow4618 Seg16.relationLc672 Seg16.relationLc672Part0 Seg16.relationLc672Part1 Seg16.relationLc672Part2 Seg16.relationLc672Part3 at r4618
  unfold Seg16.relationRow4619 at r4619
  unfold Seg16.relationRow4620 at r4620
  unfold Seg16.relationRow4621 at r4621
  unfold Seg16.relationRow4622 Seg16.relationLc673 Seg16.relationLc673Part0 Seg16.relationLc673Part1 Seg16.relationLc673Part2 Seg16.relationLc673Part3 at r4622
  unfold Seg16.relationRow4623 Seg16.relationLc674 Seg16.relationLc674Part0 Seg16.relationLc674Part1 Seg16.relationLc674Part2 Seg16.relationLc674Part3 Seg16.relationLc674Part4 at r4623
  unfold Seg16.relationRow4624 at r4624
  unfold Seg16.relationRow4625 at r4625
  unfold Seg16.relationRow4626 at r4626
  unfold Seg16.relationRow4627 at r4627
  unfold Seg16.relationRow4628 at r4628
  have hrung127 (bit : Bool) (hbit : rho 15419 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
        ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
        ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
        ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩ := by
    have ha0 : (rho 17186 + rho 17187) * (seg16AccX127 rho + seg16AccY127 rho) = rho 17188 := by
      rw [seg16LadderFlatX127_eq, seg16LadderFlatY127_eq]
      unfold seg16LadderFlatX127 seg16LadderFlatY127
      linear_combination r4616
    have ha1 : rho 17187 * seg16AccX127 rho = rho 17189 := by
      rw [seg16LadderFlatX127_eq]
      unfold seg16LadderFlatX127
      linear_combination r4617
    have ha2 : rho 17186 * seg16AccY127 rho = rho 17190 := by
      rw [seg16LadderFlatY127_eq]
      unfold seg16LadderFlatY127
      linear_combination r4618
    have ha3 : 3021 * rho 17189 * rho 17190 = rho 17191 := by
      linear_combination r4619
    have ha4 : rho 17192 * (1 + rho 17191) = rho 17189 + rho 17190 := by
      linear_combination r4620
    have ha5 : rho 17193 * (1 - rho 17191) = rho 17188 - rho 17189 - rho 17190 := by
      linear_combination r4621
    have haddx :
        rho 17192 * (1 + 3021 * (rho 17187 * seg16AccX127 rho) * (rho 17186 * seg16AccY127 rho)) =
          rho 17187 * seg16AccX127 rho + rho 17186 * seg16AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17193 * (1 - 3021 * (rho 17187 * seg16AccX127 rho) * (rho 17186 * seg16AccY127 rho)) =
          (-1) * (rho 17187 * seg16AccX127 rho) - rho 17186 * seg16AccY127 rho +
            (seg16AccY127 rho - seg16AccX127 rho * (-1)) * (rho 17186 + rho 17187) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17193 * (1 - rho 17191) = rho 17188 - rho 17189 - rho 17190 := ha5
        _ = (-1) * rho 17189 - rho 17190 + (seg16AccY127 rho - seg16AccX127 rho * (-1)) * (rho 17186 + rho 17187) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX128 rho = seg16AccX127 rho - Bool.toZMod bit * (seg16AccX127 rho - rho 17192) := by
      have hd : rho 17194 = Bool.toZMod bit * (rho 17192 - seg16AccX127 rho) := by
        rw [← hbit, seg16LadderFlatX127_eq]
        unfold seg16LadderFlatX127
        linear_combination -r4622
      unfold seg16AccX128
      linear_combination hd
    have hsely : seg16AccY128 rho = seg16AccY127 rho - Bool.toZMod bit * (seg16AccY127 rho - rho 17193) := by
      have hd : rho 17195 = Bool.toZMod bit * (rho 17193 - seg16AccY127 rho) := by
        rw [← hbit, seg16LadderFlatY127_eq]
        unfold seg16LadderFlatY127
        linear_combination -r4623
      unfold seg16AccY128
      linear_combination hd
    have hd0 : rho 17186 * rho 17187 = rho 17196 := by linear_combination r4624
    have hd1 : rho 17186 * rho 17186 = rho 17197 := by linear_combination r4625
    have hd2 : rho 17187 * rho 17187 = rho 17198 := by linear_combination r4626
    have hd3 : rho 17199 * (rho 17187 * rho 17187 + rho 17186 * rho 17186 * (-1)) = 2 * (rho 17186 * rho 17187) := by
      rw [hd0, hd1, hd2]
      linear_combination r4627
    have hd4 : rho 17200 * (2 - (rho 17187 * rho 17187 + rho 17186 * rho 17186 * (-1))) = rho 17187 * rho 17187 - rho 17186 * rho 17186 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX127 rho : Seg16.F), (seg16AccY127 rho : Seg16.F)⟩
      ⟨(rho 17186 : Seg16.F), (rho 17187 : Seg16.F)⟩
      ⟨(rho 17192 : Seg16.F), (rho 17193 : Seg16.F)⟩
      ⟨(seg16AccX128 rho : Seg16.F), (seg16AccY128 rho : Seg16.F)⟩
      ⟨(rho 17199 : Seg16.F), (rho 17200 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg16_hstep_c3 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 96 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg16_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg16_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
  · exact seg16_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg16_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg16_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg16_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg16_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg16_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg16_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg16_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg16_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg16_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg16_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
  · exact seg16_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg16_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg16_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg16_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg16_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg16_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg16_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg16_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg16_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg16_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg16_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
  · exact seg16_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg16_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg16_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg16_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg16_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg16_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg16_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
