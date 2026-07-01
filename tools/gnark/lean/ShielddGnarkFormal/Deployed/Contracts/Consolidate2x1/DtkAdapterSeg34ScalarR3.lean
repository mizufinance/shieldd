import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34088 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4213 Seg34.relationLc515 Seg34.relationLc515Part0 Seg34.relationLc515Part1 Seg34.relationLc515Part2 Seg34.relationLc515Part3 Seg34.relationLc515Part4 Seg34.relationLc515Part5 Seg34.relationLc515Part6 at r4213
  unfold Seg34.relationRow4214 Seg34.relationLc516 Seg34.relationLc516Part0 Seg34.relationLc516Part1 Seg34.relationLc516Part2 at r4214
  unfold Seg34.relationRow4215 Seg34.relationLc517 Seg34.relationLc517Part0 Seg34.relationLc517Part1 Seg34.relationLc517Part2 Seg34.relationLc517Part3 at r4215
  unfold Seg34.relationRow4216 at r4216
  unfold Seg34.relationRow4217 at r4217
  unfold Seg34.relationRow4218 at r4218
  unfold Seg34.relationRow4219 Seg34.relationLc518 Seg34.relationLc518Part0 Seg34.relationLc518Part1 Seg34.relationLc518Part2 Seg34.relationLc518Part3 at r4219
  unfold Seg34.relationRow4220 Seg34.relationLc519 Seg34.relationLc519Part0 Seg34.relationLc519Part1 Seg34.relationLc519Part2 Seg34.relationLc519Part3 at r4220
  unfold Seg34.relationRow4221 at r4221
  unfold Seg34.relationRow4222 at r4222
  unfold Seg34.relationRow4223 at r4223
  unfold Seg34.relationRow4224 at r4224
  unfold Seg34.relationRow4225 at r4225
  have hrung96 (bit : Bool) (hbit : rho 34088 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
        ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩ := by
    have ha0 : (rho 35483 + rho 35484) * (seg34AccX96 rho + seg34AccY96 rho) = rho 35485 := by
      rw [seg34LadderFlatX96_eq, seg34LadderFlatY96_eq]
      unfold seg34LadderFlatX96 seg34LadderFlatY96
      linear_combination r4213
    have ha1 : rho 35484 * seg34AccX96 rho = rho 35486 := by
      rw [seg34LadderFlatX96_eq]
      unfold seg34LadderFlatX96
      linear_combination r4214
    have ha2 : rho 35483 * seg34AccY96 rho = rho 35487 := by
      rw [seg34LadderFlatY96_eq]
      unfold seg34LadderFlatY96
      linear_combination r4215
    have ha3 : 3021 * rho 35486 * rho 35487 = rho 35488 := by
      linear_combination r4216
    have ha4 : rho 35489 * (1 + rho 35488) = rho 35486 + rho 35487 := by
      linear_combination r4217
    have ha5 : rho 35490 * (1 - rho 35488) = rho 35485 - rho 35486 - rho 35487 := by
      linear_combination r4218
    have haddx :
        rho 35489 * (1 + 3021 * (rho 35484 * seg34AccX96 rho) * (rho 35483 * seg34AccY96 rho)) =
          rho 35484 * seg34AccX96 rho + rho 35483 * seg34AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35490 * (1 - 3021 * (rho 35484 * seg34AccX96 rho) * (rho 35483 * seg34AccY96 rho)) =
          (-1) * (rho 35484 * seg34AccX96 rho) - rho 35483 * seg34AccY96 rho +
            (seg34AccY96 rho - seg34AccX96 rho * (-1)) * (rho 35483 + rho 35484) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35490 * (1 - rho 35488) = rho 35485 - rho 35486 - rho 35487 := ha5
        _ = (-1) * rho 35486 - rho 35487 + (seg34AccY96 rho - seg34AccX96 rho * (-1)) * (rho 35483 + rho 35484) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX97 rho = seg34AccX96 rho - Bool.toZMod bit * (seg34AccX96 rho - rho 35489) := by
      have hd : rho 35491 = Bool.toZMod bit * (rho 35489 - seg34AccX96 rho) := by
        rw [← hbit, seg34LadderFlatX96_eq]
        unfold seg34LadderFlatX96
        linear_combination -r4219
      unfold seg34AccX97
      linear_combination hd
    have hsely : seg34AccY97 rho = seg34AccY96 rho - Bool.toZMod bit * (seg34AccY96 rho - rho 35490) := by
      have hd : rho 35492 = Bool.toZMod bit * (rho 35490 - seg34AccY96 rho) := by
        rw [← hbit, seg34LadderFlatY96_eq]
        unfold seg34LadderFlatY96
        linear_combination -r4220
      unfold seg34AccY97
      linear_combination hd
    have hd0 : rho 35483 * rho 35484 = rho 35493 := by linear_combination r4221
    have hd1 : rho 35483 * rho 35483 = rho 35494 := by linear_combination r4222
    have hd2 : rho 35484 * rho 35484 = rho 35495 := by linear_combination r4223
    have hd3 : rho 35496 * (rho 35484 * rho 35484 + rho 35483 * rho 35483 * (-1)) = 2 * (rho 35483 * rho 35484) := by
      rw [hd0, hd1, hd2]
      linear_combination r4224
    have hd4 : rho 35497 * (2 - (rho 35484 * rho 35484 + rho 35483 * rho 35483 * (-1))) = rho 35484 * rho 35484 - rho 35483 * rho 35483 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4225
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX96 rho : Seg34.F), (seg34AccY96 rho : Seg34.F)⟩
      ⟨(rho 35483 : Seg34.F), (rho 35484 : Seg34.F)⟩
      ⟨(rho 35489 : Seg34.F), (rho 35490 : Seg34.F)⟩
      ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
      ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg34_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34089 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  unfold Seg34.relationRow4226 Seg34.relationLc520 Seg34.relationLc520Part0 Seg34.relationLc520Part1 Seg34.relationLc520Part2 Seg34.relationLc520Part3 Seg34.relationLc520Part4 Seg34.relationLc520Part5 Seg34.relationLc520Part6 at r4226
  unfold Seg34.relationRow4227 Seg34.relationLc521 Seg34.relationLc521Part0 Seg34.relationLc521Part1 Seg34.relationLc521Part2 Seg34.relationLc521Part3 at r4227
  unfold Seg34.relationRow4228 Seg34.relationLc522 Seg34.relationLc522Part0 Seg34.relationLc522Part1 Seg34.relationLc522Part2 Seg34.relationLc522Part3 at r4228
  unfold Seg34.relationRow4229 at r4229
  unfold Seg34.relationRow4230 at r4230
  unfold Seg34.relationRow4231 at r4231
  unfold Seg34.relationRow4232 Seg34.relationLc523 Seg34.relationLc523Part0 Seg34.relationLc523Part1 Seg34.relationLc523Part2 Seg34.relationLc523Part3 at r4232
  unfold Seg34.relationRow4233 Seg34.relationLc524 Seg34.relationLc524Part0 Seg34.relationLc524Part1 Seg34.relationLc524Part2 Seg34.relationLc524Part3 at r4233
  unfold Seg34.relationRow4234 at r4234
  unfold Seg34.relationRow4235 at r4235
  unfold Seg34.relationRow4236 at r4236
  unfold Seg34.relationRow4237 at r4237
  unfold Seg34.relationRow4238 at r4238
  have hrung97 (bit : Bool) (hbit : rho 34089 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
        ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩ := by
    have ha0 : (rho 35496 + rho 35497) * (seg34AccX97 rho + seg34AccY97 rho) = rho 35498 := by
      rw [seg34LadderFlatX97_eq, seg34LadderFlatY97_eq]
      unfold seg34LadderFlatX97 seg34LadderFlatY97
      linear_combination r4226
    have ha1 : rho 35497 * seg34AccX97 rho = rho 35499 := by
      rw [seg34LadderFlatX97_eq]
      unfold seg34LadderFlatX97
      linear_combination r4227
    have ha2 : rho 35496 * seg34AccY97 rho = rho 35500 := by
      rw [seg34LadderFlatY97_eq]
      unfold seg34LadderFlatY97
      linear_combination r4228
    have ha3 : 3021 * rho 35499 * rho 35500 = rho 35501 := by
      linear_combination r4229
    have ha4 : rho 35502 * (1 + rho 35501) = rho 35499 + rho 35500 := by
      linear_combination r4230
    have ha5 : rho 35503 * (1 - rho 35501) = rho 35498 - rho 35499 - rho 35500 := by
      linear_combination r4231
    have haddx :
        rho 35502 * (1 + 3021 * (rho 35497 * seg34AccX97 rho) * (rho 35496 * seg34AccY97 rho)) =
          rho 35497 * seg34AccX97 rho + rho 35496 * seg34AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35503 * (1 - 3021 * (rho 35497 * seg34AccX97 rho) * (rho 35496 * seg34AccY97 rho)) =
          (-1) * (rho 35497 * seg34AccX97 rho) - rho 35496 * seg34AccY97 rho +
            (seg34AccY97 rho - seg34AccX97 rho * (-1)) * (rho 35496 + rho 35497) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35503 * (1 - rho 35501) = rho 35498 - rho 35499 - rho 35500 := ha5
        _ = (-1) * rho 35499 - rho 35500 + (seg34AccY97 rho - seg34AccX97 rho * (-1)) * (rho 35496 + rho 35497) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX98 rho = seg34AccX97 rho - Bool.toZMod bit * (seg34AccX97 rho - rho 35502) := by
      have hd : rho 35504 = Bool.toZMod bit * (rho 35502 - seg34AccX97 rho) := by
        rw [← hbit, seg34LadderFlatX97_eq]
        unfold seg34LadderFlatX97
        linear_combination -r4232
      unfold seg34AccX98
      linear_combination hd
    have hsely : seg34AccY98 rho = seg34AccY97 rho - Bool.toZMod bit * (seg34AccY97 rho - rho 35503) := by
      have hd : rho 35505 = Bool.toZMod bit * (rho 35503 - seg34AccY97 rho) := by
        rw [← hbit, seg34LadderFlatY97_eq]
        unfold seg34LadderFlatY97
        linear_combination -r4233
      unfold seg34AccY98
      linear_combination hd
    have hd0 : rho 35496 * rho 35497 = rho 35506 := by linear_combination r4234
    have hd1 : rho 35496 * rho 35496 = rho 35507 := by linear_combination r4235
    have hd2 : rho 35497 * rho 35497 = rho 35508 := by linear_combination r4236
    have hd3 : rho 35509 * (rho 35497 * rho 35497 + rho 35496 * rho 35496 * (-1)) = 2 * (rho 35496 * rho 35497) := by
      rw [hd0, hd1, hd2]
      linear_combination r4237
    have hd4 : rho 35510 * (2 - (rho 35497 * rho 35497 + rho 35496 * rho 35496 * (-1))) = rho 35497 * rho 35497 - rho 35496 * rho 35496 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4238
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX97 rho : Seg34.F), (seg34AccY97 rho : Seg34.F)⟩
      ⟨(rho 35496 : Seg34.F), (rho 35497 : Seg34.F)⟩
      ⟨(rho 35502 : Seg34.F), (rho 35503 : Seg34.F)⟩
      ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
      ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg34_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34090 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4239 Seg34.relationLc525 Seg34.relationLc525Part0 Seg34.relationLc525Part1 Seg34.relationLc525Part2 Seg34.relationLc525Part3 Seg34.relationLc525Part4 Seg34.relationLc525Part5 Seg34.relationLc525Part6 at r4239
  unfold Seg34.relationRow4240 Seg34.relationLc526 Seg34.relationLc526Part0 Seg34.relationLc526Part1 Seg34.relationLc526Part2 Seg34.relationLc526Part3 at r4240
  unfold Seg34.relationRow4241 Seg34.relationLc527 Seg34.relationLc527Part0 Seg34.relationLc527Part1 Seg34.relationLc527Part2 Seg34.relationLc527Part3 at r4241
  unfold Seg34.relationRow4242 at r4242
  unfold Seg34.relationRow4243 at r4243
  unfold Seg34.relationRow4244 at r4244
  unfold Seg34.relationRow4245 Seg34.relationLc528 Seg34.relationLc528Part0 Seg34.relationLc528Part1 Seg34.relationLc528Part2 Seg34.relationLc528Part3 at r4245
  unfold Seg34.relationRow4246 Seg34.relationLc529 Seg34.relationLc529Part0 Seg34.relationLc529Part1 Seg34.relationLc529Part2 Seg34.relationLc529Part3 at r4246
  unfold Seg34.relationRow4247 at r4247
  unfold Seg34.relationRow4248 at r4248
  unfold Seg34.relationRow4249 at r4249
  unfold Seg34.relationRow4250 at r4250
  unfold Seg34.relationRow4251 at r4251
  have hrung98 (bit : Bool) (hbit : rho 34090 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
        ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩ := by
    have ha0 : (rho 35509 + rho 35510) * (seg34AccX98 rho + seg34AccY98 rho) = rho 35511 := by
      rw [seg34LadderFlatX98_eq, seg34LadderFlatY98_eq]
      unfold seg34LadderFlatX98 seg34LadderFlatY98
      linear_combination r4239
    have ha1 : rho 35510 * seg34AccX98 rho = rho 35512 := by
      rw [seg34LadderFlatX98_eq]
      unfold seg34LadderFlatX98
      linear_combination r4240
    have ha2 : rho 35509 * seg34AccY98 rho = rho 35513 := by
      rw [seg34LadderFlatY98_eq]
      unfold seg34LadderFlatY98
      linear_combination r4241
    have ha3 : 3021 * rho 35512 * rho 35513 = rho 35514 := by
      linear_combination r4242
    have ha4 : rho 35515 * (1 + rho 35514) = rho 35512 + rho 35513 := by
      linear_combination r4243
    have ha5 : rho 35516 * (1 - rho 35514) = rho 35511 - rho 35512 - rho 35513 := by
      linear_combination r4244
    have haddx :
        rho 35515 * (1 + 3021 * (rho 35510 * seg34AccX98 rho) * (rho 35509 * seg34AccY98 rho)) =
          rho 35510 * seg34AccX98 rho + rho 35509 * seg34AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35516 * (1 - 3021 * (rho 35510 * seg34AccX98 rho) * (rho 35509 * seg34AccY98 rho)) =
          (-1) * (rho 35510 * seg34AccX98 rho) - rho 35509 * seg34AccY98 rho +
            (seg34AccY98 rho - seg34AccX98 rho * (-1)) * (rho 35509 + rho 35510) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35516 * (1 - rho 35514) = rho 35511 - rho 35512 - rho 35513 := ha5
        _ = (-1) * rho 35512 - rho 35513 + (seg34AccY98 rho - seg34AccX98 rho * (-1)) * (rho 35509 + rho 35510) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX99 rho = seg34AccX98 rho - Bool.toZMod bit * (seg34AccX98 rho - rho 35515) := by
      have hd : rho 35517 = Bool.toZMod bit * (rho 35515 - seg34AccX98 rho) := by
        rw [← hbit, seg34LadderFlatX98_eq]
        unfold seg34LadderFlatX98
        linear_combination -r4245
      unfold seg34AccX99
      linear_combination hd
    have hsely : seg34AccY99 rho = seg34AccY98 rho - Bool.toZMod bit * (seg34AccY98 rho - rho 35516) := by
      have hd : rho 35518 = Bool.toZMod bit * (rho 35516 - seg34AccY98 rho) := by
        rw [← hbit, seg34LadderFlatY98_eq]
        unfold seg34LadderFlatY98
        linear_combination -r4246
      unfold seg34AccY99
      linear_combination hd
    have hd0 : rho 35509 * rho 35510 = rho 35519 := by linear_combination r4247
    have hd1 : rho 35509 * rho 35509 = rho 35520 := by linear_combination r4248
    have hd2 : rho 35510 * rho 35510 = rho 35521 := by linear_combination r4249
    have hd3 : rho 35522 * (rho 35510 * rho 35510 + rho 35509 * rho 35509 * (-1)) = 2 * (rho 35509 * rho 35510) := by
      rw [hd0, hd1, hd2]
      linear_combination r4250
    have hd4 : rho 35523 * (2 - (rho 35510 * rho 35510 + rho 35509 * rho 35509 * (-1))) = rho 35510 * rho 35510 - rho 35509 * rho 35509 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4251
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX98 rho : Seg34.F), (seg34AccY98 rho : Seg34.F)⟩
      ⟨(rho 35509 : Seg34.F), (rho 35510 : Seg34.F)⟩
      ⟨(rho 35515 : Seg34.F), (rho 35516 : Seg34.F)⟩
      ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
      ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg34_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34091 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4252 Seg34.relationLc530 Seg34.relationLc530Part0 Seg34.relationLc530Part1 Seg34.relationLc530Part2 Seg34.relationLc530Part3 Seg34.relationLc530Part4 Seg34.relationLc530Part5 Seg34.relationLc530Part6 at r4252
  unfold Seg34.relationRow4253 Seg34.relationLc531 Seg34.relationLc531Part0 Seg34.relationLc531Part1 Seg34.relationLc531Part2 Seg34.relationLc531Part3 at r4253
  unfold Seg34.relationRow4254 Seg34.relationLc532 Seg34.relationLc532Part0 Seg34.relationLc532Part1 Seg34.relationLc532Part2 Seg34.relationLc532Part3 at r4254
  unfold Seg34.relationRow4255 at r4255
  unfold Seg34.relationRow4256 at r4256
  unfold Seg34.relationRow4257 at r4257
  unfold Seg34.relationRow4258 Seg34.relationLc533 Seg34.relationLc533Part0 Seg34.relationLc533Part1 Seg34.relationLc533Part2 Seg34.relationLc533Part3 at r4258
  unfold Seg34.relationRow4259 Seg34.relationLc534 Seg34.relationLc534Part0 Seg34.relationLc534Part1 Seg34.relationLc534Part2 Seg34.relationLc534Part3 at r4259
  unfold Seg34.relationRow4260 at r4260
  unfold Seg34.relationRow4261 at r4261
  unfold Seg34.relationRow4262 at r4262
  unfold Seg34.relationRow4263 at r4263
  unfold Seg34.relationRow4264 at r4264
  have hrung99 (bit : Bool) (hbit : rho 34091 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩ := by
    have ha0 : (rho 35522 + rho 35523) * (seg34AccX99 rho + seg34AccY99 rho) = rho 35524 := by
      rw [seg34LadderFlatX99_eq, seg34LadderFlatY99_eq]
      unfold seg34LadderFlatX99 seg34LadderFlatY99
      linear_combination r4252
    have ha1 : rho 35523 * seg34AccX99 rho = rho 35525 := by
      rw [seg34LadderFlatX99_eq]
      unfold seg34LadderFlatX99
      linear_combination r4253
    have ha2 : rho 35522 * seg34AccY99 rho = rho 35526 := by
      rw [seg34LadderFlatY99_eq]
      unfold seg34LadderFlatY99
      linear_combination r4254
    have ha3 : 3021 * rho 35525 * rho 35526 = rho 35527 := by
      linear_combination r4255
    have ha4 : rho 35528 * (1 + rho 35527) = rho 35525 + rho 35526 := by
      linear_combination r4256
    have ha5 : rho 35529 * (1 - rho 35527) = rho 35524 - rho 35525 - rho 35526 := by
      linear_combination r4257
    have haddx :
        rho 35528 * (1 + 3021 * (rho 35523 * seg34AccX99 rho) * (rho 35522 * seg34AccY99 rho)) =
          rho 35523 * seg34AccX99 rho + rho 35522 * seg34AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35529 * (1 - 3021 * (rho 35523 * seg34AccX99 rho) * (rho 35522 * seg34AccY99 rho)) =
          (-1) * (rho 35523 * seg34AccX99 rho) - rho 35522 * seg34AccY99 rho +
            (seg34AccY99 rho - seg34AccX99 rho * (-1)) * (rho 35522 + rho 35523) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35529 * (1 - rho 35527) = rho 35524 - rho 35525 - rho 35526 := ha5
        _ = (-1) * rho 35525 - rho 35526 + (seg34AccY99 rho - seg34AccX99 rho * (-1)) * (rho 35522 + rho 35523) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX100 rho = seg34AccX99 rho - Bool.toZMod bit * (seg34AccX99 rho - rho 35528) := by
      have hd : rho 35530 = Bool.toZMod bit * (rho 35528 - seg34AccX99 rho) := by
        rw [← hbit, seg34LadderFlatX99_eq]
        unfold seg34LadderFlatX99
        linear_combination -r4258
      unfold seg34AccX100
      linear_combination hd
    have hsely : seg34AccY100 rho = seg34AccY99 rho - Bool.toZMod bit * (seg34AccY99 rho - rho 35529) := by
      have hd : rho 35531 = Bool.toZMod bit * (rho 35529 - seg34AccY99 rho) := by
        rw [← hbit, seg34LadderFlatY99_eq]
        unfold seg34LadderFlatY99
        linear_combination -r4259
      unfold seg34AccY100
      linear_combination hd
    have hd0 : rho 35522 * rho 35523 = rho 35532 := by linear_combination r4260
    have hd1 : rho 35522 * rho 35522 = rho 35533 := by linear_combination r4261
    have hd2 : rho 35523 * rho 35523 = rho 35534 := by linear_combination r4262
    have hd3 : rho 35535 * (rho 35523 * rho 35523 + rho 35522 * rho 35522 * (-1)) = 2 * (rho 35522 * rho 35523) := by
      rw [hd0, hd1, hd2]
      linear_combination r4263
    have hd4 : rho 35536 * (2 - (rho 35523 * rho 35523 + rho 35522 * rho 35522 * (-1))) = rho 35523 * rho 35523 - rho 35522 * rho 35522 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
      ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
      ⟨(rho 35528 : Seg34.F), (rho 35529 : Seg34.F)⟩
      ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
      ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg34_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34092 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4265 Seg34.relationLc535 Seg34.relationLc535Part0 Seg34.relationLc535Part1 Seg34.relationLc535Part2 Seg34.relationLc535Part3 Seg34.relationLc535Part4 Seg34.relationLc535Part5 Seg34.relationLc535Part6 at r4265
  unfold Seg34.relationRow4266 Seg34.relationLc536 Seg34.relationLc536Part0 Seg34.relationLc536Part1 Seg34.relationLc536Part2 Seg34.relationLc536Part3 at r4266
  unfold Seg34.relationRow4267 Seg34.relationLc537 Seg34.relationLc537Part0 Seg34.relationLc537Part1 Seg34.relationLc537Part2 Seg34.relationLc537Part3 at r4267
  unfold Seg34.relationRow4268 at r4268
  unfold Seg34.relationRow4269 at r4269
  unfold Seg34.relationRow4270 at r4270
  unfold Seg34.relationRow4271 Seg34.relationLc538 Seg34.relationLc538Part0 Seg34.relationLc538Part1 Seg34.relationLc538Part2 Seg34.relationLc538Part3 at r4271
  unfold Seg34.relationRow4272 Seg34.relationLc539 Seg34.relationLc539Part0 Seg34.relationLc539Part1 Seg34.relationLc539Part2 Seg34.relationLc539Part3 at r4272
  unfold Seg34.relationRow4273 at r4273
  unfold Seg34.relationRow4274 at r4274
  unfold Seg34.relationRow4275 at r4275
  unfold Seg34.relationRow4276 at r4276
  unfold Seg34.relationRow4277 at r4277
  have hrung100 (bit : Bool) (hbit : rho 34092 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩ := by
    have ha0 : (rho 35535 + rho 35536) * (seg34AccX100 rho + seg34AccY100 rho) = rho 35537 := by
      rw [seg34LadderFlatX100_eq, seg34LadderFlatY100_eq]
      unfold seg34LadderFlatX100 seg34LadderFlatY100
      linear_combination r4265
    have ha1 : rho 35536 * seg34AccX100 rho = rho 35538 := by
      rw [seg34LadderFlatX100_eq]
      unfold seg34LadderFlatX100
      linear_combination r4266
    have ha2 : rho 35535 * seg34AccY100 rho = rho 35539 := by
      rw [seg34LadderFlatY100_eq]
      unfold seg34LadderFlatY100
      linear_combination r4267
    have ha3 : 3021 * rho 35538 * rho 35539 = rho 35540 := by
      linear_combination r4268
    have ha4 : rho 35541 * (1 + rho 35540) = rho 35538 + rho 35539 := by
      linear_combination r4269
    have ha5 : rho 35542 * (1 - rho 35540) = rho 35537 - rho 35538 - rho 35539 := by
      linear_combination r4270
    have haddx :
        rho 35541 * (1 + 3021 * (rho 35536 * seg34AccX100 rho) * (rho 35535 * seg34AccY100 rho)) =
          rho 35536 * seg34AccX100 rho + rho 35535 * seg34AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35542 * (1 - 3021 * (rho 35536 * seg34AccX100 rho) * (rho 35535 * seg34AccY100 rho)) =
          (-1) * (rho 35536 * seg34AccX100 rho) - rho 35535 * seg34AccY100 rho +
            (seg34AccY100 rho - seg34AccX100 rho * (-1)) * (rho 35535 + rho 35536) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35542 * (1 - rho 35540) = rho 35537 - rho 35538 - rho 35539 := ha5
        _ = (-1) * rho 35538 - rho 35539 + (seg34AccY100 rho - seg34AccX100 rho * (-1)) * (rho 35535 + rho 35536) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX101 rho = seg34AccX100 rho - Bool.toZMod bit * (seg34AccX100 rho - rho 35541) := by
      have hd : rho 35543 = Bool.toZMod bit * (rho 35541 - seg34AccX100 rho) := by
        rw [← hbit, seg34LadderFlatX100_eq]
        unfold seg34LadderFlatX100
        linear_combination -r4271
      unfold seg34AccX101
      linear_combination hd
    have hsely : seg34AccY101 rho = seg34AccY100 rho - Bool.toZMod bit * (seg34AccY100 rho - rho 35542) := by
      have hd : rho 35544 = Bool.toZMod bit * (rho 35542 - seg34AccY100 rho) := by
        rw [← hbit, seg34LadderFlatY100_eq]
        unfold seg34LadderFlatY100
        linear_combination -r4272
      unfold seg34AccY101
      linear_combination hd
    have hd0 : rho 35535 * rho 35536 = rho 35545 := by linear_combination r4273
    have hd1 : rho 35535 * rho 35535 = rho 35546 := by linear_combination r4274
    have hd2 : rho 35536 * rho 35536 = rho 35547 := by linear_combination r4275
    have hd3 : rho 35548 * (rho 35536 * rho 35536 + rho 35535 * rho 35535 * (-1)) = 2 * (rho 35535 * rho 35536) := by
      rw [hd0, hd1, hd2]
      linear_combination r4276
    have hd4 : rho 35549 * (2 - (rho 35536 * rho 35536 + rho 35535 * rho 35535 * (-1))) = rho 35536 * rho 35536 - rho 35535 * rho 35535 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4277
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
      ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
      ⟨(rho 35541 : Seg34.F), (rho 35542 : Seg34.F)⟩
      ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
      ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg34_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34093 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4278 Seg34.relationLc540 Seg34.relationLc540Part0 Seg34.relationLc540Part1 Seg34.relationLc540Part2 Seg34.relationLc540Part3 Seg34.relationLc540Part4 Seg34.relationLc540Part5 Seg34.relationLc540Part6 at r4278
  unfold Seg34.relationRow4279 Seg34.relationLc541 Seg34.relationLc541Part0 Seg34.relationLc541Part1 Seg34.relationLc541Part2 Seg34.relationLc541Part3 at r4279
  unfold Seg34.relationRow4280 Seg34.relationLc542 Seg34.relationLc542Part0 Seg34.relationLc542Part1 Seg34.relationLc542Part2 Seg34.relationLc542Part3 at r4280
  unfold Seg34.relationRow4281 at r4281
  unfold Seg34.relationRow4282 at r4282
  unfold Seg34.relationRow4283 at r4283
  unfold Seg34.relationRow4284 Seg34.relationLc543 Seg34.relationLc543Part0 Seg34.relationLc543Part1 Seg34.relationLc543Part2 Seg34.relationLc543Part3 at r4284
  unfold Seg34.relationRow4285 Seg34.relationLc544 Seg34.relationLc544Part0 Seg34.relationLc544Part1 Seg34.relationLc544Part2 Seg34.relationLc544Part3 at r4285
  unfold Seg34.relationRow4286 at r4286
  unfold Seg34.relationRow4287 at r4287
  unfold Seg34.relationRow4288 at r4288
  unfold Seg34.relationRow4289 at r4289
  unfold Seg34.relationRow4290 at r4290
  have hrung101 (bit : Bool) (hbit : rho 34093 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩ := by
    have ha0 : (rho 35548 + rho 35549) * (seg34AccX101 rho + seg34AccY101 rho) = rho 35550 := by
      rw [seg34LadderFlatX101_eq, seg34LadderFlatY101_eq]
      unfold seg34LadderFlatX101 seg34LadderFlatY101
      linear_combination r4278
    have ha1 : rho 35549 * seg34AccX101 rho = rho 35551 := by
      rw [seg34LadderFlatX101_eq]
      unfold seg34LadderFlatX101
      linear_combination r4279
    have ha2 : rho 35548 * seg34AccY101 rho = rho 35552 := by
      rw [seg34LadderFlatY101_eq]
      unfold seg34LadderFlatY101
      linear_combination r4280
    have ha3 : 3021 * rho 35551 * rho 35552 = rho 35553 := by
      linear_combination r4281
    have ha4 : rho 35554 * (1 + rho 35553) = rho 35551 + rho 35552 := by
      linear_combination r4282
    have ha5 : rho 35555 * (1 - rho 35553) = rho 35550 - rho 35551 - rho 35552 := by
      linear_combination r4283
    have haddx :
        rho 35554 * (1 + 3021 * (rho 35549 * seg34AccX101 rho) * (rho 35548 * seg34AccY101 rho)) =
          rho 35549 * seg34AccX101 rho + rho 35548 * seg34AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35555 * (1 - 3021 * (rho 35549 * seg34AccX101 rho) * (rho 35548 * seg34AccY101 rho)) =
          (-1) * (rho 35549 * seg34AccX101 rho) - rho 35548 * seg34AccY101 rho +
            (seg34AccY101 rho - seg34AccX101 rho * (-1)) * (rho 35548 + rho 35549) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35555 * (1 - rho 35553) = rho 35550 - rho 35551 - rho 35552 := ha5
        _ = (-1) * rho 35551 - rho 35552 + (seg34AccY101 rho - seg34AccX101 rho * (-1)) * (rho 35548 + rho 35549) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX102 rho = seg34AccX101 rho - Bool.toZMod bit * (seg34AccX101 rho - rho 35554) := by
      have hd : rho 35556 = Bool.toZMod bit * (rho 35554 - seg34AccX101 rho) := by
        rw [← hbit, seg34LadderFlatX101_eq]
        unfold seg34LadderFlatX101
        linear_combination -r4284
      unfold seg34AccX102
      linear_combination hd
    have hsely : seg34AccY102 rho = seg34AccY101 rho - Bool.toZMod bit * (seg34AccY101 rho - rho 35555) := by
      have hd : rho 35557 = Bool.toZMod bit * (rho 35555 - seg34AccY101 rho) := by
        rw [← hbit, seg34LadderFlatY101_eq]
        unfold seg34LadderFlatY101
        linear_combination -r4285
      unfold seg34AccY102
      linear_combination hd
    have hd0 : rho 35548 * rho 35549 = rho 35558 := by linear_combination r4286
    have hd1 : rho 35548 * rho 35548 = rho 35559 := by linear_combination r4287
    have hd2 : rho 35549 * rho 35549 = rho 35560 := by linear_combination r4288
    have hd3 : rho 35561 * (rho 35549 * rho 35549 + rho 35548 * rho 35548 * (-1)) = 2 * (rho 35548 * rho 35549) := by
      rw [hd0, hd1, hd2]
      linear_combination r4289
    have hd4 : rho 35562 * (2 - (rho 35549 * rho 35549 + rho 35548 * rho 35548 * (-1))) = rho 35549 * rho 35549 - rho 35548 * rho 35548 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4290
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
      ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
      ⟨(rho 35554 : Seg34.F), (rho 35555 : Seg34.F)⟩
      ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
      ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg34_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34094 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4291 Seg34.relationLc545 Seg34.relationLc545Part0 Seg34.relationLc545Part1 Seg34.relationLc545Part2 Seg34.relationLc545Part3 Seg34.relationLc545Part4 Seg34.relationLc545Part5 Seg34.relationLc545Part6 at r4291
  unfold Seg34.relationRow4292 Seg34.relationLc546 Seg34.relationLc546Part0 Seg34.relationLc546Part1 Seg34.relationLc546Part2 Seg34.relationLc546Part3 at r4292
  unfold Seg34.relationRow4293 Seg34.relationLc547 Seg34.relationLc547Part0 Seg34.relationLc547Part1 Seg34.relationLc547Part2 Seg34.relationLc547Part3 at r4293
  unfold Seg34.relationRow4294 at r4294
  unfold Seg34.relationRow4295 at r4295
  unfold Seg34.relationRow4296 at r4296
  unfold Seg34.relationRow4297 Seg34.relationLc548 Seg34.relationLc548Part0 Seg34.relationLc548Part1 Seg34.relationLc548Part2 Seg34.relationLc548Part3 at r4297
  unfold Seg34.relationRow4298 Seg34.relationLc549 Seg34.relationLc549Part0 Seg34.relationLc549Part1 Seg34.relationLc549Part2 Seg34.relationLc549Part3 at r4298
  unfold Seg34.relationRow4299 at r4299
  unfold Seg34.relationRow4300 at r4300
  unfold Seg34.relationRow4301 at r4301
  unfold Seg34.relationRow4302 at r4302
  unfold Seg34.relationRow4303 at r4303
  have hrung102 (bit : Bool) (hbit : rho 34094 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩ := by
    have ha0 : (rho 35561 + rho 35562) * (seg34AccX102 rho + seg34AccY102 rho) = rho 35563 := by
      rw [seg34LadderFlatX102_eq, seg34LadderFlatY102_eq]
      unfold seg34LadderFlatX102 seg34LadderFlatY102
      linear_combination r4291
    have ha1 : rho 35562 * seg34AccX102 rho = rho 35564 := by
      rw [seg34LadderFlatX102_eq]
      unfold seg34LadderFlatX102
      linear_combination r4292
    have ha2 : rho 35561 * seg34AccY102 rho = rho 35565 := by
      rw [seg34LadderFlatY102_eq]
      unfold seg34LadderFlatY102
      linear_combination r4293
    have ha3 : 3021 * rho 35564 * rho 35565 = rho 35566 := by
      linear_combination r4294
    have ha4 : rho 35567 * (1 + rho 35566) = rho 35564 + rho 35565 := by
      linear_combination r4295
    have ha5 : rho 35568 * (1 - rho 35566) = rho 35563 - rho 35564 - rho 35565 := by
      linear_combination r4296
    have haddx :
        rho 35567 * (1 + 3021 * (rho 35562 * seg34AccX102 rho) * (rho 35561 * seg34AccY102 rho)) =
          rho 35562 * seg34AccX102 rho + rho 35561 * seg34AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35568 * (1 - 3021 * (rho 35562 * seg34AccX102 rho) * (rho 35561 * seg34AccY102 rho)) =
          (-1) * (rho 35562 * seg34AccX102 rho) - rho 35561 * seg34AccY102 rho +
            (seg34AccY102 rho - seg34AccX102 rho * (-1)) * (rho 35561 + rho 35562) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35568 * (1 - rho 35566) = rho 35563 - rho 35564 - rho 35565 := ha5
        _ = (-1) * rho 35564 - rho 35565 + (seg34AccY102 rho - seg34AccX102 rho * (-1)) * (rho 35561 + rho 35562) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX103 rho = seg34AccX102 rho - Bool.toZMod bit * (seg34AccX102 rho - rho 35567) := by
      have hd : rho 35569 = Bool.toZMod bit * (rho 35567 - seg34AccX102 rho) := by
        rw [← hbit, seg34LadderFlatX102_eq]
        unfold seg34LadderFlatX102
        linear_combination -r4297
      unfold seg34AccX103
      linear_combination hd
    have hsely : seg34AccY103 rho = seg34AccY102 rho - Bool.toZMod bit * (seg34AccY102 rho - rho 35568) := by
      have hd : rho 35570 = Bool.toZMod bit * (rho 35568 - seg34AccY102 rho) := by
        rw [← hbit, seg34LadderFlatY102_eq]
        unfold seg34LadderFlatY102
        linear_combination -r4298
      unfold seg34AccY103
      linear_combination hd
    have hd0 : rho 35561 * rho 35562 = rho 35571 := by linear_combination r4299
    have hd1 : rho 35561 * rho 35561 = rho 35572 := by linear_combination r4300
    have hd2 : rho 35562 * rho 35562 = rho 35573 := by linear_combination r4301
    have hd3 : rho 35574 * (rho 35562 * rho 35562 + rho 35561 * rho 35561 * (-1)) = 2 * (rho 35561 * rho 35562) := by
      rw [hd0, hd1, hd2]
      linear_combination r4302
    have hd4 : rho 35575 * (2 - (rho 35562 * rho 35562 + rho 35561 * rho 35561 * (-1))) = rho 35562 * rho 35562 - rho 35561 * rho 35561 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4303
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
      ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
      ⟨(rho 35567 : Seg34.F), (rho 35568 : Seg34.F)⟩
      ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
      ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg34_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34095 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, _, _, _⟩
  unfold Seg34.relationRow4304 Seg34.relationLc550 Seg34.relationLc550Part0 Seg34.relationLc550Part1 Seg34.relationLc550Part2 Seg34.relationLc550Part3 Seg34.relationLc550Part4 Seg34.relationLc550Part5 Seg34.relationLc550Part6 at r4304
  unfold Seg34.relationRow4305 Seg34.relationLc551 Seg34.relationLc551Part0 Seg34.relationLc551Part1 Seg34.relationLc551Part2 Seg34.relationLc551Part3 at r4305
  unfold Seg34.relationRow4306 Seg34.relationLc552 Seg34.relationLc552Part0 Seg34.relationLc552Part1 Seg34.relationLc552Part2 Seg34.relationLc552Part3 at r4306
  unfold Seg34.relationRow4307 at r4307
  unfold Seg34.relationRow4308 at r4308
  unfold Seg34.relationRow4309 at r4309
  unfold Seg34.relationRow4310 Seg34.relationLc553 Seg34.relationLc553Part0 Seg34.relationLc553Part1 Seg34.relationLc553Part2 Seg34.relationLc553Part3 at r4310
  unfold Seg34.relationRow4311 Seg34.relationLc554 Seg34.relationLc554Part0 Seg34.relationLc554Part1 Seg34.relationLc554Part2 Seg34.relationLc554Part3 at r4311
  unfold Seg34.relationRow4312 at r4312
  unfold Seg34.relationRow4313 at r4313
  unfold Seg34.relationRow4314 at r4314
  unfold Seg34.relationRow4315 at r4315
  unfold Seg34.relationRow4316 at r4316
  have hrung103 (bit : Bool) (hbit : rho 34095 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩ := by
    have ha0 : (rho 35574 + rho 35575) * (seg34AccX103 rho + seg34AccY103 rho) = rho 35576 := by
      rw [seg34LadderFlatX103_eq, seg34LadderFlatY103_eq]
      unfold seg34LadderFlatX103 seg34LadderFlatY103
      linear_combination r4304
    have ha1 : rho 35575 * seg34AccX103 rho = rho 35577 := by
      rw [seg34LadderFlatX103_eq]
      unfold seg34LadderFlatX103
      linear_combination r4305
    have ha2 : rho 35574 * seg34AccY103 rho = rho 35578 := by
      rw [seg34LadderFlatY103_eq]
      unfold seg34LadderFlatY103
      linear_combination r4306
    have ha3 : 3021 * rho 35577 * rho 35578 = rho 35579 := by
      linear_combination r4307
    have ha4 : rho 35580 * (1 + rho 35579) = rho 35577 + rho 35578 := by
      linear_combination r4308
    have ha5 : rho 35581 * (1 - rho 35579) = rho 35576 - rho 35577 - rho 35578 := by
      linear_combination r4309
    have haddx :
        rho 35580 * (1 + 3021 * (rho 35575 * seg34AccX103 rho) * (rho 35574 * seg34AccY103 rho)) =
          rho 35575 * seg34AccX103 rho + rho 35574 * seg34AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35581 * (1 - 3021 * (rho 35575 * seg34AccX103 rho) * (rho 35574 * seg34AccY103 rho)) =
          (-1) * (rho 35575 * seg34AccX103 rho) - rho 35574 * seg34AccY103 rho +
            (seg34AccY103 rho - seg34AccX103 rho * (-1)) * (rho 35574 + rho 35575) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35581 * (1 - rho 35579) = rho 35576 - rho 35577 - rho 35578 := ha5
        _ = (-1) * rho 35577 - rho 35578 + (seg34AccY103 rho - seg34AccX103 rho * (-1)) * (rho 35574 + rho 35575) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX104 rho = seg34AccX103 rho - Bool.toZMod bit * (seg34AccX103 rho - rho 35580) := by
      have hd : rho 35582 = Bool.toZMod bit * (rho 35580 - seg34AccX103 rho) := by
        rw [← hbit, seg34LadderFlatX103_eq]
        unfold seg34LadderFlatX103
        linear_combination -r4310
      unfold seg34AccX104
      linear_combination hd
    have hsely : seg34AccY104 rho = seg34AccY103 rho - Bool.toZMod bit * (seg34AccY103 rho - rho 35581) := by
      have hd : rho 35583 = Bool.toZMod bit * (rho 35581 - seg34AccY103 rho) := by
        rw [← hbit, seg34LadderFlatY103_eq]
        unfold seg34LadderFlatY103
        linear_combination -r4311
      unfold seg34AccY104
      linear_combination hd
    have hd0 : rho 35574 * rho 35575 = rho 35584 := by linear_combination r4312
    have hd1 : rho 35574 * rho 35574 = rho 35585 := by linear_combination r4313
    have hd2 : rho 35575 * rho 35575 = rho 35586 := by linear_combination r4314
    have hd3 : rho 35587 * (rho 35575 * rho 35575 + rho 35574 * rho 35574 * (-1)) = 2 * (rho 35574 * rho 35575) := by
      rw [hd0, hd1, hd2]
      linear_combination r4315
    have hd4 : rho 35588 * (2 - (rho 35575 * rho 35575 + rho 35574 * rho 35574 * (-1))) = rho 35575 * rho 35575 - rho 35574 * rho 35574 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4316
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
      ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
      ⟨(rho 35580 : Seg34.F), (rho 35581 : Seg34.F)⟩
      ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
      ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg34_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34096 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4317, r4318, r4319⟩
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4317 Seg34.relationLc555 Seg34.relationLc555Part0 Seg34.relationLc555Part1 Seg34.relationLc555Part2 Seg34.relationLc555Part3 Seg34.relationLc555Part4 Seg34.relationLc555Part5 Seg34.relationLc555Part6 at r4317
  unfold Seg34.relationRow4318 Seg34.relationLc556 Seg34.relationLc556Part0 Seg34.relationLc556Part1 Seg34.relationLc556Part2 Seg34.relationLc556Part3 at r4318
  unfold Seg34.relationRow4319 Seg34.relationLc557 Seg34.relationLc557Part0 Seg34.relationLc557Part1 Seg34.relationLc557Part2 Seg34.relationLc557Part3 at r4319
  unfold Seg34.relationRow4320 at r4320
  unfold Seg34.relationRow4321 at r4321
  unfold Seg34.relationRow4322 at r4322
  unfold Seg34.relationRow4323 Seg34.relationLc558 Seg34.relationLc558Part0 Seg34.relationLc558Part1 Seg34.relationLc558Part2 Seg34.relationLc558Part3 at r4323
  unfold Seg34.relationRow4324 Seg34.relationLc559 Seg34.relationLc559Part0 Seg34.relationLc559Part1 Seg34.relationLc559Part2 Seg34.relationLc559Part3 at r4324
  unfold Seg34.relationRow4325 at r4325
  unfold Seg34.relationRow4326 at r4326
  unfold Seg34.relationRow4327 at r4327
  unfold Seg34.relationRow4328 at r4328
  unfold Seg34.relationRow4329 at r4329
  have hrung104 (bit : Bool) (hbit : rho 34096 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩ := by
    have ha0 : (rho 35587 + rho 35588) * (seg34AccX104 rho + seg34AccY104 rho) = rho 35589 := by
      rw [seg34LadderFlatX104_eq, seg34LadderFlatY104_eq]
      unfold seg34LadderFlatX104 seg34LadderFlatY104
      linear_combination r4317
    have ha1 : rho 35588 * seg34AccX104 rho = rho 35590 := by
      rw [seg34LadderFlatX104_eq]
      unfold seg34LadderFlatX104
      linear_combination r4318
    have ha2 : rho 35587 * seg34AccY104 rho = rho 35591 := by
      rw [seg34LadderFlatY104_eq]
      unfold seg34LadderFlatY104
      linear_combination r4319
    have ha3 : 3021 * rho 35590 * rho 35591 = rho 35592 := by
      linear_combination r4320
    have ha4 : rho 35593 * (1 + rho 35592) = rho 35590 + rho 35591 := by
      linear_combination r4321
    have ha5 : rho 35594 * (1 - rho 35592) = rho 35589 - rho 35590 - rho 35591 := by
      linear_combination r4322
    have haddx :
        rho 35593 * (1 + 3021 * (rho 35588 * seg34AccX104 rho) * (rho 35587 * seg34AccY104 rho)) =
          rho 35588 * seg34AccX104 rho + rho 35587 * seg34AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35594 * (1 - 3021 * (rho 35588 * seg34AccX104 rho) * (rho 35587 * seg34AccY104 rho)) =
          (-1) * (rho 35588 * seg34AccX104 rho) - rho 35587 * seg34AccY104 rho +
            (seg34AccY104 rho - seg34AccX104 rho * (-1)) * (rho 35587 + rho 35588) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35594 * (1 - rho 35592) = rho 35589 - rho 35590 - rho 35591 := ha5
        _ = (-1) * rho 35590 - rho 35591 + (seg34AccY104 rho - seg34AccX104 rho * (-1)) * (rho 35587 + rho 35588) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX105 rho = seg34AccX104 rho - Bool.toZMod bit * (seg34AccX104 rho - rho 35593) := by
      have hd : rho 35595 = Bool.toZMod bit * (rho 35593 - seg34AccX104 rho) := by
        rw [← hbit, seg34LadderFlatX104_eq]
        unfold seg34LadderFlatX104
        linear_combination -r4323
      unfold seg34AccX105
      linear_combination hd
    have hsely : seg34AccY105 rho = seg34AccY104 rho - Bool.toZMod bit * (seg34AccY104 rho - rho 35594) := by
      have hd : rho 35596 = Bool.toZMod bit * (rho 35594 - seg34AccY104 rho) := by
        rw [← hbit, seg34LadderFlatY104_eq]
        unfold seg34LadderFlatY104
        linear_combination -r4324
      unfold seg34AccY105
      linear_combination hd
    have hd0 : rho 35587 * rho 35588 = rho 35597 := by linear_combination r4325
    have hd1 : rho 35587 * rho 35587 = rho 35598 := by linear_combination r4326
    have hd2 : rho 35588 * rho 35588 = rho 35599 := by linear_combination r4327
    have hd3 : rho 35600 * (rho 35588 * rho 35588 + rho 35587 * rho 35587 * (-1)) = 2 * (rho 35587 * rho 35588) := by
      rw [hd0, hd1, hd2]
      linear_combination r4328
    have hd4 : rho 35601 * (2 - (rho 35588 * rho 35588 + rho 35587 * rho 35587 * (-1))) = rho 35588 * rho 35588 - rho 35587 * rho 35587 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4329
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
      ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
      ⟨(rho 35593 : Seg34.F), (rho 35594 : Seg34.F)⟩
      ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
      ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg34_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34097 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4330 Seg34.relationLc560 Seg34.relationLc560Part0 Seg34.relationLc560Part1 Seg34.relationLc560Part2 Seg34.relationLc560Part3 Seg34.relationLc560Part4 Seg34.relationLc560Part5 Seg34.relationLc560Part6 at r4330
  unfold Seg34.relationRow4331 Seg34.relationLc561 Seg34.relationLc561Part0 Seg34.relationLc561Part1 Seg34.relationLc561Part2 Seg34.relationLc561Part3 at r4331
  unfold Seg34.relationRow4332 Seg34.relationLc562 Seg34.relationLc562Part0 Seg34.relationLc562Part1 Seg34.relationLc562Part2 Seg34.relationLc562Part3 at r4332
  unfold Seg34.relationRow4333 at r4333
  unfold Seg34.relationRow4334 at r4334
  unfold Seg34.relationRow4335 at r4335
  unfold Seg34.relationRow4336 Seg34.relationLc563 Seg34.relationLc563Part0 Seg34.relationLc563Part1 Seg34.relationLc563Part2 Seg34.relationLc563Part3 at r4336
  unfold Seg34.relationRow4337 Seg34.relationLc564 Seg34.relationLc564Part0 Seg34.relationLc564Part1 Seg34.relationLc564Part2 Seg34.relationLc564Part3 at r4337
  unfold Seg34.relationRow4338 at r4338
  unfold Seg34.relationRow4339 at r4339
  unfold Seg34.relationRow4340 at r4340
  unfold Seg34.relationRow4341 at r4341
  unfold Seg34.relationRow4342 at r4342
  have hrung105 (bit : Bool) (hbit : rho 34097 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩ := by
    have ha0 : (rho 35600 + rho 35601) * (seg34AccX105 rho + seg34AccY105 rho) = rho 35602 := by
      rw [seg34LadderFlatX105_eq, seg34LadderFlatY105_eq]
      unfold seg34LadderFlatX105 seg34LadderFlatY105
      linear_combination r4330
    have ha1 : rho 35601 * seg34AccX105 rho = rho 35603 := by
      rw [seg34LadderFlatX105_eq]
      unfold seg34LadderFlatX105
      linear_combination r4331
    have ha2 : rho 35600 * seg34AccY105 rho = rho 35604 := by
      rw [seg34LadderFlatY105_eq]
      unfold seg34LadderFlatY105
      linear_combination r4332
    have ha3 : 3021 * rho 35603 * rho 35604 = rho 35605 := by
      linear_combination r4333
    have ha4 : rho 35606 * (1 + rho 35605) = rho 35603 + rho 35604 := by
      linear_combination r4334
    have ha5 : rho 35607 * (1 - rho 35605) = rho 35602 - rho 35603 - rho 35604 := by
      linear_combination r4335
    have haddx :
        rho 35606 * (1 + 3021 * (rho 35601 * seg34AccX105 rho) * (rho 35600 * seg34AccY105 rho)) =
          rho 35601 * seg34AccX105 rho + rho 35600 * seg34AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35607 * (1 - 3021 * (rho 35601 * seg34AccX105 rho) * (rho 35600 * seg34AccY105 rho)) =
          (-1) * (rho 35601 * seg34AccX105 rho) - rho 35600 * seg34AccY105 rho +
            (seg34AccY105 rho - seg34AccX105 rho * (-1)) * (rho 35600 + rho 35601) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35607 * (1 - rho 35605) = rho 35602 - rho 35603 - rho 35604 := ha5
        _ = (-1) * rho 35603 - rho 35604 + (seg34AccY105 rho - seg34AccX105 rho * (-1)) * (rho 35600 + rho 35601) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX106 rho = seg34AccX105 rho - Bool.toZMod bit * (seg34AccX105 rho - rho 35606) := by
      have hd : rho 35608 = Bool.toZMod bit * (rho 35606 - seg34AccX105 rho) := by
        rw [← hbit, seg34LadderFlatX105_eq]
        unfold seg34LadderFlatX105
        linear_combination -r4336
      unfold seg34AccX106
      linear_combination hd
    have hsely : seg34AccY106 rho = seg34AccY105 rho - Bool.toZMod bit * (seg34AccY105 rho - rho 35607) := by
      have hd : rho 35609 = Bool.toZMod bit * (rho 35607 - seg34AccY105 rho) := by
        rw [← hbit, seg34LadderFlatY105_eq]
        unfold seg34LadderFlatY105
        linear_combination -r4337
      unfold seg34AccY106
      linear_combination hd
    have hd0 : rho 35600 * rho 35601 = rho 35610 := by linear_combination r4338
    have hd1 : rho 35600 * rho 35600 = rho 35611 := by linear_combination r4339
    have hd2 : rho 35601 * rho 35601 = rho 35612 := by linear_combination r4340
    have hd3 : rho 35613 * (rho 35601 * rho 35601 + rho 35600 * rho 35600 * (-1)) = 2 * (rho 35600 * rho 35601) := by
      rw [hd0, hd1, hd2]
      linear_combination r4341
    have hd4 : rho 35614 * (2 - (rho 35601 * rho 35601 + rho 35600 * rho 35600 * (-1))) = rho 35601 * rho 35601 - rho 35600 * rho 35600 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4342
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
      ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
      ⟨(rho 35606 : Seg34.F), (rho 35607 : Seg34.F)⟩
      ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
      ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg34_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34098 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4343 Seg34.relationLc565 Seg34.relationLc565Part0 Seg34.relationLc565Part1 Seg34.relationLc565Part2 Seg34.relationLc565Part3 Seg34.relationLc565Part4 Seg34.relationLc565Part5 Seg34.relationLc565Part6 at r4343
  unfold Seg34.relationRow4344 Seg34.relationLc566 Seg34.relationLc566Part0 Seg34.relationLc566Part1 Seg34.relationLc566Part2 Seg34.relationLc566Part3 at r4344
  unfold Seg34.relationRow4345 Seg34.relationLc567 Seg34.relationLc567Part0 Seg34.relationLc567Part1 Seg34.relationLc567Part2 Seg34.relationLc567Part3 at r4345
  unfold Seg34.relationRow4346 at r4346
  unfold Seg34.relationRow4347 at r4347
  unfold Seg34.relationRow4348 at r4348
  unfold Seg34.relationRow4349 Seg34.relationLc568 Seg34.relationLc568Part0 Seg34.relationLc568Part1 Seg34.relationLc568Part2 Seg34.relationLc568Part3 at r4349
  unfold Seg34.relationRow4350 Seg34.relationLc569 Seg34.relationLc569Part0 Seg34.relationLc569Part1 Seg34.relationLc569Part2 Seg34.relationLc569Part3 at r4350
  unfold Seg34.relationRow4351 at r4351
  unfold Seg34.relationRow4352 at r4352
  unfold Seg34.relationRow4353 at r4353
  unfold Seg34.relationRow4354 at r4354
  unfold Seg34.relationRow4355 at r4355
  have hrung106 (bit : Bool) (hbit : rho 34098 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩ := by
    have ha0 : (rho 35613 + rho 35614) * (seg34AccX106 rho + seg34AccY106 rho) = rho 35615 := by
      rw [seg34LadderFlatX106_eq, seg34LadderFlatY106_eq]
      unfold seg34LadderFlatX106 seg34LadderFlatY106
      linear_combination r4343
    have ha1 : rho 35614 * seg34AccX106 rho = rho 35616 := by
      rw [seg34LadderFlatX106_eq]
      unfold seg34LadderFlatX106
      linear_combination r4344
    have ha2 : rho 35613 * seg34AccY106 rho = rho 35617 := by
      rw [seg34LadderFlatY106_eq]
      unfold seg34LadderFlatY106
      linear_combination r4345
    have ha3 : 3021 * rho 35616 * rho 35617 = rho 35618 := by
      linear_combination r4346
    have ha4 : rho 35619 * (1 + rho 35618) = rho 35616 + rho 35617 := by
      linear_combination r4347
    have ha5 : rho 35620 * (1 - rho 35618) = rho 35615 - rho 35616 - rho 35617 := by
      linear_combination r4348
    have haddx :
        rho 35619 * (1 + 3021 * (rho 35614 * seg34AccX106 rho) * (rho 35613 * seg34AccY106 rho)) =
          rho 35614 * seg34AccX106 rho + rho 35613 * seg34AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35620 * (1 - 3021 * (rho 35614 * seg34AccX106 rho) * (rho 35613 * seg34AccY106 rho)) =
          (-1) * (rho 35614 * seg34AccX106 rho) - rho 35613 * seg34AccY106 rho +
            (seg34AccY106 rho - seg34AccX106 rho * (-1)) * (rho 35613 + rho 35614) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35620 * (1 - rho 35618) = rho 35615 - rho 35616 - rho 35617 := ha5
        _ = (-1) * rho 35616 - rho 35617 + (seg34AccY106 rho - seg34AccX106 rho * (-1)) * (rho 35613 + rho 35614) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX107 rho = seg34AccX106 rho - Bool.toZMod bit * (seg34AccX106 rho - rho 35619) := by
      have hd : rho 35621 = Bool.toZMod bit * (rho 35619 - seg34AccX106 rho) := by
        rw [← hbit, seg34LadderFlatX106_eq]
        unfold seg34LadderFlatX106
        linear_combination -r4349
      unfold seg34AccX107
      linear_combination hd
    have hsely : seg34AccY107 rho = seg34AccY106 rho - Bool.toZMod bit * (seg34AccY106 rho - rho 35620) := by
      have hd : rho 35622 = Bool.toZMod bit * (rho 35620 - seg34AccY106 rho) := by
        rw [← hbit, seg34LadderFlatY106_eq]
        unfold seg34LadderFlatY106
        linear_combination -r4350
      unfold seg34AccY107
      linear_combination hd
    have hd0 : rho 35613 * rho 35614 = rho 35623 := by linear_combination r4351
    have hd1 : rho 35613 * rho 35613 = rho 35624 := by linear_combination r4352
    have hd2 : rho 35614 * rho 35614 = rho 35625 := by linear_combination r4353
    have hd3 : rho 35626 * (rho 35614 * rho 35614 + rho 35613 * rho 35613 * (-1)) = 2 * (rho 35613 * rho 35614) := by
      rw [hd0, hd1, hd2]
      linear_combination r4354
    have hd4 : rho 35627 * (2 - (rho 35614 * rho 35614 + rho 35613 * rho 35613 * (-1))) = rho 35614 * rho 35614 - rho 35613 * rho 35613 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4355
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
      ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
      ⟨(rho 35619 : Seg34.F), (rho 35620 : Seg34.F)⟩
      ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
      ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg34_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34099 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4356 Seg34.relationLc570 Seg34.relationLc570Part0 Seg34.relationLc570Part1 Seg34.relationLc570Part2 Seg34.relationLc570Part3 Seg34.relationLc570Part4 Seg34.relationLc570Part5 Seg34.relationLc570Part6 at r4356
  unfold Seg34.relationRow4357 Seg34.relationLc571 Seg34.relationLc571Part0 Seg34.relationLc571Part1 Seg34.relationLc571Part2 Seg34.relationLc571Part3 at r4357
  unfold Seg34.relationRow4358 Seg34.relationLc572 Seg34.relationLc572Part0 Seg34.relationLc572Part1 Seg34.relationLc572Part2 Seg34.relationLc572Part3 at r4358
  unfold Seg34.relationRow4359 at r4359
  unfold Seg34.relationRow4360 at r4360
  unfold Seg34.relationRow4361 at r4361
  unfold Seg34.relationRow4362 Seg34.relationLc573 Seg34.relationLc573Part0 Seg34.relationLc573Part1 Seg34.relationLc573Part2 Seg34.relationLc573Part3 at r4362
  unfold Seg34.relationRow4363 Seg34.relationLc574 Seg34.relationLc574Part0 Seg34.relationLc574Part1 Seg34.relationLc574Part2 Seg34.relationLc574Part3 at r4363
  unfold Seg34.relationRow4364 at r4364
  unfold Seg34.relationRow4365 at r4365
  unfold Seg34.relationRow4366 at r4366
  unfold Seg34.relationRow4367 at r4367
  unfold Seg34.relationRow4368 at r4368
  have hrung107 (bit : Bool) (hbit : rho 34099 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩ := by
    have ha0 : (rho 35626 + rho 35627) * (seg34AccX107 rho + seg34AccY107 rho) = rho 35628 := by
      rw [seg34LadderFlatX107_eq, seg34LadderFlatY107_eq]
      unfold seg34LadderFlatX107 seg34LadderFlatY107
      linear_combination r4356
    have ha1 : rho 35627 * seg34AccX107 rho = rho 35629 := by
      rw [seg34LadderFlatX107_eq]
      unfold seg34LadderFlatX107
      linear_combination r4357
    have ha2 : rho 35626 * seg34AccY107 rho = rho 35630 := by
      rw [seg34LadderFlatY107_eq]
      unfold seg34LadderFlatY107
      linear_combination r4358
    have ha3 : 3021 * rho 35629 * rho 35630 = rho 35631 := by
      linear_combination r4359
    have ha4 : rho 35632 * (1 + rho 35631) = rho 35629 + rho 35630 := by
      linear_combination r4360
    have ha5 : rho 35633 * (1 - rho 35631) = rho 35628 - rho 35629 - rho 35630 := by
      linear_combination r4361
    have haddx :
        rho 35632 * (1 + 3021 * (rho 35627 * seg34AccX107 rho) * (rho 35626 * seg34AccY107 rho)) =
          rho 35627 * seg34AccX107 rho + rho 35626 * seg34AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35633 * (1 - 3021 * (rho 35627 * seg34AccX107 rho) * (rho 35626 * seg34AccY107 rho)) =
          (-1) * (rho 35627 * seg34AccX107 rho) - rho 35626 * seg34AccY107 rho +
            (seg34AccY107 rho - seg34AccX107 rho * (-1)) * (rho 35626 + rho 35627) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35633 * (1 - rho 35631) = rho 35628 - rho 35629 - rho 35630 := ha5
        _ = (-1) * rho 35629 - rho 35630 + (seg34AccY107 rho - seg34AccX107 rho * (-1)) * (rho 35626 + rho 35627) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX108 rho = seg34AccX107 rho - Bool.toZMod bit * (seg34AccX107 rho - rho 35632) := by
      have hd : rho 35634 = Bool.toZMod bit * (rho 35632 - seg34AccX107 rho) := by
        rw [← hbit, seg34LadderFlatX107_eq]
        unfold seg34LadderFlatX107
        linear_combination -r4362
      unfold seg34AccX108
      linear_combination hd
    have hsely : seg34AccY108 rho = seg34AccY107 rho - Bool.toZMod bit * (seg34AccY107 rho - rho 35633) := by
      have hd : rho 35635 = Bool.toZMod bit * (rho 35633 - seg34AccY107 rho) := by
        rw [← hbit, seg34LadderFlatY107_eq]
        unfold seg34LadderFlatY107
        linear_combination -r4363
      unfold seg34AccY108
      linear_combination hd
    have hd0 : rho 35626 * rho 35627 = rho 35636 := by linear_combination r4364
    have hd1 : rho 35626 * rho 35626 = rho 35637 := by linear_combination r4365
    have hd2 : rho 35627 * rho 35627 = rho 35638 := by linear_combination r4366
    have hd3 : rho 35639 * (rho 35627 * rho 35627 + rho 35626 * rho 35626 * (-1)) = 2 * (rho 35626 * rho 35627) := by
      rw [hd0, hd1, hd2]
      linear_combination r4367
    have hd4 : rho 35640 * (2 - (rho 35627 * rho 35627 + rho 35626 * rho 35626 * (-1))) = rho 35627 * rho 35627 - rho 35626 * rho 35626 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4368
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
      ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
      ⟨(rho 35632 : Seg34.F), (rho 35633 : Seg34.F)⟩
      ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
      ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg34_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34100 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4369 Seg34.relationLc575 Seg34.relationLc575Part0 Seg34.relationLc575Part1 Seg34.relationLc575Part2 Seg34.relationLc575Part3 Seg34.relationLc575Part4 Seg34.relationLc575Part5 Seg34.relationLc575Part6 at r4369
  unfold Seg34.relationRow4370 Seg34.relationLc576 Seg34.relationLc576Part0 Seg34.relationLc576Part1 Seg34.relationLc576Part2 Seg34.relationLc576Part3 at r4370
  unfold Seg34.relationRow4371 Seg34.relationLc577 Seg34.relationLc577Part0 Seg34.relationLc577Part1 Seg34.relationLc577Part2 Seg34.relationLc577Part3 at r4371
  unfold Seg34.relationRow4372 at r4372
  unfold Seg34.relationRow4373 at r4373
  unfold Seg34.relationRow4374 at r4374
  unfold Seg34.relationRow4375 Seg34.relationLc578 Seg34.relationLc578Part0 Seg34.relationLc578Part1 Seg34.relationLc578Part2 Seg34.relationLc578Part3 at r4375
  unfold Seg34.relationRow4376 Seg34.relationLc579 Seg34.relationLc579Part0 Seg34.relationLc579Part1 Seg34.relationLc579Part2 Seg34.relationLc579Part3 at r4376
  unfold Seg34.relationRow4377 at r4377
  unfold Seg34.relationRow4378 at r4378
  unfold Seg34.relationRow4379 at r4379
  unfold Seg34.relationRow4380 at r4380
  unfold Seg34.relationRow4381 at r4381
  have hrung108 (bit : Bool) (hbit : rho 34100 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩ := by
    have ha0 : (rho 35639 + rho 35640) * (seg34AccX108 rho + seg34AccY108 rho) = rho 35641 := by
      rw [seg34LadderFlatX108_eq, seg34LadderFlatY108_eq]
      unfold seg34LadderFlatX108 seg34LadderFlatY108
      linear_combination r4369
    have ha1 : rho 35640 * seg34AccX108 rho = rho 35642 := by
      rw [seg34LadderFlatX108_eq]
      unfold seg34LadderFlatX108
      linear_combination r4370
    have ha2 : rho 35639 * seg34AccY108 rho = rho 35643 := by
      rw [seg34LadderFlatY108_eq]
      unfold seg34LadderFlatY108
      linear_combination r4371
    have ha3 : 3021 * rho 35642 * rho 35643 = rho 35644 := by
      linear_combination r4372
    have ha4 : rho 35645 * (1 + rho 35644) = rho 35642 + rho 35643 := by
      linear_combination r4373
    have ha5 : rho 35646 * (1 - rho 35644) = rho 35641 - rho 35642 - rho 35643 := by
      linear_combination r4374
    have haddx :
        rho 35645 * (1 + 3021 * (rho 35640 * seg34AccX108 rho) * (rho 35639 * seg34AccY108 rho)) =
          rho 35640 * seg34AccX108 rho + rho 35639 * seg34AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35646 * (1 - 3021 * (rho 35640 * seg34AccX108 rho) * (rho 35639 * seg34AccY108 rho)) =
          (-1) * (rho 35640 * seg34AccX108 rho) - rho 35639 * seg34AccY108 rho +
            (seg34AccY108 rho - seg34AccX108 rho * (-1)) * (rho 35639 + rho 35640) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35646 * (1 - rho 35644) = rho 35641 - rho 35642 - rho 35643 := ha5
        _ = (-1) * rho 35642 - rho 35643 + (seg34AccY108 rho - seg34AccX108 rho * (-1)) * (rho 35639 + rho 35640) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX109 rho = seg34AccX108 rho - Bool.toZMod bit * (seg34AccX108 rho - rho 35645) := by
      have hd : rho 35647 = Bool.toZMod bit * (rho 35645 - seg34AccX108 rho) := by
        rw [← hbit, seg34LadderFlatX108_eq]
        unfold seg34LadderFlatX108
        linear_combination -r4375
      unfold seg34AccX109
      linear_combination hd
    have hsely : seg34AccY109 rho = seg34AccY108 rho - Bool.toZMod bit * (seg34AccY108 rho - rho 35646) := by
      have hd : rho 35648 = Bool.toZMod bit * (rho 35646 - seg34AccY108 rho) := by
        rw [← hbit, seg34LadderFlatY108_eq]
        unfold seg34LadderFlatY108
        linear_combination -r4376
      unfold seg34AccY109
      linear_combination hd
    have hd0 : rho 35639 * rho 35640 = rho 35649 := by linear_combination r4377
    have hd1 : rho 35639 * rho 35639 = rho 35650 := by linear_combination r4378
    have hd2 : rho 35640 * rho 35640 = rho 35651 := by linear_combination r4379
    have hd3 : rho 35652 * (rho 35640 * rho 35640 + rho 35639 * rho 35639 * (-1)) = 2 * (rho 35639 * rho 35640) := by
      rw [hd0, hd1, hd2]
      linear_combination r4380
    have hd4 : rho 35653 * (2 - (rho 35640 * rho 35640 + rho 35639 * rho 35639 * (-1))) = rho 35640 * rho 35640 - rho 35639 * rho 35639 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4381
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
      ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
      ⟨(rho 35645 : Seg34.F), (rho 35646 : Seg34.F)⟩
      ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
      ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg34_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34101 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, _, _, _, _, _⟩
  unfold Seg34.relationRow4382 Seg34.relationLc580 Seg34.relationLc580Part0 Seg34.relationLc580Part1 Seg34.relationLc580Part2 Seg34.relationLc580Part3 Seg34.relationLc580Part4 Seg34.relationLc580Part5 Seg34.relationLc580Part6 at r4382
  unfold Seg34.relationRow4383 Seg34.relationLc581 Seg34.relationLc581Part0 Seg34.relationLc581Part1 Seg34.relationLc581Part2 Seg34.relationLc581Part3 at r4383
  unfold Seg34.relationRow4384 Seg34.relationLc582 Seg34.relationLc582Part0 Seg34.relationLc582Part1 Seg34.relationLc582Part2 Seg34.relationLc582Part3 at r4384
  unfold Seg34.relationRow4385 at r4385
  unfold Seg34.relationRow4386 at r4386
  unfold Seg34.relationRow4387 at r4387
  unfold Seg34.relationRow4388 Seg34.relationLc583 Seg34.relationLc583Part0 Seg34.relationLc583Part1 Seg34.relationLc583Part2 Seg34.relationLc583Part3 at r4388
  unfold Seg34.relationRow4389 Seg34.relationLc584 Seg34.relationLc584Part0 Seg34.relationLc584Part1 Seg34.relationLc584Part2 Seg34.relationLc584Part3 at r4389
  unfold Seg34.relationRow4390 at r4390
  unfold Seg34.relationRow4391 at r4391
  unfold Seg34.relationRow4392 at r4392
  unfold Seg34.relationRow4393 at r4393
  unfold Seg34.relationRow4394 at r4394
  have hrung109 (bit : Bool) (hbit : rho 34101 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩ := by
    have ha0 : (rho 35652 + rho 35653) * (seg34AccX109 rho + seg34AccY109 rho) = rho 35654 := by
      rw [seg34LadderFlatX109_eq, seg34LadderFlatY109_eq]
      unfold seg34LadderFlatX109 seg34LadderFlatY109
      linear_combination r4382
    have ha1 : rho 35653 * seg34AccX109 rho = rho 35655 := by
      rw [seg34LadderFlatX109_eq]
      unfold seg34LadderFlatX109
      linear_combination r4383
    have ha2 : rho 35652 * seg34AccY109 rho = rho 35656 := by
      rw [seg34LadderFlatY109_eq]
      unfold seg34LadderFlatY109
      linear_combination r4384
    have ha3 : 3021 * rho 35655 * rho 35656 = rho 35657 := by
      linear_combination r4385
    have ha4 : rho 35658 * (1 + rho 35657) = rho 35655 + rho 35656 := by
      linear_combination r4386
    have ha5 : rho 35659 * (1 - rho 35657) = rho 35654 - rho 35655 - rho 35656 := by
      linear_combination r4387
    have haddx :
        rho 35658 * (1 + 3021 * (rho 35653 * seg34AccX109 rho) * (rho 35652 * seg34AccY109 rho)) =
          rho 35653 * seg34AccX109 rho + rho 35652 * seg34AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35659 * (1 - 3021 * (rho 35653 * seg34AccX109 rho) * (rho 35652 * seg34AccY109 rho)) =
          (-1) * (rho 35653 * seg34AccX109 rho) - rho 35652 * seg34AccY109 rho +
            (seg34AccY109 rho - seg34AccX109 rho * (-1)) * (rho 35652 + rho 35653) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35659 * (1 - rho 35657) = rho 35654 - rho 35655 - rho 35656 := ha5
        _ = (-1) * rho 35655 - rho 35656 + (seg34AccY109 rho - seg34AccX109 rho * (-1)) * (rho 35652 + rho 35653) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX110 rho = seg34AccX109 rho - Bool.toZMod bit * (seg34AccX109 rho - rho 35658) := by
      have hd : rho 35660 = Bool.toZMod bit * (rho 35658 - seg34AccX109 rho) := by
        rw [← hbit, seg34LadderFlatX109_eq]
        unfold seg34LadderFlatX109
        linear_combination -r4388
      unfold seg34AccX110
      linear_combination hd
    have hsely : seg34AccY110 rho = seg34AccY109 rho - Bool.toZMod bit * (seg34AccY109 rho - rho 35659) := by
      have hd : rho 35661 = Bool.toZMod bit * (rho 35659 - seg34AccY109 rho) := by
        rw [← hbit, seg34LadderFlatY109_eq]
        unfold seg34LadderFlatY109
        linear_combination -r4389
      unfold seg34AccY110
      linear_combination hd
    have hd0 : rho 35652 * rho 35653 = rho 35662 := by linear_combination r4390
    have hd1 : rho 35652 * rho 35652 = rho 35663 := by linear_combination r4391
    have hd2 : rho 35653 * rho 35653 = rho 35664 := by linear_combination r4392
    have hd3 : rho 35665 * (rho 35653 * rho 35653 + rho 35652 * rho 35652 * (-1)) = 2 * (rho 35652 * rho 35653) := by
      rw [hd0, hd1, hd2]
      linear_combination r4393
    have hd4 : rho 35666 * (2 - (rho 35653 * rho 35653 + rho 35652 * rho 35652 * (-1))) = rho 35653 * rho 35653 - rho 35652 * rho 35652 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4394
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
      ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
      ⟨(rho 35658 : Seg34.F), (rho 35659 : Seg34.F)⟩
      ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
      ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg34_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34102 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4395 Seg34.relationLc585 Seg34.relationLc585Part0 Seg34.relationLc585Part1 Seg34.relationLc585Part2 Seg34.relationLc585Part3 Seg34.relationLc585Part4 Seg34.relationLc585Part5 Seg34.relationLc585Part6 at r4395
  unfold Seg34.relationRow4396 Seg34.relationLc586 Seg34.relationLc586Part0 Seg34.relationLc586Part1 Seg34.relationLc586Part2 Seg34.relationLc586Part3 at r4396
  unfold Seg34.relationRow4397 Seg34.relationLc587 Seg34.relationLc587Part0 Seg34.relationLc587Part1 Seg34.relationLc587Part2 Seg34.relationLc587Part3 at r4397
  unfold Seg34.relationRow4398 at r4398
  unfold Seg34.relationRow4399 at r4399
  unfold Seg34.relationRow4400 at r4400
  unfold Seg34.relationRow4401 Seg34.relationLc588 Seg34.relationLc588Part0 Seg34.relationLc588Part1 Seg34.relationLc588Part2 Seg34.relationLc588Part3 at r4401
  unfold Seg34.relationRow4402 Seg34.relationLc589 Seg34.relationLc589Part0 Seg34.relationLc589Part1 Seg34.relationLc589Part2 Seg34.relationLc589Part3 at r4402
  unfold Seg34.relationRow4403 at r4403
  unfold Seg34.relationRow4404 at r4404
  unfold Seg34.relationRow4405 at r4405
  unfold Seg34.relationRow4406 at r4406
  unfold Seg34.relationRow4407 at r4407
  have hrung110 (bit : Bool) (hbit : rho 34102 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩ := by
    have ha0 : (rho 35665 + rho 35666) * (seg34AccX110 rho + seg34AccY110 rho) = rho 35667 := by
      rw [seg34LadderFlatX110_eq, seg34LadderFlatY110_eq]
      unfold seg34LadderFlatX110 seg34LadderFlatY110
      linear_combination r4395
    have ha1 : rho 35666 * seg34AccX110 rho = rho 35668 := by
      rw [seg34LadderFlatX110_eq]
      unfold seg34LadderFlatX110
      linear_combination r4396
    have ha2 : rho 35665 * seg34AccY110 rho = rho 35669 := by
      rw [seg34LadderFlatY110_eq]
      unfold seg34LadderFlatY110
      linear_combination r4397
    have ha3 : 3021 * rho 35668 * rho 35669 = rho 35670 := by
      linear_combination r4398
    have ha4 : rho 35671 * (1 + rho 35670) = rho 35668 + rho 35669 := by
      linear_combination r4399
    have ha5 : rho 35672 * (1 - rho 35670) = rho 35667 - rho 35668 - rho 35669 := by
      linear_combination r4400
    have haddx :
        rho 35671 * (1 + 3021 * (rho 35666 * seg34AccX110 rho) * (rho 35665 * seg34AccY110 rho)) =
          rho 35666 * seg34AccX110 rho + rho 35665 * seg34AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35672 * (1 - 3021 * (rho 35666 * seg34AccX110 rho) * (rho 35665 * seg34AccY110 rho)) =
          (-1) * (rho 35666 * seg34AccX110 rho) - rho 35665 * seg34AccY110 rho +
            (seg34AccY110 rho - seg34AccX110 rho * (-1)) * (rho 35665 + rho 35666) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35672 * (1 - rho 35670) = rho 35667 - rho 35668 - rho 35669 := ha5
        _ = (-1) * rho 35668 - rho 35669 + (seg34AccY110 rho - seg34AccX110 rho * (-1)) * (rho 35665 + rho 35666) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX111 rho = seg34AccX110 rho - Bool.toZMod bit * (seg34AccX110 rho - rho 35671) := by
      have hd : rho 35673 = Bool.toZMod bit * (rho 35671 - seg34AccX110 rho) := by
        rw [← hbit, seg34LadderFlatX110_eq]
        unfold seg34LadderFlatX110
        linear_combination -r4401
      unfold seg34AccX111
      linear_combination hd
    have hsely : seg34AccY111 rho = seg34AccY110 rho - Bool.toZMod bit * (seg34AccY110 rho - rho 35672) := by
      have hd : rho 35674 = Bool.toZMod bit * (rho 35672 - seg34AccY110 rho) := by
        rw [← hbit, seg34LadderFlatY110_eq]
        unfold seg34LadderFlatY110
        linear_combination -r4402
      unfold seg34AccY111
      linear_combination hd
    have hd0 : rho 35665 * rho 35666 = rho 35675 := by linear_combination r4403
    have hd1 : rho 35665 * rho 35665 = rho 35676 := by linear_combination r4404
    have hd2 : rho 35666 * rho 35666 = rho 35677 := by linear_combination r4405
    have hd3 : rho 35678 * (rho 35666 * rho 35666 + rho 35665 * rho 35665 * (-1)) = 2 * (rho 35665 * rho 35666) := by
      rw [hd0, hd1, hd2]
      linear_combination r4406
    have hd4 : rho 35679 * (2 - (rho 35666 * rho 35666 + rho 35665 * rho 35665 * (-1))) = rho 35666 * rho 35666 - rho 35665 * rho 35665 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4407
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
      ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
      ⟨(rho 35671 : Seg34.F), (rho 35672 : Seg34.F)⟩
      ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
      ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg34_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34103 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4408 Seg34.relationLc590 Seg34.relationLc590Part0 Seg34.relationLc590Part1 Seg34.relationLc590Part2 Seg34.relationLc590Part3 Seg34.relationLc590Part4 Seg34.relationLc590Part5 Seg34.relationLc590Part6 at r4408
  unfold Seg34.relationRow4409 Seg34.relationLc591 Seg34.relationLc591Part0 Seg34.relationLc591Part1 Seg34.relationLc591Part2 Seg34.relationLc591Part3 at r4409
  unfold Seg34.relationRow4410 Seg34.relationLc592 Seg34.relationLc592Part0 Seg34.relationLc592Part1 Seg34.relationLc592Part2 Seg34.relationLc592Part3 at r4410
  unfold Seg34.relationRow4411 at r4411
  unfold Seg34.relationRow4412 at r4412
  unfold Seg34.relationRow4413 at r4413
  unfold Seg34.relationRow4414 Seg34.relationLc593 Seg34.relationLc593Part0 Seg34.relationLc593Part1 Seg34.relationLc593Part2 Seg34.relationLc593Part3 at r4414
  unfold Seg34.relationRow4415 Seg34.relationLc594 Seg34.relationLc594Part0 Seg34.relationLc594Part1 Seg34.relationLc594Part2 Seg34.relationLc594Part3 at r4415
  unfold Seg34.relationRow4416 at r4416
  unfold Seg34.relationRow4417 at r4417
  unfold Seg34.relationRow4418 at r4418
  unfold Seg34.relationRow4419 at r4419
  unfold Seg34.relationRow4420 at r4420
  have hrung111 (bit : Bool) (hbit : rho 34103 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
        ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩ := by
    have ha0 : (rho 35678 + rho 35679) * (seg34AccX111 rho + seg34AccY111 rho) = rho 35680 := by
      rw [seg34LadderFlatX111_eq, seg34LadderFlatY111_eq]
      unfold seg34LadderFlatX111 seg34LadderFlatY111
      linear_combination r4408
    have ha1 : rho 35679 * seg34AccX111 rho = rho 35681 := by
      rw [seg34LadderFlatX111_eq]
      unfold seg34LadderFlatX111
      linear_combination r4409
    have ha2 : rho 35678 * seg34AccY111 rho = rho 35682 := by
      rw [seg34LadderFlatY111_eq]
      unfold seg34LadderFlatY111
      linear_combination r4410
    have ha3 : 3021 * rho 35681 * rho 35682 = rho 35683 := by
      linear_combination r4411
    have ha4 : rho 35684 * (1 + rho 35683) = rho 35681 + rho 35682 := by
      linear_combination r4412
    have ha5 : rho 35685 * (1 - rho 35683) = rho 35680 - rho 35681 - rho 35682 := by
      linear_combination r4413
    have haddx :
        rho 35684 * (1 + 3021 * (rho 35679 * seg34AccX111 rho) * (rho 35678 * seg34AccY111 rho)) =
          rho 35679 * seg34AccX111 rho + rho 35678 * seg34AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35685 * (1 - 3021 * (rho 35679 * seg34AccX111 rho) * (rho 35678 * seg34AccY111 rho)) =
          (-1) * (rho 35679 * seg34AccX111 rho) - rho 35678 * seg34AccY111 rho +
            (seg34AccY111 rho - seg34AccX111 rho * (-1)) * (rho 35678 + rho 35679) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35685 * (1 - rho 35683) = rho 35680 - rho 35681 - rho 35682 := ha5
        _ = (-1) * rho 35681 - rho 35682 + (seg34AccY111 rho - seg34AccX111 rho * (-1)) * (rho 35678 + rho 35679) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX112 rho = seg34AccX111 rho - Bool.toZMod bit * (seg34AccX111 rho - rho 35684) := by
      have hd : rho 35686 = Bool.toZMod bit * (rho 35684 - seg34AccX111 rho) := by
        rw [← hbit, seg34LadderFlatX111_eq]
        unfold seg34LadderFlatX111
        linear_combination -r4414
      unfold seg34AccX112
      linear_combination hd
    have hsely : seg34AccY112 rho = seg34AccY111 rho - Bool.toZMod bit * (seg34AccY111 rho - rho 35685) := by
      have hd : rho 35687 = Bool.toZMod bit * (rho 35685 - seg34AccY111 rho) := by
        rw [← hbit, seg34LadderFlatY111_eq]
        unfold seg34LadderFlatY111
        linear_combination -r4415
      unfold seg34AccY112
      linear_combination hd
    have hd0 : rho 35678 * rho 35679 = rho 35688 := by linear_combination r4416
    have hd1 : rho 35678 * rho 35678 = rho 35689 := by linear_combination r4417
    have hd2 : rho 35679 * rho 35679 = rho 35690 := by linear_combination r4418
    have hd3 : rho 35691 * (rho 35679 * rho 35679 + rho 35678 * rho 35678 * (-1)) = 2 * (rho 35678 * rho 35679) := by
      rw [hd0, hd1, hd2]
      linear_combination r4419
    have hd4 : rho 35692 * (2 - (rho 35679 * rho 35679 + rho 35678 * rho 35678 * (-1))) = rho 35679 * rho 35679 - rho 35678 * rho 35678 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4420
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX111 rho : Seg34.F), (seg34AccY111 rho : Seg34.F)⟩
      ⟨(rho 35678 : Seg34.F), (rho 35679 : Seg34.F)⟩
      ⟨(rho 35684 : Seg34.F), (rho 35685 : Seg34.F)⟩
      ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
      ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg34_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34104 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4421 Seg34.relationLc595 Seg34.relationLc595Part0 Seg34.relationLc595Part1 Seg34.relationLc595Part2 Seg34.relationLc595Part3 Seg34.relationLc595Part4 Seg34.relationLc595Part5 Seg34.relationLc595Part6 Seg34.relationLc595Part7 at r4421
  unfold Seg34.relationRow4422 Seg34.relationLc596 Seg34.relationLc596Part0 Seg34.relationLc596Part1 Seg34.relationLc596Part2 Seg34.relationLc596Part3 at r4422
  unfold Seg34.relationRow4423 Seg34.relationLc597 Seg34.relationLc597Part0 Seg34.relationLc597Part1 Seg34.relationLc597Part2 Seg34.relationLc597Part3 at r4423
  unfold Seg34.relationRow4424 at r4424
  unfold Seg34.relationRow4425 at r4425
  unfold Seg34.relationRow4426 at r4426
  unfold Seg34.relationRow4427 Seg34.relationLc598 Seg34.relationLc598Part0 Seg34.relationLc598Part1 Seg34.relationLc598Part2 Seg34.relationLc598Part3 at r4427
  unfold Seg34.relationRow4428 Seg34.relationLc599 Seg34.relationLc599Part0 Seg34.relationLc599Part1 Seg34.relationLc599Part2 Seg34.relationLc599Part3 at r4428
  unfold Seg34.relationRow4429 at r4429
  unfold Seg34.relationRow4430 at r4430
  unfold Seg34.relationRow4431 at r4431
  unfold Seg34.relationRow4432 at r4432
  unfold Seg34.relationRow4433 at r4433
  have hrung112 (bit : Bool) (hbit : rho 34104 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
        ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩ := by
    have ha0 : (rho 35691 + rho 35692) * (seg34AccX112 rho + seg34AccY112 rho) = rho 35693 := by
      rw [seg34LadderFlatX112_eq, seg34LadderFlatY112_eq]
      unfold seg34LadderFlatX112 seg34LadderFlatY112
      linear_combination r4421
    have ha1 : rho 35692 * seg34AccX112 rho = rho 35694 := by
      rw [seg34LadderFlatX112_eq]
      unfold seg34LadderFlatX112
      linear_combination r4422
    have ha2 : rho 35691 * seg34AccY112 rho = rho 35695 := by
      rw [seg34LadderFlatY112_eq]
      unfold seg34LadderFlatY112
      linear_combination r4423
    have ha3 : 3021 * rho 35694 * rho 35695 = rho 35696 := by
      linear_combination r4424
    have ha4 : rho 35697 * (1 + rho 35696) = rho 35694 + rho 35695 := by
      linear_combination r4425
    have ha5 : rho 35698 * (1 - rho 35696) = rho 35693 - rho 35694 - rho 35695 := by
      linear_combination r4426
    have haddx :
        rho 35697 * (1 + 3021 * (rho 35692 * seg34AccX112 rho) * (rho 35691 * seg34AccY112 rho)) =
          rho 35692 * seg34AccX112 rho + rho 35691 * seg34AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35698 * (1 - 3021 * (rho 35692 * seg34AccX112 rho) * (rho 35691 * seg34AccY112 rho)) =
          (-1) * (rho 35692 * seg34AccX112 rho) - rho 35691 * seg34AccY112 rho +
            (seg34AccY112 rho - seg34AccX112 rho * (-1)) * (rho 35691 + rho 35692) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35698 * (1 - rho 35696) = rho 35693 - rho 35694 - rho 35695 := ha5
        _ = (-1) * rho 35694 - rho 35695 + (seg34AccY112 rho - seg34AccX112 rho * (-1)) * (rho 35691 + rho 35692) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX113 rho = seg34AccX112 rho - Bool.toZMod bit * (seg34AccX112 rho - rho 35697) := by
      have hd : rho 35699 = Bool.toZMod bit * (rho 35697 - seg34AccX112 rho) := by
        rw [← hbit, seg34LadderFlatX112_eq]
        unfold seg34LadderFlatX112
        linear_combination -r4427
      unfold seg34AccX113
      linear_combination hd
    have hsely : seg34AccY113 rho = seg34AccY112 rho - Bool.toZMod bit * (seg34AccY112 rho - rho 35698) := by
      have hd : rho 35700 = Bool.toZMod bit * (rho 35698 - seg34AccY112 rho) := by
        rw [← hbit, seg34LadderFlatY112_eq]
        unfold seg34LadderFlatY112
        linear_combination -r4428
      unfold seg34AccY113
      linear_combination hd
    have hd0 : rho 35691 * rho 35692 = rho 35701 := by linear_combination r4429
    have hd1 : rho 35691 * rho 35691 = rho 35702 := by linear_combination r4430
    have hd2 : rho 35692 * rho 35692 = rho 35703 := by linear_combination r4431
    have hd3 : rho 35704 * (rho 35692 * rho 35692 + rho 35691 * rho 35691 * (-1)) = 2 * (rho 35691 * rho 35692) := by
      rw [hd0, hd1, hd2]
      linear_combination r4432
    have hd4 : rho 35705 * (2 - (rho 35692 * rho 35692 + rho 35691 * rho 35691 * (-1))) = rho 35692 * rho 35692 - rho 35691 * rho 35691 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4433
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX112 rho : Seg34.F), (seg34AccY112 rho : Seg34.F)⟩
      ⟨(rho 35691 : Seg34.F), (rho 35692 : Seg34.F)⟩
      ⟨(rho 35697 : Seg34.F), (rho 35698 : Seg34.F)⟩
      ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
      ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg34_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34105 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4434 Seg34.relationLc600 Seg34.relationLc600Part0 Seg34.relationLc600Part1 Seg34.relationLc600Part2 Seg34.relationLc600Part3 Seg34.relationLc600Part4 Seg34.relationLc600Part5 Seg34.relationLc600Part6 Seg34.relationLc600Part7 at r4434
  unfold Seg34.relationRow4435 Seg34.relationLc601 Seg34.relationLc601Part0 Seg34.relationLc601Part1 Seg34.relationLc601Part2 Seg34.relationLc601Part3 at r4435
  unfold Seg34.relationRow4436 Seg34.relationLc602 Seg34.relationLc602Part0 Seg34.relationLc602Part1 Seg34.relationLc602Part2 Seg34.relationLc602Part3 at r4436
  unfold Seg34.relationRow4437 at r4437
  unfold Seg34.relationRow4438 at r4438
  unfold Seg34.relationRow4439 at r4439
  unfold Seg34.relationRow4440 Seg34.relationLc603 Seg34.relationLc603Part0 Seg34.relationLc603Part1 Seg34.relationLc603Part2 Seg34.relationLc603Part3 at r4440
  unfold Seg34.relationRow4441 Seg34.relationLc604 Seg34.relationLc604Part0 Seg34.relationLc604Part1 Seg34.relationLc604Part2 Seg34.relationLc604Part3 at r4441
  unfold Seg34.relationRow4442 at r4442
  unfold Seg34.relationRow4443 at r4443
  unfold Seg34.relationRow4444 at r4444
  unfold Seg34.relationRow4445 at r4445
  unfold Seg34.relationRow4446 at r4446
  have hrung113 (bit : Bool) (hbit : rho 34105 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
        ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩ := by
    have ha0 : (rho 35704 + rho 35705) * (seg34AccX113 rho + seg34AccY113 rho) = rho 35706 := by
      rw [seg34LadderFlatX113_eq, seg34LadderFlatY113_eq]
      unfold seg34LadderFlatX113 seg34LadderFlatY113
      linear_combination r4434
    have ha1 : rho 35705 * seg34AccX113 rho = rho 35707 := by
      rw [seg34LadderFlatX113_eq]
      unfold seg34LadderFlatX113
      linear_combination r4435
    have ha2 : rho 35704 * seg34AccY113 rho = rho 35708 := by
      rw [seg34LadderFlatY113_eq]
      unfold seg34LadderFlatY113
      linear_combination r4436
    have ha3 : 3021 * rho 35707 * rho 35708 = rho 35709 := by
      linear_combination r4437
    have ha4 : rho 35710 * (1 + rho 35709) = rho 35707 + rho 35708 := by
      linear_combination r4438
    have ha5 : rho 35711 * (1 - rho 35709) = rho 35706 - rho 35707 - rho 35708 := by
      linear_combination r4439
    have haddx :
        rho 35710 * (1 + 3021 * (rho 35705 * seg34AccX113 rho) * (rho 35704 * seg34AccY113 rho)) =
          rho 35705 * seg34AccX113 rho + rho 35704 * seg34AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35711 * (1 - 3021 * (rho 35705 * seg34AccX113 rho) * (rho 35704 * seg34AccY113 rho)) =
          (-1) * (rho 35705 * seg34AccX113 rho) - rho 35704 * seg34AccY113 rho +
            (seg34AccY113 rho - seg34AccX113 rho * (-1)) * (rho 35704 + rho 35705) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35711 * (1 - rho 35709) = rho 35706 - rho 35707 - rho 35708 := ha5
        _ = (-1) * rho 35707 - rho 35708 + (seg34AccY113 rho - seg34AccX113 rho * (-1)) * (rho 35704 + rho 35705) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX114 rho = seg34AccX113 rho - Bool.toZMod bit * (seg34AccX113 rho - rho 35710) := by
      have hd : rho 35712 = Bool.toZMod bit * (rho 35710 - seg34AccX113 rho) := by
        rw [← hbit, seg34LadderFlatX113_eq]
        unfold seg34LadderFlatX113
        linear_combination -r4440
      unfold seg34AccX114
      linear_combination hd
    have hsely : seg34AccY114 rho = seg34AccY113 rho - Bool.toZMod bit * (seg34AccY113 rho - rho 35711) := by
      have hd : rho 35713 = Bool.toZMod bit * (rho 35711 - seg34AccY113 rho) := by
        rw [← hbit, seg34LadderFlatY113_eq]
        unfold seg34LadderFlatY113
        linear_combination -r4441
      unfold seg34AccY114
      linear_combination hd
    have hd0 : rho 35704 * rho 35705 = rho 35714 := by linear_combination r4442
    have hd1 : rho 35704 * rho 35704 = rho 35715 := by linear_combination r4443
    have hd2 : rho 35705 * rho 35705 = rho 35716 := by linear_combination r4444
    have hd3 : rho 35717 * (rho 35705 * rho 35705 + rho 35704 * rho 35704 * (-1)) = 2 * (rho 35704 * rho 35705) := by
      rw [hd0, hd1, hd2]
      linear_combination r4445
    have hd4 : rho 35718 * (2 - (rho 35705 * rho 35705 + rho 35704 * rho 35704 * (-1))) = rho 35705 * rho 35705 - rho 35704 * rho 35704 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX113 rho : Seg34.F), (seg34AccY113 rho : Seg34.F)⟩
      ⟨(rho 35704 : Seg34.F), (rho 35705 : Seg34.F)⟩
      ⟨(rho 35710 : Seg34.F), (rho 35711 : Seg34.F)⟩
      ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
      ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg34_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34106 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4447 Seg34.relationLc605 Seg34.relationLc605Part0 Seg34.relationLc605Part1 Seg34.relationLc605Part2 Seg34.relationLc605Part3 Seg34.relationLc605Part4 Seg34.relationLc605Part5 Seg34.relationLc605Part6 Seg34.relationLc605Part7 at r4447
  unfold Seg34.relationRow4448 Seg34.relationLc606 Seg34.relationLc606Part0 Seg34.relationLc606Part1 Seg34.relationLc606Part2 Seg34.relationLc606Part3 at r4448
  unfold Seg34.relationRow4449 Seg34.relationLc607 Seg34.relationLc607Part0 Seg34.relationLc607Part1 Seg34.relationLc607Part2 Seg34.relationLc607Part3 at r4449
  unfold Seg34.relationRow4450 at r4450
  unfold Seg34.relationRow4451 at r4451
  unfold Seg34.relationRow4452 at r4452
  unfold Seg34.relationRow4453 Seg34.relationLc608 Seg34.relationLc608Part0 Seg34.relationLc608Part1 Seg34.relationLc608Part2 Seg34.relationLc608Part3 at r4453
  unfold Seg34.relationRow4454 Seg34.relationLc609 Seg34.relationLc609Part0 Seg34.relationLc609Part1 Seg34.relationLc609Part2 Seg34.relationLc609Part3 at r4454
  unfold Seg34.relationRow4455 at r4455
  unfold Seg34.relationRow4456 at r4456
  unfold Seg34.relationRow4457 at r4457
  unfold Seg34.relationRow4458 at r4458
  unfold Seg34.relationRow4459 at r4459
  have hrung114 (bit : Bool) (hbit : rho 34106 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
        ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩ := by
    have ha0 : (rho 35717 + rho 35718) * (seg34AccX114 rho + seg34AccY114 rho) = rho 35719 := by
      rw [seg34LadderFlatX114_eq, seg34LadderFlatY114_eq]
      unfold seg34LadderFlatX114 seg34LadderFlatY114
      linear_combination r4447
    have ha1 : rho 35718 * seg34AccX114 rho = rho 35720 := by
      rw [seg34LadderFlatX114_eq]
      unfold seg34LadderFlatX114
      linear_combination r4448
    have ha2 : rho 35717 * seg34AccY114 rho = rho 35721 := by
      rw [seg34LadderFlatY114_eq]
      unfold seg34LadderFlatY114
      linear_combination r4449
    have ha3 : 3021 * rho 35720 * rho 35721 = rho 35722 := by
      linear_combination r4450
    have ha4 : rho 35723 * (1 + rho 35722) = rho 35720 + rho 35721 := by
      linear_combination r4451
    have ha5 : rho 35724 * (1 - rho 35722) = rho 35719 - rho 35720 - rho 35721 := by
      linear_combination r4452
    have haddx :
        rho 35723 * (1 + 3021 * (rho 35718 * seg34AccX114 rho) * (rho 35717 * seg34AccY114 rho)) =
          rho 35718 * seg34AccX114 rho + rho 35717 * seg34AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35724 * (1 - 3021 * (rho 35718 * seg34AccX114 rho) * (rho 35717 * seg34AccY114 rho)) =
          (-1) * (rho 35718 * seg34AccX114 rho) - rho 35717 * seg34AccY114 rho +
            (seg34AccY114 rho - seg34AccX114 rho * (-1)) * (rho 35717 + rho 35718) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35724 * (1 - rho 35722) = rho 35719 - rho 35720 - rho 35721 := ha5
        _ = (-1) * rho 35720 - rho 35721 + (seg34AccY114 rho - seg34AccX114 rho * (-1)) * (rho 35717 + rho 35718) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX115 rho = seg34AccX114 rho - Bool.toZMod bit * (seg34AccX114 rho - rho 35723) := by
      have hd : rho 35725 = Bool.toZMod bit * (rho 35723 - seg34AccX114 rho) := by
        rw [← hbit, seg34LadderFlatX114_eq]
        unfold seg34LadderFlatX114
        linear_combination -r4453
      unfold seg34AccX115
      linear_combination hd
    have hsely : seg34AccY115 rho = seg34AccY114 rho - Bool.toZMod bit * (seg34AccY114 rho - rho 35724) := by
      have hd : rho 35726 = Bool.toZMod bit * (rho 35724 - seg34AccY114 rho) := by
        rw [← hbit, seg34LadderFlatY114_eq]
        unfold seg34LadderFlatY114
        linear_combination -r4454
      unfold seg34AccY115
      linear_combination hd
    have hd0 : rho 35717 * rho 35718 = rho 35727 := by linear_combination r4455
    have hd1 : rho 35717 * rho 35717 = rho 35728 := by linear_combination r4456
    have hd2 : rho 35718 * rho 35718 = rho 35729 := by linear_combination r4457
    have hd3 : rho 35730 * (rho 35718 * rho 35718 + rho 35717 * rho 35717 * (-1)) = 2 * (rho 35717 * rho 35718) := by
      rw [hd0, hd1, hd2]
      linear_combination r4458
    have hd4 : rho 35731 * (2 - (rho 35718 * rho 35718 + rho 35717 * rho 35717 * (-1))) = rho 35718 * rho 35718 - rho 35717 * rho 35717 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4459
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX114 rho : Seg34.F), (seg34AccY114 rho : Seg34.F)⟩
      ⟨(rho 35717 : Seg34.F), (rho 35718 : Seg34.F)⟩
      ⟨(rho 35723 : Seg34.F), (rho 35724 : Seg34.F)⟩
      ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
      ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg34_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34107 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4460 Seg34.relationLc610 Seg34.relationLc610Part0 Seg34.relationLc610Part1 Seg34.relationLc610Part2 Seg34.relationLc610Part3 Seg34.relationLc610Part4 Seg34.relationLc610Part5 Seg34.relationLc610Part6 Seg34.relationLc610Part7 at r4460
  unfold Seg34.relationRow4461 Seg34.relationLc611 Seg34.relationLc611Part0 Seg34.relationLc611Part1 Seg34.relationLc611Part2 Seg34.relationLc611Part3 at r4461
  unfold Seg34.relationRow4462 Seg34.relationLc612 Seg34.relationLc612Part0 Seg34.relationLc612Part1 Seg34.relationLc612Part2 Seg34.relationLc612Part3 at r4462
  unfold Seg34.relationRow4463 at r4463
  unfold Seg34.relationRow4464 at r4464
  unfold Seg34.relationRow4465 at r4465
  unfold Seg34.relationRow4466 Seg34.relationLc613 Seg34.relationLc613Part0 Seg34.relationLc613Part1 Seg34.relationLc613Part2 Seg34.relationLc613Part3 at r4466
  unfold Seg34.relationRow4467 Seg34.relationLc614 Seg34.relationLc614Part0 Seg34.relationLc614Part1 Seg34.relationLc614Part2 Seg34.relationLc614Part3 at r4467
  unfold Seg34.relationRow4468 at r4468
  unfold Seg34.relationRow4469 at r4469
  unfold Seg34.relationRow4470 at r4470
  unfold Seg34.relationRow4471 at r4471
  unfold Seg34.relationRow4472 at r4472
  have hrung115 (bit : Bool) (hbit : rho 34107 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
        ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩ := by
    have ha0 : (rho 35730 + rho 35731) * (seg34AccX115 rho + seg34AccY115 rho) = rho 35732 := by
      rw [seg34LadderFlatX115_eq, seg34LadderFlatY115_eq]
      unfold seg34LadderFlatX115 seg34LadderFlatY115
      linear_combination r4460
    have ha1 : rho 35731 * seg34AccX115 rho = rho 35733 := by
      rw [seg34LadderFlatX115_eq]
      unfold seg34LadderFlatX115
      linear_combination r4461
    have ha2 : rho 35730 * seg34AccY115 rho = rho 35734 := by
      rw [seg34LadderFlatY115_eq]
      unfold seg34LadderFlatY115
      linear_combination r4462
    have ha3 : 3021 * rho 35733 * rho 35734 = rho 35735 := by
      linear_combination r4463
    have ha4 : rho 35736 * (1 + rho 35735) = rho 35733 + rho 35734 := by
      linear_combination r4464
    have ha5 : rho 35737 * (1 - rho 35735) = rho 35732 - rho 35733 - rho 35734 := by
      linear_combination r4465
    have haddx :
        rho 35736 * (1 + 3021 * (rho 35731 * seg34AccX115 rho) * (rho 35730 * seg34AccY115 rho)) =
          rho 35731 * seg34AccX115 rho + rho 35730 * seg34AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35737 * (1 - 3021 * (rho 35731 * seg34AccX115 rho) * (rho 35730 * seg34AccY115 rho)) =
          (-1) * (rho 35731 * seg34AccX115 rho) - rho 35730 * seg34AccY115 rho +
            (seg34AccY115 rho - seg34AccX115 rho * (-1)) * (rho 35730 + rho 35731) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35737 * (1 - rho 35735) = rho 35732 - rho 35733 - rho 35734 := ha5
        _ = (-1) * rho 35733 - rho 35734 + (seg34AccY115 rho - seg34AccX115 rho * (-1)) * (rho 35730 + rho 35731) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX116 rho = seg34AccX115 rho - Bool.toZMod bit * (seg34AccX115 rho - rho 35736) := by
      have hd : rho 35738 = Bool.toZMod bit * (rho 35736 - seg34AccX115 rho) := by
        rw [← hbit, seg34LadderFlatX115_eq]
        unfold seg34LadderFlatX115
        linear_combination -r4466
      unfold seg34AccX116
      linear_combination hd
    have hsely : seg34AccY116 rho = seg34AccY115 rho - Bool.toZMod bit * (seg34AccY115 rho - rho 35737) := by
      have hd : rho 35739 = Bool.toZMod bit * (rho 35737 - seg34AccY115 rho) := by
        rw [← hbit, seg34LadderFlatY115_eq]
        unfold seg34LadderFlatY115
        linear_combination -r4467
      unfold seg34AccY116
      linear_combination hd
    have hd0 : rho 35730 * rho 35731 = rho 35740 := by linear_combination r4468
    have hd1 : rho 35730 * rho 35730 = rho 35741 := by linear_combination r4469
    have hd2 : rho 35731 * rho 35731 = rho 35742 := by linear_combination r4470
    have hd3 : rho 35743 * (rho 35731 * rho 35731 + rho 35730 * rho 35730 * (-1)) = 2 * (rho 35730 * rho 35731) := by
      rw [hd0, hd1, hd2]
      linear_combination r4471
    have hd4 : rho 35744 * (2 - (rho 35731 * rho 35731 + rho 35730 * rho 35730 * (-1))) = rho 35731 * rho 35731 - rho 35730 * rho 35730 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4472
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX115 rho : Seg34.F), (seg34AccY115 rho : Seg34.F)⟩
      ⟨(rho 35730 : Seg34.F), (rho 35731 : Seg34.F)⟩
      ⟨(rho 35736 : Seg34.F), (rho 35737 : Seg34.F)⟩
      ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
      ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg34_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34108 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4473 Seg34.relationLc615 Seg34.relationLc615Part0 Seg34.relationLc615Part1 Seg34.relationLc615Part2 Seg34.relationLc615Part3 Seg34.relationLc615Part4 Seg34.relationLc615Part5 Seg34.relationLc615Part6 Seg34.relationLc615Part7 at r4473
  unfold Seg34.relationRow4474 Seg34.relationLc616 Seg34.relationLc616Part0 Seg34.relationLc616Part1 Seg34.relationLc616Part2 Seg34.relationLc616Part3 at r4474
  unfold Seg34.relationRow4475 Seg34.relationLc617 Seg34.relationLc617Part0 Seg34.relationLc617Part1 Seg34.relationLc617Part2 Seg34.relationLc617Part3 at r4475
  unfold Seg34.relationRow4476 at r4476
  unfold Seg34.relationRow4477 at r4477
  unfold Seg34.relationRow4478 at r4478
  unfold Seg34.relationRow4479 Seg34.relationLc618 Seg34.relationLc618Part0 Seg34.relationLc618Part1 Seg34.relationLc618Part2 Seg34.relationLc618Part3 at r4479
  unfold Seg34.relationRow4480 Seg34.relationLc619 Seg34.relationLc619Part0 Seg34.relationLc619Part1 Seg34.relationLc619Part2 Seg34.relationLc619Part3 at r4480
  unfold Seg34.relationRow4481 at r4481
  unfold Seg34.relationRow4482 at r4482
  unfold Seg34.relationRow4483 at r4483
  unfold Seg34.relationRow4484 at r4484
  unfold Seg34.relationRow4485 at r4485
  have hrung116 (bit : Bool) (hbit : rho 34108 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
        ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩ := by
    have ha0 : (rho 35743 + rho 35744) * (seg34AccX116 rho + seg34AccY116 rho) = rho 35745 := by
      rw [seg34LadderFlatX116_eq, seg34LadderFlatY116_eq]
      unfold seg34LadderFlatX116 seg34LadderFlatY116
      linear_combination r4473
    have ha1 : rho 35744 * seg34AccX116 rho = rho 35746 := by
      rw [seg34LadderFlatX116_eq]
      unfold seg34LadderFlatX116
      linear_combination r4474
    have ha2 : rho 35743 * seg34AccY116 rho = rho 35747 := by
      rw [seg34LadderFlatY116_eq]
      unfold seg34LadderFlatY116
      linear_combination r4475
    have ha3 : 3021 * rho 35746 * rho 35747 = rho 35748 := by
      linear_combination r4476
    have ha4 : rho 35749 * (1 + rho 35748) = rho 35746 + rho 35747 := by
      linear_combination r4477
    have ha5 : rho 35750 * (1 - rho 35748) = rho 35745 - rho 35746 - rho 35747 := by
      linear_combination r4478
    have haddx :
        rho 35749 * (1 + 3021 * (rho 35744 * seg34AccX116 rho) * (rho 35743 * seg34AccY116 rho)) =
          rho 35744 * seg34AccX116 rho + rho 35743 * seg34AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35750 * (1 - 3021 * (rho 35744 * seg34AccX116 rho) * (rho 35743 * seg34AccY116 rho)) =
          (-1) * (rho 35744 * seg34AccX116 rho) - rho 35743 * seg34AccY116 rho +
            (seg34AccY116 rho - seg34AccX116 rho * (-1)) * (rho 35743 + rho 35744) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35750 * (1 - rho 35748) = rho 35745 - rho 35746 - rho 35747 := ha5
        _ = (-1) * rho 35746 - rho 35747 + (seg34AccY116 rho - seg34AccX116 rho * (-1)) * (rho 35743 + rho 35744) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX117 rho = seg34AccX116 rho - Bool.toZMod bit * (seg34AccX116 rho - rho 35749) := by
      have hd : rho 35751 = Bool.toZMod bit * (rho 35749 - seg34AccX116 rho) := by
        rw [← hbit, seg34LadderFlatX116_eq]
        unfold seg34LadderFlatX116
        linear_combination -r4479
      unfold seg34AccX117
      linear_combination hd
    have hsely : seg34AccY117 rho = seg34AccY116 rho - Bool.toZMod bit * (seg34AccY116 rho - rho 35750) := by
      have hd : rho 35752 = Bool.toZMod bit * (rho 35750 - seg34AccY116 rho) := by
        rw [← hbit, seg34LadderFlatY116_eq]
        unfold seg34LadderFlatY116
        linear_combination -r4480
      unfold seg34AccY117
      linear_combination hd
    have hd0 : rho 35743 * rho 35744 = rho 35753 := by linear_combination r4481
    have hd1 : rho 35743 * rho 35743 = rho 35754 := by linear_combination r4482
    have hd2 : rho 35744 * rho 35744 = rho 35755 := by linear_combination r4483
    have hd3 : rho 35756 * (rho 35744 * rho 35744 + rho 35743 * rho 35743 * (-1)) = 2 * (rho 35743 * rho 35744) := by
      rw [hd0, hd1, hd2]
      linear_combination r4484
    have hd4 : rho 35757 * (2 - (rho 35744 * rho 35744 + rho 35743 * rho 35743 * (-1))) = rho 35744 * rho 35744 - rho 35743 * rho 35743 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4485
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX116 rho : Seg34.F), (seg34AccY116 rho : Seg34.F)⟩
      ⟨(rho 35743 : Seg34.F), (rho 35744 : Seg34.F)⟩
      ⟨(rho 35749 : Seg34.F), (rho 35750 : Seg34.F)⟩
      ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
      ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg34_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34109 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4486 Seg34.relationLc620 Seg34.relationLc620Part0 Seg34.relationLc620Part1 Seg34.relationLc620Part2 Seg34.relationLc620Part3 Seg34.relationLc620Part4 Seg34.relationLc620Part5 Seg34.relationLc620Part6 Seg34.relationLc620Part7 at r4486
  unfold Seg34.relationRow4487 Seg34.relationLc621 Seg34.relationLc621Part0 Seg34.relationLc621Part1 Seg34.relationLc621Part2 Seg34.relationLc621Part3 at r4487
  unfold Seg34.relationRow4488 Seg34.relationLc622 Seg34.relationLc622Part0 Seg34.relationLc622Part1 Seg34.relationLc622Part2 Seg34.relationLc622Part3 at r4488
  unfold Seg34.relationRow4489 at r4489
  unfold Seg34.relationRow4490 at r4490
  unfold Seg34.relationRow4491 at r4491
  unfold Seg34.relationRow4492 Seg34.relationLc623 Seg34.relationLc623Part0 Seg34.relationLc623Part1 Seg34.relationLc623Part2 Seg34.relationLc623Part3 at r4492
  unfold Seg34.relationRow4493 Seg34.relationLc624 Seg34.relationLc624Part0 Seg34.relationLc624Part1 Seg34.relationLc624Part2 Seg34.relationLc624Part3 at r4493
  unfold Seg34.relationRow4494 at r4494
  unfold Seg34.relationRow4495 at r4495
  unfold Seg34.relationRow4496 at r4496
  unfold Seg34.relationRow4497 at r4497
  unfold Seg34.relationRow4498 at r4498
  have hrung117 (bit : Bool) (hbit : rho 34109 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
        ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩ := by
    have ha0 : (rho 35756 + rho 35757) * (seg34AccX117 rho + seg34AccY117 rho) = rho 35758 := by
      rw [seg34LadderFlatX117_eq, seg34LadderFlatY117_eq]
      unfold seg34LadderFlatX117 seg34LadderFlatY117
      linear_combination r4486
    have ha1 : rho 35757 * seg34AccX117 rho = rho 35759 := by
      rw [seg34LadderFlatX117_eq]
      unfold seg34LadderFlatX117
      linear_combination r4487
    have ha2 : rho 35756 * seg34AccY117 rho = rho 35760 := by
      rw [seg34LadderFlatY117_eq]
      unfold seg34LadderFlatY117
      linear_combination r4488
    have ha3 : 3021 * rho 35759 * rho 35760 = rho 35761 := by
      linear_combination r4489
    have ha4 : rho 35762 * (1 + rho 35761) = rho 35759 + rho 35760 := by
      linear_combination r4490
    have ha5 : rho 35763 * (1 - rho 35761) = rho 35758 - rho 35759 - rho 35760 := by
      linear_combination r4491
    have haddx :
        rho 35762 * (1 + 3021 * (rho 35757 * seg34AccX117 rho) * (rho 35756 * seg34AccY117 rho)) =
          rho 35757 * seg34AccX117 rho + rho 35756 * seg34AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35763 * (1 - 3021 * (rho 35757 * seg34AccX117 rho) * (rho 35756 * seg34AccY117 rho)) =
          (-1) * (rho 35757 * seg34AccX117 rho) - rho 35756 * seg34AccY117 rho +
            (seg34AccY117 rho - seg34AccX117 rho * (-1)) * (rho 35756 + rho 35757) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35763 * (1 - rho 35761) = rho 35758 - rho 35759 - rho 35760 := ha5
        _ = (-1) * rho 35759 - rho 35760 + (seg34AccY117 rho - seg34AccX117 rho * (-1)) * (rho 35756 + rho 35757) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX118 rho = seg34AccX117 rho - Bool.toZMod bit * (seg34AccX117 rho - rho 35762) := by
      have hd : rho 35764 = Bool.toZMod bit * (rho 35762 - seg34AccX117 rho) := by
        rw [← hbit, seg34LadderFlatX117_eq]
        unfold seg34LadderFlatX117
        linear_combination -r4492
      unfold seg34AccX118
      linear_combination hd
    have hsely : seg34AccY118 rho = seg34AccY117 rho - Bool.toZMod bit * (seg34AccY117 rho - rho 35763) := by
      have hd : rho 35765 = Bool.toZMod bit * (rho 35763 - seg34AccY117 rho) := by
        rw [← hbit, seg34LadderFlatY117_eq]
        unfold seg34LadderFlatY117
        linear_combination -r4493
      unfold seg34AccY118
      linear_combination hd
    have hd0 : rho 35756 * rho 35757 = rho 35766 := by linear_combination r4494
    have hd1 : rho 35756 * rho 35756 = rho 35767 := by linear_combination r4495
    have hd2 : rho 35757 * rho 35757 = rho 35768 := by linear_combination r4496
    have hd3 : rho 35769 * (rho 35757 * rho 35757 + rho 35756 * rho 35756 * (-1)) = 2 * (rho 35756 * rho 35757) := by
      rw [hd0, hd1, hd2]
      linear_combination r4497
    have hd4 : rho 35770 * (2 - (rho 35757 * rho 35757 + rho 35756 * rho 35756 * (-1))) = rho 35757 * rho 35757 - rho 35756 * rho 35756 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4498
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX117 rho : Seg34.F), (seg34AccY117 rho : Seg34.F)⟩
      ⟨(rho 35756 : Seg34.F), (rho 35757 : Seg34.F)⟩
      ⟨(rho 35762 : Seg34.F), (rho 35763 : Seg34.F)⟩
      ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
      ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg34_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34110 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4499 Seg34.relationLc625 Seg34.relationLc625Part0 Seg34.relationLc625Part1 Seg34.relationLc625Part2 Seg34.relationLc625Part3 Seg34.relationLc625Part4 Seg34.relationLc625Part5 Seg34.relationLc625Part6 Seg34.relationLc625Part7 at r4499
  unfold Seg34.relationRow4500 Seg34.relationLc626 Seg34.relationLc626Part0 Seg34.relationLc626Part1 Seg34.relationLc626Part2 Seg34.relationLc626Part3 at r4500
  unfold Seg34.relationRow4501 Seg34.relationLc627 Seg34.relationLc627Part0 Seg34.relationLc627Part1 Seg34.relationLc627Part2 Seg34.relationLc627Part3 at r4501
  unfold Seg34.relationRow4502 at r4502
  unfold Seg34.relationRow4503 at r4503
  unfold Seg34.relationRow4504 at r4504
  unfold Seg34.relationRow4505 Seg34.relationLc628 Seg34.relationLc628Part0 Seg34.relationLc628Part1 Seg34.relationLc628Part2 Seg34.relationLc628Part3 at r4505
  unfold Seg34.relationRow4506 Seg34.relationLc629 Seg34.relationLc629Part0 Seg34.relationLc629Part1 Seg34.relationLc629Part2 Seg34.relationLc629Part3 at r4506
  unfold Seg34.relationRow4507 at r4507
  unfold Seg34.relationRow4508 at r4508
  unfold Seg34.relationRow4509 at r4509
  unfold Seg34.relationRow4510 at r4510
  unfold Seg34.relationRow4511 at r4511
  have hrung118 (bit : Bool) (hbit : rho 34110 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
        ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩ := by
    have ha0 : (rho 35769 + rho 35770) * (seg34AccX118 rho + seg34AccY118 rho) = rho 35771 := by
      rw [seg34LadderFlatX118_eq, seg34LadderFlatY118_eq]
      unfold seg34LadderFlatX118 seg34LadderFlatY118
      linear_combination r4499
    have ha1 : rho 35770 * seg34AccX118 rho = rho 35772 := by
      rw [seg34LadderFlatX118_eq]
      unfold seg34LadderFlatX118
      linear_combination r4500
    have ha2 : rho 35769 * seg34AccY118 rho = rho 35773 := by
      rw [seg34LadderFlatY118_eq]
      unfold seg34LadderFlatY118
      linear_combination r4501
    have ha3 : 3021 * rho 35772 * rho 35773 = rho 35774 := by
      linear_combination r4502
    have ha4 : rho 35775 * (1 + rho 35774) = rho 35772 + rho 35773 := by
      linear_combination r4503
    have ha5 : rho 35776 * (1 - rho 35774) = rho 35771 - rho 35772 - rho 35773 := by
      linear_combination r4504
    have haddx :
        rho 35775 * (1 + 3021 * (rho 35770 * seg34AccX118 rho) * (rho 35769 * seg34AccY118 rho)) =
          rho 35770 * seg34AccX118 rho + rho 35769 * seg34AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35776 * (1 - 3021 * (rho 35770 * seg34AccX118 rho) * (rho 35769 * seg34AccY118 rho)) =
          (-1) * (rho 35770 * seg34AccX118 rho) - rho 35769 * seg34AccY118 rho +
            (seg34AccY118 rho - seg34AccX118 rho * (-1)) * (rho 35769 + rho 35770) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35776 * (1 - rho 35774) = rho 35771 - rho 35772 - rho 35773 := ha5
        _ = (-1) * rho 35772 - rho 35773 + (seg34AccY118 rho - seg34AccX118 rho * (-1)) * (rho 35769 + rho 35770) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX119 rho = seg34AccX118 rho - Bool.toZMod bit * (seg34AccX118 rho - rho 35775) := by
      have hd : rho 35777 = Bool.toZMod bit * (rho 35775 - seg34AccX118 rho) := by
        rw [← hbit, seg34LadderFlatX118_eq]
        unfold seg34LadderFlatX118
        linear_combination -r4505
      unfold seg34AccX119
      linear_combination hd
    have hsely : seg34AccY119 rho = seg34AccY118 rho - Bool.toZMod bit * (seg34AccY118 rho - rho 35776) := by
      have hd : rho 35778 = Bool.toZMod bit * (rho 35776 - seg34AccY118 rho) := by
        rw [← hbit, seg34LadderFlatY118_eq]
        unfold seg34LadderFlatY118
        linear_combination -r4506
      unfold seg34AccY119
      linear_combination hd
    have hd0 : rho 35769 * rho 35770 = rho 35779 := by linear_combination r4507
    have hd1 : rho 35769 * rho 35769 = rho 35780 := by linear_combination r4508
    have hd2 : rho 35770 * rho 35770 = rho 35781 := by linear_combination r4509
    have hd3 : rho 35782 * (rho 35770 * rho 35770 + rho 35769 * rho 35769 * (-1)) = 2 * (rho 35769 * rho 35770) := by
      rw [hd0, hd1, hd2]
      linear_combination r4510
    have hd4 : rho 35783 * (2 - (rho 35770 * rho 35770 + rho 35769 * rho 35769 * (-1))) = rho 35770 * rho 35770 - rho 35769 * rho 35769 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4511
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX118 rho : Seg34.F), (seg34AccY118 rho : Seg34.F)⟩
      ⟨(rho 35769 : Seg34.F), (rho 35770 : Seg34.F)⟩
      ⟨(rho 35775 : Seg34.F), (rho 35776 : Seg34.F)⟩
      ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
      ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg34_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34111 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4512 Seg34.relationLc630 Seg34.relationLc630Part0 Seg34.relationLc630Part1 Seg34.relationLc630Part2 Seg34.relationLc630Part3 Seg34.relationLc630Part4 Seg34.relationLc630Part5 Seg34.relationLc630Part6 Seg34.relationLc630Part7 at r4512
  unfold Seg34.relationRow4513 Seg34.relationLc631 Seg34.relationLc631Part0 Seg34.relationLc631Part1 Seg34.relationLc631Part2 Seg34.relationLc631Part3 at r4513
  unfold Seg34.relationRow4514 Seg34.relationLc632 Seg34.relationLc632Part0 Seg34.relationLc632Part1 Seg34.relationLc632Part2 Seg34.relationLc632Part3 at r4514
  unfold Seg34.relationRow4515 at r4515
  unfold Seg34.relationRow4516 at r4516
  unfold Seg34.relationRow4517 at r4517
  unfold Seg34.relationRow4518 Seg34.relationLc633 Seg34.relationLc633Part0 Seg34.relationLc633Part1 Seg34.relationLc633Part2 Seg34.relationLc633Part3 at r4518
  unfold Seg34.relationRow4519 Seg34.relationLc634 Seg34.relationLc634Part0 Seg34.relationLc634Part1 Seg34.relationLc634Part2 Seg34.relationLc634Part3 at r4519
  unfold Seg34.relationRow4520 at r4520
  unfold Seg34.relationRow4521 at r4521
  unfold Seg34.relationRow4522 at r4522
  unfold Seg34.relationRow4523 at r4523
  unfold Seg34.relationRow4524 at r4524
  have hrung119 (bit : Bool) (hbit : rho 34111 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
        ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩ := by
    have ha0 : (rho 35782 + rho 35783) * (seg34AccX119 rho + seg34AccY119 rho) = rho 35784 := by
      rw [seg34LadderFlatX119_eq, seg34LadderFlatY119_eq]
      unfold seg34LadderFlatX119 seg34LadderFlatY119
      linear_combination r4512
    have ha1 : rho 35783 * seg34AccX119 rho = rho 35785 := by
      rw [seg34LadderFlatX119_eq]
      unfold seg34LadderFlatX119
      linear_combination r4513
    have ha2 : rho 35782 * seg34AccY119 rho = rho 35786 := by
      rw [seg34LadderFlatY119_eq]
      unfold seg34LadderFlatY119
      linear_combination r4514
    have ha3 : 3021 * rho 35785 * rho 35786 = rho 35787 := by
      linear_combination r4515
    have ha4 : rho 35788 * (1 + rho 35787) = rho 35785 + rho 35786 := by
      linear_combination r4516
    have ha5 : rho 35789 * (1 - rho 35787) = rho 35784 - rho 35785 - rho 35786 := by
      linear_combination r4517
    have haddx :
        rho 35788 * (1 + 3021 * (rho 35783 * seg34AccX119 rho) * (rho 35782 * seg34AccY119 rho)) =
          rho 35783 * seg34AccX119 rho + rho 35782 * seg34AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35789 * (1 - 3021 * (rho 35783 * seg34AccX119 rho) * (rho 35782 * seg34AccY119 rho)) =
          (-1) * (rho 35783 * seg34AccX119 rho) - rho 35782 * seg34AccY119 rho +
            (seg34AccY119 rho - seg34AccX119 rho * (-1)) * (rho 35782 + rho 35783) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35789 * (1 - rho 35787) = rho 35784 - rho 35785 - rho 35786 := ha5
        _ = (-1) * rho 35785 - rho 35786 + (seg34AccY119 rho - seg34AccX119 rho * (-1)) * (rho 35782 + rho 35783) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX120 rho = seg34AccX119 rho - Bool.toZMod bit * (seg34AccX119 rho - rho 35788) := by
      have hd : rho 35790 = Bool.toZMod bit * (rho 35788 - seg34AccX119 rho) := by
        rw [← hbit, seg34LadderFlatX119_eq]
        unfold seg34LadderFlatX119
        linear_combination -r4518
      unfold seg34AccX120
      linear_combination hd
    have hsely : seg34AccY120 rho = seg34AccY119 rho - Bool.toZMod bit * (seg34AccY119 rho - rho 35789) := by
      have hd : rho 35791 = Bool.toZMod bit * (rho 35789 - seg34AccY119 rho) := by
        rw [← hbit, seg34LadderFlatY119_eq]
        unfold seg34LadderFlatY119
        linear_combination -r4519
      unfold seg34AccY120
      linear_combination hd
    have hd0 : rho 35782 * rho 35783 = rho 35792 := by linear_combination r4520
    have hd1 : rho 35782 * rho 35782 = rho 35793 := by linear_combination r4521
    have hd2 : rho 35783 * rho 35783 = rho 35794 := by linear_combination r4522
    have hd3 : rho 35795 * (rho 35783 * rho 35783 + rho 35782 * rho 35782 * (-1)) = 2 * (rho 35782 * rho 35783) := by
      rw [hd0, hd1, hd2]
      linear_combination r4523
    have hd4 : rho 35796 * (2 - (rho 35783 * rho 35783 + rho 35782 * rho 35782 * (-1))) = rho 35783 * rho 35783 - rho 35782 * rho 35782 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4524
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX119 rho : Seg34.F), (seg34AccY119 rho : Seg34.F)⟩
      ⟨(rho 35782 : Seg34.F), (rho 35783 : Seg34.F)⟩
      ⟨(rho 35788 : Seg34.F), (rho 35789 : Seg34.F)⟩
      ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
      ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg34_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34112 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4525 Seg34.relationLc635 Seg34.relationLc635Part0 Seg34.relationLc635Part1 Seg34.relationLc635Part2 Seg34.relationLc635Part3 Seg34.relationLc635Part4 Seg34.relationLc635Part5 Seg34.relationLc635Part6 Seg34.relationLc635Part7 at r4525
  unfold Seg34.relationRow4526 Seg34.relationLc636 Seg34.relationLc636Part0 Seg34.relationLc636Part1 Seg34.relationLc636Part2 Seg34.relationLc636Part3 at r4526
  unfold Seg34.relationRow4527 Seg34.relationLc637 Seg34.relationLc637Part0 Seg34.relationLc637Part1 Seg34.relationLc637Part2 Seg34.relationLc637Part3 at r4527
  unfold Seg34.relationRow4528 at r4528
  unfold Seg34.relationRow4529 at r4529
  unfold Seg34.relationRow4530 at r4530
  unfold Seg34.relationRow4531 Seg34.relationLc638 Seg34.relationLc638Part0 Seg34.relationLc638Part1 Seg34.relationLc638Part2 Seg34.relationLc638Part3 at r4531
  unfold Seg34.relationRow4532 Seg34.relationLc639 Seg34.relationLc639Part0 Seg34.relationLc639Part1 Seg34.relationLc639Part2 Seg34.relationLc639Part3 at r4532
  unfold Seg34.relationRow4533 at r4533
  unfold Seg34.relationRow4534 at r4534
  unfold Seg34.relationRow4535 at r4535
  unfold Seg34.relationRow4536 at r4536
  unfold Seg34.relationRow4537 at r4537
  have hrung120 (bit : Bool) (hbit : rho 34112 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
        ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩ := by
    have ha0 : (rho 35795 + rho 35796) * (seg34AccX120 rho + seg34AccY120 rho) = rho 35797 := by
      rw [seg34LadderFlatX120_eq, seg34LadderFlatY120_eq]
      unfold seg34LadderFlatX120 seg34LadderFlatY120
      linear_combination r4525
    have ha1 : rho 35796 * seg34AccX120 rho = rho 35798 := by
      rw [seg34LadderFlatX120_eq]
      unfold seg34LadderFlatX120
      linear_combination r4526
    have ha2 : rho 35795 * seg34AccY120 rho = rho 35799 := by
      rw [seg34LadderFlatY120_eq]
      unfold seg34LadderFlatY120
      linear_combination r4527
    have ha3 : 3021 * rho 35798 * rho 35799 = rho 35800 := by
      linear_combination r4528
    have ha4 : rho 35801 * (1 + rho 35800) = rho 35798 + rho 35799 := by
      linear_combination r4529
    have ha5 : rho 35802 * (1 - rho 35800) = rho 35797 - rho 35798 - rho 35799 := by
      linear_combination r4530
    have haddx :
        rho 35801 * (1 + 3021 * (rho 35796 * seg34AccX120 rho) * (rho 35795 * seg34AccY120 rho)) =
          rho 35796 * seg34AccX120 rho + rho 35795 * seg34AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35802 * (1 - 3021 * (rho 35796 * seg34AccX120 rho) * (rho 35795 * seg34AccY120 rho)) =
          (-1) * (rho 35796 * seg34AccX120 rho) - rho 35795 * seg34AccY120 rho +
            (seg34AccY120 rho - seg34AccX120 rho * (-1)) * (rho 35795 + rho 35796) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35802 * (1 - rho 35800) = rho 35797 - rho 35798 - rho 35799 := ha5
        _ = (-1) * rho 35798 - rho 35799 + (seg34AccY120 rho - seg34AccX120 rho * (-1)) * (rho 35795 + rho 35796) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX121 rho = seg34AccX120 rho - Bool.toZMod bit * (seg34AccX120 rho - rho 35801) := by
      have hd : rho 35803 = Bool.toZMod bit * (rho 35801 - seg34AccX120 rho) := by
        rw [← hbit, seg34LadderFlatX120_eq]
        unfold seg34LadderFlatX120
        linear_combination -r4531
      unfold seg34AccX121
      linear_combination hd
    have hsely : seg34AccY121 rho = seg34AccY120 rho - Bool.toZMod bit * (seg34AccY120 rho - rho 35802) := by
      have hd : rho 35804 = Bool.toZMod bit * (rho 35802 - seg34AccY120 rho) := by
        rw [← hbit, seg34LadderFlatY120_eq]
        unfold seg34LadderFlatY120
        linear_combination -r4532
      unfold seg34AccY121
      linear_combination hd
    have hd0 : rho 35795 * rho 35796 = rho 35805 := by linear_combination r4533
    have hd1 : rho 35795 * rho 35795 = rho 35806 := by linear_combination r4534
    have hd2 : rho 35796 * rho 35796 = rho 35807 := by linear_combination r4535
    have hd3 : rho 35808 * (rho 35796 * rho 35796 + rho 35795 * rho 35795 * (-1)) = 2 * (rho 35795 * rho 35796) := by
      rw [hd0, hd1, hd2]
      linear_combination r4536
    have hd4 : rho 35809 * (2 - (rho 35796 * rho 35796 + rho 35795 * rho 35795 * (-1))) = rho 35796 * rho 35796 - rho 35795 * rho 35795 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4537
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX120 rho : Seg34.F), (seg34AccY120 rho : Seg34.F)⟩
      ⟨(rho 35795 : Seg34.F), (rho 35796 : Seg34.F)⟩
      ⟨(rho 35801 : Seg34.F), (rho 35802 : Seg34.F)⟩
      ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
      ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg34_rung121 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34113 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4538 Seg34.relationLc640 Seg34.relationLc640Part0 Seg34.relationLc640Part1 Seg34.relationLc640Part2 Seg34.relationLc640Part3 Seg34.relationLc640Part4 Seg34.relationLc640Part5 Seg34.relationLc640Part6 Seg34.relationLc640Part7 at r4538
  unfold Seg34.relationRow4539 Seg34.relationLc641 Seg34.relationLc641Part0 Seg34.relationLc641Part1 Seg34.relationLc641Part2 Seg34.relationLc641Part3 at r4539
  unfold Seg34.relationRow4540 Seg34.relationLc642 Seg34.relationLc642Part0 Seg34.relationLc642Part1 Seg34.relationLc642Part2 Seg34.relationLc642Part3 at r4540
  unfold Seg34.relationRow4541 at r4541
  unfold Seg34.relationRow4542 at r4542
  unfold Seg34.relationRow4543 at r4543
  unfold Seg34.relationRow4544 Seg34.relationLc643 Seg34.relationLc643Part0 Seg34.relationLc643Part1 Seg34.relationLc643Part2 Seg34.relationLc643Part3 at r4544
  unfold Seg34.relationRow4545 Seg34.relationLc644 Seg34.relationLc644Part0 Seg34.relationLc644Part1 Seg34.relationLc644Part2 Seg34.relationLc644Part3 at r4545
  unfold Seg34.relationRow4546 at r4546
  unfold Seg34.relationRow4547 at r4547
  unfold Seg34.relationRow4548 at r4548
  unfold Seg34.relationRow4549 at r4549
  unfold Seg34.relationRow4550 at r4550
  have hrung121 (bit : Bool) (hbit : rho 34113 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
        ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩ := by
    have ha0 : (rho 35808 + rho 35809) * (seg34AccX121 rho + seg34AccY121 rho) = rho 35810 := by
      rw [seg34LadderFlatX121_eq, seg34LadderFlatY121_eq]
      unfold seg34LadderFlatX121 seg34LadderFlatY121
      linear_combination r4538
    have ha1 : rho 35809 * seg34AccX121 rho = rho 35811 := by
      rw [seg34LadderFlatX121_eq]
      unfold seg34LadderFlatX121
      linear_combination r4539
    have ha2 : rho 35808 * seg34AccY121 rho = rho 35812 := by
      rw [seg34LadderFlatY121_eq]
      unfold seg34LadderFlatY121
      linear_combination r4540
    have ha3 : 3021 * rho 35811 * rho 35812 = rho 35813 := by
      linear_combination r4541
    have ha4 : rho 35814 * (1 + rho 35813) = rho 35811 + rho 35812 := by
      linear_combination r4542
    have ha5 : rho 35815 * (1 - rho 35813) = rho 35810 - rho 35811 - rho 35812 := by
      linear_combination r4543
    have haddx :
        rho 35814 * (1 + 3021 * (rho 35809 * seg34AccX121 rho) * (rho 35808 * seg34AccY121 rho)) =
          rho 35809 * seg34AccX121 rho + rho 35808 * seg34AccY121 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35815 * (1 - 3021 * (rho 35809 * seg34AccX121 rho) * (rho 35808 * seg34AccY121 rho)) =
          (-1) * (rho 35809 * seg34AccX121 rho) - rho 35808 * seg34AccY121 rho +
            (seg34AccY121 rho - seg34AccX121 rho * (-1)) * (rho 35808 + rho 35809) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35815 * (1 - rho 35813) = rho 35810 - rho 35811 - rho 35812 := ha5
        _ = (-1) * rho 35811 - rho 35812 + (seg34AccY121 rho - seg34AccX121 rho * (-1)) * (rho 35808 + rho 35809) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX122 rho = seg34AccX121 rho - Bool.toZMod bit * (seg34AccX121 rho - rho 35814) := by
      have hd : rho 35816 = Bool.toZMod bit * (rho 35814 - seg34AccX121 rho) := by
        rw [← hbit, seg34LadderFlatX121_eq]
        unfold seg34LadderFlatX121
        linear_combination -r4544
      unfold seg34AccX122
      linear_combination hd
    have hsely : seg34AccY122 rho = seg34AccY121 rho - Bool.toZMod bit * (seg34AccY121 rho - rho 35815) := by
      have hd : rho 35817 = Bool.toZMod bit * (rho 35815 - seg34AccY121 rho) := by
        rw [← hbit, seg34LadderFlatY121_eq]
        unfold seg34LadderFlatY121
        linear_combination -r4545
      unfold seg34AccY122
      linear_combination hd
    have hd0 : rho 35808 * rho 35809 = rho 35818 := by linear_combination r4546
    have hd1 : rho 35808 * rho 35808 = rho 35819 := by linear_combination r4547
    have hd2 : rho 35809 * rho 35809 = rho 35820 := by linear_combination r4548
    have hd3 : rho 35821 * (rho 35809 * rho 35809 + rho 35808 * rho 35808 * (-1)) = 2 * (rho 35808 * rho 35809) := by
      rw [hd0, hd1, hd2]
      linear_combination r4549
    have hd4 : rho 35822 * (2 - (rho 35809 * rho 35809 + rho 35808 * rho 35808 * (-1))) = rho 35809 * rho 35809 - rho 35808 * rho 35808 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4550
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX121 rho : Seg34.F), (seg34AccY121 rho : Seg34.F)⟩
      ⟨(rho 35808 : Seg34.F), (rho 35809 : Seg34.F)⟩
      ⟨(rho 35814 : Seg34.F), (rho 35815 : Seg34.F)⟩
      ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
      ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung121

theorem seg34_rung122 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34114 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4551 Seg34.relationLc645 Seg34.relationLc645Part0 Seg34.relationLc645Part1 Seg34.relationLc645Part2 Seg34.relationLc645Part3 Seg34.relationLc645Part4 Seg34.relationLc645Part5 Seg34.relationLc645Part6 Seg34.relationLc645Part7 at r4551
  unfold Seg34.relationRow4552 Seg34.relationLc646 Seg34.relationLc646Part0 Seg34.relationLc646Part1 Seg34.relationLc646Part2 Seg34.relationLc646Part3 at r4552
  unfold Seg34.relationRow4553 Seg34.relationLc647 Seg34.relationLc647Part0 Seg34.relationLc647Part1 Seg34.relationLc647Part2 Seg34.relationLc647Part3 at r4553
  unfold Seg34.relationRow4554 at r4554
  unfold Seg34.relationRow4555 at r4555
  unfold Seg34.relationRow4556 at r4556
  unfold Seg34.relationRow4557 Seg34.relationLc648 Seg34.relationLc648Part0 Seg34.relationLc648Part1 Seg34.relationLc648Part2 Seg34.relationLc648Part3 at r4557
  unfold Seg34.relationRow4558 Seg34.relationLc649 Seg34.relationLc649Part0 Seg34.relationLc649Part1 Seg34.relationLc649Part2 Seg34.relationLc649Part3 at r4558
  unfold Seg34.relationRow4559 at r4559
  unfold Seg34.relationRow4560 at r4560
  unfold Seg34.relationRow4561 at r4561
  unfold Seg34.relationRow4562 at r4562
  unfold Seg34.relationRow4563 at r4563
  have hrung122 (bit : Bool) (hbit : rho 34114 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
        ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩ := by
    have ha0 : (rho 35821 + rho 35822) * (seg34AccX122 rho + seg34AccY122 rho) = rho 35823 := by
      rw [seg34LadderFlatX122_eq, seg34LadderFlatY122_eq]
      unfold seg34LadderFlatX122 seg34LadderFlatY122
      linear_combination r4551
    have ha1 : rho 35822 * seg34AccX122 rho = rho 35824 := by
      rw [seg34LadderFlatX122_eq]
      unfold seg34LadderFlatX122
      linear_combination r4552
    have ha2 : rho 35821 * seg34AccY122 rho = rho 35825 := by
      rw [seg34LadderFlatY122_eq]
      unfold seg34LadderFlatY122
      linear_combination r4553
    have ha3 : 3021 * rho 35824 * rho 35825 = rho 35826 := by
      linear_combination r4554
    have ha4 : rho 35827 * (1 + rho 35826) = rho 35824 + rho 35825 := by
      linear_combination r4555
    have ha5 : rho 35828 * (1 - rho 35826) = rho 35823 - rho 35824 - rho 35825 := by
      linear_combination r4556
    have haddx :
        rho 35827 * (1 + 3021 * (rho 35822 * seg34AccX122 rho) * (rho 35821 * seg34AccY122 rho)) =
          rho 35822 * seg34AccX122 rho + rho 35821 * seg34AccY122 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35828 * (1 - 3021 * (rho 35822 * seg34AccX122 rho) * (rho 35821 * seg34AccY122 rho)) =
          (-1) * (rho 35822 * seg34AccX122 rho) - rho 35821 * seg34AccY122 rho +
            (seg34AccY122 rho - seg34AccX122 rho * (-1)) * (rho 35821 + rho 35822) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35828 * (1 - rho 35826) = rho 35823 - rho 35824 - rho 35825 := ha5
        _ = (-1) * rho 35824 - rho 35825 + (seg34AccY122 rho - seg34AccX122 rho * (-1)) * (rho 35821 + rho 35822) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX123 rho = seg34AccX122 rho - Bool.toZMod bit * (seg34AccX122 rho - rho 35827) := by
      have hd : rho 35829 = Bool.toZMod bit * (rho 35827 - seg34AccX122 rho) := by
        rw [← hbit, seg34LadderFlatX122_eq]
        unfold seg34LadderFlatX122
        linear_combination -r4557
      unfold seg34AccX123
      linear_combination hd
    have hsely : seg34AccY123 rho = seg34AccY122 rho - Bool.toZMod bit * (seg34AccY122 rho - rho 35828) := by
      have hd : rho 35830 = Bool.toZMod bit * (rho 35828 - seg34AccY122 rho) := by
        rw [← hbit, seg34LadderFlatY122_eq]
        unfold seg34LadderFlatY122
        linear_combination -r4558
      unfold seg34AccY123
      linear_combination hd
    have hd0 : rho 35821 * rho 35822 = rho 35831 := by linear_combination r4559
    have hd1 : rho 35821 * rho 35821 = rho 35832 := by linear_combination r4560
    have hd2 : rho 35822 * rho 35822 = rho 35833 := by linear_combination r4561
    have hd3 : rho 35834 * (rho 35822 * rho 35822 + rho 35821 * rho 35821 * (-1)) = 2 * (rho 35821 * rho 35822) := by
      rw [hd0, hd1, hd2]
      linear_combination r4562
    have hd4 : rho 35835 * (2 - (rho 35822 * rho 35822 + rho 35821 * rho 35821 * (-1))) = rho 35822 * rho 35822 - rho 35821 * rho 35821 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4563
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX122 rho : Seg34.F), (seg34AccY122 rho : Seg34.F)⟩
      ⟨(rho 35821 : Seg34.F), (rho 35822 : Seg34.F)⟩
      ⟨(rho 35827 : Seg34.F), (rho 35828 : Seg34.F)⟩
      ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
      ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung122

theorem seg34_rung123 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34115 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4564 Seg34.relationLc650 Seg34.relationLc650Part0 Seg34.relationLc650Part1 Seg34.relationLc650Part2 Seg34.relationLc650Part3 Seg34.relationLc650Part4 Seg34.relationLc650Part5 Seg34.relationLc650Part6 Seg34.relationLc650Part7 at r4564
  unfold Seg34.relationRow4565 Seg34.relationLc651 Seg34.relationLc651Part0 Seg34.relationLc651Part1 Seg34.relationLc651Part2 Seg34.relationLc651Part3 at r4565
  unfold Seg34.relationRow4566 Seg34.relationLc652 Seg34.relationLc652Part0 Seg34.relationLc652Part1 Seg34.relationLc652Part2 Seg34.relationLc652Part3 at r4566
  unfold Seg34.relationRow4567 at r4567
  unfold Seg34.relationRow4568 at r4568
  unfold Seg34.relationRow4569 at r4569
  unfold Seg34.relationRow4570 Seg34.relationLc653 Seg34.relationLc653Part0 Seg34.relationLc653Part1 Seg34.relationLc653Part2 Seg34.relationLc653Part3 at r4570
  unfold Seg34.relationRow4571 Seg34.relationLc654 Seg34.relationLc654Part0 Seg34.relationLc654Part1 Seg34.relationLc654Part2 Seg34.relationLc654Part3 at r4571
  unfold Seg34.relationRow4572 at r4572
  unfold Seg34.relationRow4573 at r4573
  unfold Seg34.relationRow4574 at r4574
  unfold Seg34.relationRow4575 at r4575
  unfold Seg34.relationRow4576 at r4576
  have hrung123 (bit : Bool) (hbit : rho 34115 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
        ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩ := by
    have ha0 : (rho 35834 + rho 35835) * (seg34AccX123 rho + seg34AccY123 rho) = rho 35836 := by
      rw [seg34LadderFlatX123_eq, seg34LadderFlatY123_eq]
      unfold seg34LadderFlatX123 seg34LadderFlatY123
      linear_combination r4564
    have ha1 : rho 35835 * seg34AccX123 rho = rho 35837 := by
      rw [seg34LadderFlatX123_eq]
      unfold seg34LadderFlatX123
      linear_combination r4565
    have ha2 : rho 35834 * seg34AccY123 rho = rho 35838 := by
      rw [seg34LadderFlatY123_eq]
      unfold seg34LadderFlatY123
      linear_combination r4566
    have ha3 : 3021 * rho 35837 * rho 35838 = rho 35839 := by
      linear_combination r4567
    have ha4 : rho 35840 * (1 + rho 35839) = rho 35837 + rho 35838 := by
      linear_combination r4568
    have ha5 : rho 35841 * (1 - rho 35839) = rho 35836 - rho 35837 - rho 35838 := by
      linear_combination r4569
    have haddx :
        rho 35840 * (1 + 3021 * (rho 35835 * seg34AccX123 rho) * (rho 35834 * seg34AccY123 rho)) =
          rho 35835 * seg34AccX123 rho + rho 35834 * seg34AccY123 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35841 * (1 - 3021 * (rho 35835 * seg34AccX123 rho) * (rho 35834 * seg34AccY123 rho)) =
          (-1) * (rho 35835 * seg34AccX123 rho) - rho 35834 * seg34AccY123 rho +
            (seg34AccY123 rho - seg34AccX123 rho * (-1)) * (rho 35834 + rho 35835) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35841 * (1 - rho 35839) = rho 35836 - rho 35837 - rho 35838 := ha5
        _ = (-1) * rho 35837 - rho 35838 + (seg34AccY123 rho - seg34AccX123 rho * (-1)) * (rho 35834 + rho 35835) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX124 rho = seg34AccX123 rho - Bool.toZMod bit * (seg34AccX123 rho - rho 35840) := by
      have hd : rho 35842 = Bool.toZMod bit * (rho 35840 - seg34AccX123 rho) := by
        rw [← hbit, seg34LadderFlatX123_eq]
        unfold seg34LadderFlatX123
        linear_combination -r4570
      unfold seg34AccX124
      linear_combination hd
    have hsely : seg34AccY124 rho = seg34AccY123 rho - Bool.toZMod bit * (seg34AccY123 rho - rho 35841) := by
      have hd : rho 35843 = Bool.toZMod bit * (rho 35841 - seg34AccY123 rho) := by
        rw [← hbit, seg34LadderFlatY123_eq]
        unfold seg34LadderFlatY123
        linear_combination -r4571
      unfold seg34AccY124
      linear_combination hd
    have hd0 : rho 35834 * rho 35835 = rho 35844 := by linear_combination r4572
    have hd1 : rho 35834 * rho 35834 = rho 35845 := by linear_combination r4573
    have hd2 : rho 35835 * rho 35835 = rho 35846 := by linear_combination r4574
    have hd3 : rho 35847 * (rho 35835 * rho 35835 + rho 35834 * rho 35834 * (-1)) = 2 * (rho 35834 * rho 35835) := by
      rw [hd0, hd1, hd2]
      linear_combination r4575
    have hd4 : rho 35848 * (2 - (rho 35835 * rho 35835 + rho 35834 * rho 35834 * (-1))) = rho 35835 * rho 35835 - rho 35834 * rho 35834 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4576
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX123 rho : Seg34.F), (seg34AccY123 rho : Seg34.F)⟩
      ⟨(rho 35834 : Seg34.F), (rho 35835 : Seg34.F)⟩
      ⟨(rho 35840 : Seg34.F), (rho 35841 : Seg34.F)⟩
      ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
      ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung123

theorem seg34_rung124 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34116 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4577 Seg34.relationLc655 Seg34.relationLc655Part0 Seg34.relationLc655Part1 Seg34.relationLc655Part2 Seg34.relationLc655Part3 Seg34.relationLc655Part4 Seg34.relationLc655Part5 Seg34.relationLc655Part6 Seg34.relationLc655Part7 at r4577
  unfold Seg34.relationRow4578 Seg34.relationLc656 Seg34.relationLc656Part0 Seg34.relationLc656Part1 Seg34.relationLc656Part2 Seg34.relationLc656Part3 at r4578
  unfold Seg34.relationRow4579 Seg34.relationLc657 Seg34.relationLc657Part0 Seg34.relationLc657Part1 Seg34.relationLc657Part2 Seg34.relationLc657Part3 at r4579
  unfold Seg34.relationRow4580 at r4580
  unfold Seg34.relationRow4581 at r4581
  unfold Seg34.relationRow4582 at r4582
  unfold Seg34.relationRow4583 Seg34.relationLc658 Seg34.relationLc658Part0 Seg34.relationLc658Part1 Seg34.relationLc658Part2 Seg34.relationLc658Part3 at r4583
  unfold Seg34.relationRow4584 Seg34.relationLc659 Seg34.relationLc659Part0 Seg34.relationLc659Part1 Seg34.relationLc659Part2 Seg34.relationLc659Part3 at r4584
  unfold Seg34.relationRow4585 at r4585
  unfold Seg34.relationRow4586 at r4586
  unfold Seg34.relationRow4587 at r4587
  unfold Seg34.relationRow4588 at r4588
  unfold Seg34.relationRow4589 at r4589
  have hrung124 (bit : Bool) (hbit : rho 34116 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
        ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩ := by
    have ha0 : (rho 35847 + rho 35848) * (seg34AccX124 rho + seg34AccY124 rho) = rho 35849 := by
      rw [seg34LadderFlatX124_eq, seg34LadderFlatY124_eq]
      unfold seg34LadderFlatX124 seg34LadderFlatY124
      linear_combination r4577
    have ha1 : rho 35848 * seg34AccX124 rho = rho 35850 := by
      rw [seg34LadderFlatX124_eq]
      unfold seg34LadderFlatX124
      linear_combination r4578
    have ha2 : rho 35847 * seg34AccY124 rho = rho 35851 := by
      rw [seg34LadderFlatY124_eq]
      unfold seg34LadderFlatY124
      linear_combination r4579
    have ha3 : 3021 * rho 35850 * rho 35851 = rho 35852 := by
      linear_combination r4580
    have ha4 : rho 35853 * (1 + rho 35852) = rho 35850 + rho 35851 := by
      linear_combination r4581
    have ha5 : rho 35854 * (1 - rho 35852) = rho 35849 - rho 35850 - rho 35851 := by
      linear_combination r4582
    have haddx :
        rho 35853 * (1 + 3021 * (rho 35848 * seg34AccX124 rho) * (rho 35847 * seg34AccY124 rho)) =
          rho 35848 * seg34AccX124 rho + rho 35847 * seg34AccY124 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35854 * (1 - 3021 * (rho 35848 * seg34AccX124 rho) * (rho 35847 * seg34AccY124 rho)) =
          (-1) * (rho 35848 * seg34AccX124 rho) - rho 35847 * seg34AccY124 rho +
            (seg34AccY124 rho - seg34AccX124 rho * (-1)) * (rho 35847 + rho 35848) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35854 * (1 - rho 35852) = rho 35849 - rho 35850 - rho 35851 := ha5
        _ = (-1) * rho 35850 - rho 35851 + (seg34AccY124 rho - seg34AccX124 rho * (-1)) * (rho 35847 + rho 35848) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX125 rho = seg34AccX124 rho - Bool.toZMod bit * (seg34AccX124 rho - rho 35853) := by
      have hd : rho 35855 = Bool.toZMod bit * (rho 35853 - seg34AccX124 rho) := by
        rw [← hbit, seg34LadderFlatX124_eq]
        unfold seg34LadderFlatX124
        linear_combination -r4583
      unfold seg34AccX125
      linear_combination hd
    have hsely : seg34AccY125 rho = seg34AccY124 rho - Bool.toZMod bit * (seg34AccY124 rho - rho 35854) := by
      have hd : rho 35856 = Bool.toZMod bit * (rho 35854 - seg34AccY124 rho) := by
        rw [← hbit, seg34LadderFlatY124_eq]
        unfold seg34LadderFlatY124
        linear_combination -r4584
      unfold seg34AccY125
      linear_combination hd
    have hd0 : rho 35847 * rho 35848 = rho 35857 := by linear_combination r4585
    have hd1 : rho 35847 * rho 35847 = rho 35858 := by linear_combination r4586
    have hd2 : rho 35848 * rho 35848 = rho 35859 := by linear_combination r4587
    have hd3 : rho 35860 * (rho 35848 * rho 35848 + rho 35847 * rho 35847 * (-1)) = 2 * (rho 35847 * rho 35848) := by
      rw [hd0, hd1, hd2]
      linear_combination r4588
    have hd4 : rho 35861 * (2 - (rho 35848 * rho 35848 + rho 35847 * rho 35847 * (-1))) = rho 35848 * rho 35848 - rho 35847 * rho 35847 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4589
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX124 rho : Seg34.F), (seg34AccY124 rho : Seg34.F)⟩
      ⟨(rho 35847 : Seg34.F), (rho 35848 : Seg34.F)⟩
      ⟨(rho 35853 : Seg34.F), (rho 35854 : Seg34.F)⟩
      ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
      ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung124

theorem seg34_rung125 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34117 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4590 Seg34.relationLc660 Seg34.relationLc660Part0 Seg34.relationLc660Part1 Seg34.relationLc660Part2 Seg34.relationLc660Part3 Seg34.relationLc660Part4 Seg34.relationLc660Part5 Seg34.relationLc660Part6 Seg34.relationLc660Part7 at r4590
  unfold Seg34.relationRow4591 Seg34.relationLc661 Seg34.relationLc661Part0 Seg34.relationLc661Part1 Seg34.relationLc661Part2 Seg34.relationLc661Part3 at r4591
  unfold Seg34.relationRow4592 Seg34.relationLc662 Seg34.relationLc662Part0 Seg34.relationLc662Part1 Seg34.relationLc662Part2 Seg34.relationLc662Part3 at r4592
  unfold Seg34.relationRow4593 at r4593
  unfold Seg34.relationRow4594 at r4594
  unfold Seg34.relationRow4595 at r4595
  unfold Seg34.relationRow4596 Seg34.relationLc663 Seg34.relationLc663Part0 Seg34.relationLc663Part1 Seg34.relationLc663Part2 Seg34.relationLc663Part3 at r4596
  unfold Seg34.relationRow4597 Seg34.relationLc664 Seg34.relationLc664Part0 Seg34.relationLc664Part1 Seg34.relationLc664Part2 Seg34.relationLc664Part3 at r4597
  unfold Seg34.relationRow4598 at r4598
  unfold Seg34.relationRow4599 at r4599
  unfold Seg34.relationRow4600 at r4600
  unfold Seg34.relationRow4601 at r4601
  unfold Seg34.relationRow4602 at r4602
  have hrung125 (bit : Bool) (hbit : rho 34117 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
        ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩ := by
    have ha0 : (rho 35860 + rho 35861) * (seg34AccX125 rho + seg34AccY125 rho) = rho 35862 := by
      rw [seg34LadderFlatX125_eq, seg34LadderFlatY125_eq]
      unfold seg34LadderFlatX125 seg34LadderFlatY125
      linear_combination r4590
    have ha1 : rho 35861 * seg34AccX125 rho = rho 35863 := by
      rw [seg34LadderFlatX125_eq]
      unfold seg34LadderFlatX125
      linear_combination r4591
    have ha2 : rho 35860 * seg34AccY125 rho = rho 35864 := by
      rw [seg34LadderFlatY125_eq]
      unfold seg34LadderFlatY125
      linear_combination r4592
    have ha3 : 3021 * rho 35863 * rho 35864 = rho 35865 := by
      linear_combination r4593
    have ha4 : rho 35866 * (1 + rho 35865) = rho 35863 + rho 35864 := by
      linear_combination r4594
    have ha5 : rho 35867 * (1 - rho 35865) = rho 35862 - rho 35863 - rho 35864 := by
      linear_combination r4595
    have haddx :
        rho 35866 * (1 + 3021 * (rho 35861 * seg34AccX125 rho) * (rho 35860 * seg34AccY125 rho)) =
          rho 35861 * seg34AccX125 rho + rho 35860 * seg34AccY125 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35867 * (1 - 3021 * (rho 35861 * seg34AccX125 rho) * (rho 35860 * seg34AccY125 rho)) =
          (-1) * (rho 35861 * seg34AccX125 rho) - rho 35860 * seg34AccY125 rho +
            (seg34AccY125 rho - seg34AccX125 rho * (-1)) * (rho 35860 + rho 35861) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35867 * (1 - rho 35865) = rho 35862 - rho 35863 - rho 35864 := ha5
        _ = (-1) * rho 35863 - rho 35864 + (seg34AccY125 rho - seg34AccX125 rho * (-1)) * (rho 35860 + rho 35861) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX126 rho = seg34AccX125 rho - Bool.toZMod bit * (seg34AccX125 rho - rho 35866) := by
      have hd : rho 35868 = Bool.toZMod bit * (rho 35866 - seg34AccX125 rho) := by
        rw [← hbit, seg34LadderFlatX125_eq]
        unfold seg34LadderFlatX125
        linear_combination -r4596
      unfold seg34AccX126
      linear_combination hd
    have hsely : seg34AccY126 rho = seg34AccY125 rho - Bool.toZMod bit * (seg34AccY125 rho - rho 35867) := by
      have hd : rho 35869 = Bool.toZMod bit * (rho 35867 - seg34AccY125 rho) := by
        rw [← hbit, seg34LadderFlatY125_eq]
        unfold seg34LadderFlatY125
        linear_combination -r4597
      unfold seg34AccY126
      linear_combination hd
    have hd0 : rho 35860 * rho 35861 = rho 35870 := by linear_combination r4598
    have hd1 : rho 35860 * rho 35860 = rho 35871 := by linear_combination r4599
    have hd2 : rho 35861 * rho 35861 = rho 35872 := by linear_combination r4600
    have hd3 : rho 35873 * (rho 35861 * rho 35861 + rho 35860 * rho 35860 * (-1)) = 2 * (rho 35860 * rho 35861) := by
      rw [hd0, hd1, hd2]
      linear_combination r4601
    have hd4 : rho 35874 * (2 - (rho 35861 * rho 35861 + rho 35860 * rho 35860 * (-1))) = rho 35861 * rho 35861 - rho 35860 * rho 35860 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4602
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX125 rho : Seg34.F), (seg34AccY125 rho : Seg34.F)⟩
      ⟨(rho 35860 : Seg34.F), (rho 35861 : Seg34.F)⟩
      ⟨(rho 35866 : Seg34.F), (rho 35867 : Seg34.F)⟩
      ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
      ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung125

theorem seg34_rung126 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34118 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4603 Seg34.relationLc665 Seg34.relationLc665Part0 Seg34.relationLc665Part1 Seg34.relationLc665Part2 Seg34.relationLc665Part3 Seg34.relationLc665Part4 Seg34.relationLc665Part5 Seg34.relationLc665Part6 Seg34.relationLc665Part7 at r4603
  unfold Seg34.relationRow4604 Seg34.relationLc666 Seg34.relationLc666Part0 Seg34.relationLc666Part1 Seg34.relationLc666Part2 Seg34.relationLc666Part3 at r4604
  unfold Seg34.relationRow4605 Seg34.relationLc667 Seg34.relationLc667Part0 Seg34.relationLc667Part1 Seg34.relationLc667Part2 Seg34.relationLc667Part3 at r4605
  unfold Seg34.relationRow4606 at r4606
  unfold Seg34.relationRow4607 at r4607
  unfold Seg34.relationRow4608 at r4608
  unfold Seg34.relationRow4609 Seg34.relationLc668 Seg34.relationLc668Part0 Seg34.relationLc668Part1 Seg34.relationLc668Part2 Seg34.relationLc668Part3 at r4609
  unfold Seg34.relationRow4610 Seg34.relationLc669 Seg34.relationLc669Part0 Seg34.relationLc669Part1 Seg34.relationLc669Part2 Seg34.relationLc669Part3 at r4610
  unfold Seg34.relationRow4611 at r4611
  unfold Seg34.relationRow4612 at r4612
  unfold Seg34.relationRow4613 at r4613
  unfold Seg34.relationRow4614 at r4614
  unfold Seg34.relationRow4615 at r4615
  have hrung126 (bit : Bool) (hbit : rho 34118 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
        ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩ := by
    have ha0 : (rho 35873 + rho 35874) * (seg34AccX126 rho + seg34AccY126 rho) = rho 35875 := by
      rw [seg34LadderFlatX126_eq, seg34LadderFlatY126_eq]
      unfold seg34LadderFlatX126 seg34LadderFlatY126
      linear_combination r4603
    have ha1 : rho 35874 * seg34AccX126 rho = rho 35876 := by
      rw [seg34LadderFlatX126_eq]
      unfold seg34LadderFlatX126
      linear_combination r4604
    have ha2 : rho 35873 * seg34AccY126 rho = rho 35877 := by
      rw [seg34LadderFlatY126_eq]
      unfold seg34LadderFlatY126
      linear_combination r4605
    have ha3 : 3021 * rho 35876 * rho 35877 = rho 35878 := by
      linear_combination r4606
    have ha4 : rho 35879 * (1 + rho 35878) = rho 35876 + rho 35877 := by
      linear_combination r4607
    have ha5 : rho 35880 * (1 - rho 35878) = rho 35875 - rho 35876 - rho 35877 := by
      linear_combination r4608
    have haddx :
        rho 35879 * (1 + 3021 * (rho 35874 * seg34AccX126 rho) * (rho 35873 * seg34AccY126 rho)) =
          rho 35874 * seg34AccX126 rho + rho 35873 * seg34AccY126 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35880 * (1 - 3021 * (rho 35874 * seg34AccX126 rho) * (rho 35873 * seg34AccY126 rho)) =
          (-1) * (rho 35874 * seg34AccX126 rho) - rho 35873 * seg34AccY126 rho +
            (seg34AccY126 rho - seg34AccX126 rho * (-1)) * (rho 35873 + rho 35874) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35880 * (1 - rho 35878) = rho 35875 - rho 35876 - rho 35877 := ha5
        _ = (-1) * rho 35876 - rho 35877 + (seg34AccY126 rho - seg34AccX126 rho * (-1)) * (rho 35873 + rho 35874) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX127 rho = seg34AccX126 rho - Bool.toZMod bit * (seg34AccX126 rho - rho 35879) := by
      have hd : rho 35881 = Bool.toZMod bit * (rho 35879 - seg34AccX126 rho) := by
        rw [← hbit, seg34LadderFlatX126_eq]
        unfold seg34LadderFlatX126
        linear_combination -r4609
      unfold seg34AccX127
      linear_combination hd
    have hsely : seg34AccY127 rho = seg34AccY126 rho - Bool.toZMod bit * (seg34AccY126 rho - rho 35880) := by
      have hd : rho 35882 = Bool.toZMod bit * (rho 35880 - seg34AccY126 rho) := by
        rw [← hbit, seg34LadderFlatY126_eq]
        unfold seg34LadderFlatY126
        linear_combination -r4610
      unfold seg34AccY127
      linear_combination hd
    have hd0 : rho 35873 * rho 35874 = rho 35883 := by linear_combination r4611
    have hd1 : rho 35873 * rho 35873 = rho 35884 := by linear_combination r4612
    have hd2 : rho 35874 * rho 35874 = rho 35885 := by linear_combination r4613
    have hd3 : rho 35886 * (rho 35874 * rho 35874 + rho 35873 * rho 35873 * (-1)) = 2 * (rho 35873 * rho 35874) := by
      rw [hd0, hd1, hd2]
      linear_combination r4614
    have hd4 : rho 35887 * (2 - (rho 35874 * rho 35874 + rho 35873 * rho 35873 * (-1))) = rho 35874 * rho 35874 - rho 35873 * rho 35873 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4615
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX126 rho : Seg34.F), (seg34AccY126 rho : Seg34.F)⟩
      ⟨(rho 35873 : Seg34.F), (rho 35874 : Seg34.F)⟩
      ⟨(rho 35879 : Seg34.F), (rho 35880 : Seg34.F)⟩
      ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
      ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung126

theorem seg34_rung127 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34119 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩ := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow4616 Seg34.relationLc670 Seg34.relationLc670Part0 Seg34.relationLc670Part1 Seg34.relationLc670Part2 Seg34.relationLc670Part3 Seg34.relationLc670Part4 Seg34.relationLc670Part5 Seg34.relationLc670Part6 Seg34.relationLc670Part7 at r4616
  unfold Seg34.relationRow4617 Seg34.relationLc671 Seg34.relationLc671Part0 Seg34.relationLc671Part1 Seg34.relationLc671Part2 Seg34.relationLc671Part3 at r4617
  unfold Seg34.relationRow4618 Seg34.relationLc672 Seg34.relationLc672Part0 Seg34.relationLc672Part1 Seg34.relationLc672Part2 Seg34.relationLc672Part3 at r4618
  unfold Seg34.relationRow4619 at r4619
  unfold Seg34.relationRow4620 at r4620
  unfold Seg34.relationRow4621 at r4621
  unfold Seg34.relationRow4622 Seg34.relationLc673 Seg34.relationLc673Part0 Seg34.relationLc673Part1 Seg34.relationLc673Part2 Seg34.relationLc673Part3 at r4622
  unfold Seg34.relationRow4623 Seg34.relationLc674 Seg34.relationLc674Part0 Seg34.relationLc674Part1 Seg34.relationLc674Part2 Seg34.relationLc674Part3 Seg34.relationLc674Part4 at r4623
  unfold Seg34.relationRow4624 at r4624
  unfold Seg34.relationRow4625 at r4625
  unfold Seg34.relationRow4626 at r4626
  unfold Seg34.relationRow4627 at r4627
  unfold Seg34.relationRow4628 at r4628
  have hrung127 (bit : Bool) (hbit : rho 34119 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
        ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
        ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
        ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩ := by
    have ha0 : (rho 35886 + rho 35887) * (seg34AccX127 rho + seg34AccY127 rho) = rho 35888 := by
      rw [seg34LadderFlatX127_eq, seg34LadderFlatY127_eq]
      unfold seg34LadderFlatX127 seg34LadderFlatY127
      linear_combination r4616
    have ha1 : rho 35887 * seg34AccX127 rho = rho 35889 := by
      rw [seg34LadderFlatX127_eq]
      unfold seg34LadderFlatX127
      linear_combination r4617
    have ha2 : rho 35886 * seg34AccY127 rho = rho 35890 := by
      rw [seg34LadderFlatY127_eq]
      unfold seg34LadderFlatY127
      linear_combination r4618
    have ha3 : 3021 * rho 35889 * rho 35890 = rho 35891 := by
      linear_combination r4619
    have ha4 : rho 35892 * (1 + rho 35891) = rho 35889 + rho 35890 := by
      linear_combination r4620
    have ha5 : rho 35893 * (1 - rho 35891) = rho 35888 - rho 35889 - rho 35890 := by
      linear_combination r4621
    have haddx :
        rho 35892 * (1 + 3021 * (rho 35887 * seg34AccX127 rho) * (rho 35886 * seg34AccY127 rho)) =
          rho 35887 * seg34AccX127 rho + rho 35886 * seg34AccY127 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35893 * (1 - 3021 * (rho 35887 * seg34AccX127 rho) * (rho 35886 * seg34AccY127 rho)) =
          (-1) * (rho 35887 * seg34AccX127 rho) - rho 35886 * seg34AccY127 rho +
            (seg34AccY127 rho - seg34AccX127 rho * (-1)) * (rho 35886 + rho 35887) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35893 * (1 - rho 35891) = rho 35888 - rho 35889 - rho 35890 := ha5
        _ = (-1) * rho 35889 - rho 35890 + (seg34AccY127 rho - seg34AccX127 rho * (-1)) * (rho 35886 + rho 35887) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX128 rho = seg34AccX127 rho - Bool.toZMod bit * (seg34AccX127 rho - rho 35892) := by
      have hd : rho 35894 = Bool.toZMod bit * (rho 35892 - seg34AccX127 rho) := by
        rw [← hbit, seg34LadderFlatX127_eq]
        unfold seg34LadderFlatX127
        linear_combination -r4622
      unfold seg34AccX128
      linear_combination hd
    have hsely : seg34AccY128 rho = seg34AccY127 rho - Bool.toZMod bit * (seg34AccY127 rho - rho 35893) := by
      have hd : rho 35895 = Bool.toZMod bit * (rho 35893 - seg34AccY127 rho) := by
        rw [← hbit, seg34LadderFlatY127_eq]
        unfold seg34LadderFlatY127
        linear_combination -r4623
      unfold seg34AccY128
      linear_combination hd
    have hd0 : rho 35886 * rho 35887 = rho 35896 := by linear_combination r4624
    have hd1 : rho 35886 * rho 35886 = rho 35897 := by linear_combination r4625
    have hd2 : rho 35887 * rho 35887 = rho 35898 := by linear_combination r4626
    have hd3 : rho 35899 * (rho 35887 * rho 35887 + rho 35886 * rho 35886 * (-1)) = 2 * (rho 35886 * rho 35887) := by
      rw [hd0, hd1, hd2]
      linear_combination r4627
    have hd4 : rho 35900 * (2 - (rho 35887 * rho 35887 + rho 35886 * rho 35886 * (-1))) = rho 35887 * rho 35887 - rho 35886 * rho 35886 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4628
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX127 rho : Seg34.F), (seg34AccY127 rho : Seg34.F)⟩
      ⟨(rho 35886 : Seg34.F), (rho 35887 : Seg34.F)⟩
      ⟨(rho 35892 : Seg34.F), (rho 35893 : Seg34.F)⟩
      ⟨(seg34AccX128 rho : Seg34.F), (seg34AccY128 rho : Seg34.F)⟩
      ⟨(rho 35899 : Seg34.F), (rho 35900 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung127

theorem seg34_hstep_c3 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 96 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg34_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg34_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
  · exact seg34_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg34_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg34_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg34_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg34_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg34_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg34_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg34_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg34_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg34_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg34_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
  · exact seg34_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg34_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg34_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg34_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg34_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg34_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg34_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg34_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg34_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg34_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg34_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
  · exact seg34_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg34_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg34_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg34_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg34_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg34_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg34_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
