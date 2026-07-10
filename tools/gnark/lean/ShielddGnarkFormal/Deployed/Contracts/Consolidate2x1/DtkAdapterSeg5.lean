import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Lt
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Poseidon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Scalar
import ShielddGnarkFormal.Deployed.Dtk.Compose
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs
open Shieldd.GnarkFormal.DeployedGadgets

theorem seg5_dtkSeg0 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (hdiv : Specs.onCurveAt (rho 17) (rho 18)) :
    Shieldd.GnarkFormal.DtkBridge.dtkSeg0
      (rho 8) (rho 6) (rho 7) (rho 17) (rho 18)
      (rho 217) (rho 218) (rho 9) (rho 10)
      (fun ivkBits => Shieldd.GnarkFormal.DtkBridge.dtkTailK ivkBits (rho 10)
        (∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
          Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
            (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
              (dtkOutX5 rho : Seg5.F) (dtkOutY5 rho : Seg5.F))
            251 0 ⟨0, 1⟩ ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩)) := by
  have hIvkBinary := seg5Ivk_toBinary rho h
  have hScalarBinary := seg5Scalar_toBinary rho h
  obtain ⟨scalarBool, hScalarEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hScalarBinary.2
  have hScalarLadder := seg5_scalar_ladder rho h scalarBool hScalarEq hdiv
  let scalarTail : Prop := ∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
    Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX5 rho : Seg5.F) (dtkOutY5 rho : Seg5.F))
      251 0 ⟨0, 1⟩ ⟨(rho 17 : Seg5.F), (rho 18 : Seg5.F)⟩
  have hScalarTail : scalarTail := ⟨_, hScalarBinary, hScalarLadder⟩
  have hq4 := seg5_q4_ladder rho h scalarTail hScalarTail
  have hr := seg5_r_ladder rho h scalarTail hq4
  have htail := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build
    (seg5IvkBits rho) (rho 10) scalarTail hr
  change Shieldd.GnarkFormal.DtkBridge.dtkTailK (seg5IvkBits rho) (rho 10) scalarTail at htail
  have hposeidon := seg5_poseidon_eq rho h
  have hP0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg5.F) = 0 := by decide
  have hcm : (5602780471396575806509277699913763570037463653793953144491313093258883571225 : Seg5.F) = -2841681278031794617739547238867782961338435681360110683443920362658525667816 := by decide
  have hcanon1 := seg5Canon1_canonical rho h
  have hcanon2 := seg5Canon2_canonical rho h
  unfold Seg5.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, p6, _, _, _,
    _, _, _, p13, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r534, r535, r536, r537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, r1044, r1045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1317, r1318, r1319, r1320, r1321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow0 at r0
  unfold Seg5.relationRow1 at r1
  unfold Seg5.relationRow2 at r2
  unfold Seg5.relationRow3 at r3
  unfold Seg5.relationRow4 at r4
  unfold Seg5.relationRow5 at r5
  unfold Seg5.relationRow6 at r6
  unfold Seg5.relationRow7 at r7
  unfold Seg5.relationRow8 at r8
  unfold Seg5.relationRow9 at r9
  unfold Seg5.relationRow10 at r10
  unfold Seg5.relationRow11 at r11
  unfold Seg5.relationRow12 at r12
  unfold Seg5.relationRow13 at r13
  unfold Seg5.relationRow14 at r14
  unfold Seg5.relationRow15 at r15
  unfold Seg5.relationRow16 at r16
  unfold Seg5.relationRow17 at r17
  unfold Seg5.relationRow18 at r18
  unfold Seg5.relationRow19 at r19
  unfold Seg5.relationRow20 at r20
  unfold Seg5.relationRow21 at r21
  unfold Seg5.relationRow22 at r22
  unfold Seg5.relationRow23 at r23
  unfold Seg5.relationRow24 at r24
  unfold Seg5.relationRow25 at r25
  unfold Seg5.relationRow26 at r26
  unfold Seg5.relationRow27 at r27
  unfold Seg5.relationRow534 at r534
  unfold Seg5.relationRow535 at r535
  unfold Seg5.relationRow536 at r536
  unfold Seg5.relationRow537 at r537
  unfold Seg5.relationRow1044 at r1044
  unfold Seg5.relationRow1045 at r1045
  unfold Seg5.relationRow1317 at r1317
  unfold Seg5.relationRow1318 at r1318
  unfold Seg5.relationRow1319 at r1319
  unfold Seg5.relationRow1320 at r1320
  unfold Seg5.relationRow1321 at r1321
  have hws : GatesDef.is_bool (rho 217) :=
    is_bool_of_row _ (by linear_combination r8)
  have hz : GatesDef.is_zero (rho 216) (rho 219) := by
    refine is_zero_of_hint _ (rho 220) _ ?_ ?_
    · linear_combination -r9
    · linear_combination r10
  have hzBool : GatesDef.is_bool (rho 219) :=
    is_bool_of_row _ (by linear_combination r18)
  have hsel15 : GatesDef.select (rho 219) 1 (rho 216) (rho 216 + rho 221) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r11
  have hinv : GatesDef.inv (rho 216 + rho 221) (rho 222) :=
    inv_of_mul _ _ (by linear_combination r12)
  have hnotWs : GatesDef.is_bool (1 - rho 217) := by
    unfold GatesDef.is_bool
    linear_combination r8
  have hnotZ : GatesDef.is_bool (1 - rho 219) := by
    unfold GatesDef.is_bool
    linear_combination r18
  have hand22 : GatesDef.and (1 - rho 217) (rho 219) (rho 225) := by
    refine and_of_row _ _ _ hnotWs hzBool ?_
    linear_combination -r17
  have hand23 : GatesDef.and (1 - rho 217) (1 - rho 219) (rho 226) := by
    refine and_of_row _ _ _ hnotWs hnotZ ?_
    linear_combination -r19
  unfold Shieldd.GnarkFormal.DtkBridge.dtkSeg0
  simp only [Shieldd.GnarkFormal.Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq]
  refine ⟨rho 210, (by first | linear_combination r0 | linear_combination -r0),
    rho 211, (by first | linear_combination r1 | linear_combination -r1),
    rho 211 - rho 210, rfl, (3021 : Seg5.F) * rho 210, rfl,
    rho 212, (by first | linear_combination r2 | linear_combination -r2), (1 : Seg5.F) + rho 212, rfl,
    (by first | linear_combination r3 | linear_combination -r3),
    rho 17 * rho 17, rfl,
    rho 18 * rho 18, rfl,
    rho 18 * rho 18 - rho 17 * rho 17, rfl,
    (3021 : Seg5.F) * (rho 17 * rho 17), rfl,
    (3021 : Seg5.F) * (rho 17 * rho 17) * (rho 18 * rho 18), rfl,
    (1 : Seg5.F) + (3021 : Seg5.F) * (rho 17 * rho 17) * (rho 18 * rho 18), rfl,
    (by have h' := hdiv; simp only [Specs.onCurveAt] at h'; linear_combination h'),
    rho 215, (by first | linear_combination r6 | linear_combination -r6), rho 211, (by first | linear_combination r1 | linear_combination -r1),
    rho 211 - rho 215, rfl, (3021 : Seg5.F) * rho 215, rfl,
    rho 212, (by first | linear_combination r2 + (3021 : Seg5.F) * rho 211 * (r6 - r0) | linear_combination r2 - (3021 : Seg5.F) * rho 211 * (r6 - r0) | linear_combination -r2 + (3021 : Seg5.F) * rho 211 * (r6 - r0) | linear_combination -r2 - (3021 : Seg5.F) * rho 211 * (r6 - r0)),
    (1 : Seg5.F) + rho 212, rfl, (by first | linear_combination r3 + (r6 - r0) | linear_combination r3 - (r6 - r0) | linear_combination -r3 + (r6 - r0) | linear_combination -r3 - (r6 - r0)),
    rho 213, (by first | linear_combination r4 | linear_combination -r4),
    rho 6 + rho 213, rfl, rho 6 - rho 213, rfl,
    rho 214, (by first | linear_combination r5 | linear_combination -r5), (-3022 : Seg5.F) * rho 214, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg5.F) = -3022 from by decide]; ring)),
    rho 216, (by first | linear_combination r7 | linear_combination -r7), hws, rho 219, hz,
    rho 216 + rho 221, hsel15, rho 222, hinv,
    rho 223, (by first | linear_combination r13 | linear_combination -r13), rho 224, (by first | linear_combination r14 | linear_combination -r14), (by first | linear_combination r15 | linear_combination -r15),
    (1 : Seg5.F) - rho 217, rfl, (1 : Seg5.F) - rho 219, rfl, rho 225, hand22,
    rho 226, hand23, rho 223 - rho 222, rfl,
    rho 227, (by first | linear_combination r20 | linear_combination -r20), (by first | linear_combination r21 | linear_combination -r21),
    rho 228, (by first | linear_combination r22 | linear_combination -r22), (by first | linear_combination r23 | linear_combination -r23),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg5.F) * rho 222, rfl,
    rho 223 - (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg5.F) * rho 222, rfl,
    rho 229, (by simp only [hcm] at r24 ⊢; first | linear_combination r24 | linear_combination -r24 | linear_combination (2 : Seg5.F) * r24 | linear_combination (-2 : Seg5.F) * r24 | linear_combination (3 : Seg5.F) * r24 | linear_combination (-3 : Seg5.F) * r24 | linear_combination (4 : Seg5.F) * r24 | linear_combination (-4 : Seg5.F) * r24), (by first | linear_combination r25 | linear_combination -r25),
    rho 217 + rho 225, rfl, rho 217 + rho 225 + rho 226, rfl,
    (by first | linear_combination r26 | linear_combination -r26), rho 230, (by first | linear_combination r27 | linear_combination -r27), ?_⟩
  apply hcanon1
  have hb1 : (seg5Canon1Bits rho)[0]! = rho 231 :=
    seg5Canon1Bits_get rho 0 (by omega)
  have hb1Bool : GatesDef.is_bool (1 - rho 231) := by
    unfold GatesDef.is_bool
    first | linear_combination r534 | linear_combination -r534
  have hsel40 : GatesDef.select (1 - rho 231) (rho 230) (-rho 230) (rho 570 - rho 230) := by
    refine select_of_row _ _ _ _ hb1Bool ?_
    first | linear_combination r535 | linear_combination -r535
  refine ⟨(1 : Seg5.F) - rho 231, (by simpa [hb1]), -rho 230, (by ring),
    rho 570 - rho 230, hsel40,
    rho 570 - rho 230 - rho 213, rfl,
    (-3022 : Seg5.F) * rho 218, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg5.F) = -3022 from by decide]; ring)), rho 571, (by first | linear_combination r536 | linear_combination -r536),
    rho 572, (by first | linear_combination r537 | linear_combination -r537), ?_⟩
  apply hcanon2
  have hb2 : (seg5Canon2Bits rho)[0]! = rho 573 :=
    seg5Canon2Bits_get rho 0 (by omega)
  have hb2Bool : GatesDef.is_bool (1 - rho 573) := by
    unfold GatesDef.is_bool
    first | linear_combination r1044 | linear_combination -r1044
  have hsel48 : GatesDef.select (1 - rho 573) (rho 572) (-rho 572) (rho 912 - rho 572) := by
    refine select_of_row _ _ _ _ hb2Bool ?_
    first | linear_combination r1045 | linear_combination -r1045
  refine ⟨(1 : Seg5.F) - rho 573, (by simpa [hb2]), -rho 572, (by ring),
    rho 912 - rho 572, hsel48, ?_⟩
  refine Shieldd.GnarkFormal.DtkBridge.perm2_intro ?_
  refine ⟨(2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg5.F) * rho 10, rfl,
    (2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg5.F) * rho 10 + rho 9, rfl,
    (by first | linear_combination hposeidon | linear_combination (2 : Seg5.F) * hposeidon | linear_combination -hposeidon | linear_combination (-2 : Seg5.F) * hposeidon), rho 10 - (1 : Seg5.F), rfl,
    rho 1183, (by first | linear_combination r1317 | linear_combination -r1317), rho 10 - (2 : Seg5.F), rfl,
    rho 1184, (by first | linear_combination r1318 | linear_combination -r1318), rho 10 - (3 : Seg5.F), rfl,
    rho 1185, (by first | linear_combination r1319 | linear_combination -r1319), rho 10 - (4 : Seg5.F), rfl,
    rho 1186, (by first | linear_combination r1320 | linear_combination -r1320), (by first | linear_combination r1321 | linear_combination -r1321),
    seg5IvkBits rho, hIvkBinary, ?_⟩
  simpa [scalarTail] using htail

theorem seg5_sound (rho : Nat -> Seg5.F) (h : Seg5.relation rho) : Specs.deployedSpec5 rho := by
  intro hdiv
  have hseg0 := seg5_dtkSeg0 rho h hdiv
  have hcircuit := Shieldd.GnarkFormal.Deployed.Dtk.dtk_circuit_of_seg0
    (rho 8) (rho 6) (rho 7) (rho 17) (rho 18)
    (rho 217) (rho 218) (rho 9) (rho 10)
    (dtkOutX5 rho : Seg5.F) (dtkOutY5 rho : Seg5.F) hseg0
  apply Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_sound
    (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 17, rho 18⟩ (rho 9) (rho 10)
    ⟨dtkOutX5 rho, dtkOutY5 rho⟩
  · simpa only [Specs.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using hdiv
  · exact ⟨rho 217, rho 218, hcircuit⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
