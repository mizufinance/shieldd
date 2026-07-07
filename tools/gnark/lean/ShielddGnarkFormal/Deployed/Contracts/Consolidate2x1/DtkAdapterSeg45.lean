import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Lt
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Poseidon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Scalar
import ShielddGnarkFormal.Deployed.Dtk.Compose
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs
open Shieldd.GnarkFormal.DeployedGadgets

theorem seg45_dtkSeg0 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (hdiv : Specs.onCurveAt (rho 195) (rho 196)) :
    Shieldd.GnarkFormal.DtkBridge.dtkSeg0
      (rho 8) (rho 6) (rho 7) (rho 195) (rho 196)
      (rho 38750) (rho 38751) (rho 9) (rho 10)
      (fun ivkBits => Shieldd.GnarkFormal.DtkBridge.dtkTailK ivkBits (rho 10)
        (∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
          Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
            (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
              (dtkOutX45 rho : Seg45.F) (dtkOutY45 rho : Seg45.F))
            251 0 ⟨0, 1⟩ ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩)) := by
  have hIvkBinary := seg45Ivk_toBinary rho h
  have hScalarBinary := seg45Scalar_toBinary rho h
  obtain ⟨scalarBool, hScalarEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hScalarBinary.2
  have hScalarLadder := seg45_scalar_ladder rho h scalarBool hScalarEq hdiv
  let scalarTail : Prop := ∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
    Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX45 rho : Seg45.F) (dtkOutY45 rho : Seg45.F))
      251 0 ⟨0, 1⟩ ⟨(rho 195 : Seg45.F), (rho 196 : Seg45.F)⟩
  have hScalarTail : scalarTail := ⟨_, hScalarBinary, hScalarLadder⟩
  have hq4 := seg45_q4_ladder rho h scalarTail hScalarTail
  have hr := seg45_r_ladder rho h scalarTail hq4
  have htail := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build
    (seg45IvkBits rho) (rho 10) scalarTail hr
  change Shieldd.GnarkFormal.DtkBridge.dtkTailK (seg45IvkBits rho) (rho 10) scalarTail at htail
  have hposeidon := seg45_poseidon_eq rho h
  have hP0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg45.F) = 0 := by decide
  have hcm : (5602780471396575806509277699913763570037463653793953144491313093258883571225 : Seg45.F) = -2841681278031794617739547238867782961338435681360110683443920362658525667816 := by decide
  have hcanon1 := seg45Canon1_canonical rho h
  have hcanon2 := seg45Canon2_canonical rho h
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r534, r535, r536, r537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, r1044, r1045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1317, r1318, r1319, r1320, r1321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow0 at r0
  unfold Seg45.relationRow1 at r1
  unfold Seg45.relationRow2 at r2
  unfold Seg45.relationRow3 at r3
  unfold Seg45.relationRow4 at r4
  unfold Seg45.relationRow5 at r5
  unfold Seg45.relationRow6 at r6
  unfold Seg45.relationRow7 at r7
  unfold Seg45.relationRow8 at r8
  unfold Seg45.relationRow9 at r9
  unfold Seg45.relationRow10 at r10
  unfold Seg45.relationRow11 at r11
  unfold Seg45.relationRow12 at r12
  unfold Seg45.relationRow13 at r13
  unfold Seg45.relationRow14 at r14
  unfold Seg45.relationRow15 at r15
  unfold Seg45.relationRow16 at r16
  unfold Seg45.relationRow17 at r17
  unfold Seg45.relationRow18 at r18
  unfold Seg45.relationRow19 at r19
  unfold Seg45.relationRow20 at r20
  unfold Seg45.relationRow21 at r21
  unfold Seg45.relationRow22 at r22
  unfold Seg45.relationRow23 at r23
  unfold Seg45.relationRow24 at r24
  unfold Seg45.relationRow25 at r25
  unfold Seg45.relationRow26 at r26
  unfold Seg45.relationRow27 at r27
  unfold Seg45.relationRow534 at r534
  unfold Seg45.relationRow535 at r535
  unfold Seg45.relationRow536 at r536
  unfold Seg45.relationRow537 at r537
  unfold Seg45.relationRow1044 at r1044
  unfold Seg45.relationRow1045 at r1045
  unfold Seg45.relationRow1317 at r1317
  unfold Seg45.relationRow1318 at r1318
  unfold Seg45.relationRow1319 at r1319
  unfold Seg45.relationRow1320 at r1320
  unfold Seg45.relationRow1321 at r1321
  have hws : GatesDef.is_bool (rho 38750) :=
    is_bool_of_row _ (by linear_combination r8)
  have hz : GatesDef.is_zero (rho 38749) (rho 38752) := by
    refine is_zero_of_hint _ (rho 38753) _ ?_ ?_
    · linear_combination -r9
    · linear_combination r10
  have hzBool : GatesDef.is_bool (rho 38752) :=
    is_bool_of_row _ (by linear_combination r18)
  have hsel15 : GatesDef.select (rho 38752) 1 (rho 38749) (rho 38749 + rho 38754) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r11
  have hinv : GatesDef.inv (rho 38749 + rho 38754) (rho 38755) :=
    inv_of_mul _ _ (by linear_combination r12)
  have hnotWs : GatesDef.is_bool (1 - rho 38750) := by
    unfold GatesDef.is_bool
    linear_combination r8
  have hnotZ : GatesDef.is_bool (1 - rho 38752) := by
    unfold GatesDef.is_bool
    linear_combination r18
  have hand22 : GatesDef.and (1 - rho 38750) (rho 38752) (rho 38758) := by
    refine and_of_row _ _ _ hnotWs hzBool ?_
    linear_combination -r17
  have hand23 : GatesDef.and (1 - rho 38750) (1 - rho 38752) (rho 38759) := by
    refine and_of_row _ _ _ hnotWs hnotZ ?_
    linear_combination -r19
  unfold Shieldd.GnarkFormal.DtkBridge.dtkSeg0
  simp only [Shieldd.GnarkFormal.Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq]
  refine ⟨rho 38743, (by first | linear_combination r0 | linear_combination -r0),
    rho 38744, (by first | linear_combination r1 | linear_combination -r1),
    rho 38744 - rho 38743, rfl, (3021 : Seg45.F) * rho 38743, rfl,
    rho 38745, (by first | linear_combination r2 | linear_combination -r2), (1 : Seg45.F) + rho 38745, rfl,
    (by first | linear_combination r3 | linear_combination -r3),
    rho 195 * rho 195, rfl,
    rho 196 * rho 196, rfl,
    rho 196 * rho 196 - rho 195 * rho 195, rfl,
    (3021 : Seg45.F) * (rho 195 * rho 195), rfl,
    (3021 : Seg45.F) * (rho 195 * rho 195) * (rho 196 * rho 196), rfl,
    (1 : Seg45.F) + (3021 : Seg45.F) * (rho 195 * rho 195) * (rho 196 * rho 196), rfl,
    (by have h' := hdiv; simp only [Specs.onCurveAt] at h'; linear_combination h'),
    rho 38748, (by first | linear_combination r6 | linear_combination -r6), rho 38744, (by first | linear_combination r1 | linear_combination -r1),
    rho 38744 - rho 38748, rfl, (3021 : Seg45.F) * rho 38748, rfl,
    rho 38745, (by first | linear_combination r2 + (3021 : Seg45.F) * rho 38744 * (r6 - r0) | linear_combination r2 - (3021 : Seg45.F) * rho 38744 * (r6 - r0) | linear_combination -r2 + (3021 : Seg45.F) * rho 38744 * (r6 - r0) | linear_combination -r2 - (3021 : Seg45.F) * rho 38744 * (r6 - r0)),
    (1 : Seg45.F) + rho 38745, rfl, (by first | linear_combination r3 + (r6 - r0) | linear_combination r3 - (r6 - r0) | linear_combination -r3 + (r6 - r0) | linear_combination -r3 - (r6 - r0)),
    rho 38746, (by first | linear_combination r4 | linear_combination -r4),
    rho 6 + rho 38746, rfl, rho 6 - rho 38746, rfl,
    rho 38747, (by first | linear_combination r5 | linear_combination -r5), (-3022 : Seg45.F) * rho 38747, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg45.F) = -3022 from by decide]; ring)),
    rho 38749, (by first | linear_combination r7 | linear_combination -r7), hws, rho 38752, hz,
    rho 38749 + rho 38754, hsel15, rho 38755, hinv,
    rho 38756, (by first | linear_combination r13 | linear_combination -r13), rho 38757, (by first | linear_combination r14 | linear_combination -r14), (by first | linear_combination r15 | linear_combination -r15),
    (1 : Seg45.F) - rho 38750, rfl, (1 : Seg45.F) - rho 38752, rfl, rho 38758, hand22,
    rho 38759, hand23, rho 38756 - rho 38755, rfl,
    rho 38760, (by first | linear_combination r20 | linear_combination -r20), (by first | linear_combination r21 | linear_combination -r21),
    rho 38761, (by first | linear_combination r22 | linear_combination -r22), (by first | linear_combination r23 | linear_combination -r23),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg45.F) * rho 38755, rfl,
    rho 38756 - (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg45.F) * rho 38755, rfl,
    rho 38762, (by simp only [hcm] at r24 ⊢; first | linear_combination r24 | linear_combination -r24 | linear_combination (2 : Seg45.F) * r24 | linear_combination (-2 : Seg45.F) * r24 | linear_combination (3 : Seg45.F) * r24 | linear_combination (-3 : Seg45.F) * r24 | linear_combination (4 : Seg45.F) * r24 | linear_combination (-4 : Seg45.F) * r24), (by first | linear_combination r25 | linear_combination -r25),
    rho 38750 + rho 38758, rfl, rho 38750 + rho 38758 + rho 38759, rfl,
    (by first | linear_combination r26 | linear_combination -r26), rho 38763, (by first | linear_combination r27 | linear_combination -r27), ?_⟩
  apply hcanon1
  have hb1 : (seg45Canon1Bits rho)[0]! = rho 38764 :=
    seg45Canon1Bits_get rho 0 (by omega)
  have hb1Bool : GatesDef.is_bool (1 - rho 38764) := by
    unfold GatesDef.is_bool
    first | linear_combination r534 | linear_combination -r534
  have hsel40 : GatesDef.select (1 - rho 38764) (rho 38763) (-rho 38763) (rho 39103 - rho 38763) := by
    refine select_of_row _ _ _ _ hb1Bool ?_
    first | linear_combination r535 | linear_combination -r535
  refine ⟨(1 : Seg45.F) - rho 38764, (by simpa [hb1]), -rho 38763, (by ring),
    rho 39103 - rho 38763, hsel40,
    rho 39103 - rho 38763 - rho 38746, rfl,
    (-3022 : Seg45.F) * rho 38751, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg45.F) = -3022 from by decide]; ring)), rho 39104, (by first | linear_combination r536 | linear_combination -r536),
    rho 39105, (by first | linear_combination r537 | linear_combination -r537), ?_⟩
  apply hcanon2
  have hb2 : (seg45Canon2Bits rho)[0]! = rho 39106 :=
    seg45Canon2Bits_get rho 0 (by omega)
  have hb2Bool : GatesDef.is_bool (1 - rho 39106) := by
    unfold GatesDef.is_bool
    first | linear_combination r1044 | linear_combination -r1044
  have hsel48 : GatesDef.select (1 - rho 39106) (rho 39105) (-rho 39105) (rho 39445 - rho 39105) := by
    refine select_of_row _ _ _ _ hb2Bool ?_
    first | linear_combination r1045 | linear_combination -r1045
  refine ⟨(1 : Seg45.F) - rho 39106, (by simpa [hb2]), -rho 39105, (by ring),
    rho 39445 - rho 39105, hsel48, ?_⟩
  refine Shieldd.GnarkFormal.DtkBridge.perm2_intro ?_
  refine ⟨(2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg45.F) * rho 10, rfl,
    (2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg45.F) * rho 10 + rho 9, rfl,
    (by first | linear_combination hposeidon | linear_combination (2 : Seg45.F) * hposeidon | linear_combination -hposeidon | linear_combination (-2 : Seg45.F) * hposeidon), rho 10 - (1 : Seg45.F), rfl,
    rho 39716, (by first | linear_combination r1317 | linear_combination -r1317), rho 10 - (2 : Seg45.F), rfl,
    rho 39717, (by first | linear_combination r1318 | linear_combination -r1318), rho 10 - (3 : Seg45.F), rfl,
    rho 39718, (by first | linear_combination r1319 | linear_combination -r1319), rho 10 - (4 : Seg45.F), rfl,
    rho 39719, (by first | linear_combination r1320 | linear_combination -r1320), (by first | linear_combination r1321 | linear_combination -r1321),
    seg45IvkBits rho, hIvkBinary, ?_⟩
  simpa [scalarTail] using htail

theorem seg45_sound (rho : Nat -> Seg45.F) (h : Seg45.relation rho) : Specs.deployedSpec45 rho := by
  intro hdiv
  have hseg0 := seg45_dtkSeg0 rho h hdiv
  have hcircuit := Shieldd.GnarkFormal.Deployed.Dtk.dtk_circuit_of_seg0
    (rho 8) (rho 6) (rho 7) (rho 195) (rho 196)
    (rho 38750) (rho 38751) (rho 9) (rho 10)
    (dtkOutX45 rho : Seg45.F) (dtkOutY45 rho : Seg45.F) hseg0
  apply Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_sound
    (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 195, rho 196⟩ (rho 9) (rho 10)
    ⟨dtkOutX45 rho, dtkOutY45 rho⟩
  · simpa only [Specs.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using hdiv
  · exact ⟨rho 38750, rho 38751, hcircuit⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
