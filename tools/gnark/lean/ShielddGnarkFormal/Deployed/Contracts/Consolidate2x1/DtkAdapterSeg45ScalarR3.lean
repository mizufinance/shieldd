import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41044 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4213 Seg45.relationLc515 Seg45.relationLc515Part0 Seg45.relationLc515Part1 Seg45.relationLc515Part2 Seg45.relationLc515Part3 Seg45.relationLc515Part4 Seg45.relationLc515Part5 Seg45.relationLc515Part6 at r4213
  unfold Seg45.relationRow4214 Seg45.relationLc516 Seg45.relationLc516Part0 Seg45.relationLc516Part1 Seg45.relationLc516Part2 at r4214
  unfold Seg45.relationRow4215 Seg45.relationLc517 Seg45.relationLc517Part0 Seg45.relationLc517Part1 Seg45.relationLc517Part2 Seg45.relationLc517Part3 at r4215
  unfold Seg45.relationRow4216 at r4216
  unfold Seg45.relationRow4217 at r4217
  unfold Seg45.relationRow4218 at r4218
  unfold Seg45.relationRow4219 Seg45.relationLc518 Seg45.relationLc518Part0 Seg45.relationLc518Part1 Seg45.relationLc518Part2 Seg45.relationLc518Part3 at r4219
  unfold Seg45.relationRow4220 Seg45.relationLc519 Seg45.relationLc519Part0 Seg45.relationLc519Part1 Seg45.relationLc519Part2 Seg45.relationLc519Part3 at r4220
  unfold Seg45.relationRow4221 at r4221
  unfold Seg45.relationRow4222 at r4222
  unfold Seg45.relationRow4223 at r4223
  unfold Seg45.relationRow4224 at r4224
  unfold Seg45.relationRow4225 at r4225
  have hrung96 (bit : Bool) (hbit : rho 41044 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
        ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩ := by
    have ha0 : (rho 42439 + rho 42440) * (seg45AccX96 rho + seg45AccY96 rho) = rho 42441 := by
      rw [seg45LadderFlatX96_eq, seg45LadderFlatY96_eq]
      unfold seg45LadderFlatX96 seg45LadderFlatY96
      linear_combination r4213
    have ha1 : rho 42440 * seg45AccX96 rho = rho 42442 := by
      rw [seg45LadderFlatX96_eq]
      unfold seg45LadderFlatX96
      linear_combination r4214
    have ha2 : rho 42439 * seg45AccY96 rho = rho 42443 := by
      rw [seg45LadderFlatY96_eq]
      unfold seg45LadderFlatY96
      linear_combination r4215
    have ha3 : 3021 * rho 42442 * rho 42443 = rho 42444 := by
      linear_combination r4216
    have ha4 : rho 42445 * (1 + rho 42444) = rho 42442 + rho 42443 := by
      linear_combination r4217
    have ha5 : rho 42446 * (1 - rho 42444) = rho 42441 - rho 42442 - rho 42443 := by
      linear_combination r4218
    have haddx :
        rho 42445 * (1 + 3021 * (rho 42440 * seg45AccX96 rho) * (rho 42439 * seg45AccY96 rho)) =
          rho 42440 * seg45AccX96 rho + rho 42439 * seg45AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42446 * (1 - 3021 * (rho 42440 * seg45AccX96 rho) * (rho 42439 * seg45AccY96 rho)) =
          (-1) * (rho 42440 * seg45AccX96 rho) - rho 42439 * seg45AccY96 rho +
            (seg45AccY96 rho - seg45AccX96 rho * (-1)) * (rho 42439 + rho 42440) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42446 * (1 - rho 42444) = rho 42441 - rho 42442 - rho 42443 := ha5
        _ = (-1) * rho 42442 - rho 42443 + (seg45AccY96 rho - seg45AccX96 rho * (-1)) * (rho 42439 + rho 42440) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX97 rho = seg45AccX96 rho - Bool.toZMod bit * (seg45AccX96 rho - rho 42445) := by
      have hd : rho 42447 = Bool.toZMod bit * (rho 42445 - seg45AccX96 rho) := by
        rw [← hbit, seg45LadderFlatX96_eq]
        unfold seg45LadderFlatX96
        linear_combination -r4219
      unfold seg45AccX97
      linear_combination hd
    have hsely : seg45AccY97 rho = seg45AccY96 rho - Bool.toZMod bit * (seg45AccY96 rho - rho 42446) := by
      have hd : rho 42448 = Bool.toZMod bit * (rho 42446 - seg45AccY96 rho) := by
        rw [← hbit, seg45LadderFlatY96_eq]
        unfold seg45LadderFlatY96
        linear_combination -r4220
      unfold seg45AccY97
      linear_combination hd
    have hd0 : rho 42439 * rho 42440 = rho 42449 := by linear_combination r4221
    have hd1 : rho 42439 * rho 42439 = rho 42450 := by linear_combination r4222
    have hd2 : rho 42440 * rho 42440 = rho 42451 := by linear_combination r4223
    have hd3 : rho 42452 * (rho 42440 * rho 42440 + rho 42439 * rho 42439 * (-1)) = 2 * (rho 42439 * rho 42440) := by
      rw [hd0, hd1, hd2]
      linear_combination r4224
    have hd4 : rho 42453 * (2 - (rho 42440 * rho 42440 + rho 42439 * rho 42439 * (-1))) = rho 42440 * rho 42440 - rho 42439 * rho 42439 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4225
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX96 rho : Seg45.F), (seg45AccY96 rho : Seg45.F)⟩
      ⟨(rho 42439 : Seg45.F), (rho 42440 : Seg45.F)⟩
      ⟨(rho 42445 : Seg45.F), (rho 42446 : Seg45.F)⟩
      ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
      ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg45_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41045 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  unfold Seg45.relationRow4226 Seg45.relationLc520 Seg45.relationLc520Part0 Seg45.relationLc520Part1 Seg45.relationLc520Part2 Seg45.relationLc520Part3 Seg45.relationLc520Part4 Seg45.relationLc520Part5 Seg45.relationLc520Part6 at r4226
  unfold Seg45.relationRow4227 Seg45.relationLc521 Seg45.relationLc521Part0 Seg45.relationLc521Part1 Seg45.relationLc521Part2 Seg45.relationLc521Part3 at r4227
  unfold Seg45.relationRow4228 Seg45.relationLc522 Seg45.relationLc522Part0 Seg45.relationLc522Part1 Seg45.relationLc522Part2 Seg45.relationLc522Part3 at r4228
  unfold Seg45.relationRow4229 at r4229
  unfold Seg45.relationRow4230 at r4230
  unfold Seg45.relationRow4231 at r4231
  unfold Seg45.relationRow4232 Seg45.relationLc523 Seg45.relationLc523Part0 Seg45.relationLc523Part1 Seg45.relationLc523Part2 Seg45.relationLc523Part3 at r4232
  unfold Seg45.relationRow4233 Seg45.relationLc524 Seg45.relationLc524Part0 Seg45.relationLc524Part1 Seg45.relationLc524Part2 Seg45.relationLc524Part3 at r4233
  unfold Seg45.relationRow4234 at r4234
  unfold Seg45.relationRow4235 at r4235
  unfold Seg45.relationRow4236 at r4236
  unfold Seg45.relationRow4237 at r4237
  unfold Seg45.relationRow4238 at r4238
  have hrung97 (bit : Bool) (hbit : rho 41045 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
        ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩ := by
    have ha0 : (rho 42452 + rho 42453) * (seg45AccX97 rho + seg45AccY97 rho) = rho 42454 := by
      rw [seg45LadderFlatX97_eq, seg45LadderFlatY97_eq]
      unfold seg45LadderFlatX97 seg45LadderFlatY97
      linear_combination r4226
    have ha1 : rho 42453 * seg45AccX97 rho = rho 42455 := by
      rw [seg45LadderFlatX97_eq]
      unfold seg45LadderFlatX97
      linear_combination r4227
    have ha2 : rho 42452 * seg45AccY97 rho = rho 42456 := by
      rw [seg45LadderFlatY97_eq]
      unfold seg45LadderFlatY97
      linear_combination r4228
    have ha3 : 3021 * rho 42455 * rho 42456 = rho 42457 := by
      linear_combination r4229
    have ha4 : rho 42458 * (1 + rho 42457) = rho 42455 + rho 42456 := by
      linear_combination r4230
    have ha5 : rho 42459 * (1 - rho 42457) = rho 42454 - rho 42455 - rho 42456 := by
      linear_combination r4231
    have haddx :
        rho 42458 * (1 + 3021 * (rho 42453 * seg45AccX97 rho) * (rho 42452 * seg45AccY97 rho)) =
          rho 42453 * seg45AccX97 rho + rho 42452 * seg45AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42459 * (1 - 3021 * (rho 42453 * seg45AccX97 rho) * (rho 42452 * seg45AccY97 rho)) =
          (-1) * (rho 42453 * seg45AccX97 rho) - rho 42452 * seg45AccY97 rho +
            (seg45AccY97 rho - seg45AccX97 rho * (-1)) * (rho 42452 + rho 42453) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42459 * (1 - rho 42457) = rho 42454 - rho 42455 - rho 42456 := ha5
        _ = (-1) * rho 42455 - rho 42456 + (seg45AccY97 rho - seg45AccX97 rho * (-1)) * (rho 42452 + rho 42453) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX98 rho = seg45AccX97 rho - Bool.toZMod bit * (seg45AccX97 rho - rho 42458) := by
      have hd : rho 42460 = Bool.toZMod bit * (rho 42458 - seg45AccX97 rho) := by
        rw [← hbit, seg45LadderFlatX97_eq]
        unfold seg45LadderFlatX97
        linear_combination -r4232
      unfold seg45AccX98
      linear_combination hd
    have hsely : seg45AccY98 rho = seg45AccY97 rho - Bool.toZMod bit * (seg45AccY97 rho - rho 42459) := by
      have hd : rho 42461 = Bool.toZMod bit * (rho 42459 - seg45AccY97 rho) := by
        rw [← hbit, seg45LadderFlatY97_eq]
        unfold seg45LadderFlatY97
        linear_combination -r4233
      unfold seg45AccY98
      linear_combination hd
    have hd0 : rho 42452 * rho 42453 = rho 42462 := by linear_combination r4234
    have hd1 : rho 42452 * rho 42452 = rho 42463 := by linear_combination r4235
    have hd2 : rho 42453 * rho 42453 = rho 42464 := by linear_combination r4236
    have hd3 : rho 42465 * (rho 42453 * rho 42453 + rho 42452 * rho 42452 * (-1)) = 2 * (rho 42452 * rho 42453) := by
      rw [hd0, hd1, hd2]
      linear_combination r4237
    have hd4 : rho 42466 * (2 - (rho 42453 * rho 42453 + rho 42452 * rho 42452 * (-1))) = rho 42453 * rho 42453 - rho 42452 * rho 42452 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4238
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX97 rho : Seg45.F), (seg45AccY97 rho : Seg45.F)⟩
      ⟨(rho 42452 : Seg45.F), (rho 42453 : Seg45.F)⟩
      ⟨(rho 42458 : Seg45.F), (rho 42459 : Seg45.F)⟩
      ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
      ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg45_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41046 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4239 Seg45.relationLc525 Seg45.relationLc525Part0 Seg45.relationLc525Part1 Seg45.relationLc525Part2 Seg45.relationLc525Part3 Seg45.relationLc525Part4 Seg45.relationLc525Part5 Seg45.relationLc525Part6 at r4239
  unfold Seg45.relationRow4240 Seg45.relationLc526 Seg45.relationLc526Part0 Seg45.relationLc526Part1 Seg45.relationLc526Part2 Seg45.relationLc526Part3 at r4240
  unfold Seg45.relationRow4241 Seg45.relationLc527 Seg45.relationLc527Part0 Seg45.relationLc527Part1 Seg45.relationLc527Part2 Seg45.relationLc527Part3 at r4241
  unfold Seg45.relationRow4242 at r4242
  unfold Seg45.relationRow4243 at r4243
  unfold Seg45.relationRow4244 at r4244
  unfold Seg45.relationRow4245 Seg45.relationLc528 Seg45.relationLc528Part0 Seg45.relationLc528Part1 Seg45.relationLc528Part2 Seg45.relationLc528Part3 at r4245
  unfold Seg45.relationRow4246 Seg45.relationLc529 Seg45.relationLc529Part0 Seg45.relationLc529Part1 Seg45.relationLc529Part2 Seg45.relationLc529Part3 at r4246
  unfold Seg45.relationRow4247 at r4247
  unfold Seg45.relationRow4248 at r4248
  unfold Seg45.relationRow4249 at r4249
  unfold Seg45.relationRow4250 at r4250
  unfold Seg45.relationRow4251 at r4251
  have hrung98 (bit : Bool) (hbit : rho 41046 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
        ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩ := by
    have ha0 : (rho 42465 + rho 42466) * (seg45AccX98 rho + seg45AccY98 rho) = rho 42467 := by
      rw [seg45LadderFlatX98_eq, seg45LadderFlatY98_eq]
      unfold seg45LadderFlatX98 seg45LadderFlatY98
      linear_combination r4239
    have ha1 : rho 42466 * seg45AccX98 rho = rho 42468 := by
      rw [seg45LadderFlatX98_eq]
      unfold seg45LadderFlatX98
      linear_combination r4240
    have ha2 : rho 42465 * seg45AccY98 rho = rho 42469 := by
      rw [seg45LadderFlatY98_eq]
      unfold seg45LadderFlatY98
      linear_combination r4241
    have ha3 : 3021 * rho 42468 * rho 42469 = rho 42470 := by
      linear_combination r4242
    have ha4 : rho 42471 * (1 + rho 42470) = rho 42468 + rho 42469 := by
      linear_combination r4243
    have ha5 : rho 42472 * (1 - rho 42470) = rho 42467 - rho 42468 - rho 42469 := by
      linear_combination r4244
    have haddx :
        rho 42471 * (1 + 3021 * (rho 42466 * seg45AccX98 rho) * (rho 42465 * seg45AccY98 rho)) =
          rho 42466 * seg45AccX98 rho + rho 42465 * seg45AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42472 * (1 - 3021 * (rho 42466 * seg45AccX98 rho) * (rho 42465 * seg45AccY98 rho)) =
          (-1) * (rho 42466 * seg45AccX98 rho) - rho 42465 * seg45AccY98 rho +
            (seg45AccY98 rho - seg45AccX98 rho * (-1)) * (rho 42465 + rho 42466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42472 * (1 - rho 42470) = rho 42467 - rho 42468 - rho 42469 := ha5
        _ = (-1) * rho 42468 - rho 42469 + (seg45AccY98 rho - seg45AccX98 rho * (-1)) * (rho 42465 + rho 42466) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX99 rho = seg45AccX98 rho - Bool.toZMod bit * (seg45AccX98 rho - rho 42471) := by
      have hd : rho 42473 = Bool.toZMod bit * (rho 42471 - seg45AccX98 rho) := by
        rw [← hbit, seg45LadderFlatX98_eq]
        unfold seg45LadderFlatX98
        linear_combination -r4245
      unfold seg45AccX99
      linear_combination hd
    have hsely : seg45AccY99 rho = seg45AccY98 rho - Bool.toZMod bit * (seg45AccY98 rho - rho 42472) := by
      have hd : rho 42474 = Bool.toZMod bit * (rho 42472 - seg45AccY98 rho) := by
        rw [← hbit, seg45LadderFlatY98_eq]
        unfold seg45LadderFlatY98
        linear_combination -r4246
      unfold seg45AccY99
      linear_combination hd
    have hd0 : rho 42465 * rho 42466 = rho 42475 := by linear_combination r4247
    have hd1 : rho 42465 * rho 42465 = rho 42476 := by linear_combination r4248
    have hd2 : rho 42466 * rho 42466 = rho 42477 := by linear_combination r4249
    have hd3 : rho 42478 * (rho 42466 * rho 42466 + rho 42465 * rho 42465 * (-1)) = 2 * (rho 42465 * rho 42466) := by
      rw [hd0, hd1, hd2]
      linear_combination r4250
    have hd4 : rho 42479 * (2 - (rho 42466 * rho 42466 + rho 42465 * rho 42465 * (-1))) = rho 42466 * rho 42466 - rho 42465 * rho 42465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4251
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX98 rho : Seg45.F), (seg45AccY98 rho : Seg45.F)⟩
      ⟨(rho 42465 : Seg45.F), (rho 42466 : Seg45.F)⟩
      ⟨(rho 42471 : Seg45.F), (rho 42472 : Seg45.F)⟩
      ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
      ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg45_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41047 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4252 Seg45.relationLc530 Seg45.relationLc530Part0 Seg45.relationLc530Part1 Seg45.relationLc530Part2 Seg45.relationLc530Part3 Seg45.relationLc530Part4 Seg45.relationLc530Part5 Seg45.relationLc530Part6 at r4252
  unfold Seg45.relationRow4253 Seg45.relationLc531 Seg45.relationLc531Part0 Seg45.relationLc531Part1 Seg45.relationLc531Part2 Seg45.relationLc531Part3 at r4253
  unfold Seg45.relationRow4254 Seg45.relationLc532 Seg45.relationLc532Part0 Seg45.relationLc532Part1 Seg45.relationLc532Part2 Seg45.relationLc532Part3 at r4254
  unfold Seg45.relationRow4255 at r4255
  unfold Seg45.relationRow4256 at r4256
  unfold Seg45.relationRow4257 at r4257
  unfold Seg45.relationRow4258 Seg45.relationLc533 Seg45.relationLc533Part0 Seg45.relationLc533Part1 Seg45.relationLc533Part2 Seg45.relationLc533Part3 at r4258
  unfold Seg45.relationRow4259 Seg45.relationLc534 Seg45.relationLc534Part0 Seg45.relationLc534Part1 Seg45.relationLc534Part2 Seg45.relationLc534Part3 at r4259
  unfold Seg45.relationRow4260 at r4260
  unfold Seg45.relationRow4261 at r4261
  unfold Seg45.relationRow4262 at r4262
  unfold Seg45.relationRow4263 at r4263
  unfold Seg45.relationRow4264 at r4264
  have hrung99 (bit : Bool) (hbit : rho 41047 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩ := by
    have ha0 : (rho 42478 + rho 42479) * (seg45AccX99 rho + seg45AccY99 rho) = rho 42480 := by
      rw [seg45LadderFlatX99_eq, seg45LadderFlatY99_eq]
      unfold seg45LadderFlatX99 seg45LadderFlatY99
      linear_combination r4252
    have ha1 : rho 42479 * seg45AccX99 rho = rho 42481 := by
      rw [seg45LadderFlatX99_eq]
      unfold seg45LadderFlatX99
      linear_combination r4253
    have ha2 : rho 42478 * seg45AccY99 rho = rho 42482 := by
      rw [seg45LadderFlatY99_eq]
      unfold seg45LadderFlatY99
      linear_combination r4254
    have ha3 : 3021 * rho 42481 * rho 42482 = rho 42483 := by
      linear_combination r4255
    have ha4 : rho 42484 * (1 + rho 42483) = rho 42481 + rho 42482 := by
      linear_combination r4256
    have ha5 : rho 42485 * (1 - rho 42483) = rho 42480 - rho 42481 - rho 42482 := by
      linear_combination r4257
    have haddx :
        rho 42484 * (1 + 3021 * (rho 42479 * seg45AccX99 rho) * (rho 42478 * seg45AccY99 rho)) =
          rho 42479 * seg45AccX99 rho + rho 42478 * seg45AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42485 * (1 - 3021 * (rho 42479 * seg45AccX99 rho) * (rho 42478 * seg45AccY99 rho)) =
          (-1) * (rho 42479 * seg45AccX99 rho) - rho 42478 * seg45AccY99 rho +
            (seg45AccY99 rho - seg45AccX99 rho * (-1)) * (rho 42478 + rho 42479) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42485 * (1 - rho 42483) = rho 42480 - rho 42481 - rho 42482 := ha5
        _ = (-1) * rho 42481 - rho 42482 + (seg45AccY99 rho - seg45AccX99 rho * (-1)) * (rho 42478 + rho 42479) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX100 rho = seg45AccX99 rho - Bool.toZMod bit * (seg45AccX99 rho - rho 42484) := by
      have hd : rho 42486 = Bool.toZMod bit * (rho 42484 - seg45AccX99 rho) := by
        rw [← hbit, seg45LadderFlatX99_eq]
        unfold seg45LadderFlatX99
        linear_combination -r4258
      unfold seg45AccX100
      linear_combination hd
    have hsely : seg45AccY100 rho = seg45AccY99 rho - Bool.toZMod bit * (seg45AccY99 rho - rho 42485) := by
      have hd : rho 42487 = Bool.toZMod bit * (rho 42485 - seg45AccY99 rho) := by
        rw [← hbit, seg45LadderFlatY99_eq]
        unfold seg45LadderFlatY99
        linear_combination -r4259
      unfold seg45AccY100
      linear_combination hd
    have hd0 : rho 42478 * rho 42479 = rho 42488 := by linear_combination r4260
    have hd1 : rho 42478 * rho 42478 = rho 42489 := by linear_combination r4261
    have hd2 : rho 42479 * rho 42479 = rho 42490 := by linear_combination r4262
    have hd3 : rho 42491 * (rho 42479 * rho 42479 + rho 42478 * rho 42478 * (-1)) = 2 * (rho 42478 * rho 42479) := by
      rw [hd0, hd1, hd2]
      linear_combination r4263
    have hd4 : rho 42492 * (2 - (rho 42479 * rho 42479 + rho 42478 * rho 42478 * (-1))) = rho 42479 * rho 42479 - rho 42478 * rho 42478 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
      ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
      ⟨(rho 42484 : Seg45.F), (rho 42485 : Seg45.F)⟩
      ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
      ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg45_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41048 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4265 Seg45.relationLc535 Seg45.relationLc535Part0 Seg45.relationLc535Part1 Seg45.relationLc535Part2 Seg45.relationLc535Part3 Seg45.relationLc535Part4 Seg45.relationLc535Part5 Seg45.relationLc535Part6 at r4265
  unfold Seg45.relationRow4266 Seg45.relationLc536 Seg45.relationLc536Part0 Seg45.relationLc536Part1 Seg45.relationLc536Part2 Seg45.relationLc536Part3 at r4266
  unfold Seg45.relationRow4267 Seg45.relationLc537 Seg45.relationLc537Part0 Seg45.relationLc537Part1 Seg45.relationLc537Part2 Seg45.relationLc537Part3 at r4267
  unfold Seg45.relationRow4268 at r4268
  unfold Seg45.relationRow4269 at r4269
  unfold Seg45.relationRow4270 at r4270
  unfold Seg45.relationRow4271 Seg45.relationLc538 Seg45.relationLc538Part0 Seg45.relationLc538Part1 Seg45.relationLc538Part2 Seg45.relationLc538Part3 at r4271
  unfold Seg45.relationRow4272 Seg45.relationLc539 Seg45.relationLc539Part0 Seg45.relationLc539Part1 Seg45.relationLc539Part2 Seg45.relationLc539Part3 at r4272
  unfold Seg45.relationRow4273 at r4273
  unfold Seg45.relationRow4274 at r4274
  unfold Seg45.relationRow4275 at r4275
  unfold Seg45.relationRow4276 at r4276
  unfold Seg45.relationRow4277 at r4277
  have hrung100 (bit : Bool) (hbit : rho 41048 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩ := by
    have ha0 : (rho 42491 + rho 42492) * (seg45AccX100 rho + seg45AccY100 rho) = rho 42493 := by
      rw [seg45LadderFlatX100_eq, seg45LadderFlatY100_eq]
      unfold seg45LadderFlatX100 seg45LadderFlatY100
      linear_combination r4265
    have ha1 : rho 42492 * seg45AccX100 rho = rho 42494 := by
      rw [seg45LadderFlatX100_eq]
      unfold seg45LadderFlatX100
      linear_combination r4266
    have ha2 : rho 42491 * seg45AccY100 rho = rho 42495 := by
      rw [seg45LadderFlatY100_eq]
      unfold seg45LadderFlatY100
      linear_combination r4267
    have ha3 : 3021 * rho 42494 * rho 42495 = rho 42496 := by
      linear_combination r4268
    have ha4 : rho 42497 * (1 + rho 42496) = rho 42494 + rho 42495 := by
      linear_combination r4269
    have ha5 : rho 42498 * (1 - rho 42496) = rho 42493 - rho 42494 - rho 42495 := by
      linear_combination r4270
    have haddx :
        rho 42497 * (1 + 3021 * (rho 42492 * seg45AccX100 rho) * (rho 42491 * seg45AccY100 rho)) =
          rho 42492 * seg45AccX100 rho + rho 42491 * seg45AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42498 * (1 - 3021 * (rho 42492 * seg45AccX100 rho) * (rho 42491 * seg45AccY100 rho)) =
          (-1) * (rho 42492 * seg45AccX100 rho) - rho 42491 * seg45AccY100 rho +
            (seg45AccY100 rho - seg45AccX100 rho * (-1)) * (rho 42491 + rho 42492) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42498 * (1 - rho 42496) = rho 42493 - rho 42494 - rho 42495 := ha5
        _ = (-1) * rho 42494 - rho 42495 + (seg45AccY100 rho - seg45AccX100 rho * (-1)) * (rho 42491 + rho 42492) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX101 rho = seg45AccX100 rho - Bool.toZMod bit * (seg45AccX100 rho - rho 42497) := by
      have hd : rho 42499 = Bool.toZMod bit * (rho 42497 - seg45AccX100 rho) := by
        rw [← hbit, seg45LadderFlatX100_eq]
        unfold seg45LadderFlatX100
        linear_combination -r4271
      unfold seg45AccX101
      linear_combination hd
    have hsely : seg45AccY101 rho = seg45AccY100 rho - Bool.toZMod bit * (seg45AccY100 rho - rho 42498) := by
      have hd : rho 42500 = Bool.toZMod bit * (rho 42498 - seg45AccY100 rho) := by
        rw [← hbit, seg45LadderFlatY100_eq]
        unfold seg45LadderFlatY100
        linear_combination -r4272
      unfold seg45AccY101
      linear_combination hd
    have hd0 : rho 42491 * rho 42492 = rho 42501 := by linear_combination r4273
    have hd1 : rho 42491 * rho 42491 = rho 42502 := by linear_combination r4274
    have hd2 : rho 42492 * rho 42492 = rho 42503 := by linear_combination r4275
    have hd3 : rho 42504 * (rho 42492 * rho 42492 + rho 42491 * rho 42491 * (-1)) = 2 * (rho 42491 * rho 42492) := by
      rw [hd0, hd1, hd2]
      linear_combination r4276
    have hd4 : rho 42505 * (2 - (rho 42492 * rho 42492 + rho 42491 * rho 42491 * (-1))) = rho 42492 * rho 42492 - rho 42491 * rho 42491 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4277
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
      ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
      ⟨(rho 42497 : Seg45.F), (rho 42498 : Seg45.F)⟩
      ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
      ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg45_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4278 Seg45.relationLc540 Seg45.relationLc540Part0 Seg45.relationLc540Part1 Seg45.relationLc540Part2 Seg45.relationLc540Part3 Seg45.relationLc540Part4 Seg45.relationLc540Part5 Seg45.relationLc540Part6 at r4278
  unfold Seg45.relationRow4279 Seg45.relationLc541 Seg45.relationLc541Part0 Seg45.relationLc541Part1 Seg45.relationLc541Part2 Seg45.relationLc541Part3 at r4279
  unfold Seg45.relationRow4280 Seg45.relationLc542 Seg45.relationLc542Part0 Seg45.relationLc542Part1 Seg45.relationLc542Part2 Seg45.relationLc542Part3 at r4280
  unfold Seg45.relationRow4281 at r4281
  unfold Seg45.relationRow4282 at r4282
  unfold Seg45.relationRow4283 at r4283
  unfold Seg45.relationRow4284 Seg45.relationLc543 Seg45.relationLc543Part0 Seg45.relationLc543Part1 Seg45.relationLc543Part2 Seg45.relationLc543Part3 at r4284
  unfold Seg45.relationRow4285 Seg45.relationLc544 Seg45.relationLc544Part0 Seg45.relationLc544Part1 Seg45.relationLc544Part2 Seg45.relationLc544Part3 at r4285
  unfold Seg45.relationRow4286 at r4286
  unfold Seg45.relationRow4287 at r4287
  unfold Seg45.relationRow4288 at r4288
  unfold Seg45.relationRow4289 at r4289
  unfold Seg45.relationRow4290 at r4290
  have hrung101 (bit : Bool) (hbit : rho 41049 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩ := by
    have ha0 : (rho 42504 + rho 42505) * (seg45AccX101 rho + seg45AccY101 rho) = rho 42506 := by
      rw [seg45LadderFlatX101_eq, seg45LadderFlatY101_eq]
      unfold seg45LadderFlatX101 seg45LadderFlatY101
      linear_combination r4278
    have ha1 : rho 42505 * seg45AccX101 rho = rho 42507 := by
      rw [seg45LadderFlatX101_eq]
      unfold seg45LadderFlatX101
      linear_combination r4279
    have ha2 : rho 42504 * seg45AccY101 rho = rho 42508 := by
      rw [seg45LadderFlatY101_eq]
      unfold seg45LadderFlatY101
      linear_combination r4280
    have ha3 : 3021 * rho 42507 * rho 42508 = rho 42509 := by
      linear_combination r4281
    have ha4 : rho 42510 * (1 + rho 42509) = rho 42507 + rho 42508 := by
      linear_combination r4282
    have ha5 : rho 42511 * (1 - rho 42509) = rho 42506 - rho 42507 - rho 42508 := by
      linear_combination r4283
    have haddx :
        rho 42510 * (1 + 3021 * (rho 42505 * seg45AccX101 rho) * (rho 42504 * seg45AccY101 rho)) =
          rho 42505 * seg45AccX101 rho + rho 42504 * seg45AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42511 * (1 - 3021 * (rho 42505 * seg45AccX101 rho) * (rho 42504 * seg45AccY101 rho)) =
          (-1) * (rho 42505 * seg45AccX101 rho) - rho 42504 * seg45AccY101 rho +
            (seg45AccY101 rho - seg45AccX101 rho * (-1)) * (rho 42504 + rho 42505) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42511 * (1 - rho 42509) = rho 42506 - rho 42507 - rho 42508 := ha5
        _ = (-1) * rho 42507 - rho 42508 + (seg45AccY101 rho - seg45AccX101 rho * (-1)) * (rho 42504 + rho 42505) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX102 rho = seg45AccX101 rho - Bool.toZMod bit * (seg45AccX101 rho - rho 42510) := by
      have hd : rho 42512 = Bool.toZMod bit * (rho 42510 - seg45AccX101 rho) := by
        rw [← hbit, seg45LadderFlatX101_eq]
        unfold seg45LadderFlatX101
        linear_combination -r4284
      unfold seg45AccX102
      linear_combination hd
    have hsely : seg45AccY102 rho = seg45AccY101 rho - Bool.toZMod bit * (seg45AccY101 rho - rho 42511) := by
      have hd : rho 42513 = Bool.toZMod bit * (rho 42511 - seg45AccY101 rho) := by
        rw [← hbit, seg45LadderFlatY101_eq]
        unfold seg45LadderFlatY101
        linear_combination -r4285
      unfold seg45AccY102
      linear_combination hd
    have hd0 : rho 42504 * rho 42505 = rho 42514 := by linear_combination r4286
    have hd1 : rho 42504 * rho 42504 = rho 42515 := by linear_combination r4287
    have hd2 : rho 42505 * rho 42505 = rho 42516 := by linear_combination r4288
    have hd3 : rho 42517 * (rho 42505 * rho 42505 + rho 42504 * rho 42504 * (-1)) = 2 * (rho 42504 * rho 42505) := by
      rw [hd0, hd1, hd2]
      linear_combination r4289
    have hd4 : rho 42518 * (2 - (rho 42505 * rho 42505 + rho 42504 * rho 42504 * (-1))) = rho 42505 * rho 42505 - rho 42504 * rho 42504 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4290
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
      ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
      ⟨(rho 42510 : Seg45.F), (rho 42511 : Seg45.F)⟩
      ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
      ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg45_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4291 Seg45.relationLc545 Seg45.relationLc545Part0 Seg45.relationLc545Part1 Seg45.relationLc545Part2 Seg45.relationLc545Part3 Seg45.relationLc545Part4 Seg45.relationLc545Part5 Seg45.relationLc545Part6 at r4291
  unfold Seg45.relationRow4292 Seg45.relationLc546 Seg45.relationLc546Part0 Seg45.relationLc546Part1 Seg45.relationLc546Part2 Seg45.relationLc546Part3 at r4292
  unfold Seg45.relationRow4293 Seg45.relationLc547 Seg45.relationLc547Part0 Seg45.relationLc547Part1 Seg45.relationLc547Part2 Seg45.relationLc547Part3 at r4293
  unfold Seg45.relationRow4294 at r4294
  unfold Seg45.relationRow4295 at r4295
  unfold Seg45.relationRow4296 at r4296
  unfold Seg45.relationRow4297 Seg45.relationLc548 Seg45.relationLc548Part0 Seg45.relationLc548Part1 Seg45.relationLc548Part2 Seg45.relationLc548Part3 at r4297
  unfold Seg45.relationRow4298 Seg45.relationLc549 Seg45.relationLc549Part0 Seg45.relationLc549Part1 Seg45.relationLc549Part2 Seg45.relationLc549Part3 at r4298
  unfold Seg45.relationRow4299 at r4299
  unfold Seg45.relationRow4300 at r4300
  unfold Seg45.relationRow4301 at r4301
  unfold Seg45.relationRow4302 at r4302
  unfold Seg45.relationRow4303 at r4303
  have hrung102 (bit : Bool) (hbit : rho 41050 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩ := by
    have ha0 : (rho 42517 + rho 42518) * (seg45AccX102 rho + seg45AccY102 rho) = rho 42519 := by
      rw [seg45LadderFlatX102_eq, seg45LadderFlatY102_eq]
      unfold seg45LadderFlatX102 seg45LadderFlatY102
      linear_combination r4291
    have ha1 : rho 42518 * seg45AccX102 rho = rho 42520 := by
      rw [seg45LadderFlatX102_eq]
      unfold seg45LadderFlatX102
      linear_combination r4292
    have ha2 : rho 42517 * seg45AccY102 rho = rho 42521 := by
      rw [seg45LadderFlatY102_eq]
      unfold seg45LadderFlatY102
      linear_combination r4293
    have ha3 : 3021 * rho 42520 * rho 42521 = rho 42522 := by
      linear_combination r4294
    have ha4 : rho 42523 * (1 + rho 42522) = rho 42520 + rho 42521 := by
      linear_combination r4295
    have ha5 : rho 42524 * (1 - rho 42522) = rho 42519 - rho 42520 - rho 42521 := by
      linear_combination r4296
    have haddx :
        rho 42523 * (1 + 3021 * (rho 42518 * seg45AccX102 rho) * (rho 42517 * seg45AccY102 rho)) =
          rho 42518 * seg45AccX102 rho + rho 42517 * seg45AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42524 * (1 - 3021 * (rho 42518 * seg45AccX102 rho) * (rho 42517 * seg45AccY102 rho)) =
          (-1) * (rho 42518 * seg45AccX102 rho) - rho 42517 * seg45AccY102 rho +
            (seg45AccY102 rho - seg45AccX102 rho * (-1)) * (rho 42517 + rho 42518) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42524 * (1 - rho 42522) = rho 42519 - rho 42520 - rho 42521 := ha5
        _ = (-1) * rho 42520 - rho 42521 + (seg45AccY102 rho - seg45AccX102 rho * (-1)) * (rho 42517 + rho 42518) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX103 rho = seg45AccX102 rho - Bool.toZMod bit * (seg45AccX102 rho - rho 42523) := by
      have hd : rho 42525 = Bool.toZMod bit * (rho 42523 - seg45AccX102 rho) := by
        rw [← hbit, seg45LadderFlatX102_eq]
        unfold seg45LadderFlatX102
        linear_combination -r4297
      unfold seg45AccX103
      linear_combination hd
    have hsely : seg45AccY103 rho = seg45AccY102 rho - Bool.toZMod bit * (seg45AccY102 rho - rho 42524) := by
      have hd : rho 42526 = Bool.toZMod bit * (rho 42524 - seg45AccY102 rho) := by
        rw [← hbit, seg45LadderFlatY102_eq]
        unfold seg45LadderFlatY102
        linear_combination -r4298
      unfold seg45AccY103
      linear_combination hd
    have hd0 : rho 42517 * rho 42518 = rho 42527 := by linear_combination r4299
    have hd1 : rho 42517 * rho 42517 = rho 42528 := by linear_combination r4300
    have hd2 : rho 42518 * rho 42518 = rho 42529 := by linear_combination r4301
    have hd3 : rho 42530 * (rho 42518 * rho 42518 + rho 42517 * rho 42517 * (-1)) = 2 * (rho 42517 * rho 42518) := by
      rw [hd0, hd1, hd2]
      linear_combination r4302
    have hd4 : rho 42531 * (2 - (rho 42518 * rho 42518 + rho 42517 * rho 42517 * (-1))) = rho 42518 * rho 42518 - rho 42517 * rho 42517 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4303
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
      ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
      ⟨(rho 42523 : Seg45.F), (rho 42524 : Seg45.F)⟩
      ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
      ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg45_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, _, _, _⟩
  unfold Seg45.relationRow4304 Seg45.relationLc550 Seg45.relationLc550Part0 Seg45.relationLc550Part1 Seg45.relationLc550Part2 Seg45.relationLc550Part3 Seg45.relationLc550Part4 Seg45.relationLc550Part5 Seg45.relationLc550Part6 at r4304
  unfold Seg45.relationRow4305 Seg45.relationLc551 Seg45.relationLc551Part0 Seg45.relationLc551Part1 Seg45.relationLc551Part2 Seg45.relationLc551Part3 at r4305
  unfold Seg45.relationRow4306 Seg45.relationLc552 Seg45.relationLc552Part0 Seg45.relationLc552Part1 Seg45.relationLc552Part2 Seg45.relationLc552Part3 at r4306
  unfold Seg45.relationRow4307 at r4307
  unfold Seg45.relationRow4308 at r4308
  unfold Seg45.relationRow4309 at r4309
  unfold Seg45.relationRow4310 Seg45.relationLc553 Seg45.relationLc553Part0 Seg45.relationLc553Part1 Seg45.relationLc553Part2 Seg45.relationLc553Part3 at r4310
  unfold Seg45.relationRow4311 Seg45.relationLc554 Seg45.relationLc554Part0 Seg45.relationLc554Part1 Seg45.relationLc554Part2 Seg45.relationLc554Part3 at r4311
  unfold Seg45.relationRow4312 at r4312
  unfold Seg45.relationRow4313 at r4313
  unfold Seg45.relationRow4314 at r4314
  unfold Seg45.relationRow4315 at r4315
  unfold Seg45.relationRow4316 at r4316
  have hrung103 (bit : Bool) (hbit : rho 41051 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩ := by
    have ha0 : (rho 42530 + rho 42531) * (seg45AccX103 rho + seg45AccY103 rho) = rho 42532 := by
      rw [seg45LadderFlatX103_eq, seg45LadderFlatY103_eq]
      unfold seg45LadderFlatX103 seg45LadderFlatY103
      linear_combination r4304
    have ha1 : rho 42531 * seg45AccX103 rho = rho 42533 := by
      rw [seg45LadderFlatX103_eq]
      unfold seg45LadderFlatX103
      linear_combination r4305
    have ha2 : rho 42530 * seg45AccY103 rho = rho 42534 := by
      rw [seg45LadderFlatY103_eq]
      unfold seg45LadderFlatY103
      linear_combination r4306
    have ha3 : 3021 * rho 42533 * rho 42534 = rho 42535 := by
      linear_combination r4307
    have ha4 : rho 42536 * (1 + rho 42535) = rho 42533 + rho 42534 := by
      linear_combination r4308
    have ha5 : rho 42537 * (1 - rho 42535) = rho 42532 - rho 42533 - rho 42534 := by
      linear_combination r4309
    have haddx :
        rho 42536 * (1 + 3021 * (rho 42531 * seg45AccX103 rho) * (rho 42530 * seg45AccY103 rho)) =
          rho 42531 * seg45AccX103 rho + rho 42530 * seg45AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42537 * (1 - 3021 * (rho 42531 * seg45AccX103 rho) * (rho 42530 * seg45AccY103 rho)) =
          (-1) * (rho 42531 * seg45AccX103 rho) - rho 42530 * seg45AccY103 rho +
            (seg45AccY103 rho - seg45AccX103 rho * (-1)) * (rho 42530 + rho 42531) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42537 * (1 - rho 42535) = rho 42532 - rho 42533 - rho 42534 := ha5
        _ = (-1) * rho 42533 - rho 42534 + (seg45AccY103 rho - seg45AccX103 rho * (-1)) * (rho 42530 + rho 42531) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX104 rho = seg45AccX103 rho - Bool.toZMod bit * (seg45AccX103 rho - rho 42536) := by
      have hd : rho 42538 = Bool.toZMod bit * (rho 42536 - seg45AccX103 rho) := by
        rw [← hbit, seg45LadderFlatX103_eq]
        unfold seg45LadderFlatX103
        linear_combination -r4310
      unfold seg45AccX104
      linear_combination hd
    have hsely : seg45AccY104 rho = seg45AccY103 rho - Bool.toZMod bit * (seg45AccY103 rho - rho 42537) := by
      have hd : rho 42539 = Bool.toZMod bit * (rho 42537 - seg45AccY103 rho) := by
        rw [← hbit, seg45LadderFlatY103_eq]
        unfold seg45LadderFlatY103
        linear_combination -r4311
      unfold seg45AccY104
      linear_combination hd
    have hd0 : rho 42530 * rho 42531 = rho 42540 := by linear_combination r4312
    have hd1 : rho 42530 * rho 42530 = rho 42541 := by linear_combination r4313
    have hd2 : rho 42531 * rho 42531 = rho 42542 := by linear_combination r4314
    have hd3 : rho 42543 * (rho 42531 * rho 42531 + rho 42530 * rho 42530 * (-1)) = 2 * (rho 42530 * rho 42531) := by
      rw [hd0, hd1, hd2]
      linear_combination r4315
    have hd4 : rho 42544 * (2 - (rho 42531 * rho 42531 + rho 42530 * rho 42530 * (-1))) = rho 42531 * rho 42531 - rho 42530 * rho 42530 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4316
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
      ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
      ⟨(rho 42536 : Seg45.F), (rho 42537 : Seg45.F)⟩
      ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
      ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg45_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4317, r4318, r4319⟩
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4317 Seg45.relationLc555 Seg45.relationLc555Part0 Seg45.relationLc555Part1 Seg45.relationLc555Part2 Seg45.relationLc555Part3 Seg45.relationLc555Part4 Seg45.relationLc555Part5 Seg45.relationLc555Part6 at r4317
  unfold Seg45.relationRow4318 Seg45.relationLc556 Seg45.relationLc556Part0 Seg45.relationLc556Part1 Seg45.relationLc556Part2 Seg45.relationLc556Part3 at r4318
  unfold Seg45.relationRow4319 Seg45.relationLc557 Seg45.relationLc557Part0 Seg45.relationLc557Part1 Seg45.relationLc557Part2 Seg45.relationLc557Part3 at r4319
  unfold Seg45.relationRow4320 at r4320
  unfold Seg45.relationRow4321 at r4321
  unfold Seg45.relationRow4322 at r4322
  unfold Seg45.relationRow4323 Seg45.relationLc558 Seg45.relationLc558Part0 Seg45.relationLc558Part1 Seg45.relationLc558Part2 Seg45.relationLc558Part3 at r4323
  unfold Seg45.relationRow4324 Seg45.relationLc559 Seg45.relationLc559Part0 Seg45.relationLc559Part1 Seg45.relationLc559Part2 Seg45.relationLc559Part3 at r4324
  unfold Seg45.relationRow4325 at r4325
  unfold Seg45.relationRow4326 at r4326
  unfold Seg45.relationRow4327 at r4327
  unfold Seg45.relationRow4328 at r4328
  unfold Seg45.relationRow4329 at r4329
  have hrung104 (bit : Bool) (hbit : rho 41052 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩ := by
    have ha0 : (rho 42543 + rho 42544) * (seg45AccX104 rho + seg45AccY104 rho) = rho 42545 := by
      rw [seg45LadderFlatX104_eq, seg45LadderFlatY104_eq]
      unfold seg45LadderFlatX104 seg45LadderFlatY104
      linear_combination r4317
    have ha1 : rho 42544 * seg45AccX104 rho = rho 42546 := by
      rw [seg45LadderFlatX104_eq]
      unfold seg45LadderFlatX104
      linear_combination r4318
    have ha2 : rho 42543 * seg45AccY104 rho = rho 42547 := by
      rw [seg45LadderFlatY104_eq]
      unfold seg45LadderFlatY104
      linear_combination r4319
    have ha3 : 3021 * rho 42546 * rho 42547 = rho 42548 := by
      linear_combination r4320
    have ha4 : rho 42549 * (1 + rho 42548) = rho 42546 + rho 42547 := by
      linear_combination r4321
    have ha5 : rho 42550 * (1 - rho 42548) = rho 42545 - rho 42546 - rho 42547 := by
      linear_combination r4322
    have haddx :
        rho 42549 * (1 + 3021 * (rho 42544 * seg45AccX104 rho) * (rho 42543 * seg45AccY104 rho)) =
          rho 42544 * seg45AccX104 rho + rho 42543 * seg45AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42550 * (1 - 3021 * (rho 42544 * seg45AccX104 rho) * (rho 42543 * seg45AccY104 rho)) =
          (-1) * (rho 42544 * seg45AccX104 rho) - rho 42543 * seg45AccY104 rho +
            (seg45AccY104 rho - seg45AccX104 rho * (-1)) * (rho 42543 + rho 42544) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42550 * (1 - rho 42548) = rho 42545 - rho 42546 - rho 42547 := ha5
        _ = (-1) * rho 42546 - rho 42547 + (seg45AccY104 rho - seg45AccX104 rho * (-1)) * (rho 42543 + rho 42544) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX105 rho = seg45AccX104 rho - Bool.toZMod bit * (seg45AccX104 rho - rho 42549) := by
      have hd : rho 42551 = Bool.toZMod bit * (rho 42549 - seg45AccX104 rho) := by
        rw [← hbit, seg45LadderFlatX104_eq]
        unfold seg45LadderFlatX104
        linear_combination -r4323
      unfold seg45AccX105
      linear_combination hd
    have hsely : seg45AccY105 rho = seg45AccY104 rho - Bool.toZMod bit * (seg45AccY104 rho - rho 42550) := by
      have hd : rho 42552 = Bool.toZMod bit * (rho 42550 - seg45AccY104 rho) := by
        rw [← hbit, seg45LadderFlatY104_eq]
        unfold seg45LadderFlatY104
        linear_combination -r4324
      unfold seg45AccY105
      linear_combination hd
    have hd0 : rho 42543 * rho 42544 = rho 42553 := by linear_combination r4325
    have hd1 : rho 42543 * rho 42543 = rho 42554 := by linear_combination r4326
    have hd2 : rho 42544 * rho 42544 = rho 42555 := by linear_combination r4327
    have hd3 : rho 42556 * (rho 42544 * rho 42544 + rho 42543 * rho 42543 * (-1)) = 2 * (rho 42543 * rho 42544) := by
      rw [hd0, hd1, hd2]
      linear_combination r4328
    have hd4 : rho 42557 * (2 - (rho 42544 * rho 42544 + rho 42543 * rho 42543 * (-1))) = rho 42544 * rho 42544 - rho 42543 * rho 42543 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4329
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
      ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
      ⟨(rho 42549 : Seg45.F), (rho 42550 : Seg45.F)⟩
      ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
      ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg45_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4330 Seg45.relationLc560 Seg45.relationLc560Part0 Seg45.relationLc560Part1 Seg45.relationLc560Part2 Seg45.relationLc560Part3 Seg45.relationLc560Part4 Seg45.relationLc560Part5 Seg45.relationLc560Part6 at r4330
  unfold Seg45.relationRow4331 Seg45.relationLc561 Seg45.relationLc561Part0 Seg45.relationLc561Part1 Seg45.relationLc561Part2 Seg45.relationLc561Part3 at r4331
  unfold Seg45.relationRow4332 Seg45.relationLc562 Seg45.relationLc562Part0 Seg45.relationLc562Part1 Seg45.relationLc562Part2 Seg45.relationLc562Part3 at r4332
  unfold Seg45.relationRow4333 at r4333
  unfold Seg45.relationRow4334 at r4334
  unfold Seg45.relationRow4335 at r4335
  unfold Seg45.relationRow4336 Seg45.relationLc563 Seg45.relationLc563Part0 Seg45.relationLc563Part1 Seg45.relationLc563Part2 Seg45.relationLc563Part3 at r4336
  unfold Seg45.relationRow4337 Seg45.relationLc564 Seg45.relationLc564Part0 Seg45.relationLc564Part1 Seg45.relationLc564Part2 Seg45.relationLc564Part3 at r4337
  unfold Seg45.relationRow4338 at r4338
  unfold Seg45.relationRow4339 at r4339
  unfold Seg45.relationRow4340 at r4340
  unfold Seg45.relationRow4341 at r4341
  unfold Seg45.relationRow4342 at r4342
  have hrung105 (bit : Bool) (hbit : rho 41053 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩ := by
    have ha0 : (rho 42556 + rho 42557) * (seg45AccX105 rho + seg45AccY105 rho) = rho 42558 := by
      rw [seg45LadderFlatX105_eq, seg45LadderFlatY105_eq]
      unfold seg45LadderFlatX105 seg45LadderFlatY105
      linear_combination r4330
    have ha1 : rho 42557 * seg45AccX105 rho = rho 42559 := by
      rw [seg45LadderFlatX105_eq]
      unfold seg45LadderFlatX105
      linear_combination r4331
    have ha2 : rho 42556 * seg45AccY105 rho = rho 42560 := by
      rw [seg45LadderFlatY105_eq]
      unfold seg45LadderFlatY105
      linear_combination r4332
    have ha3 : 3021 * rho 42559 * rho 42560 = rho 42561 := by
      linear_combination r4333
    have ha4 : rho 42562 * (1 + rho 42561) = rho 42559 + rho 42560 := by
      linear_combination r4334
    have ha5 : rho 42563 * (1 - rho 42561) = rho 42558 - rho 42559 - rho 42560 := by
      linear_combination r4335
    have haddx :
        rho 42562 * (1 + 3021 * (rho 42557 * seg45AccX105 rho) * (rho 42556 * seg45AccY105 rho)) =
          rho 42557 * seg45AccX105 rho + rho 42556 * seg45AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42563 * (1 - 3021 * (rho 42557 * seg45AccX105 rho) * (rho 42556 * seg45AccY105 rho)) =
          (-1) * (rho 42557 * seg45AccX105 rho) - rho 42556 * seg45AccY105 rho +
            (seg45AccY105 rho - seg45AccX105 rho * (-1)) * (rho 42556 + rho 42557) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42563 * (1 - rho 42561) = rho 42558 - rho 42559 - rho 42560 := ha5
        _ = (-1) * rho 42559 - rho 42560 + (seg45AccY105 rho - seg45AccX105 rho * (-1)) * (rho 42556 + rho 42557) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX106 rho = seg45AccX105 rho - Bool.toZMod bit * (seg45AccX105 rho - rho 42562) := by
      have hd : rho 42564 = Bool.toZMod bit * (rho 42562 - seg45AccX105 rho) := by
        rw [← hbit, seg45LadderFlatX105_eq]
        unfold seg45LadderFlatX105
        linear_combination -r4336
      unfold seg45AccX106
      linear_combination hd
    have hsely : seg45AccY106 rho = seg45AccY105 rho - Bool.toZMod bit * (seg45AccY105 rho - rho 42563) := by
      have hd : rho 42565 = Bool.toZMod bit * (rho 42563 - seg45AccY105 rho) := by
        rw [← hbit, seg45LadderFlatY105_eq]
        unfold seg45LadderFlatY105
        linear_combination -r4337
      unfold seg45AccY106
      linear_combination hd
    have hd0 : rho 42556 * rho 42557 = rho 42566 := by linear_combination r4338
    have hd1 : rho 42556 * rho 42556 = rho 42567 := by linear_combination r4339
    have hd2 : rho 42557 * rho 42557 = rho 42568 := by linear_combination r4340
    have hd3 : rho 42569 * (rho 42557 * rho 42557 + rho 42556 * rho 42556 * (-1)) = 2 * (rho 42556 * rho 42557) := by
      rw [hd0, hd1, hd2]
      linear_combination r4341
    have hd4 : rho 42570 * (2 - (rho 42557 * rho 42557 + rho 42556 * rho 42556 * (-1))) = rho 42557 * rho 42557 - rho 42556 * rho 42556 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4342
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
      ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
      ⟨(rho 42562 : Seg45.F), (rho 42563 : Seg45.F)⟩
      ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
      ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg45_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4343 Seg45.relationLc565 Seg45.relationLc565Part0 Seg45.relationLc565Part1 Seg45.relationLc565Part2 Seg45.relationLc565Part3 Seg45.relationLc565Part4 Seg45.relationLc565Part5 Seg45.relationLc565Part6 at r4343
  unfold Seg45.relationRow4344 Seg45.relationLc566 Seg45.relationLc566Part0 Seg45.relationLc566Part1 Seg45.relationLc566Part2 Seg45.relationLc566Part3 at r4344
  unfold Seg45.relationRow4345 Seg45.relationLc567 Seg45.relationLc567Part0 Seg45.relationLc567Part1 Seg45.relationLc567Part2 Seg45.relationLc567Part3 at r4345
  unfold Seg45.relationRow4346 at r4346
  unfold Seg45.relationRow4347 at r4347
  unfold Seg45.relationRow4348 at r4348
  unfold Seg45.relationRow4349 Seg45.relationLc568 Seg45.relationLc568Part0 Seg45.relationLc568Part1 Seg45.relationLc568Part2 Seg45.relationLc568Part3 at r4349
  unfold Seg45.relationRow4350 Seg45.relationLc569 Seg45.relationLc569Part0 Seg45.relationLc569Part1 Seg45.relationLc569Part2 Seg45.relationLc569Part3 at r4350
  unfold Seg45.relationRow4351 at r4351
  unfold Seg45.relationRow4352 at r4352
  unfold Seg45.relationRow4353 at r4353
  unfold Seg45.relationRow4354 at r4354
  unfold Seg45.relationRow4355 at r4355
  have hrung106 (bit : Bool) (hbit : rho 41054 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩ := by
    have ha0 : (rho 42569 + rho 42570) * (seg45AccX106 rho + seg45AccY106 rho) = rho 42571 := by
      rw [seg45LadderFlatX106_eq, seg45LadderFlatY106_eq]
      unfold seg45LadderFlatX106 seg45LadderFlatY106
      linear_combination r4343
    have ha1 : rho 42570 * seg45AccX106 rho = rho 42572 := by
      rw [seg45LadderFlatX106_eq]
      unfold seg45LadderFlatX106
      linear_combination r4344
    have ha2 : rho 42569 * seg45AccY106 rho = rho 42573 := by
      rw [seg45LadderFlatY106_eq]
      unfold seg45LadderFlatY106
      linear_combination r4345
    have ha3 : 3021 * rho 42572 * rho 42573 = rho 42574 := by
      linear_combination r4346
    have ha4 : rho 42575 * (1 + rho 42574) = rho 42572 + rho 42573 := by
      linear_combination r4347
    have ha5 : rho 42576 * (1 - rho 42574) = rho 42571 - rho 42572 - rho 42573 := by
      linear_combination r4348
    have haddx :
        rho 42575 * (1 + 3021 * (rho 42570 * seg45AccX106 rho) * (rho 42569 * seg45AccY106 rho)) =
          rho 42570 * seg45AccX106 rho + rho 42569 * seg45AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42576 * (1 - 3021 * (rho 42570 * seg45AccX106 rho) * (rho 42569 * seg45AccY106 rho)) =
          (-1) * (rho 42570 * seg45AccX106 rho) - rho 42569 * seg45AccY106 rho +
            (seg45AccY106 rho - seg45AccX106 rho * (-1)) * (rho 42569 + rho 42570) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42576 * (1 - rho 42574) = rho 42571 - rho 42572 - rho 42573 := ha5
        _ = (-1) * rho 42572 - rho 42573 + (seg45AccY106 rho - seg45AccX106 rho * (-1)) * (rho 42569 + rho 42570) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX107 rho = seg45AccX106 rho - Bool.toZMod bit * (seg45AccX106 rho - rho 42575) := by
      have hd : rho 42577 = Bool.toZMod bit * (rho 42575 - seg45AccX106 rho) := by
        rw [← hbit, seg45LadderFlatX106_eq]
        unfold seg45LadderFlatX106
        linear_combination -r4349
      unfold seg45AccX107
      linear_combination hd
    have hsely : seg45AccY107 rho = seg45AccY106 rho - Bool.toZMod bit * (seg45AccY106 rho - rho 42576) := by
      have hd : rho 42578 = Bool.toZMod bit * (rho 42576 - seg45AccY106 rho) := by
        rw [← hbit, seg45LadderFlatY106_eq]
        unfold seg45LadderFlatY106
        linear_combination -r4350
      unfold seg45AccY107
      linear_combination hd
    have hd0 : rho 42569 * rho 42570 = rho 42579 := by linear_combination r4351
    have hd1 : rho 42569 * rho 42569 = rho 42580 := by linear_combination r4352
    have hd2 : rho 42570 * rho 42570 = rho 42581 := by linear_combination r4353
    have hd3 : rho 42582 * (rho 42570 * rho 42570 + rho 42569 * rho 42569 * (-1)) = 2 * (rho 42569 * rho 42570) := by
      rw [hd0, hd1, hd2]
      linear_combination r4354
    have hd4 : rho 42583 * (2 - (rho 42570 * rho 42570 + rho 42569 * rho 42569 * (-1))) = rho 42570 * rho 42570 - rho 42569 * rho 42569 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4355
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
      ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
      ⟨(rho 42575 : Seg45.F), (rho 42576 : Seg45.F)⟩
      ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
      ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg45_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41055 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4356 Seg45.relationLc570 Seg45.relationLc570Part0 Seg45.relationLc570Part1 Seg45.relationLc570Part2 Seg45.relationLc570Part3 Seg45.relationLc570Part4 Seg45.relationLc570Part5 Seg45.relationLc570Part6 at r4356
  unfold Seg45.relationRow4357 Seg45.relationLc571 Seg45.relationLc571Part0 Seg45.relationLc571Part1 Seg45.relationLc571Part2 Seg45.relationLc571Part3 at r4357
  unfold Seg45.relationRow4358 Seg45.relationLc572 Seg45.relationLc572Part0 Seg45.relationLc572Part1 Seg45.relationLc572Part2 Seg45.relationLc572Part3 at r4358
  unfold Seg45.relationRow4359 at r4359
  unfold Seg45.relationRow4360 at r4360
  unfold Seg45.relationRow4361 at r4361
  unfold Seg45.relationRow4362 Seg45.relationLc573 Seg45.relationLc573Part0 Seg45.relationLc573Part1 Seg45.relationLc573Part2 Seg45.relationLc573Part3 at r4362
  unfold Seg45.relationRow4363 Seg45.relationLc574 Seg45.relationLc574Part0 Seg45.relationLc574Part1 Seg45.relationLc574Part2 Seg45.relationLc574Part3 at r4363
  unfold Seg45.relationRow4364 at r4364
  unfold Seg45.relationRow4365 at r4365
  unfold Seg45.relationRow4366 at r4366
  unfold Seg45.relationRow4367 at r4367
  unfold Seg45.relationRow4368 at r4368
  have hrung107 (bit : Bool) (hbit : rho 41055 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩ := by
    have ha0 : (rho 42582 + rho 42583) * (seg45AccX107 rho + seg45AccY107 rho) = rho 42584 := by
      rw [seg45LadderFlatX107_eq, seg45LadderFlatY107_eq]
      unfold seg45LadderFlatX107 seg45LadderFlatY107
      linear_combination r4356
    have ha1 : rho 42583 * seg45AccX107 rho = rho 42585 := by
      rw [seg45LadderFlatX107_eq]
      unfold seg45LadderFlatX107
      linear_combination r4357
    have ha2 : rho 42582 * seg45AccY107 rho = rho 42586 := by
      rw [seg45LadderFlatY107_eq]
      unfold seg45LadderFlatY107
      linear_combination r4358
    have ha3 : 3021 * rho 42585 * rho 42586 = rho 42587 := by
      linear_combination r4359
    have ha4 : rho 42588 * (1 + rho 42587) = rho 42585 + rho 42586 := by
      linear_combination r4360
    have ha5 : rho 42589 * (1 - rho 42587) = rho 42584 - rho 42585 - rho 42586 := by
      linear_combination r4361
    have haddx :
        rho 42588 * (1 + 3021 * (rho 42583 * seg45AccX107 rho) * (rho 42582 * seg45AccY107 rho)) =
          rho 42583 * seg45AccX107 rho + rho 42582 * seg45AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42589 * (1 - 3021 * (rho 42583 * seg45AccX107 rho) * (rho 42582 * seg45AccY107 rho)) =
          (-1) * (rho 42583 * seg45AccX107 rho) - rho 42582 * seg45AccY107 rho +
            (seg45AccY107 rho - seg45AccX107 rho * (-1)) * (rho 42582 + rho 42583) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42589 * (1 - rho 42587) = rho 42584 - rho 42585 - rho 42586 := ha5
        _ = (-1) * rho 42585 - rho 42586 + (seg45AccY107 rho - seg45AccX107 rho * (-1)) * (rho 42582 + rho 42583) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX108 rho = seg45AccX107 rho - Bool.toZMod bit * (seg45AccX107 rho - rho 42588) := by
      have hd : rho 42590 = Bool.toZMod bit * (rho 42588 - seg45AccX107 rho) := by
        rw [← hbit, seg45LadderFlatX107_eq]
        unfold seg45LadderFlatX107
        linear_combination -r4362
      unfold seg45AccX108
      linear_combination hd
    have hsely : seg45AccY108 rho = seg45AccY107 rho - Bool.toZMod bit * (seg45AccY107 rho - rho 42589) := by
      have hd : rho 42591 = Bool.toZMod bit * (rho 42589 - seg45AccY107 rho) := by
        rw [← hbit, seg45LadderFlatY107_eq]
        unfold seg45LadderFlatY107
        linear_combination -r4363
      unfold seg45AccY108
      linear_combination hd
    have hd0 : rho 42582 * rho 42583 = rho 42592 := by linear_combination r4364
    have hd1 : rho 42582 * rho 42582 = rho 42593 := by linear_combination r4365
    have hd2 : rho 42583 * rho 42583 = rho 42594 := by linear_combination r4366
    have hd3 : rho 42595 * (rho 42583 * rho 42583 + rho 42582 * rho 42582 * (-1)) = 2 * (rho 42582 * rho 42583) := by
      rw [hd0, hd1, hd2]
      linear_combination r4367
    have hd4 : rho 42596 * (2 - (rho 42583 * rho 42583 + rho 42582 * rho 42582 * (-1))) = rho 42583 * rho 42583 - rho 42582 * rho 42582 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4368
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
      ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
      ⟨(rho 42588 : Seg45.F), (rho 42589 : Seg45.F)⟩
      ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
      ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg45_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41056 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4369 Seg45.relationLc575 Seg45.relationLc575Part0 Seg45.relationLc575Part1 Seg45.relationLc575Part2 Seg45.relationLc575Part3 Seg45.relationLc575Part4 Seg45.relationLc575Part5 Seg45.relationLc575Part6 at r4369
  unfold Seg45.relationRow4370 Seg45.relationLc576 Seg45.relationLc576Part0 Seg45.relationLc576Part1 Seg45.relationLc576Part2 Seg45.relationLc576Part3 at r4370
  unfold Seg45.relationRow4371 Seg45.relationLc577 Seg45.relationLc577Part0 Seg45.relationLc577Part1 Seg45.relationLc577Part2 Seg45.relationLc577Part3 at r4371
  unfold Seg45.relationRow4372 at r4372
  unfold Seg45.relationRow4373 at r4373
  unfold Seg45.relationRow4374 at r4374
  unfold Seg45.relationRow4375 Seg45.relationLc578 Seg45.relationLc578Part0 Seg45.relationLc578Part1 Seg45.relationLc578Part2 Seg45.relationLc578Part3 at r4375
  unfold Seg45.relationRow4376 Seg45.relationLc579 Seg45.relationLc579Part0 Seg45.relationLc579Part1 Seg45.relationLc579Part2 Seg45.relationLc579Part3 at r4376
  unfold Seg45.relationRow4377 at r4377
  unfold Seg45.relationRow4378 at r4378
  unfold Seg45.relationRow4379 at r4379
  unfold Seg45.relationRow4380 at r4380
  unfold Seg45.relationRow4381 at r4381
  have hrung108 (bit : Bool) (hbit : rho 41056 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩ := by
    have ha0 : (rho 42595 + rho 42596) * (seg45AccX108 rho + seg45AccY108 rho) = rho 42597 := by
      rw [seg45LadderFlatX108_eq, seg45LadderFlatY108_eq]
      unfold seg45LadderFlatX108 seg45LadderFlatY108
      linear_combination r4369
    have ha1 : rho 42596 * seg45AccX108 rho = rho 42598 := by
      rw [seg45LadderFlatX108_eq]
      unfold seg45LadderFlatX108
      linear_combination r4370
    have ha2 : rho 42595 * seg45AccY108 rho = rho 42599 := by
      rw [seg45LadderFlatY108_eq]
      unfold seg45LadderFlatY108
      linear_combination r4371
    have ha3 : 3021 * rho 42598 * rho 42599 = rho 42600 := by
      linear_combination r4372
    have ha4 : rho 42601 * (1 + rho 42600) = rho 42598 + rho 42599 := by
      linear_combination r4373
    have ha5 : rho 42602 * (1 - rho 42600) = rho 42597 - rho 42598 - rho 42599 := by
      linear_combination r4374
    have haddx :
        rho 42601 * (1 + 3021 * (rho 42596 * seg45AccX108 rho) * (rho 42595 * seg45AccY108 rho)) =
          rho 42596 * seg45AccX108 rho + rho 42595 * seg45AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42602 * (1 - 3021 * (rho 42596 * seg45AccX108 rho) * (rho 42595 * seg45AccY108 rho)) =
          (-1) * (rho 42596 * seg45AccX108 rho) - rho 42595 * seg45AccY108 rho +
            (seg45AccY108 rho - seg45AccX108 rho * (-1)) * (rho 42595 + rho 42596) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42602 * (1 - rho 42600) = rho 42597 - rho 42598 - rho 42599 := ha5
        _ = (-1) * rho 42598 - rho 42599 + (seg45AccY108 rho - seg45AccX108 rho * (-1)) * (rho 42595 + rho 42596) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX109 rho = seg45AccX108 rho - Bool.toZMod bit * (seg45AccX108 rho - rho 42601) := by
      have hd : rho 42603 = Bool.toZMod bit * (rho 42601 - seg45AccX108 rho) := by
        rw [← hbit, seg45LadderFlatX108_eq]
        unfold seg45LadderFlatX108
        linear_combination -r4375
      unfold seg45AccX109
      linear_combination hd
    have hsely : seg45AccY109 rho = seg45AccY108 rho - Bool.toZMod bit * (seg45AccY108 rho - rho 42602) := by
      have hd : rho 42604 = Bool.toZMod bit * (rho 42602 - seg45AccY108 rho) := by
        rw [← hbit, seg45LadderFlatY108_eq]
        unfold seg45LadderFlatY108
        linear_combination -r4376
      unfold seg45AccY109
      linear_combination hd
    have hd0 : rho 42595 * rho 42596 = rho 42605 := by linear_combination r4377
    have hd1 : rho 42595 * rho 42595 = rho 42606 := by linear_combination r4378
    have hd2 : rho 42596 * rho 42596 = rho 42607 := by linear_combination r4379
    have hd3 : rho 42608 * (rho 42596 * rho 42596 + rho 42595 * rho 42595 * (-1)) = 2 * (rho 42595 * rho 42596) := by
      rw [hd0, hd1, hd2]
      linear_combination r4380
    have hd4 : rho 42609 * (2 - (rho 42596 * rho 42596 + rho 42595 * rho 42595 * (-1))) = rho 42596 * rho 42596 - rho 42595 * rho 42595 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4381
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
      ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
      ⟨(rho 42601 : Seg45.F), (rho 42602 : Seg45.F)⟩
      ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
      ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg45_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41057 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, _, _, _, _, _⟩
  unfold Seg45.relationRow4382 Seg45.relationLc580 Seg45.relationLc580Part0 Seg45.relationLc580Part1 Seg45.relationLc580Part2 Seg45.relationLc580Part3 Seg45.relationLc580Part4 Seg45.relationLc580Part5 Seg45.relationLc580Part6 at r4382
  unfold Seg45.relationRow4383 Seg45.relationLc581 Seg45.relationLc581Part0 Seg45.relationLc581Part1 Seg45.relationLc581Part2 Seg45.relationLc581Part3 at r4383
  unfold Seg45.relationRow4384 Seg45.relationLc582 Seg45.relationLc582Part0 Seg45.relationLc582Part1 Seg45.relationLc582Part2 Seg45.relationLc582Part3 at r4384
  unfold Seg45.relationRow4385 at r4385
  unfold Seg45.relationRow4386 at r4386
  unfold Seg45.relationRow4387 at r4387
  unfold Seg45.relationRow4388 Seg45.relationLc583 Seg45.relationLc583Part0 Seg45.relationLc583Part1 Seg45.relationLc583Part2 Seg45.relationLc583Part3 at r4388
  unfold Seg45.relationRow4389 Seg45.relationLc584 Seg45.relationLc584Part0 Seg45.relationLc584Part1 Seg45.relationLc584Part2 Seg45.relationLc584Part3 at r4389
  unfold Seg45.relationRow4390 at r4390
  unfold Seg45.relationRow4391 at r4391
  unfold Seg45.relationRow4392 at r4392
  unfold Seg45.relationRow4393 at r4393
  unfold Seg45.relationRow4394 at r4394
  have hrung109 (bit : Bool) (hbit : rho 41057 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩ := by
    have ha0 : (rho 42608 + rho 42609) * (seg45AccX109 rho + seg45AccY109 rho) = rho 42610 := by
      rw [seg45LadderFlatX109_eq, seg45LadderFlatY109_eq]
      unfold seg45LadderFlatX109 seg45LadderFlatY109
      linear_combination r4382
    have ha1 : rho 42609 * seg45AccX109 rho = rho 42611 := by
      rw [seg45LadderFlatX109_eq]
      unfold seg45LadderFlatX109
      linear_combination r4383
    have ha2 : rho 42608 * seg45AccY109 rho = rho 42612 := by
      rw [seg45LadderFlatY109_eq]
      unfold seg45LadderFlatY109
      linear_combination r4384
    have ha3 : 3021 * rho 42611 * rho 42612 = rho 42613 := by
      linear_combination r4385
    have ha4 : rho 42614 * (1 + rho 42613) = rho 42611 + rho 42612 := by
      linear_combination r4386
    have ha5 : rho 42615 * (1 - rho 42613) = rho 42610 - rho 42611 - rho 42612 := by
      linear_combination r4387
    have haddx :
        rho 42614 * (1 + 3021 * (rho 42609 * seg45AccX109 rho) * (rho 42608 * seg45AccY109 rho)) =
          rho 42609 * seg45AccX109 rho + rho 42608 * seg45AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42615 * (1 - 3021 * (rho 42609 * seg45AccX109 rho) * (rho 42608 * seg45AccY109 rho)) =
          (-1) * (rho 42609 * seg45AccX109 rho) - rho 42608 * seg45AccY109 rho +
            (seg45AccY109 rho - seg45AccX109 rho * (-1)) * (rho 42608 + rho 42609) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42615 * (1 - rho 42613) = rho 42610 - rho 42611 - rho 42612 := ha5
        _ = (-1) * rho 42611 - rho 42612 + (seg45AccY109 rho - seg45AccX109 rho * (-1)) * (rho 42608 + rho 42609) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX110 rho = seg45AccX109 rho - Bool.toZMod bit * (seg45AccX109 rho - rho 42614) := by
      have hd : rho 42616 = Bool.toZMod bit * (rho 42614 - seg45AccX109 rho) := by
        rw [← hbit, seg45LadderFlatX109_eq]
        unfold seg45LadderFlatX109
        linear_combination -r4388
      unfold seg45AccX110
      linear_combination hd
    have hsely : seg45AccY110 rho = seg45AccY109 rho - Bool.toZMod bit * (seg45AccY109 rho - rho 42615) := by
      have hd : rho 42617 = Bool.toZMod bit * (rho 42615 - seg45AccY109 rho) := by
        rw [← hbit, seg45LadderFlatY109_eq]
        unfold seg45LadderFlatY109
        linear_combination -r4389
      unfold seg45AccY110
      linear_combination hd
    have hd0 : rho 42608 * rho 42609 = rho 42618 := by linear_combination r4390
    have hd1 : rho 42608 * rho 42608 = rho 42619 := by linear_combination r4391
    have hd2 : rho 42609 * rho 42609 = rho 42620 := by linear_combination r4392
    have hd3 : rho 42621 * (rho 42609 * rho 42609 + rho 42608 * rho 42608 * (-1)) = 2 * (rho 42608 * rho 42609) := by
      rw [hd0, hd1, hd2]
      linear_combination r4393
    have hd4 : rho 42622 * (2 - (rho 42609 * rho 42609 + rho 42608 * rho 42608 * (-1))) = rho 42609 * rho 42609 - rho 42608 * rho 42608 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4394
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
      ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
      ⟨(rho 42614 : Seg45.F), (rho 42615 : Seg45.F)⟩
      ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
      ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg45_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41058 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4395 Seg45.relationLc585 Seg45.relationLc585Part0 Seg45.relationLc585Part1 Seg45.relationLc585Part2 Seg45.relationLc585Part3 Seg45.relationLc585Part4 Seg45.relationLc585Part5 Seg45.relationLc585Part6 at r4395
  unfold Seg45.relationRow4396 Seg45.relationLc586 Seg45.relationLc586Part0 Seg45.relationLc586Part1 Seg45.relationLc586Part2 Seg45.relationLc586Part3 at r4396
  unfold Seg45.relationRow4397 Seg45.relationLc587 Seg45.relationLc587Part0 Seg45.relationLc587Part1 Seg45.relationLc587Part2 Seg45.relationLc587Part3 at r4397
  unfold Seg45.relationRow4398 at r4398
  unfold Seg45.relationRow4399 at r4399
  unfold Seg45.relationRow4400 at r4400
  unfold Seg45.relationRow4401 Seg45.relationLc588 Seg45.relationLc588Part0 Seg45.relationLc588Part1 Seg45.relationLc588Part2 Seg45.relationLc588Part3 at r4401
  unfold Seg45.relationRow4402 Seg45.relationLc589 Seg45.relationLc589Part0 Seg45.relationLc589Part1 Seg45.relationLc589Part2 Seg45.relationLc589Part3 at r4402
  unfold Seg45.relationRow4403 at r4403
  unfold Seg45.relationRow4404 at r4404
  unfold Seg45.relationRow4405 at r4405
  unfold Seg45.relationRow4406 at r4406
  unfold Seg45.relationRow4407 at r4407
  have hrung110 (bit : Bool) (hbit : rho 41058 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩ := by
    have ha0 : (rho 42621 + rho 42622) * (seg45AccX110 rho + seg45AccY110 rho) = rho 42623 := by
      rw [seg45LadderFlatX110_eq, seg45LadderFlatY110_eq]
      unfold seg45LadderFlatX110 seg45LadderFlatY110
      linear_combination r4395
    have ha1 : rho 42622 * seg45AccX110 rho = rho 42624 := by
      rw [seg45LadderFlatX110_eq]
      unfold seg45LadderFlatX110
      linear_combination r4396
    have ha2 : rho 42621 * seg45AccY110 rho = rho 42625 := by
      rw [seg45LadderFlatY110_eq]
      unfold seg45LadderFlatY110
      linear_combination r4397
    have ha3 : 3021 * rho 42624 * rho 42625 = rho 42626 := by
      linear_combination r4398
    have ha4 : rho 42627 * (1 + rho 42626) = rho 42624 + rho 42625 := by
      linear_combination r4399
    have ha5 : rho 42628 * (1 - rho 42626) = rho 42623 - rho 42624 - rho 42625 := by
      linear_combination r4400
    have haddx :
        rho 42627 * (1 + 3021 * (rho 42622 * seg45AccX110 rho) * (rho 42621 * seg45AccY110 rho)) =
          rho 42622 * seg45AccX110 rho + rho 42621 * seg45AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42628 * (1 - 3021 * (rho 42622 * seg45AccX110 rho) * (rho 42621 * seg45AccY110 rho)) =
          (-1) * (rho 42622 * seg45AccX110 rho) - rho 42621 * seg45AccY110 rho +
            (seg45AccY110 rho - seg45AccX110 rho * (-1)) * (rho 42621 + rho 42622) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42628 * (1 - rho 42626) = rho 42623 - rho 42624 - rho 42625 := ha5
        _ = (-1) * rho 42624 - rho 42625 + (seg45AccY110 rho - seg45AccX110 rho * (-1)) * (rho 42621 + rho 42622) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX111 rho = seg45AccX110 rho - Bool.toZMod bit * (seg45AccX110 rho - rho 42627) := by
      have hd : rho 42629 = Bool.toZMod bit * (rho 42627 - seg45AccX110 rho) := by
        rw [← hbit, seg45LadderFlatX110_eq]
        unfold seg45LadderFlatX110
        linear_combination -r4401
      unfold seg45AccX111
      linear_combination hd
    have hsely : seg45AccY111 rho = seg45AccY110 rho - Bool.toZMod bit * (seg45AccY110 rho - rho 42628) := by
      have hd : rho 42630 = Bool.toZMod bit * (rho 42628 - seg45AccY110 rho) := by
        rw [← hbit, seg45LadderFlatY110_eq]
        unfold seg45LadderFlatY110
        linear_combination -r4402
      unfold seg45AccY111
      linear_combination hd
    have hd0 : rho 42621 * rho 42622 = rho 42631 := by linear_combination r4403
    have hd1 : rho 42621 * rho 42621 = rho 42632 := by linear_combination r4404
    have hd2 : rho 42622 * rho 42622 = rho 42633 := by linear_combination r4405
    have hd3 : rho 42634 * (rho 42622 * rho 42622 + rho 42621 * rho 42621 * (-1)) = 2 * (rho 42621 * rho 42622) := by
      rw [hd0, hd1, hd2]
      linear_combination r4406
    have hd4 : rho 42635 * (2 - (rho 42622 * rho 42622 + rho 42621 * rho 42621 * (-1))) = rho 42622 * rho 42622 - rho 42621 * rho 42621 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4407
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
      ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
      ⟨(rho 42627 : Seg45.F), (rho 42628 : Seg45.F)⟩
      ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
      ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg45_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41059 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4408 Seg45.relationLc590 Seg45.relationLc590Part0 Seg45.relationLc590Part1 Seg45.relationLc590Part2 Seg45.relationLc590Part3 Seg45.relationLc590Part4 Seg45.relationLc590Part5 Seg45.relationLc590Part6 at r4408
  unfold Seg45.relationRow4409 Seg45.relationLc591 Seg45.relationLc591Part0 Seg45.relationLc591Part1 Seg45.relationLc591Part2 Seg45.relationLc591Part3 at r4409
  unfold Seg45.relationRow4410 Seg45.relationLc592 Seg45.relationLc592Part0 Seg45.relationLc592Part1 Seg45.relationLc592Part2 Seg45.relationLc592Part3 at r4410
  unfold Seg45.relationRow4411 at r4411
  unfold Seg45.relationRow4412 at r4412
  unfold Seg45.relationRow4413 at r4413
  unfold Seg45.relationRow4414 Seg45.relationLc593 Seg45.relationLc593Part0 Seg45.relationLc593Part1 Seg45.relationLc593Part2 Seg45.relationLc593Part3 at r4414
  unfold Seg45.relationRow4415 Seg45.relationLc594 Seg45.relationLc594Part0 Seg45.relationLc594Part1 Seg45.relationLc594Part2 Seg45.relationLc594Part3 at r4415
  unfold Seg45.relationRow4416 at r4416
  unfold Seg45.relationRow4417 at r4417
  unfold Seg45.relationRow4418 at r4418
  unfold Seg45.relationRow4419 at r4419
  unfold Seg45.relationRow4420 at r4420
  have hrung111 (bit : Bool) (hbit : rho 41059 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
        ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩ := by
    have ha0 : (rho 42634 + rho 42635) * (seg45AccX111 rho + seg45AccY111 rho) = rho 42636 := by
      rw [seg45LadderFlatX111_eq, seg45LadderFlatY111_eq]
      unfold seg45LadderFlatX111 seg45LadderFlatY111
      linear_combination r4408
    have ha1 : rho 42635 * seg45AccX111 rho = rho 42637 := by
      rw [seg45LadderFlatX111_eq]
      unfold seg45LadderFlatX111
      linear_combination r4409
    have ha2 : rho 42634 * seg45AccY111 rho = rho 42638 := by
      rw [seg45LadderFlatY111_eq]
      unfold seg45LadderFlatY111
      linear_combination r4410
    have ha3 : 3021 * rho 42637 * rho 42638 = rho 42639 := by
      linear_combination r4411
    have ha4 : rho 42640 * (1 + rho 42639) = rho 42637 + rho 42638 := by
      linear_combination r4412
    have ha5 : rho 42641 * (1 - rho 42639) = rho 42636 - rho 42637 - rho 42638 := by
      linear_combination r4413
    have haddx :
        rho 42640 * (1 + 3021 * (rho 42635 * seg45AccX111 rho) * (rho 42634 * seg45AccY111 rho)) =
          rho 42635 * seg45AccX111 rho + rho 42634 * seg45AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42641 * (1 - 3021 * (rho 42635 * seg45AccX111 rho) * (rho 42634 * seg45AccY111 rho)) =
          (-1) * (rho 42635 * seg45AccX111 rho) - rho 42634 * seg45AccY111 rho +
            (seg45AccY111 rho - seg45AccX111 rho * (-1)) * (rho 42634 + rho 42635) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42641 * (1 - rho 42639) = rho 42636 - rho 42637 - rho 42638 := ha5
        _ = (-1) * rho 42637 - rho 42638 + (seg45AccY111 rho - seg45AccX111 rho * (-1)) * (rho 42634 + rho 42635) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX112 rho = seg45AccX111 rho - Bool.toZMod bit * (seg45AccX111 rho - rho 42640) := by
      have hd : rho 42642 = Bool.toZMod bit * (rho 42640 - seg45AccX111 rho) := by
        rw [← hbit, seg45LadderFlatX111_eq]
        unfold seg45LadderFlatX111
        linear_combination -r4414
      unfold seg45AccX112
      linear_combination hd
    have hsely : seg45AccY112 rho = seg45AccY111 rho - Bool.toZMod bit * (seg45AccY111 rho - rho 42641) := by
      have hd : rho 42643 = Bool.toZMod bit * (rho 42641 - seg45AccY111 rho) := by
        rw [← hbit, seg45LadderFlatY111_eq]
        unfold seg45LadderFlatY111
        linear_combination -r4415
      unfold seg45AccY112
      linear_combination hd
    have hd0 : rho 42634 * rho 42635 = rho 42644 := by linear_combination r4416
    have hd1 : rho 42634 * rho 42634 = rho 42645 := by linear_combination r4417
    have hd2 : rho 42635 * rho 42635 = rho 42646 := by linear_combination r4418
    have hd3 : rho 42647 * (rho 42635 * rho 42635 + rho 42634 * rho 42634 * (-1)) = 2 * (rho 42634 * rho 42635) := by
      rw [hd0, hd1, hd2]
      linear_combination r4419
    have hd4 : rho 42648 * (2 - (rho 42635 * rho 42635 + rho 42634 * rho 42634 * (-1))) = rho 42635 * rho 42635 - rho 42634 * rho 42634 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4420
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX111 rho : Seg45.F), (seg45AccY111 rho : Seg45.F)⟩
      ⟨(rho 42634 : Seg45.F), (rho 42635 : Seg45.F)⟩
      ⟨(rho 42640 : Seg45.F), (rho 42641 : Seg45.F)⟩
      ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
      ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg45_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41060 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4421 Seg45.relationLc595 Seg45.relationLc595Part0 Seg45.relationLc595Part1 Seg45.relationLc595Part2 Seg45.relationLc595Part3 Seg45.relationLc595Part4 Seg45.relationLc595Part5 Seg45.relationLc595Part6 Seg45.relationLc595Part7 at r4421
  unfold Seg45.relationRow4422 Seg45.relationLc596 Seg45.relationLc596Part0 Seg45.relationLc596Part1 Seg45.relationLc596Part2 Seg45.relationLc596Part3 at r4422
  unfold Seg45.relationRow4423 Seg45.relationLc597 Seg45.relationLc597Part0 Seg45.relationLc597Part1 Seg45.relationLc597Part2 Seg45.relationLc597Part3 at r4423
  unfold Seg45.relationRow4424 at r4424
  unfold Seg45.relationRow4425 at r4425
  unfold Seg45.relationRow4426 at r4426
  unfold Seg45.relationRow4427 Seg45.relationLc598 Seg45.relationLc598Part0 Seg45.relationLc598Part1 Seg45.relationLc598Part2 Seg45.relationLc598Part3 at r4427
  unfold Seg45.relationRow4428 Seg45.relationLc599 Seg45.relationLc599Part0 Seg45.relationLc599Part1 Seg45.relationLc599Part2 Seg45.relationLc599Part3 at r4428
  unfold Seg45.relationRow4429 at r4429
  unfold Seg45.relationRow4430 at r4430
  unfold Seg45.relationRow4431 at r4431
  unfold Seg45.relationRow4432 at r4432
  unfold Seg45.relationRow4433 at r4433
  have hrung112 (bit : Bool) (hbit : rho 41060 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
        ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩ := by
    have ha0 : (rho 42647 + rho 42648) * (seg45AccX112 rho + seg45AccY112 rho) = rho 42649 := by
      rw [seg45LadderFlatX112_eq, seg45LadderFlatY112_eq]
      unfold seg45LadderFlatX112 seg45LadderFlatY112
      linear_combination r4421
    have ha1 : rho 42648 * seg45AccX112 rho = rho 42650 := by
      rw [seg45LadderFlatX112_eq]
      unfold seg45LadderFlatX112
      linear_combination r4422
    have ha2 : rho 42647 * seg45AccY112 rho = rho 42651 := by
      rw [seg45LadderFlatY112_eq]
      unfold seg45LadderFlatY112
      linear_combination r4423
    have ha3 : 3021 * rho 42650 * rho 42651 = rho 42652 := by
      linear_combination r4424
    have ha4 : rho 42653 * (1 + rho 42652) = rho 42650 + rho 42651 := by
      linear_combination r4425
    have ha5 : rho 42654 * (1 - rho 42652) = rho 42649 - rho 42650 - rho 42651 := by
      linear_combination r4426
    have haddx :
        rho 42653 * (1 + 3021 * (rho 42648 * seg45AccX112 rho) * (rho 42647 * seg45AccY112 rho)) =
          rho 42648 * seg45AccX112 rho + rho 42647 * seg45AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42654 * (1 - 3021 * (rho 42648 * seg45AccX112 rho) * (rho 42647 * seg45AccY112 rho)) =
          (-1) * (rho 42648 * seg45AccX112 rho) - rho 42647 * seg45AccY112 rho +
            (seg45AccY112 rho - seg45AccX112 rho * (-1)) * (rho 42647 + rho 42648) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42654 * (1 - rho 42652) = rho 42649 - rho 42650 - rho 42651 := ha5
        _ = (-1) * rho 42650 - rho 42651 + (seg45AccY112 rho - seg45AccX112 rho * (-1)) * (rho 42647 + rho 42648) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX113 rho = seg45AccX112 rho - Bool.toZMod bit * (seg45AccX112 rho - rho 42653) := by
      have hd : rho 42655 = Bool.toZMod bit * (rho 42653 - seg45AccX112 rho) := by
        rw [← hbit, seg45LadderFlatX112_eq]
        unfold seg45LadderFlatX112
        linear_combination -r4427
      unfold seg45AccX113
      linear_combination hd
    have hsely : seg45AccY113 rho = seg45AccY112 rho - Bool.toZMod bit * (seg45AccY112 rho - rho 42654) := by
      have hd : rho 42656 = Bool.toZMod bit * (rho 42654 - seg45AccY112 rho) := by
        rw [← hbit, seg45LadderFlatY112_eq]
        unfold seg45LadderFlatY112
        linear_combination -r4428
      unfold seg45AccY113
      linear_combination hd
    have hd0 : rho 42647 * rho 42648 = rho 42657 := by linear_combination r4429
    have hd1 : rho 42647 * rho 42647 = rho 42658 := by linear_combination r4430
    have hd2 : rho 42648 * rho 42648 = rho 42659 := by linear_combination r4431
    have hd3 : rho 42660 * (rho 42648 * rho 42648 + rho 42647 * rho 42647 * (-1)) = 2 * (rho 42647 * rho 42648) := by
      rw [hd0, hd1, hd2]
      linear_combination r4432
    have hd4 : rho 42661 * (2 - (rho 42648 * rho 42648 + rho 42647 * rho 42647 * (-1))) = rho 42648 * rho 42648 - rho 42647 * rho 42647 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4433
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX112 rho : Seg45.F), (seg45AccY112 rho : Seg45.F)⟩
      ⟨(rho 42647 : Seg45.F), (rho 42648 : Seg45.F)⟩
      ⟨(rho 42653 : Seg45.F), (rho 42654 : Seg45.F)⟩
      ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
      ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg45_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41061 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4434 Seg45.relationLc600 Seg45.relationLc600Part0 Seg45.relationLc600Part1 Seg45.relationLc600Part2 Seg45.relationLc600Part3 Seg45.relationLc600Part4 Seg45.relationLc600Part5 Seg45.relationLc600Part6 Seg45.relationLc600Part7 at r4434
  unfold Seg45.relationRow4435 Seg45.relationLc601 Seg45.relationLc601Part0 Seg45.relationLc601Part1 Seg45.relationLc601Part2 Seg45.relationLc601Part3 at r4435
  unfold Seg45.relationRow4436 Seg45.relationLc602 Seg45.relationLc602Part0 Seg45.relationLc602Part1 Seg45.relationLc602Part2 Seg45.relationLc602Part3 at r4436
  unfold Seg45.relationRow4437 at r4437
  unfold Seg45.relationRow4438 at r4438
  unfold Seg45.relationRow4439 at r4439
  unfold Seg45.relationRow4440 Seg45.relationLc603 Seg45.relationLc603Part0 Seg45.relationLc603Part1 Seg45.relationLc603Part2 Seg45.relationLc603Part3 at r4440
  unfold Seg45.relationRow4441 Seg45.relationLc604 Seg45.relationLc604Part0 Seg45.relationLc604Part1 Seg45.relationLc604Part2 Seg45.relationLc604Part3 at r4441
  unfold Seg45.relationRow4442 at r4442
  unfold Seg45.relationRow4443 at r4443
  unfold Seg45.relationRow4444 at r4444
  unfold Seg45.relationRow4445 at r4445
  unfold Seg45.relationRow4446 at r4446
  have hrung113 (bit : Bool) (hbit : rho 41061 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
        ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩ := by
    have ha0 : (rho 42660 + rho 42661) * (seg45AccX113 rho + seg45AccY113 rho) = rho 42662 := by
      rw [seg45LadderFlatX113_eq, seg45LadderFlatY113_eq]
      unfold seg45LadderFlatX113 seg45LadderFlatY113
      linear_combination r4434
    have ha1 : rho 42661 * seg45AccX113 rho = rho 42663 := by
      rw [seg45LadderFlatX113_eq]
      unfold seg45LadderFlatX113
      linear_combination r4435
    have ha2 : rho 42660 * seg45AccY113 rho = rho 42664 := by
      rw [seg45LadderFlatY113_eq]
      unfold seg45LadderFlatY113
      linear_combination r4436
    have ha3 : 3021 * rho 42663 * rho 42664 = rho 42665 := by
      linear_combination r4437
    have ha4 : rho 42666 * (1 + rho 42665) = rho 42663 + rho 42664 := by
      linear_combination r4438
    have ha5 : rho 42667 * (1 - rho 42665) = rho 42662 - rho 42663 - rho 42664 := by
      linear_combination r4439
    have haddx :
        rho 42666 * (1 + 3021 * (rho 42661 * seg45AccX113 rho) * (rho 42660 * seg45AccY113 rho)) =
          rho 42661 * seg45AccX113 rho + rho 42660 * seg45AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42667 * (1 - 3021 * (rho 42661 * seg45AccX113 rho) * (rho 42660 * seg45AccY113 rho)) =
          (-1) * (rho 42661 * seg45AccX113 rho) - rho 42660 * seg45AccY113 rho +
            (seg45AccY113 rho - seg45AccX113 rho * (-1)) * (rho 42660 + rho 42661) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42667 * (1 - rho 42665) = rho 42662 - rho 42663 - rho 42664 := ha5
        _ = (-1) * rho 42663 - rho 42664 + (seg45AccY113 rho - seg45AccX113 rho * (-1)) * (rho 42660 + rho 42661) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX114 rho = seg45AccX113 rho - Bool.toZMod bit * (seg45AccX113 rho - rho 42666) := by
      have hd : rho 42668 = Bool.toZMod bit * (rho 42666 - seg45AccX113 rho) := by
        rw [← hbit, seg45LadderFlatX113_eq]
        unfold seg45LadderFlatX113
        linear_combination -r4440
      unfold seg45AccX114
      linear_combination hd
    have hsely : seg45AccY114 rho = seg45AccY113 rho - Bool.toZMod bit * (seg45AccY113 rho - rho 42667) := by
      have hd : rho 42669 = Bool.toZMod bit * (rho 42667 - seg45AccY113 rho) := by
        rw [← hbit, seg45LadderFlatY113_eq]
        unfold seg45LadderFlatY113
        linear_combination -r4441
      unfold seg45AccY114
      linear_combination hd
    have hd0 : rho 42660 * rho 42661 = rho 42670 := by linear_combination r4442
    have hd1 : rho 42660 * rho 42660 = rho 42671 := by linear_combination r4443
    have hd2 : rho 42661 * rho 42661 = rho 42672 := by linear_combination r4444
    have hd3 : rho 42673 * (rho 42661 * rho 42661 + rho 42660 * rho 42660 * (-1)) = 2 * (rho 42660 * rho 42661) := by
      rw [hd0, hd1, hd2]
      linear_combination r4445
    have hd4 : rho 42674 * (2 - (rho 42661 * rho 42661 + rho 42660 * rho 42660 * (-1))) = rho 42661 * rho 42661 - rho 42660 * rho 42660 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX113 rho : Seg45.F), (seg45AccY113 rho : Seg45.F)⟩
      ⟨(rho 42660 : Seg45.F), (rho 42661 : Seg45.F)⟩
      ⟨(rho 42666 : Seg45.F), (rho 42667 : Seg45.F)⟩
      ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
      ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg45_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41062 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4447 Seg45.relationLc605 Seg45.relationLc605Part0 Seg45.relationLc605Part1 Seg45.relationLc605Part2 Seg45.relationLc605Part3 Seg45.relationLc605Part4 Seg45.relationLc605Part5 Seg45.relationLc605Part6 Seg45.relationLc605Part7 at r4447
  unfold Seg45.relationRow4448 Seg45.relationLc606 Seg45.relationLc606Part0 Seg45.relationLc606Part1 Seg45.relationLc606Part2 Seg45.relationLc606Part3 at r4448
  unfold Seg45.relationRow4449 Seg45.relationLc607 Seg45.relationLc607Part0 Seg45.relationLc607Part1 Seg45.relationLc607Part2 Seg45.relationLc607Part3 at r4449
  unfold Seg45.relationRow4450 at r4450
  unfold Seg45.relationRow4451 at r4451
  unfold Seg45.relationRow4452 at r4452
  unfold Seg45.relationRow4453 Seg45.relationLc608 Seg45.relationLc608Part0 Seg45.relationLc608Part1 Seg45.relationLc608Part2 Seg45.relationLc608Part3 at r4453
  unfold Seg45.relationRow4454 Seg45.relationLc609 Seg45.relationLc609Part0 Seg45.relationLc609Part1 Seg45.relationLc609Part2 Seg45.relationLc609Part3 at r4454
  unfold Seg45.relationRow4455 at r4455
  unfold Seg45.relationRow4456 at r4456
  unfold Seg45.relationRow4457 at r4457
  unfold Seg45.relationRow4458 at r4458
  unfold Seg45.relationRow4459 at r4459
  have hrung114 (bit : Bool) (hbit : rho 41062 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
        ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩ := by
    have ha0 : (rho 42673 + rho 42674) * (seg45AccX114 rho + seg45AccY114 rho) = rho 42675 := by
      rw [seg45LadderFlatX114_eq, seg45LadderFlatY114_eq]
      unfold seg45LadderFlatX114 seg45LadderFlatY114
      linear_combination r4447
    have ha1 : rho 42674 * seg45AccX114 rho = rho 42676 := by
      rw [seg45LadderFlatX114_eq]
      unfold seg45LadderFlatX114
      linear_combination r4448
    have ha2 : rho 42673 * seg45AccY114 rho = rho 42677 := by
      rw [seg45LadderFlatY114_eq]
      unfold seg45LadderFlatY114
      linear_combination r4449
    have ha3 : 3021 * rho 42676 * rho 42677 = rho 42678 := by
      linear_combination r4450
    have ha4 : rho 42679 * (1 + rho 42678) = rho 42676 + rho 42677 := by
      linear_combination r4451
    have ha5 : rho 42680 * (1 - rho 42678) = rho 42675 - rho 42676 - rho 42677 := by
      linear_combination r4452
    have haddx :
        rho 42679 * (1 + 3021 * (rho 42674 * seg45AccX114 rho) * (rho 42673 * seg45AccY114 rho)) =
          rho 42674 * seg45AccX114 rho + rho 42673 * seg45AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42680 * (1 - 3021 * (rho 42674 * seg45AccX114 rho) * (rho 42673 * seg45AccY114 rho)) =
          (-1) * (rho 42674 * seg45AccX114 rho) - rho 42673 * seg45AccY114 rho +
            (seg45AccY114 rho - seg45AccX114 rho * (-1)) * (rho 42673 + rho 42674) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42680 * (1 - rho 42678) = rho 42675 - rho 42676 - rho 42677 := ha5
        _ = (-1) * rho 42676 - rho 42677 + (seg45AccY114 rho - seg45AccX114 rho * (-1)) * (rho 42673 + rho 42674) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX115 rho = seg45AccX114 rho - Bool.toZMod bit * (seg45AccX114 rho - rho 42679) := by
      have hd : rho 42681 = Bool.toZMod bit * (rho 42679 - seg45AccX114 rho) := by
        rw [← hbit, seg45LadderFlatX114_eq]
        unfold seg45LadderFlatX114
        linear_combination -r4453
      unfold seg45AccX115
      linear_combination hd
    have hsely : seg45AccY115 rho = seg45AccY114 rho - Bool.toZMod bit * (seg45AccY114 rho - rho 42680) := by
      have hd : rho 42682 = Bool.toZMod bit * (rho 42680 - seg45AccY114 rho) := by
        rw [← hbit, seg45LadderFlatY114_eq]
        unfold seg45LadderFlatY114
        linear_combination -r4454
      unfold seg45AccY115
      linear_combination hd
    have hd0 : rho 42673 * rho 42674 = rho 42683 := by linear_combination r4455
    have hd1 : rho 42673 * rho 42673 = rho 42684 := by linear_combination r4456
    have hd2 : rho 42674 * rho 42674 = rho 42685 := by linear_combination r4457
    have hd3 : rho 42686 * (rho 42674 * rho 42674 + rho 42673 * rho 42673 * (-1)) = 2 * (rho 42673 * rho 42674) := by
      rw [hd0, hd1, hd2]
      linear_combination r4458
    have hd4 : rho 42687 * (2 - (rho 42674 * rho 42674 + rho 42673 * rho 42673 * (-1))) = rho 42674 * rho 42674 - rho 42673 * rho 42673 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4459
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX114 rho : Seg45.F), (seg45AccY114 rho : Seg45.F)⟩
      ⟨(rho 42673 : Seg45.F), (rho 42674 : Seg45.F)⟩
      ⟨(rho 42679 : Seg45.F), (rho 42680 : Seg45.F)⟩
      ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
      ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg45_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41063 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4460 Seg45.relationLc610 Seg45.relationLc610Part0 Seg45.relationLc610Part1 Seg45.relationLc610Part2 Seg45.relationLc610Part3 Seg45.relationLc610Part4 Seg45.relationLc610Part5 Seg45.relationLc610Part6 Seg45.relationLc610Part7 at r4460
  unfold Seg45.relationRow4461 Seg45.relationLc611 Seg45.relationLc611Part0 Seg45.relationLc611Part1 Seg45.relationLc611Part2 Seg45.relationLc611Part3 at r4461
  unfold Seg45.relationRow4462 Seg45.relationLc612 Seg45.relationLc612Part0 Seg45.relationLc612Part1 Seg45.relationLc612Part2 Seg45.relationLc612Part3 at r4462
  unfold Seg45.relationRow4463 at r4463
  unfold Seg45.relationRow4464 at r4464
  unfold Seg45.relationRow4465 at r4465
  unfold Seg45.relationRow4466 Seg45.relationLc613 Seg45.relationLc613Part0 Seg45.relationLc613Part1 Seg45.relationLc613Part2 Seg45.relationLc613Part3 at r4466
  unfold Seg45.relationRow4467 Seg45.relationLc614 Seg45.relationLc614Part0 Seg45.relationLc614Part1 Seg45.relationLc614Part2 Seg45.relationLc614Part3 at r4467
  unfold Seg45.relationRow4468 at r4468
  unfold Seg45.relationRow4469 at r4469
  unfold Seg45.relationRow4470 at r4470
  unfold Seg45.relationRow4471 at r4471
  unfold Seg45.relationRow4472 at r4472
  have hrung115 (bit : Bool) (hbit : rho 41063 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
        ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩ := by
    have ha0 : (rho 42686 + rho 42687) * (seg45AccX115 rho + seg45AccY115 rho) = rho 42688 := by
      rw [seg45LadderFlatX115_eq, seg45LadderFlatY115_eq]
      unfold seg45LadderFlatX115 seg45LadderFlatY115
      linear_combination r4460
    have ha1 : rho 42687 * seg45AccX115 rho = rho 42689 := by
      rw [seg45LadderFlatX115_eq]
      unfold seg45LadderFlatX115
      linear_combination r4461
    have ha2 : rho 42686 * seg45AccY115 rho = rho 42690 := by
      rw [seg45LadderFlatY115_eq]
      unfold seg45LadderFlatY115
      linear_combination r4462
    have ha3 : 3021 * rho 42689 * rho 42690 = rho 42691 := by
      linear_combination r4463
    have ha4 : rho 42692 * (1 + rho 42691) = rho 42689 + rho 42690 := by
      linear_combination r4464
    have ha5 : rho 42693 * (1 - rho 42691) = rho 42688 - rho 42689 - rho 42690 := by
      linear_combination r4465
    have haddx :
        rho 42692 * (1 + 3021 * (rho 42687 * seg45AccX115 rho) * (rho 42686 * seg45AccY115 rho)) =
          rho 42687 * seg45AccX115 rho + rho 42686 * seg45AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42693 * (1 - 3021 * (rho 42687 * seg45AccX115 rho) * (rho 42686 * seg45AccY115 rho)) =
          (-1) * (rho 42687 * seg45AccX115 rho) - rho 42686 * seg45AccY115 rho +
            (seg45AccY115 rho - seg45AccX115 rho * (-1)) * (rho 42686 + rho 42687) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42693 * (1 - rho 42691) = rho 42688 - rho 42689 - rho 42690 := ha5
        _ = (-1) * rho 42689 - rho 42690 + (seg45AccY115 rho - seg45AccX115 rho * (-1)) * (rho 42686 + rho 42687) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX116 rho = seg45AccX115 rho - Bool.toZMod bit * (seg45AccX115 rho - rho 42692) := by
      have hd : rho 42694 = Bool.toZMod bit * (rho 42692 - seg45AccX115 rho) := by
        rw [← hbit, seg45LadderFlatX115_eq]
        unfold seg45LadderFlatX115
        linear_combination -r4466
      unfold seg45AccX116
      linear_combination hd
    have hsely : seg45AccY116 rho = seg45AccY115 rho - Bool.toZMod bit * (seg45AccY115 rho - rho 42693) := by
      have hd : rho 42695 = Bool.toZMod bit * (rho 42693 - seg45AccY115 rho) := by
        rw [← hbit, seg45LadderFlatY115_eq]
        unfold seg45LadderFlatY115
        linear_combination -r4467
      unfold seg45AccY116
      linear_combination hd
    have hd0 : rho 42686 * rho 42687 = rho 42696 := by linear_combination r4468
    have hd1 : rho 42686 * rho 42686 = rho 42697 := by linear_combination r4469
    have hd2 : rho 42687 * rho 42687 = rho 42698 := by linear_combination r4470
    have hd3 : rho 42699 * (rho 42687 * rho 42687 + rho 42686 * rho 42686 * (-1)) = 2 * (rho 42686 * rho 42687) := by
      rw [hd0, hd1, hd2]
      linear_combination r4471
    have hd4 : rho 42700 * (2 - (rho 42687 * rho 42687 + rho 42686 * rho 42686 * (-1))) = rho 42687 * rho 42687 - rho 42686 * rho 42686 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4472
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX115 rho : Seg45.F), (seg45AccY115 rho : Seg45.F)⟩
      ⟨(rho 42686 : Seg45.F), (rho 42687 : Seg45.F)⟩
      ⟨(rho 42692 : Seg45.F), (rho 42693 : Seg45.F)⟩
      ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
      ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg45_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41064 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4473 Seg45.relationLc615 Seg45.relationLc615Part0 Seg45.relationLc615Part1 Seg45.relationLc615Part2 Seg45.relationLc615Part3 Seg45.relationLc615Part4 Seg45.relationLc615Part5 Seg45.relationLc615Part6 Seg45.relationLc615Part7 at r4473
  unfold Seg45.relationRow4474 Seg45.relationLc616 Seg45.relationLc616Part0 Seg45.relationLc616Part1 Seg45.relationLc616Part2 Seg45.relationLc616Part3 at r4474
  unfold Seg45.relationRow4475 Seg45.relationLc617 Seg45.relationLc617Part0 Seg45.relationLc617Part1 Seg45.relationLc617Part2 Seg45.relationLc617Part3 at r4475
  unfold Seg45.relationRow4476 at r4476
  unfold Seg45.relationRow4477 at r4477
  unfold Seg45.relationRow4478 at r4478
  unfold Seg45.relationRow4479 Seg45.relationLc618 Seg45.relationLc618Part0 Seg45.relationLc618Part1 Seg45.relationLc618Part2 Seg45.relationLc618Part3 at r4479
  unfold Seg45.relationRow4480 Seg45.relationLc619 Seg45.relationLc619Part0 Seg45.relationLc619Part1 Seg45.relationLc619Part2 Seg45.relationLc619Part3 at r4480
  unfold Seg45.relationRow4481 at r4481
  unfold Seg45.relationRow4482 at r4482
  unfold Seg45.relationRow4483 at r4483
  unfold Seg45.relationRow4484 at r4484
  unfold Seg45.relationRow4485 at r4485
  have hrung116 (bit : Bool) (hbit : rho 41064 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
        ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩ := by
    have ha0 : (rho 42699 + rho 42700) * (seg45AccX116 rho + seg45AccY116 rho) = rho 42701 := by
      rw [seg45LadderFlatX116_eq, seg45LadderFlatY116_eq]
      unfold seg45LadderFlatX116 seg45LadderFlatY116
      linear_combination r4473
    have ha1 : rho 42700 * seg45AccX116 rho = rho 42702 := by
      rw [seg45LadderFlatX116_eq]
      unfold seg45LadderFlatX116
      linear_combination r4474
    have ha2 : rho 42699 * seg45AccY116 rho = rho 42703 := by
      rw [seg45LadderFlatY116_eq]
      unfold seg45LadderFlatY116
      linear_combination r4475
    have ha3 : 3021 * rho 42702 * rho 42703 = rho 42704 := by
      linear_combination r4476
    have ha4 : rho 42705 * (1 + rho 42704) = rho 42702 + rho 42703 := by
      linear_combination r4477
    have ha5 : rho 42706 * (1 - rho 42704) = rho 42701 - rho 42702 - rho 42703 := by
      linear_combination r4478
    have haddx :
        rho 42705 * (1 + 3021 * (rho 42700 * seg45AccX116 rho) * (rho 42699 * seg45AccY116 rho)) =
          rho 42700 * seg45AccX116 rho + rho 42699 * seg45AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42706 * (1 - 3021 * (rho 42700 * seg45AccX116 rho) * (rho 42699 * seg45AccY116 rho)) =
          (-1) * (rho 42700 * seg45AccX116 rho) - rho 42699 * seg45AccY116 rho +
            (seg45AccY116 rho - seg45AccX116 rho * (-1)) * (rho 42699 + rho 42700) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42706 * (1 - rho 42704) = rho 42701 - rho 42702 - rho 42703 := ha5
        _ = (-1) * rho 42702 - rho 42703 + (seg45AccY116 rho - seg45AccX116 rho * (-1)) * (rho 42699 + rho 42700) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX117 rho = seg45AccX116 rho - Bool.toZMod bit * (seg45AccX116 rho - rho 42705) := by
      have hd : rho 42707 = Bool.toZMod bit * (rho 42705 - seg45AccX116 rho) := by
        rw [← hbit, seg45LadderFlatX116_eq]
        unfold seg45LadderFlatX116
        linear_combination -r4479
      unfold seg45AccX117
      linear_combination hd
    have hsely : seg45AccY117 rho = seg45AccY116 rho - Bool.toZMod bit * (seg45AccY116 rho - rho 42706) := by
      have hd : rho 42708 = Bool.toZMod bit * (rho 42706 - seg45AccY116 rho) := by
        rw [← hbit, seg45LadderFlatY116_eq]
        unfold seg45LadderFlatY116
        linear_combination -r4480
      unfold seg45AccY117
      linear_combination hd
    have hd0 : rho 42699 * rho 42700 = rho 42709 := by linear_combination r4481
    have hd1 : rho 42699 * rho 42699 = rho 42710 := by linear_combination r4482
    have hd2 : rho 42700 * rho 42700 = rho 42711 := by linear_combination r4483
    have hd3 : rho 42712 * (rho 42700 * rho 42700 + rho 42699 * rho 42699 * (-1)) = 2 * (rho 42699 * rho 42700) := by
      rw [hd0, hd1, hd2]
      linear_combination r4484
    have hd4 : rho 42713 * (2 - (rho 42700 * rho 42700 + rho 42699 * rho 42699 * (-1))) = rho 42700 * rho 42700 - rho 42699 * rho 42699 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4485
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX116 rho : Seg45.F), (seg45AccY116 rho : Seg45.F)⟩
      ⟨(rho 42699 : Seg45.F), (rho 42700 : Seg45.F)⟩
      ⟨(rho 42705 : Seg45.F), (rho 42706 : Seg45.F)⟩
      ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
      ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg45_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41065 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4486 Seg45.relationLc620 Seg45.relationLc620Part0 Seg45.relationLc620Part1 Seg45.relationLc620Part2 Seg45.relationLc620Part3 Seg45.relationLc620Part4 Seg45.relationLc620Part5 Seg45.relationLc620Part6 Seg45.relationLc620Part7 at r4486
  unfold Seg45.relationRow4487 Seg45.relationLc621 Seg45.relationLc621Part0 Seg45.relationLc621Part1 Seg45.relationLc621Part2 Seg45.relationLc621Part3 at r4487
  unfold Seg45.relationRow4488 Seg45.relationLc622 Seg45.relationLc622Part0 Seg45.relationLc622Part1 Seg45.relationLc622Part2 Seg45.relationLc622Part3 at r4488
  unfold Seg45.relationRow4489 at r4489
  unfold Seg45.relationRow4490 at r4490
  unfold Seg45.relationRow4491 at r4491
  unfold Seg45.relationRow4492 Seg45.relationLc623 Seg45.relationLc623Part0 Seg45.relationLc623Part1 Seg45.relationLc623Part2 Seg45.relationLc623Part3 at r4492
  unfold Seg45.relationRow4493 Seg45.relationLc624 Seg45.relationLc624Part0 Seg45.relationLc624Part1 Seg45.relationLc624Part2 Seg45.relationLc624Part3 at r4493
  unfold Seg45.relationRow4494 at r4494
  unfold Seg45.relationRow4495 at r4495
  unfold Seg45.relationRow4496 at r4496
  unfold Seg45.relationRow4497 at r4497
  unfold Seg45.relationRow4498 at r4498
  have hrung117 (bit : Bool) (hbit : rho 41065 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
        ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩ := by
    have ha0 : (rho 42712 + rho 42713) * (seg45AccX117 rho + seg45AccY117 rho) = rho 42714 := by
      rw [seg45LadderFlatX117_eq, seg45LadderFlatY117_eq]
      unfold seg45LadderFlatX117 seg45LadderFlatY117
      linear_combination r4486
    have ha1 : rho 42713 * seg45AccX117 rho = rho 42715 := by
      rw [seg45LadderFlatX117_eq]
      unfold seg45LadderFlatX117
      linear_combination r4487
    have ha2 : rho 42712 * seg45AccY117 rho = rho 42716 := by
      rw [seg45LadderFlatY117_eq]
      unfold seg45LadderFlatY117
      linear_combination r4488
    have ha3 : 3021 * rho 42715 * rho 42716 = rho 42717 := by
      linear_combination r4489
    have ha4 : rho 42718 * (1 + rho 42717) = rho 42715 + rho 42716 := by
      linear_combination r4490
    have ha5 : rho 42719 * (1 - rho 42717) = rho 42714 - rho 42715 - rho 42716 := by
      linear_combination r4491
    have haddx :
        rho 42718 * (1 + 3021 * (rho 42713 * seg45AccX117 rho) * (rho 42712 * seg45AccY117 rho)) =
          rho 42713 * seg45AccX117 rho + rho 42712 * seg45AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42719 * (1 - 3021 * (rho 42713 * seg45AccX117 rho) * (rho 42712 * seg45AccY117 rho)) =
          (-1) * (rho 42713 * seg45AccX117 rho) - rho 42712 * seg45AccY117 rho +
            (seg45AccY117 rho - seg45AccX117 rho * (-1)) * (rho 42712 + rho 42713) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42719 * (1 - rho 42717) = rho 42714 - rho 42715 - rho 42716 := ha5
        _ = (-1) * rho 42715 - rho 42716 + (seg45AccY117 rho - seg45AccX117 rho * (-1)) * (rho 42712 + rho 42713) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX118 rho = seg45AccX117 rho - Bool.toZMod bit * (seg45AccX117 rho - rho 42718) := by
      have hd : rho 42720 = Bool.toZMod bit * (rho 42718 - seg45AccX117 rho) := by
        rw [← hbit, seg45LadderFlatX117_eq]
        unfold seg45LadderFlatX117
        linear_combination -r4492
      unfold seg45AccX118
      linear_combination hd
    have hsely : seg45AccY118 rho = seg45AccY117 rho - Bool.toZMod bit * (seg45AccY117 rho - rho 42719) := by
      have hd : rho 42721 = Bool.toZMod bit * (rho 42719 - seg45AccY117 rho) := by
        rw [← hbit, seg45LadderFlatY117_eq]
        unfold seg45LadderFlatY117
        linear_combination -r4493
      unfold seg45AccY118
      linear_combination hd
    have hd0 : rho 42712 * rho 42713 = rho 42722 := by linear_combination r4494
    have hd1 : rho 42712 * rho 42712 = rho 42723 := by linear_combination r4495
    have hd2 : rho 42713 * rho 42713 = rho 42724 := by linear_combination r4496
    have hd3 : rho 42725 * (rho 42713 * rho 42713 + rho 42712 * rho 42712 * (-1)) = 2 * (rho 42712 * rho 42713) := by
      rw [hd0, hd1, hd2]
      linear_combination r4497
    have hd4 : rho 42726 * (2 - (rho 42713 * rho 42713 + rho 42712 * rho 42712 * (-1))) = rho 42713 * rho 42713 - rho 42712 * rho 42712 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4498
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX117 rho : Seg45.F), (seg45AccY117 rho : Seg45.F)⟩
      ⟨(rho 42712 : Seg45.F), (rho 42713 : Seg45.F)⟩
      ⟨(rho 42718 : Seg45.F), (rho 42719 : Seg45.F)⟩
      ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
      ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg45_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41066 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4499 Seg45.relationLc625 Seg45.relationLc625Part0 Seg45.relationLc625Part1 Seg45.relationLc625Part2 Seg45.relationLc625Part3 Seg45.relationLc625Part4 Seg45.relationLc625Part5 Seg45.relationLc625Part6 Seg45.relationLc625Part7 at r4499
  unfold Seg45.relationRow4500 Seg45.relationLc626 Seg45.relationLc626Part0 Seg45.relationLc626Part1 Seg45.relationLc626Part2 Seg45.relationLc626Part3 at r4500
  unfold Seg45.relationRow4501 Seg45.relationLc627 Seg45.relationLc627Part0 Seg45.relationLc627Part1 Seg45.relationLc627Part2 Seg45.relationLc627Part3 at r4501
  unfold Seg45.relationRow4502 at r4502
  unfold Seg45.relationRow4503 at r4503
  unfold Seg45.relationRow4504 at r4504
  unfold Seg45.relationRow4505 Seg45.relationLc628 Seg45.relationLc628Part0 Seg45.relationLc628Part1 Seg45.relationLc628Part2 Seg45.relationLc628Part3 at r4505
  unfold Seg45.relationRow4506 Seg45.relationLc629 Seg45.relationLc629Part0 Seg45.relationLc629Part1 Seg45.relationLc629Part2 Seg45.relationLc629Part3 at r4506
  unfold Seg45.relationRow4507 at r4507
  unfold Seg45.relationRow4508 at r4508
  unfold Seg45.relationRow4509 at r4509
  unfold Seg45.relationRow4510 at r4510
  unfold Seg45.relationRow4511 at r4511
  have hrung118 (bit : Bool) (hbit : rho 41066 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
        ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩ := by
    have ha0 : (rho 42725 + rho 42726) * (seg45AccX118 rho + seg45AccY118 rho) = rho 42727 := by
      rw [seg45LadderFlatX118_eq, seg45LadderFlatY118_eq]
      unfold seg45LadderFlatX118 seg45LadderFlatY118
      linear_combination r4499
    have ha1 : rho 42726 * seg45AccX118 rho = rho 42728 := by
      rw [seg45LadderFlatX118_eq]
      unfold seg45LadderFlatX118
      linear_combination r4500
    have ha2 : rho 42725 * seg45AccY118 rho = rho 42729 := by
      rw [seg45LadderFlatY118_eq]
      unfold seg45LadderFlatY118
      linear_combination r4501
    have ha3 : 3021 * rho 42728 * rho 42729 = rho 42730 := by
      linear_combination r4502
    have ha4 : rho 42731 * (1 + rho 42730) = rho 42728 + rho 42729 := by
      linear_combination r4503
    have ha5 : rho 42732 * (1 - rho 42730) = rho 42727 - rho 42728 - rho 42729 := by
      linear_combination r4504
    have haddx :
        rho 42731 * (1 + 3021 * (rho 42726 * seg45AccX118 rho) * (rho 42725 * seg45AccY118 rho)) =
          rho 42726 * seg45AccX118 rho + rho 42725 * seg45AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42732 * (1 - 3021 * (rho 42726 * seg45AccX118 rho) * (rho 42725 * seg45AccY118 rho)) =
          (-1) * (rho 42726 * seg45AccX118 rho) - rho 42725 * seg45AccY118 rho +
            (seg45AccY118 rho - seg45AccX118 rho * (-1)) * (rho 42725 + rho 42726) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42732 * (1 - rho 42730) = rho 42727 - rho 42728 - rho 42729 := ha5
        _ = (-1) * rho 42728 - rho 42729 + (seg45AccY118 rho - seg45AccX118 rho * (-1)) * (rho 42725 + rho 42726) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX119 rho = seg45AccX118 rho - Bool.toZMod bit * (seg45AccX118 rho - rho 42731) := by
      have hd : rho 42733 = Bool.toZMod bit * (rho 42731 - seg45AccX118 rho) := by
        rw [← hbit, seg45LadderFlatX118_eq]
        unfold seg45LadderFlatX118
        linear_combination -r4505
      unfold seg45AccX119
      linear_combination hd
    have hsely : seg45AccY119 rho = seg45AccY118 rho - Bool.toZMod bit * (seg45AccY118 rho - rho 42732) := by
      have hd : rho 42734 = Bool.toZMod bit * (rho 42732 - seg45AccY118 rho) := by
        rw [← hbit, seg45LadderFlatY118_eq]
        unfold seg45LadderFlatY118
        linear_combination -r4506
      unfold seg45AccY119
      linear_combination hd
    have hd0 : rho 42725 * rho 42726 = rho 42735 := by linear_combination r4507
    have hd1 : rho 42725 * rho 42725 = rho 42736 := by linear_combination r4508
    have hd2 : rho 42726 * rho 42726 = rho 42737 := by linear_combination r4509
    have hd3 : rho 42738 * (rho 42726 * rho 42726 + rho 42725 * rho 42725 * (-1)) = 2 * (rho 42725 * rho 42726) := by
      rw [hd0, hd1, hd2]
      linear_combination r4510
    have hd4 : rho 42739 * (2 - (rho 42726 * rho 42726 + rho 42725 * rho 42725 * (-1))) = rho 42726 * rho 42726 - rho 42725 * rho 42725 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4511
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX118 rho : Seg45.F), (seg45AccY118 rho : Seg45.F)⟩
      ⟨(rho 42725 : Seg45.F), (rho 42726 : Seg45.F)⟩
      ⟨(rho 42731 : Seg45.F), (rho 42732 : Seg45.F)⟩
      ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
      ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg45_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41067 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4512 Seg45.relationLc630 Seg45.relationLc630Part0 Seg45.relationLc630Part1 Seg45.relationLc630Part2 Seg45.relationLc630Part3 Seg45.relationLc630Part4 Seg45.relationLc630Part5 Seg45.relationLc630Part6 Seg45.relationLc630Part7 at r4512
  unfold Seg45.relationRow4513 Seg45.relationLc631 Seg45.relationLc631Part0 Seg45.relationLc631Part1 Seg45.relationLc631Part2 Seg45.relationLc631Part3 at r4513
  unfold Seg45.relationRow4514 Seg45.relationLc632 Seg45.relationLc632Part0 Seg45.relationLc632Part1 Seg45.relationLc632Part2 Seg45.relationLc632Part3 at r4514
  unfold Seg45.relationRow4515 at r4515
  unfold Seg45.relationRow4516 at r4516
  unfold Seg45.relationRow4517 at r4517
  unfold Seg45.relationRow4518 Seg45.relationLc633 Seg45.relationLc633Part0 Seg45.relationLc633Part1 Seg45.relationLc633Part2 Seg45.relationLc633Part3 at r4518
  unfold Seg45.relationRow4519 Seg45.relationLc634 Seg45.relationLc634Part0 Seg45.relationLc634Part1 Seg45.relationLc634Part2 Seg45.relationLc634Part3 at r4519
  unfold Seg45.relationRow4520 at r4520
  unfold Seg45.relationRow4521 at r4521
  unfold Seg45.relationRow4522 at r4522
  unfold Seg45.relationRow4523 at r4523
  unfold Seg45.relationRow4524 at r4524
  have hrung119 (bit : Bool) (hbit : rho 41067 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
        ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩ := by
    have ha0 : (rho 42738 + rho 42739) * (seg45AccX119 rho + seg45AccY119 rho) = rho 42740 := by
      rw [seg45LadderFlatX119_eq, seg45LadderFlatY119_eq]
      unfold seg45LadderFlatX119 seg45LadderFlatY119
      linear_combination r4512
    have ha1 : rho 42739 * seg45AccX119 rho = rho 42741 := by
      rw [seg45LadderFlatX119_eq]
      unfold seg45LadderFlatX119
      linear_combination r4513
    have ha2 : rho 42738 * seg45AccY119 rho = rho 42742 := by
      rw [seg45LadderFlatY119_eq]
      unfold seg45LadderFlatY119
      linear_combination r4514
    have ha3 : 3021 * rho 42741 * rho 42742 = rho 42743 := by
      linear_combination r4515
    have ha4 : rho 42744 * (1 + rho 42743) = rho 42741 + rho 42742 := by
      linear_combination r4516
    have ha5 : rho 42745 * (1 - rho 42743) = rho 42740 - rho 42741 - rho 42742 := by
      linear_combination r4517
    have haddx :
        rho 42744 * (1 + 3021 * (rho 42739 * seg45AccX119 rho) * (rho 42738 * seg45AccY119 rho)) =
          rho 42739 * seg45AccX119 rho + rho 42738 * seg45AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42745 * (1 - 3021 * (rho 42739 * seg45AccX119 rho) * (rho 42738 * seg45AccY119 rho)) =
          (-1) * (rho 42739 * seg45AccX119 rho) - rho 42738 * seg45AccY119 rho +
            (seg45AccY119 rho - seg45AccX119 rho * (-1)) * (rho 42738 + rho 42739) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42745 * (1 - rho 42743) = rho 42740 - rho 42741 - rho 42742 := ha5
        _ = (-1) * rho 42741 - rho 42742 + (seg45AccY119 rho - seg45AccX119 rho * (-1)) * (rho 42738 + rho 42739) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX120 rho = seg45AccX119 rho - Bool.toZMod bit * (seg45AccX119 rho - rho 42744) := by
      have hd : rho 42746 = Bool.toZMod bit * (rho 42744 - seg45AccX119 rho) := by
        rw [← hbit, seg45LadderFlatX119_eq]
        unfold seg45LadderFlatX119
        linear_combination -r4518
      unfold seg45AccX120
      linear_combination hd
    have hsely : seg45AccY120 rho = seg45AccY119 rho - Bool.toZMod bit * (seg45AccY119 rho - rho 42745) := by
      have hd : rho 42747 = Bool.toZMod bit * (rho 42745 - seg45AccY119 rho) := by
        rw [← hbit, seg45LadderFlatY119_eq]
        unfold seg45LadderFlatY119
        linear_combination -r4519
      unfold seg45AccY120
      linear_combination hd
    have hd0 : rho 42738 * rho 42739 = rho 42748 := by linear_combination r4520
    have hd1 : rho 42738 * rho 42738 = rho 42749 := by linear_combination r4521
    have hd2 : rho 42739 * rho 42739 = rho 42750 := by linear_combination r4522
    have hd3 : rho 42751 * (rho 42739 * rho 42739 + rho 42738 * rho 42738 * (-1)) = 2 * (rho 42738 * rho 42739) := by
      rw [hd0, hd1, hd2]
      linear_combination r4523
    have hd4 : rho 42752 * (2 - (rho 42739 * rho 42739 + rho 42738 * rho 42738 * (-1))) = rho 42739 * rho 42739 - rho 42738 * rho 42738 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4524
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX119 rho : Seg45.F), (seg45AccY119 rho : Seg45.F)⟩
      ⟨(rho 42738 : Seg45.F), (rho 42739 : Seg45.F)⟩
      ⟨(rho 42744 : Seg45.F), (rho 42745 : Seg45.F)⟩
      ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
      ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg45_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41068 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4525 Seg45.relationLc635 Seg45.relationLc635Part0 Seg45.relationLc635Part1 Seg45.relationLc635Part2 Seg45.relationLc635Part3 Seg45.relationLc635Part4 Seg45.relationLc635Part5 Seg45.relationLc635Part6 Seg45.relationLc635Part7 at r4525
  unfold Seg45.relationRow4526 Seg45.relationLc636 Seg45.relationLc636Part0 Seg45.relationLc636Part1 Seg45.relationLc636Part2 Seg45.relationLc636Part3 at r4526
  unfold Seg45.relationRow4527 Seg45.relationLc637 Seg45.relationLc637Part0 Seg45.relationLc637Part1 Seg45.relationLc637Part2 Seg45.relationLc637Part3 at r4527
  unfold Seg45.relationRow4528 at r4528
  unfold Seg45.relationRow4529 at r4529
  unfold Seg45.relationRow4530 at r4530
  unfold Seg45.relationRow4531 Seg45.relationLc638 Seg45.relationLc638Part0 Seg45.relationLc638Part1 Seg45.relationLc638Part2 Seg45.relationLc638Part3 at r4531
  unfold Seg45.relationRow4532 Seg45.relationLc639 Seg45.relationLc639Part0 Seg45.relationLc639Part1 Seg45.relationLc639Part2 Seg45.relationLc639Part3 at r4532
  unfold Seg45.relationRow4533 at r4533
  unfold Seg45.relationRow4534 at r4534
  unfold Seg45.relationRow4535 at r4535
  unfold Seg45.relationRow4536 at r4536
  unfold Seg45.relationRow4537 at r4537
  have hrung120 (bit : Bool) (hbit : rho 41068 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
        ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩ := by
    have ha0 : (rho 42751 + rho 42752) * (seg45AccX120 rho + seg45AccY120 rho) = rho 42753 := by
      rw [seg45LadderFlatX120_eq, seg45LadderFlatY120_eq]
      unfold seg45LadderFlatX120 seg45LadderFlatY120
      linear_combination r4525
    have ha1 : rho 42752 * seg45AccX120 rho = rho 42754 := by
      rw [seg45LadderFlatX120_eq]
      unfold seg45LadderFlatX120
      linear_combination r4526
    have ha2 : rho 42751 * seg45AccY120 rho = rho 42755 := by
      rw [seg45LadderFlatY120_eq]
      unfold seg45LadderFlatY120
      linear_combination r4527
    have ha3 : 3021 * rho 42754 * rho 42755 = rho 42756 := by
      linear_combination r4528
    have ha4 : rho 42757 * (1 + rho 42756) = rho 42754 + rho 42755 := by
      linear_combination r4529
    have ha5 : rho 42758 * (1 - rho 42756) = rho 42753 - rho 42754 - rho 42755 := by
      linear_combination r4530
    have haddx :
        rho 42757 * (1 + 3021 * (rho 42752 * seg45AccX120 rho) * (rho 42751 * seg45AccY120 rho)) =
          rho 42752 * seg45AccX120 rho + rho 42751 * seg45AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42758 * (1 - 3021 * (rho 42752 * seg45AccX120 rho) * (rho 42751 * seg45AccY120 rho)) =
          (-1) * (rho 42752 * seg45AccX120 rho) - rho 42751 * seg45AccY120 rho +
            (seg45AccY120 rho - seg45AccX120 rho * (-1)) * (rho 42751 + rho 42752) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42758 * (1 - rho 42756) = rho 42753 - rho 42754 - rho 42755 := ha5
        _ = (-1) * rho 42754 - rho 42755 + (seg45AccY120 rho - seg45AccX120 rho * (-1)) * (rho 42751 + rho 42752) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX121 rho = seg45AccX120 rho - Bool.toZMod bit * (seg45AccX120 rho - rho 42757) := by
      have hd : rho 42759 = Bool.toZMod bit * (rho 42757 - seg45AccX120 rho) := by
        rw [← hbit, seg45LadderFlatX120_eq]
        unfold seg45LadderFlatX120
        linear_combination -r4531
      unfold seg45AccX121
      linear_combination hd
    have hsely : seg45AccY121 rho = seg45AccY120 rho - Bool.toZMod bit * (seg45AccY120 rho - rho 42758) := by
      have hd : rho 42760 = Bool.toZMod bit * (rho 42758 - seg45AccY120 rho) := by
        rw [← hbit, seg45LadderFlatY120_eq]
        unfold seg45LadderFlatY120
        linear_combination -r4532
      unfold seg45AccY121
      linear_combination hd
    have hd0 : rho 42751 * rho 42752 = rho 42761 := by linear_combination r4533
    have hd1 : rho 42751 * rho 42751 = rho 42762 := by linear_combination r4534
    have hd2 : rho 42752 * rho 42752 = rho 42763 := by linear_combination r4535
    have hd3 : rho 42764 * (rho 42752 * rho 42752 + rho 42751 * rho 42751 * (-1)) = 2 * (rho 42751 * rho 42752) := by
      rw [hd0, hd1, hd2]
      linear_combination r4536
    have hd4 : rho 42765 * (2 - (rho 42752 * rho 42752 + rho 42751 * rho 42751 * (-1))) = rho 42752 * rho 42752 - rho 42751 * rho 42751 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4537
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX120 rho : Seg45.F), (seg45AccY120 rho : Seg45.F)⟩
      ⟨(rho 42751 : Seg45.F), (rho 42752 : Seg45.F)⟩
      ⟨(rho 42757 : Seg45.F), (rho 42758 : Seg45.F)⟩
      ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
      ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg45_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41069 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4538 Seg45.relationLc640 Seg45.relationLc640Part0 Seg45.relationLc640Part1 Seg45.relationLc640Part2 Seg45.relationLc640Part3 Seg45.relationLc640Part4 Seg45.relationLc640Part5 Seg45.relationLc640Part6 Seg45.relationLc640Part7 at r4538
  unfold Seg45.relationRow4539 Seg45.relationLc641 Seg45.relationLc641Part0 Seg45.relationLc641Part1 Seg45.relationLc641Part2 Seg45.relationLc641Part3 at r4539
  unfold Seg45.relationRow4540 Seg45.relationLc642 Seg45.relationLc642Part0 Seg45.relationLc642Part1 Seg45.relationLc642Part2 Seg45.relationLc642Part3 at r4540
  unfold Seg45.relationRow4541 at r4541
  unfold Seg45.relationRow4542 at r4542
  unfold Seg45.relationRow4543 at r4543
  unfold Seg45.relationRow4544 Seg45.relationLc643 Seg45.relationLc643Part0 Seg45.relationLc643Part1 Seg45.relationLc643Part2 Seg45.relationLc643Part3 at r4544
  unfold Seg45.relationRow4545 Seg45.relationLc644 Seg45.relationLc644Part0 Seg45.relationLc644Part1 Seg45.relationLc644Part2 Seg45.relationLc644Part3 at r4545
  unfold Seg45.relationRow4546 at r4546
  unfold Seg45.relationRow4547 at r4547
  unfold Seg45.relationRow4548 at r4548
  unfold Seg45.relationRow4549 at r4549
  unfold Seg45.relationRow4550 at r4550
  have hrung121 (bit : Bool) (hbit : rho 41069 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
        ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩ := by
    have ha0 : (rho 42764 + rho 42765) * (seg45AccX121 rho + seg45AccY121 rho) = rho 42766 := by
      rw [seg45LadderFlatX121_eq, seg45LadderFlatY121_eq]
      unfold seg45LadderFlatX121 seg45LadderFlatY121
      linear_combination r4538
    have ha1 : rho 42765 * seg45AccX121 rho = rho 42767 := by
      rw [seg45LadderFlatX121_eq]
      unfold seg45LadderFlatX121
      linear_combination r4539
    have ha2 : rho 42764 * seg45AccY121 rho = rho 42768 := by
      rw [seg45LadderFlatY121_eq]
      unfold seg45LadderFlatY121
      linear_combination r4540
    have ha3 : 3021 * rho 42767 * rho 42768 = rho 42769 := by
      linear_combination r4541
    have ha4 : rho 42770 * (1 + rho 42769) = rho 42767 + rho 42768 := by
      linear_combination r4542
    have ha5 : rho 42771 * (1 - rho 42769) = rho 42766 - rho 42767 - rho 42768 := by
      linear_combination r4543
    have haddx :
        rho 42770 * (1 + 3021 * (rho 42765 * seg45AccX121 rho) * (rho 42764 * seg45AccY121 rho)) =
          rho 42765 * seg45AccX121 rho + rho 42764 * seg45AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42771 * (1 - 3021 * (rho 42765 * seg45AccX121 rho) * (rho 42764 * seg45AccY121 rho)) =
          (-1) * (rho 42765 * seg45AccX121 rho) - rho 42764 * seg45AccY121 rho +
            (seg45AccY121 rho - seg45AccX121 rho * (-1)) * (rho 42764 + rho 42765) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42771 * (1 - rho 42769) = rho 42766 - rho 42767 - rho 42768 := ha5
        _ = (-1) * rho 42767 - rho 42768 + (seg45AccY121 rho - seg45AccX121 rho * (-1)) * (rho 42764 + rho 42765) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX122 rho = seg45AccX121 rho - Bool.toZMod bit * (seg45AccX121 rho - rho 42770) := by
      have hd : rho 42772 = Bool.toZMod bit * (rho 42770 - seg45AccX121 rho) := by
        rw [← hbit, seg45LadderFlatX121_eq]
        unfold seg45LadderFlatX121
        linear_combination -r4544
      unfold seg45AccX122
      linear_combination hd
    have hsely : seg45AccY122 rho = seg45AccY121 rho - Bool.toZMod bit * (seg45AccY121 rho - rho 42771) := by
      have hd : rho 42773 = Bool.toZMod bit * (rho 42771 - seg45AccY121 rho) := by
        rw [← hbit, seg45LadderFlatY121_eq]
        unfold seg45LadderFlatY121
        linear_combination -r4545
      unfold seg45AccY122
      linear_combination hd
    have hd0 : rho 42764 * rho 42765 = rho 42774 := by linear_combination r4546
    have hd1 : rho 42764 * rho 42764 = rho 42775 := by linear_combination r4547
    have hd2 : rho 42765 * rho 42765 = rho 42776 := by linear_combination r4548
    have hd3 : rho 42777 * (rho 42765 * rho 42765 + rho 42764 * rho 42764 * (-1)) = 2 * (rho 42764 * rho 42765) := by
      rw [hd0, hd1, hd2]
      linear_combination r4549
    have hd4 : rho 42778 * (2 - (rho 42765 * rho 42765 + rho 42764 * rho 42764 * (-1))) = rho 42765 * rho 42765 - rho 42764 * rho 42764 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4550
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX121 rho : Seg45.F), (seg45AccY121 rho : Seg45.F)⟩
      ⟨(rho 42764 : Seg45.F), (rho 42765 : Seg45.F)⟩
      ⟨(rho 42770 : Seg45.F), (rho 42771 : Seg45.F)⟩
      ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
      ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg45_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41070 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4551 Seg45.relationLc645 Seg45.relationLc645Part0 Seg45.relationLc645Part1 Seg45.relationLc645Part2 Seg45.relationLc645Part3 Seg45.relationLc645Part4 Seg45.relationLc645Part5 Seg45.relationLc645Part6 Seg45.relationLc645Part7 at r4551
  unfold Seg45.relationRow4552 Seg45.relationLc646 Seg45.relationLc646Part0 Seg45.relationLc646Part1 Seg45.relationLc646Part2 Seg45.relationLc646Part3 at r4552
  unfold Seg45.relationRow4553 Seg45.relationLc647 Seg45.relationLc647Part0 Seg45.relationLc647Part1 Seg45.relationLc647Part2 Seg45.relationLc647Part3 at r4553
  unfold Seg45.relationRow4554 at r4554
  unfold Seg45.relationRow4555 at r4555
  unfold Seg45.relationRow4556 at r4556
  unfold Seg45.relationRow4557 Seg45.relationLc648 Seg45.relationLc648Part0 Seg45.relationLc648Part1 Seg45.relationLc648Part2 Seg45.relationLc648Part3 at r4557
  unfold Seg45.relationRow4558 Seg45.relationLc649 Seg45.relationLc649Part0 Seg45.relationLc649Part1 Seg45.relationLc649Part2 Seg45.relationLc649Part3 at r4558
  unfold Seg45.relationRow4559 at r4559
  unfold Seg45.relationRow4560 at r4560
  unfold Seg45.relationRow4561 at r4561
  unfold Seg45.relationRow4562 at r4562
  unfold Seg45.relationRow4563 at r4563
  have hrung122 (bit : Bool) (hbit : rho 41070 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
        ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩ := by
    have ha0 : (rho 42777 + rho 42778) * (seg45AccX122 rho + seg45AccY122 rho) = rho 42779 := by
      rw [seg45LadderFlatX122_eq, seg45LadderFlatY122_eq]
      unfold seg45LadderFlatX122 seg45LadderFlatY122
      linear_combination r4551
    have ha1 : rho 42778 * seg45AccX122 rho = rho 42780 := by
      rw [seg45LadderFlatX122_eq]
      unfold seg45LadderFlatX122
      linear_combination r4552
    have ha2 : rho 42777 * seg45AccY122 rho = rho 42781 := by
      rw [seg45LadderFlatY122_eq]
      unfold seg45LadderFlatY122
      linear_combination r4553
    have ha3 : 3021 * rho 42780 * rho 42781 = rho 42782 := by
      linear_combination r4554
    have ha4 : rho 42783 * (1 + rho 42782) = rho 42780 + rho 42781 := by
      linear_combination r4555
    have ha5 : rho 42784 * (1 - rho 42782) = rho 42779 - rho 42780 - rho 42781 := by
      linear_combination r4556
    have haddx :
        rho 42783 * (1 + 3021 * (rho 42778 * seg45AccX122 rho) * (rho 42777 * seg45AccY122 rho)) =
          rho 42778 * seg45AccX122 rho + rho 42777 * seg45AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42784 * (1 - 3021 * (rho 42778 * seg45AccX122 rho) * (rho 42777 * seg45AccY122 rho)) =
          (-1) * (rho 42778 * seg45AccX122 rho) - rho 42777 * seg45AccY122 rho +
            (seg45AccY122 rho - seg45AccX122 rho * (-1)) * (rho 42777 + rho 42778) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42784 * (1 - rho 42782) = rho 42779 - rho 42780 - rho 42781 := ha5
        _ = (-1) * rho 42780 - rho 42781 + (seg45AccY122 rho - seg45AccX122 rho * (-1)) * (rho 42777 + rho 42778) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX123 rho = seg45AccX122 rho - Bool.toZMod bit * (seg45AccX122 rho - rho 42783) := by
      have hd : rho 42785 = Bool.toZMod bit * (rho 42783 - seg45AccX122 rho) := by
        rw [← hbit, seg45LadderFlatX122_eq]
        unfold seg45LadderFlatX122
        linear_combination -r4557
      unfold seg45AccX123
      linear_combination hd
    have hsely : seg45AccY123 rho = seg45AccY122 rho - Bool.toZMod bit * (seg45AccY122 rho - rho 42784) := by
      have hd : rho 42786 = Bool.toZMod bit * (rho 42784 - seg45AccY122 rho) := by
        rw [← hbit, seg45LadderFlatY122_eq]
        unfold seg45LadderFlatY122
        linear_combination -r4558
      unfold seg45AccY123
      linear_combination hd
    have hd0 : rho 42777 * rho 42778 = rho 42787 := by linear_combination r4559
    have hd1 : rho 42777 * rho 42777 = rho 42788 := by linear_combination r4560
    have hd2 : rho 42778 * rho 42778 = rho 42789 := by linear_combination r4561
    have hd3 : rho 42790 * (rho 42778 * rho 42778 + rho 42777 * rho 42777 * (-1)) = 2 * (rho 42777 * rho 42778) := by
      rw [hd0, hd1, hd2]
      linear_combination r4562
    have hd4 : rho 42791 * (2 - (rho 42778 * rho 42778 + rho 42777 * rho 42777 * (-1))) = rho 42778 * rho 42778 - rho 42777 * rho 42777 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4563
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX122 rho : Seg45.F), (seg45AccY122 rho : Seg45.F)⟩
      ⟨(rho 42777 : Seg45.F), (rho 42778 : Seg45.F)⟩
      ⟨(rho 42783 : Seg45.F), (rho 42784 : Seg45.F)⟩
      ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
      ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg45_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41071 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4564 Seg45.relationLc650 Seg45.relationLc650Part0 Seg45.relationLc650Part1 Seg45.relationLc650Part2 Seg45.relationLc650Part3 Seg45.relationLc650Part4 Seg45.relationLc650Part5 Seg45.relationLc650Part6 Seg45.relationLc650Part7 at r4564
  unfold Seg45.relationRow4565 Seg45.relationLc651 Seg45.relationLc651Part0 Seg45.relationLc651Part1 Seg45.relationLc651Part2 Seg45.relationLc651Part3 at r4565
  unfold Seg45.relationRow4566 Seg45.relationLc652 Seg45.relationLc652Part0 Seg45.relationLc652Part1 Seg45.relationLc652Part2 Seg45.relationLc652Part3 at r4566
  unfold Seg45.relationRow4567 at r4567
  unfold Seg45.relationRow4568 at r4568
  unfold Seg45.relationRow4569 at r4569
  unfold Seg45.relationRow4570 Seg45.relationLc653 Seg45.relationLc653Part0 Seg45.relationLc653Part1 Seg45.relationLc653Part2 Seg45.relationLc653Part3 at r4570
  unfold Seg45.relationRow4571 Seg45.relationLc654 Seg45.relationLc654Part0 Seg45.relationLc654Part1 Seg45.relationLc654Part2 Seg45.relationLc654Part3 at r4571
  unfold Seg45.relationRow4572 at r4572
  unfold Seg45.relationRow4573 at r4573
  unfold Seg45.relationRow4574 at r4574
  unfold Seg45.relationRow4575 at r4575
  unfold Seg45.relationRow4576 at r4576
  have hrung123 (bit : Bool) (hbit : rho 41071 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
        ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩ := by
    have ha0 : (rho 42790 + rho 42791) * (seg45AccX123 rho + seg45AccY123 rho) = rho 42792 := by
      rw [seg45LadderFlatX123_eq, seg45LadderFlatY123_eq]
      unfold seg45LadderFlatX123 seg45LadderFlatY123
      linear_combination r4564
    have ha1 : rho 42791 * seg45AccX123 rho = rho 42793 := by
      rw [seg45LadderFlatX123_eq]
      unfold seg45LadderFlatX123
      linear_combination r4565
    have ha2 : rho 42790 * seg45AccY123 rho = rho 42794 := by
      rw [seg45LadderFlatY123_eq]
      unfold seg45LadderFlatY123
      linear_combination r4566
    have ha3 : 3021 * rho 42793 * rho 42794 = rho 42795 := by
      linear_combination r4567
    have ha4 : rho 42796 * (1 + rho 42795) = rho 42793 + rho 42794 := by
      linear_combination r4568
    have ha5 : rho 42797 * (1 - rho 42795) = rho 42792 - rho 42793 - rho 42794 := by
      linear_combination r4569
    have haddx :
        rho 42796 * (1 + 3021 * (rho 42791 * seg45AccX123 rho) * (rho 42790 * seg45AccY123 rho)) =
          rho 42791 * seg45AccX123 rho + rho 42790 * seg45AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42797 * (1 - 3021 * (rho 42791 * seg45AccX123 rho) * (rho 42790 * seg45AccY123 rho)) =
          (-1) * (rho 42791 * seg45AccX123 rho) - rho 42790 * seg45AccY123 rho +
            (seg45AccY123 rho - seg45AccX123 rho * (-1)) * (rho 42790 + rho 42791) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42797 * (1 - rho 42795) = rho 42792 - rho 42793 - rho 42794 := ha5
        _ = (-1) * rho 42793 - rho 42794 + (seg45AccY123 rho - seg45AccX123 rho * (-1)) * (rho 42790 + rho 42791) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX124 rho = seg45AccX123 rho - Bool.toZMod bit * (seg45AccX123 rho - rho 42796) := by
      have hd : rho 42798 = Bool.toZMod bit * (rho 42796 - seg45AccX123 rho) := by
        rw [← hbit, seg45LadderFlatX123_eq]
        unfold seg45LadderFlatX123
        linear_combination -r4570
      unfold seg45AccX124
      linear_combination hd
    have hsely : seg45AccY124 rho = seg45AccY123 rho - Bool.toZMod bit * (seg45AccY123 rho - rho 42797) := by
      have hd : rho 42799 = Bool.toZMod bit * (rho 42797 - seg45AccY123 rho) := by
        rw [← hbit, seg45LadderFlatY123_eq]
        unfold seg45LadderFlatY123
        linear_combination -r4571
      unfold seg45AccY124
      linear_combination hd
    have hd0 : rho 42790 * rho 42791 = rho 42800 := by linear_combination r4572
    have hd1 : rho 42790 * rho 42790 = rho 42801 := by linear_combination r4573
    have hd2 : rho 42791 * rho 42791 = rho 42802 := by linear_combination r4574
    have hd3 : rho 42803 * (rho 42791 * rho 42791 + rho 42790 * rho 42790 * (-1)) = 2 * (rho 42790 * rho 42791) := by
      rw [hd0, hd1, hd2]
      linear_combination r4575
    have hd4 : rho 42804 * (2 - (rho 42791 * rho 42791 + rho 42790 * rho 42790 * (-1))) = rho 42791 * rho 42791 - rho 42790 * rho 42790 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4576
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX123 rho : Seg45.F), (seg45AccY123 rho : Seg45.F)⟩
      ⟨(rho 42790 : Seg45.F), (rho 42791 : Seg45.F)⟩
      ⟨(rho 42796 : Seg45.F), (rho 42797 : Seg45.F)⟩
      ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
      ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg45_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41072 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4577 Seg45.relationLc655 Seg45.relationLc655Part0 Seg45.relationLc655Part1 Seg45.relationLc655Part2 Seg45.relationLc655Part3 Seg45.relationLc655Part4 Seg45.relationLc655Part5 Seg45.relationLc655Part6 Seg45.relationLc655Part7 at r4577
  unfold Seg45.relationRow4578 Seg45.relationLc656 Seg45.relationLc656Part0 Seg45.relationLc656Part1 Seg45.relationLc656Part2 Seg45.relationLc656Part3 at r4578
  unfold Seg45.relationRow4579 Seg45.relationLc657 Seg45.relationLc657Part0 Seg45.relationLc657Part1 Seg45.relationLc657Part2 Seg45.relationLc657Part3 at r4579
  unfold Seg45.relationRow4580 at r4580
  unfold Seg45.relationRow4581 at r4581
  unfold Seg45.relationRow4582 at r4582
  unfold Seg45.relationRow4583 Seg45.relationLc658 Seg45.relationLc658Part0 Seg45.relationLc658Part1 Seg45.relationLc658Part2 Seg45.relationLc658Part3 at r4583
  unfold Seg45.relationRow4584 Seg45.relationLc659 Seg45.relationLc659Part0 Seg45.relationLc659Part1 Seg45.relationLc659Part2 Seg45.relationLc659Part3 at r4584
  unfold Seg45.relationRow4585 at r4585
  unfold Seg45.relationRow4586 at r4586
  unfold Seg45.relationRow4587 at r4587
  unfold Seg45.relationRow4588 at r4588
  unfold Seg45.relationRow4589 at r4589
  have hrung124 (bit : Bool) (hbit : rho 41072 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
        ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩ := by
    have ha0 : (rho 42803 + rho 42804) * (seg45AccX124 rho + seg45AccY124 rho) = rho 42805 := by
      rw [seg45LadderFlatX124_eq, seg45LadderFlatY124_eq]
      unfold seg45LadderFlatX124 seg45LadderFlatY124
      linear_combination r4577
    have ha1 : rho 42804 * seg45AccX124 rho = rho 42806 := by
      rw [seg45LadderFlatX124_eq]
      unfold seg45LadderFlatX124
      linear_combination r4578
    have ha2 : rho 42803 * seg45AccY124 rho = rho 42807 := by
      rw [seg45LadderFlatY124_eq]
      unfold seg45LadderFlatY124
      linear_combination r4579
    have ha3 : 3021 * rho 42806 * rho 42807 = rho 42808 := by
      linear_combination r4580
    have ha4 : rho 42809 * (1 + rho 42808) = rho 42806 + rho 42807 := by
      linear_combination r4581
    have ha5 : rho 42810 * (1 - rho 42808) = rho 42805 - rho 42806 - rho 42807 := by
      linear_combination r4582
    have haddx :
        rho 42809 * (1 + 3021 * (rho 42804 * seg45AccX124 rho) * (rho 42803 * seg45AccY124 rho)) =
          rho 42804 * seg45AccX124 rho + rho 42803 * seg45AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42810 * (1 - 3021 * (rho 42804 * seg45AccX124 rho) * (rho 42803 * seg45AccY124 rho)) =
          (-1) * (rho 42804 * seg45AccX124 rho) - rho 42803 * seg45AccY124 rho +
            (seg45AccY124 rho - seg45AccX124 rho * (-1)) * (rho 42803 + rho 42804) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42810 * (1 - rho 42808) = rho 42805 - rho 42806 - rho 42807 := ha5
        _ = (-1) * rho 42806 - rho 42807 + (seg45AccY124 rho - seg45AccX124 rho * (-1)) * (rho 42803 + rho 42804) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX125 rho = seg45AccX124 rho - Bool.toZMod bit * (seg45AccX124 rho - rho 42809) := by
      have hd : rho 42811 = Bool.toZMod bit * (rho 42809 - seg45AccX124 rho) := by
        rw [← hbit, seg45LadderFlatX124_eq]
        unfold seg45LadderFlatX124
        linear_combination -r4583
      unfold seg45AccX125
      linear_combination hd
    have hsely : seg45AccY125 rho = seg45AccY124 rho - Bool.toZMod bit * (seg45AccY124 rho - rho 42810) := by
      have hd : rho 42812 = Bool.toZMod bit * (rho 42810 - seg45AccY124 rho) := by
        rw [← hbit, seg45LadderFlatY124_eq]
        unfold seg45LadderFlatY124
        linear_combination -r4584
      unfold seg45AccY125
      linear_combination hd
    have hd0 : rho 42803 * rho 42804 = rho 42813 := by linear_combination r4585
    have hd1 : rho 42803 * rho 42803 = rho 42814 := by linear_combination r4586
    have hd2 : rho 42804 * rho 42804 = rho 42815 := by linear_combination r4587
    have hd3 : rho 42816 * (rho 42804 * rho 42804 + rho 42803 * rho 42803 * (-1)) = 2 * (rho 42803 * rho 42804) := by
      rw [hd0, hd1, hd2]
      linear_combination r4588
    have hd4 : rho 42817 * (2 - (rho 42804 * rho 42804 + rho 42803 * rho 42803 * (-1))) = rho 42804 * rho 42804 - rho 42803 * rho 42803 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4589
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX124 rho : Seg45.F), (seg45AccY124 rho : Seg45.F)⟩
      ⟨(rho 42803 : Seg45.F), (rho 42804 : Seg45.F)⟩
      ⟨(rho 42809 : Seg45.F), (rho 42810 : Seg45.F)⟩
      ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
      ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg45_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41073 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4590 Seg45.relationLc660 Seg45.relationLc660Part0 Seg45.relationLc660Part1 Seg45.relationLc660Part2 Seg45.relationLc660Part3 Seg45.relationLc660Part4 Seg45.relationLc660Part5 Seg45.relationLc660Part6 Seg45.relationLc660Part7 at r4590
  unfold Seg45.relationRow4591 Seg45.relationLc661 Seg45.relationLc661Part0 Seg45.relationLc661Part1 Seg45.relationLc661Part2 Seg45.relationLc661Part3 at r4591
  unfold Seg45.relationRow4592 Seg45.relationLc662 Seg45.relationLc662Part0 Seg45.relationLc662Part1 Seg45.relationLc662Part2 Seg45.relationLc662Part3 at r4592
  unfold Seg45.relationRow4593 at r4593
  unfold Seg45.relationRow4594 at r4594
  unfold Seg45.relationRow4595 at r4595
  unfold Seg45.relationRow4596 Seg45.relationLc663 Seg45.relationLc663Part0 Seg45.relationLc663Part1 Seg45.relationLc663Part2 Seg45.relationLc663Part3 at r4596
  unfold Seg45.relationRow4597 Seg45.relationLc664 Seg45.relationLc664Part0 Seg45.relationLc664Part1 Seg45.relationLc664Part2 Seg45.relationLc664Part3 at r4597
  unfold Seg45.relationRow4598 at r4598
  unfold Seg45.relationRow4599 at r4599
  unfold Seg45.relationRow4600 at r4600
  unfold Seg45.relationRow4601 at r4601
  unfold Seg45.relationRow4602 at r4602
  have hrung125 (bit : Bool) (hbit : rho 41073 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
        ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩ := by
    have ha0 : (rho 42816 + rho 42817) * (seg45AccX125 rho + seg45AccY125 rho) = rho 42818 := by
      rw [seg45LadderFlatX125_eq, seg45LadderFlatY125_eq]
      unfold seg45LadderFlatX125 seg45LadderFlatY125
      linear_combination r4590
    have ha1 : rho 42817 * seg45AccX125 rho = rho 42819 := by
      rw [seg45LadderFlatX125_eq]
      unfold seg45LadderFlatX125
      linear_combination r4591
    have ha2 : rho 42816 * seg45AccY125 rho = rho 42820 := by
      rw [seg45LadderFlatY125_eq]
      unfold seg45LadderFlatY125
      linear_combination r4592
    have ha3 : 3021 * rho 42819 * rho 42820 = rho 42821 := by
      linear_combination r4593
    have ha4 : rho 42822 * (1 + rho 42821) = rho 42819 + rho 42820 := by
      linear_combination r4594
    have ha5 : rho 42823 * (1 - rho 42821) = rho 42818 - rho 42819 - rho 42820 := by
      linear_combination r4595
    have haddx :
        rho 42822 * (1 + 3021 * (rho 42817 * seg45AccX125 rho) * (rho 42816 * seg45AccY125 rho)) =
          rho 42817 * seg45AccX125 rho + rho 42816 * seg45AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42823 * (1 - 3021 * (rho 42817 * seg45AccX125 rho) * (rho 42816 * seg45AccY125 rho)) =
          (-1) * (rho 42817 * seg45AccX125 rho) - rho 42816 * seg45AccY125 rho +
            (seg45AccY125 rho - seg45AccX125 rho * (-1)) * (rho 42816 + rho 42817) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42823 * (1 - rho 42821) = rho 42818 - rho 42819 - rho 42820 := ha5
        _ = (-1) * rho 42819 - rho 42820 + (seg45AccY125 rho - seg45AccX125 rho * (-1)) * (rho 42816 + rho 42817) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX126 rho = seg45AccX125 rho - Bool.toZMod bit * (seg45AccX125 rho - rho 42822) := by
      have hd : rho 42824 = Bool.toZMod bit * (rho 42822 - seg45AccX125 rho) := by
        rw [← hbit, seg45LadderFlatX125_eq]
        unfold seg45LadderFlatX125
        linear_combination -r4596
      unfold seg45AccX126
      linear_combination hd
    have hsely : seg45AccY126 rho = seg45AccY125 rho - Bool.toZMod bit * (seg45AccY125 rho - rho 42823) := by
      have hd : rho 42825 = Bool.toZMod bit * (rho 42823 - seg45AccY125 rho) := by
        rw [← hbit, seg45LadderFlatY125_eq]
        unfold seg45LadderFlatY125
        linear_combination -r4597
      unfold seg45AccY126
      linear_combination hd
    have hd0 : rho 42816 * rho 42817 = rho 42826 := by linear_combination r4598
    have hd1 : rho 42816 * rho 42816 = rho 42827 := by linear_combination r4599
    have hd2 : rho 42817 * rho 42817 = rho 42828 := by linear_combination r4600
    have hd3 : rho 42829 * (rho 42817 * rho 42817 + rho 42816 * rho 42816 * (-1)) = 2 * (rho 42816 * rho 42817) := by
      rw [hd0, hd1, hd2]
      linear_combination r4601
    have hd4 : rho 42830 * (2 - (rho 42817 * rho 42817 + rho 42816 * rho 42816 * (-1))) = rho 42817 * rho 42817 - rho 42816 * rho 42816 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4602
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX125 rho : Seg45.F), (seg45AccY125 rho : Seg45.F)⟩
      ⟨(rho 42816 : Seg45.F), (rho 42817 : Seg45.F)⟩
      ⟨(rho 42822 : Seg45.F), (rho 42823 : Seg45.F)⟩
      ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
      ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg45_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41074 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4603 Seg45.relationLc665 Seg45.relationLc665Part0 Seg45.relationLc665Part1 Seg45.relationLc665Part2 Seg45.relationLc665Part3 Seg45.relationLc665Part4 Seg45.relationLc665Part5 Seg45.relationLc665Part6 Seg45.relationLc665Part7 at r4603
  unfold Seg45.relationRow4604 Seg45.relationLc666 Seg45.relationLc666Part0 Seg45.relationLc666Part1 Seg45.relationLc666Part2 Seg45.relationLc666Part3 at r4604
  unfold Seg45.relationRow4605 Seg45.relationLc667 Seg45.relationLc667Part0 Seg45.relationLc667Part1 Seg45.relationLc667Part2 Seg45.relationLc667Part3 at r4605
  unfold Seg45.relationRow4606 at r4606
  unfold Seg45.relationRow4607 at r4607
  unfold Seg45.relationRow4608 at r4608
  unfold Seg45.relationRow4609 Seg45.relationLc668 Seg45.relationLc668Part0 Seg45.relationLc668Part1 Seg45.relationLc668Part2 Seg45.relationLc668Part3 at r4609
  unfold Seg45.relationRow4610 Seg45.relationLc669 Seg45.relationLc669Part0 Seg45.relationLc669Part1 Seg45.relationLc669Part2 Seg45.relationLc669Part3 at r4610
  unfold Seg45.relationRow4611 at r4611
  unfold Seg45.relationRow4612 at r4612
  unfold Seg45.relationRow4613 at r4613
  unfold Seg45.relationRow4614 at r4614
  unfold Seg45.relationRow4615 at r4615
  have hrung126 (bit : Bool) (hbit : rho 41074 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
        ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩ := by
    have ha0 : (rho 42829 + rho 42830) * (seg45AccX126 rho + seg45AccY126 rho) = rho 42831 := by
      rw [seg45LadderFlatX126_eq, seg45LadderFlatY126_eq]
      unfold seg45LadderFlatX126 seg45LadderFlatY126
      linear_combination r4603
    have ha1 : rho 42830 * seg45AccX126 rho = rho 42832 := by
      rw [seg45LadderFlatX126_eq]
      unfold seg45LadderFlatX126
      linear_combination r4604
    have ha2 : rho 42829 * seg45AccY126 rho = rho 42833 := by
      rw [seg45LadderFlatY126_eq]
      unfold seg45LadderFlatY126
      linear_combination r4605
    have ha3 : 3021 * rho 42832 * rho 42833 = rho 42834 := by
      linear_combination r4606
    have ha4 : rho 42835 * (1 + rho 42834) = rho 42832 + rho 42833 := by
      linear_combination r4607
    have ha5 : rho 42836 * (1 - rho 42834) = rho 42831 - rho 42832 - rho 42833 := by
      linear_combination r4608
    have haddx :
        rho 42835 * (1 + 3021 * (rho 42830 * seg45AccX126 rho) * (rho 42829 * seg45AccY126 rho)) =
          rho 42830 * seg45AccX126 rho + rho 42829 * seg45AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42836 * (1 - 3021 * (rho 42830 * seg45AccX126 rho) * (rho 42829 * seg45AccY126 rho)) =
          (-1) * (rho 42830 * seg45AccX126 rho) - rho 42829 * seg45AccY126 rho +
            (seg45AccY126 rho - seg45AccX126 rho * (-1)) * (rho 42829 + rho 42830) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42836 * (1 - rho 42834) = rho 42831 - rho 42832 - rho 42833 := ha5
        _ = (-1) * rho 42832 - rho 42833 + (seg45AccY126 rho - seg45AccX126 rho * (-1)) * (rho 42829 + rho 42830) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX127 rho = seg45AccX126 rho - Bool.toZMod bit * (seg45AccX126 rho - rho 42835) := by
      have hd : rho 42837 = Bool.toZMod bit * (rho 42835 - seg45AccX126 rho) := by
        rw [← hbit, seg45LadderFlatX126_eq]
        unfold seg45LadderFlatX126
        linear_combination -r4609
      unfold seg45AccX127
      linear_combination hd
    have hsely : seg45AccY127 rho = seg45AccY126 rho - Bool.toZMod bit * (seg45AccY126 rho - rho 42836) := by
      have hd : rho 42838 = Bool.toZMod bit * (rho 42836 - seg45AccY126 rho) := by
        rw [← hbit, seg45LadderFlatY126_eq]
        unfold seg45LadderFlatY126
        linear_combination -r4610
      unfold seg45AccY127
      linear_combination hd
    have hd0 : rho 42829 * rho 42830 = rho 42839 := by linear_combination r4611
    have hd1 : rho 42829 * rho 42829 = rho 42840 := by linear_combination r4612
    have hd2 : rho 42830 * rho 42830 = rho 42841 := by linear_combination r4613
    have hd3 : rho 42842 * (rho 42830 * rho 42830 + rho 42829 * rho 42829 * (-1)) = 2 * (rho 42829 * rho 42830) := by
      rw [hd0, hd1, hd2]
      linear_combination r4614
    have hd4 : rho 42843 * (2 - (rho 42830 * rho 42830 + rho 42829 * rho 42829 * (-1))) = rho 42830 * rho 42830 - rho 42829 * rho 42829 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4615
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX126 rho : Seg45.F), (seg45AccY126 rho : Seg45.F)⟩
      ⟨(rho 42829 : Seg45.F), (rho 42830 : Seg45.F)⟩
      ⟨(rho 42835 : Seg45.F), (rho 42836 : Seg45.F)⟩
      ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
      ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg45_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41075 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩ := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow4616 Seg45.relationLc670 Seg45.relationLc670Part0 Seg45.relationLc670Part1 Seg45.relationLc670Part2 Seg45.relationLc670Part3 Seg45.relationLc670Part4 Seg45.relationLc670Part5 Seg45.relationLc670Part6 Seg45.relationLc670Part7 at r4616
  unfold Seg45.relationRow4617 Seg45.relationLc671 Seg45.relationLc671Part0 Seg45.relationLc671Part1 Seg45.relationLc671Part2 Seg45.relationLc671Part3 at r4617
  unfold Seg45.relationRow4618 Seg45.relationLc672 Seg45.relationLc672Part0 Seg45.relationLc672Part1 Seg45.relationLc672Part2 Seg45.relationLc672Part3 at r4618
  unfold Seg45.relationRow4619 at r4619
  unfold Seg45.relationRow4620 at r4620
  unfold Seg45.relationRow4621 at r4621
  unfold Seg45.relationRow4622 Seg45.relationLc673 Seg45.relationLc673Part0 Seg45.relationLc673Part1 Seg45.relationLc673Part2 Seg45.relationLc673Part3 at r4622
  unfold Seg45.relationRow4623 Seg45.relationLc674 Seg45.relationLc674Part0 Seg45.relationLc674Part1 Seg45.relationLc674Part2 Seg45.relationLc674Part3 Seg45.relationLc674Part4 at r4623
  unfold Seg45.relationRow4624 at r4624
  unfold Seg45.relationRow4625 at r4625
  unfold Seg45.relationRow4626 at r4626
  unfold Seg45.relationRow4627 at r4627
  unfold Seg45.relationRow4628 at r4628
  have hrung127 (bit : Bool) (hbit : rho 41075 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
        ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
        ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
        ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩ := by
    have ha0 : (rho 42842 + rho 42843) * (seg45AccX127 rho + seg45AccY127 rho) = rho 42844 := by
      rw [seg45LadderFlatX127_eq, seg45LadderFlatY127_eq]
      unfold seg45LadderFlatX127 seg45LadderFlatY127
      linear_combination r4616
    have ha1 : rho 42843 * seg45AccX127 rho = rho 42845 := by
      rw [seg45LadderFlatX127_eq]
      unfold seg45LadderFlatX127
      linear_combination r4617
    have ha2 : rho 42842 * seg45AccY127 rho = rho 42846 := by
      rw [seg45LadderFlatY127_eq]
      unfold seg45LadderFlatY127
      linear_combination r4618
    have ha3 : 3021 * rho 42845 * rho 42846 = rho 42847 := by
      linear_combination r4619
    have ha4 : rho 42848 * (1 + rho 42847) = rho 42845 + rho 42846 := by
      linear_combination r4620
    have ha5 : rho 42849 * (1 - rho 42847) = rho 42844 - rho 42845 - rho 42846 := by
      linear_combination r4621
    have haddx :
        rho 42848 * (1 + 3021 * (rho 42843 * seg45AccX127 rho) * (rho 42842 * seg45AccY127 rho)) =
          rho 42843 * seg45AccX127 rho + rho 42842 * seg45AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42849 * (1 - 3021 * (rho 42843 * seg45AccX127 rho) * (rho 42842 * seg45AccY127 rho)) =
          (-1) * (rho 42843 * seg45AccX127 rho) - rho 42842 * seg45AccY127 rho +
            (seg45AccY127 rho - seg45AccX127 rho * (-1)) * (rho 42842 + rho 42843) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42849 * (1 - rho 42847) = rho 42844 - rho 42845 - rho 42846 := ha5
        _ = (-1) * rho 42845 - rho 42846 + (seg45AccY127 rho - seg45AccX127 rho * (-1)) * (rho 42842 + rho 42843) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX128 rho = seg45AccX127 rho - Bool.toZMod bit * (seg45AccX127 rho - rho 42848) := by
      have hd : rho 42850 = Bool.toZMod bit * (rho 42848 - seg45AccX127 rho) := by
        rw [← hbit, seg45LadderFlatX127_eq]
        unfold seg45LadderFlatX127
        linear_combination -r4622
      unfold seg45AccX128
      linear_combination hd
    have hsely : seg45AccY128 rho = seg45AccY127 rho - Bool.toZMod bit * (seg45AccY127 rho - rho 42849) := by
      have hd : rho 42851 = Bool.toZMod bit * (rho 42849 - seg45AccY127 rho) := by
        rw [← hbit, seg45LadderFlatY127_eq]
        unfold seg45LadderFlatY127
        linear_combination -r4623
      unfold seg45AccY128
      linear_combination hd
    have hd0 : rho 42842 * rho 42843 = rho 42852 := by linear_combination r4624
    have hd1 : rho 42842 * rho 42842 = rho 42853 := by linear_combination r4625
    have hd2 : rho 42843 * rho 42843 = rho 42854 := by linear_combination r4626
    have hd3 : rho 42855 * (rho 42843 * rho 42843 + rho 42842 * rho 42842 * (-1)) = 2 * (rho 42842 * rho 42843) := by
      rw [hd0, hd1, hd2]
      linear_combination r4627
    have hd4 : rho 42856 * (2 - (rho 42843 * rho 42843 + rho 42842 * rho 42842 * (-1))) = rho 42843 * rho 42843 - rho 42842 * rho 42842 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX127 rho : Seg45.F), (seg45AccY127 rho : Seg45.F)⟩
      ⟨(rho 42842 : Seg45.F), (rho 42843 : Seg45.F)⟩
      ⟨(rho 42848 : Seg45.F), (rho 42849 : Seg45.F)⟩
      ⟨(seg45AccX128 rho : Seg45.F), (seg45AccY128 rho : Seg45.F)⟩
      ⟨(rho 42855 : Seg45.F), (rho 42856 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg45_hstep_c3 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 96 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg45_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg45_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
  · exact seg45_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg45_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg45_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg45_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg45_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg45_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg45_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg45_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg45_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg45_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg45_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
  · exact seg45_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg45_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg45_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg45_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg45_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg45_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg45_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg45_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg45_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg45_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg45_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
  · exact seg45_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg45_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg45_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg45_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg45_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg45_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg45_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
