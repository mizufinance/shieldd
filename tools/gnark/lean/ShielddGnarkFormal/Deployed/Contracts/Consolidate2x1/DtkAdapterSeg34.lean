import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Lt
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Poseidon
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Scalar
import ShielddGnarkFormal.Deployed.Dtk.Compose
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs
open Shieldd.GnarkFormal.DeployedGadgets

theorem seg34_dtkSeg0 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (hdiv : Specs.onCurveAt (rho 107) (rho 108)) :
    Shieldd.GnarkFormal.DtkBridge.dtkSeg0
      (rho 8) (rho 6) (rho 7) (rho 107) (rho 108)
      (rho 31794) (rho 31795) (rho 9) (rho 10)
      (fun ivkBits => Shieldd.GnarkFormal.DtkBridge.dtkTailK ivkBits (rho 10)
        (∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
          Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
            (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
              (dtkOutX34 rho : Seg34.F) (dtkOutY34 rho : Seg34.F))
            251 0 ⟨0, 1⟩ ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩)) := by
  have hIvkBinary := seg34Ivk_toBinary rho h
  have hScalarBinary := seg34Scalar_toBinary rho h
  obtain ⟨scalarBool, hScalarEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hScalarBinary.2
  have hScalarLadder := seg34_scalar_ladder rho h scalarBool hScalarEq hdiv
  let scalarTail : Prop := ∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
    Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX34 rho : Seg34.F) (dtkOutY34 rho : Seg34.F))
      251 0 ⟨0, 1⟩ ⟨(rho 107 : Seg34.F), (rho 108 : Seg34.F)⟩
  have hScalarTail : scalarTail := ⟨_, hScalarBinary, hScalarLadder⟩
  have hq4 := seg34_q4_ladder rho h scalarTail hScalarTail
  have hr := seg34_r_ladder rho h scalarTail hq4
  have htail := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build
    (seg34IvkBits rho) (rho 10) scalarTail hr
  change Shieldd.GnarkFormal.DtkBridge.dtkTailK (seg34IvkBits rho) (rho 10) scalarTail at htail
  have hposeidon := seg34_poseidon_eq rho h
  have hP0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg34.F) = 0 := by decide
  have hcm : (5602780471396575806509277699913763570037463653793953144491313093258883571225 : Seg34.F) = -2841681278031794617739547238867782961338435681360110683443920362658525667816 := by decide
  have hcanon1 := seg34Canon1_canonical rho h
  have hcanon2 := seg34Canon2_canonical rho h
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r534, r535, r536, r537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, r1044, r1045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1317, r1318, r1319, r1320, r1321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow0 at r0
  unfold Seg34.relationRow1 at r1
  unfold Seg34.relationRow2 at r2
  unfold Seg34.relationRow3 at r3
  unfold Seg34.relationRow4 at r4
  unfold Seg34.relationRow5 at r5
  unfold Seg34.relationRow6 at r6
  unfold Seg34.relationRow7 at r7
  unfold Seg34.relationRow8 at r8
  unfold Seg34.relationRow9 at r9
  unfold Seg34.relationRow10 at r10
  unfold Seg34.relationRow11 at r11
  unfold Seg34.relationRow12 at r12
  unfold Seg34.relationRow13 at r13
  unfold Seg34.relationRow14 at r14
  unfold Seg34.relationRow15 at r15
  unfold Seg34.relationRow16 at r16
  unfold Seg34.relationRow17 at r17
  unfold Seg34.relationRow18 at r18
  unfold Seg34.relationRow19 at r19
  unfold Seg34.relationRow20 at r20
  unfold Seg34.relationRow21 at r21
  unfold Seg34.relationRow22 at r22
  unfold Seg34.relationRow23 at r23
  unfold Seg34.relationRow24 at r24
  unfold Seg34.relationRow25 at r25
  unfold Seg34.relationRow26 at r26
  unfold Seg34.relationRow27 at r27
  unfold Seg34.relationRow534 at r534
  unfold Seg34.relationRow535 at r535
  unfold Seg34.relationRow536 at r536
  unfold Seg34.relationRow537 at r537
  unfold Seg34.relationRow1044 at r1044
  unfold Seg34.relationRow1045 at r1045
  unfold Seg34.relationRow1317 at r1317
  unfold Seg34.relationRow1318 at r1318
  unfold Seg34.relationRow1319 at r1319
  unfold Seg34.relationRow1320 at r1320
  unfold Seg34.relationRow1321 at r1321
  have hws : GatesDef.is_bool (rho 31794) :=
    is_bool_of_row _ (by linear_combination r8)
  have hz : GatesDef.is_zero (rho 31793) (rho 31796) := by
    refine is_zero_of_hint _ (rho 31797) _ ?_ ?_
    · linear_combination -r9
    · linear_combination r10
  have hzBool : GatesDef.is_bool (rho 31796) :=
    is_bool_of_row _ (by linear_combination r18)
  have hsel15 : GatesDef.select (rho 31796) 1 (rho 31793) (rho 31793 + rho 31798) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r11
  have hinv : GatesDef.inv (rho 31793 + rho 31798) (rho 31799) :=
    inv_of_mul _ _ (by linear_combination r12)
  have hnotWs : GatesDef.is_bool (1 - rho 31794) := by
    unfold GatesDef.is_bool
    linear_combination r8
  have hnotZ : GatesDef.is_bool (1 - rho 31796) := by
    unfold GatesDef.is_bool
    linear_combination r18
  have hand22 : GatesDef.and (1 - rho 31794) (rho 31796) (rho 31802) := by
    refine and_of_row _ _ _ hnotWs hzBool ?_
    linear_combination -r17
  have hand23 : GatesDef.and (1 - rho 31794) (1 - rho 31796) (rho 31803) := by
    refine and_of_row _ _ _ hnotWs hnotZ ?_
    linear_combination -r19
  unfold Shieldd.GnarkFormal.DtkBridge.dtkSeg0
  simp only [Shieldd.GnarkFormal.Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq]
  refine ⟨rho 31787, (by first | linear_combination r0 | linear_combination -r0),
    rho 31788, (by first | linear_combination r1 | linear_combination -r1),
    rho 31788 - rho 31787, rfl, (3021 : Seg34.F) * rho 31787, rfl,
    rho 31789, (by first | linear_combination r2 | linear_combination -r2), (1 : Seg34.F) + rho 31789, rfl,
    (by first | linear_combination r3 | linear_combination -r3),
    rho 107 * rho 107, rfl,
    rho 108 * rho 108, rfl,
    rho 108 * rho 108 - rho 107 * rho 107, rfl,
    (3021 : Seg34.F) * (rho 107 * rho 107), rfl,
    (3021 : Seg34.F) * (rho 107 * rho 107) * (rho 108 * rho 108), rfl,
    (1 : Seg34.F) + (3021 : Seg34.F) * (rho 107 * rho 107) * (rho 108 * rho 108), rfl,
    (by have h' := hdiv; simp only [Specs.onCurveAt] at h'; linear_combination h'),
    rho 31792, (by first | linear_combination r6 | linear_combination -r6), rho 31788, (by first | linear_combination r1 | linear_combination -r1),
    rho 31788 - rho 31792, rfl, (3021 : Seg34.F) * rho 31792, rfl,
    rho 31789, (by first | linear_combination r2 + (3021 : Seg34.F) * rho 31788 * (r6 - r0) | linear_combination r2 - (3021 : Seg34.F) * rho 31788 * (r6 - r0) | linear_combination -r2 + (3021 : Seg34.F) * rho 31788 * (r6 - r0) | linear_combination -r2 - (3021 : Seg34.F) * rho 31788 * (r6 - r0)),
    (1 : Seg34.F) + rho 31789, rfl, (by first | linear_combination r3 + (r6 - r0) | linear_combination r3 - (r6 - r0) | linear_combination -r3 + (r6 - r0) | linear_combination -r3 - (r6 - r0)),
    rho 31790, (by first | linear_combination r4 | linear_combination -r4),
    rho 6 + rho 31790, rfl, rho 6 - rho 31790, rfl,
    rho 31791, (by first | linear_combination r5 | linear_combination -r5), (-3022 : Seg34.F) * rho 31791, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg34.F) = -3022 from by decide]; ring)),
    rho 31793, (by first | linear_combination r7 | linear_combination -r7), hws, rho 31796, hz,
    rho 31793 + rho 31798, hsel15, rho 31799, hinv,
    rho 31800, (by first | linear_combination r13 | linear_combination -r13), rho 31801, (by first | linear_combination r14 | linear_combination -r14), (by first | linear_combination r15 | linear_combination -r15),
    (1 : Seg34.F) - rho 31794, rfl, (1 : Seg34.F) - rho 31796, rfl, rho 31802, hand22,
    rho 31803, hand23, rho 31800 - rho 31799, rfl,
    rho 31804, (by first | linear_combination r20 | linear_combination -r20), (by first | linear_combination r21 | linear_combination -r21),
    rho 31805, (by first | linear_combination r22 | linear_combination -r22), (by first | linear_combination r23 | linear_combination -r23),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg34.F) * rho 31799, rfl,
    rho 31800 - (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg34.F) * rho 31799, rfl,
    rho 31806, (by simp only [hcm] at r24 ⊢; first | linear_combination r24 | linear_combination -r24 | linear_combination (2 : Seg34.F) * r24 | linear_combination (-2 : Seg34.F) * r24 | linear_combination (3 : Seg34.F) * r24 | linear_combination (-3 : Seg34.F) * r24 | linear_combination (4 : Seg34.F) * r24 | linear_combination (-4 : Seg34.F) * r24), (by first | linear_combination r25 | linear_combination -r25),
    rho 31794 + rho 31802, rfl, rho 31794 + rho 31802 + rho 31803, rfl,
    (by first | linear_combination r26 | linear_combination -r26), rho 31807, (by first | linear_combination r27 | linear_combination -r27), ?_⟩
  apply hcanon1
  have hb1 : (seg34Canon1Bits rho)[0]! = rho 31808 :=
    seg34Canon1Bits_get rho 0 (by omega)
  have hb1Bool : GatesDef.is_bool (1 - rho 31808) := by
    unfold GatesDef.is_bool
    first | linear_combination r534 | linear_combination -r534
  have hsel40 : GatesDef.select (1 - rho 31808) (rho 31807) (-rho 31807) (rho 32147 - rho 31807) := by
    refine select_of_row _ _ _ _ hb1Bool ?_
    first | linear_combination r535 | linear_combination -r535
  refine ⟨(1 : Seg34.F) - rho 31808, (by simpa [hb1]), -rho 31807, (by ring),
    rho 32147 - rho 31807, hsel40,
    rho 32147 - rho 31807 - rho 31790, rfl,
    (-3022 : Seg34.F) * rho 31795, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg34.F) = -3022 from by decide]; ring)), rho 32148, (by first | linear_combination r536 | linear_combination -r536),
    rho 32149, (by first | linear_combination r537 | linear_combination -r537), ?_⟩
  apply hcanon2
  have hb2 : (seg34Canon2Bits rho)[0]! = rho 32150 :=
    seg34Canon2Bits_get rho 0 (by omega)
  have hb2Bool : GatesDef.is_bool (1 - rho 32150) := by
    unfold GatesDef.is_bool
    first | linear_combination r1044 | linear_combination -r1044
  have hsel48 : GatesDef.select (1 - rho 32150) (rho 32149) (-rho 32149) (rho 32489 - rho 32149) := by
    refine select_of_row _ _ _ _ hb2Bool ?_
    first | linear_combination r1045 | linear_combination -r1045
  refine ⟨(1 : Seg34.F) - rho 32150, (by simpa [hb2]), -rho 32149, (by ring),
    rho 32489 - rho 32149, hsel48, ?_⟩
  refine Shieldd.GnarkFormal.DtkBridge.perm2_intro ?_
  refine ⟨(2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg34.F) * rho 10, rfl,
    (2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg34.F) * rho 10 + rho 9, rfl,
    (by linear_combination hposeidon), rho 10 - (1 : Seg34.F), rfl,
    rho 32760, (by first | linear_combination r1317 | linear_combination -r1317), rho 10 - (2 : Seg34.F), rfl,
    rho 32761, (by first | linear_combination r1318 | linear_combination -r1318), rho 10 - (3 : Seg34.F), rfl,
    rho 32762, (by first | linear_combination r1319 | linear_combination -r1319), rho 10 - (4 : Seg34.F), rfl,
    rho 32763, (by first | linear_combination r1320 | linear_combination -r1320), (by first | linear_combination r1321 | linear_combination -r1321),
    seg34IvkBits rho, hIvkBinary, ?_⟩
  simpa [scalarTail] using htail

theorem seg34_sound (rho : Nat -> Seg34.F) (h : Seg34.relation rho) : Specs.deployedSpec34 rho := by
  intro hdiv
  have hseg0 := seg34_dtkSeg0 rho h hdiv
  have hcircuit := Shieldd.GnarkFormal.Deployed.Dtk.dtk_circuit_of_seg0
    (rho 8) (rho 6) (rho 7) (rho 107) (rho 108)
    (rho 31794) (rho 31795) (rho 9) (rho 10)
    (dtkOutX34 rho : Seg34.F) (dtkOutY34 rho : Seg34.F) hseg0
  apply Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_sound
    (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 107, rho 108⟩ (rho 9) (rho 10)
    ⟨dtkOutX34 rho, dtkOutY34 rho⟩
  · simpa only [Specs.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using hdiv
  · exact ⟨rho 31794, rho 31795, hcircuit⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
