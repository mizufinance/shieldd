import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Lt
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Poseidon
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Scalar
import ShielddGnarkFormal.Deployed.Dtk.Compose
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs
open Shieldd.GnarkFormal.DeployedGadgets

theorem seg6_dtkSeg0 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (hdiv : Specs.onCurveAt (rho 17) (rho 18)) :
    Shieldd.GnarkFormal.DtkBridge.dtkSeg0
      (rho 8) (rho 6) (rho 7) (rho 17) (rho 18)
      (rho 914) (rho 915) (rho 9) (rho 10)
      (fun ivkBits => Shieldd.GnarkFormal.DtkBridge.dtkTailK ivkBits (rho 10)
        (∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
          Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
            (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
              (dtkOutX6 rho : Seg6.F) (dtkOutY6 rho : Seg6.F))
            251 0 ⟨0, 1⟩ ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩)) := by
  have hIvkBinary := seg6Ivk_toBinary rho h
  have hq4T := seg6_q4_ladder rho h True trivial
  have hrT := seg6_r_ladder rho h True hq4T
  have htailT := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build
    (seg6IvkBits rho) (rho 10) True hrT
  change Shieldd.GnarkFormal.DtkBridge.dtkTailK (seg6IvkBits rho) (rho 10) True at htailT
  have hladders := (Shieldd.GnarkFormal.DtkBridge.dtkTailK_laddersTail
    _ _ _ htailT).1
  have hScalarBinary : GatesDef.to_binary (rho 9) 251 (seg6ScalarBits rho) :=
    Shieldd.GnarkFormal.Extracted.IvkModR.laddersTail_to_binary_251 (rho 10) (rho 9)
      (seg6IvkBits rho) (seg6ScalarBits rho) hIvkBinary hladders
      (by
        intro i
        simp only [seg6ScalarBits, seg6IvkBits, List.Vector.get_ofFn,
          List.Vector.getElem_def, List.Vector.toList_ofFn, List.getElem_ofFn])
  obtain ⟨scalarBool, hScalarEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hScalarBinary.2
  have hScalarLadder := seg6_scalar_ladder rho h scalarBool hScalarEq hdiv
  let scalarTail : Prop := ∃ scalarBits, GatesDef.to_binary (rho 9) 251 scalarBits ∧
    Shieldd.GnarkFormal.DtkBridge.dtkLadderK scalarBits
      (Shieldd.GnarkFormal.ScalarMulBridge.finalKWithOutputCurve
        (dtkOutX6 rho : Seg6.F) (dtkOutY6 rho : Seg6.F))
      251 0 ⟨0, 1⟩ ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩
  have hScalarTail : scalarTail := ⟨_, hScalarBinary, hScalarLadder⟩
  have hq4 := seg6_q4_ladder rho h scalarTail hScalarTail
  have hr := seg6_r_ladder rho h scalarTail hq4
  have htail := Shieldd.GnarkFormal.DtkBridge.dtkSeg1_build
    (seg6IvkBits rho) (rho 10) scalarTail hr
  change Shieldd.GnarkFormal.DtkBridge.dtkTailK (seg6IvkBits rho) (rho 10) scalarTail at htail
  have hposeidon := seg6_poseidon_eq rho h
  have hP0 : (8444461749428370424248824938781546531375899335154063827935233455917409239041 : Seg6.F) = 0 := by decide
  have hcm : (5602780471396575806509277699913763570037463653793953144491313093258883571225 : Seg6.F) = -2841681278031794617739547238867782961338435681360110683443920362658525667816 := by decide
  have hcanon1 := seg6Canon1_canonical rho h
  have hcanon2 := seg6Canon2_canonical rho h
  unfold Seg6.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, p6, _, _, _,
    _, _, _, p13, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart0 at p0
  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r534, r535, r536, r537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, r1044, r1045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1317, r1318, r1319, r1320, r1321, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow0 at r0
  unfold Seg6.relationRow1 at r1
  unfold Seg6.relationRow2 at r2
  unfold Seg6.relationRow3 at r3
  unfold Seg6.relationRow4 at r4
  unfold Seg6.relationRow5 at r5
  unfold Seg6.relationRow6 at r6
  unfold Seg6.relationRow7 at r7
  unfold Seg6.relationRow8 at r8
  unfold Seg6.relationRow9 at r9
  unfold Seg6.relationRow10 at r10
  unfold Seg6.relationRow11 at r11
  unfold Seg6.relationRow12 at r12
  unfold Seg6.relationRow13 at r13
  unfold Seg6.relationRow14 at r14
  unfold Seg6.relationRow15 at r15
  unfold Seg6.relationRow16 at r16
  unfold Seg6.relationRow17 at r17
  unfold Seg6.relationRow18 at r18
  unfold Seg6.relationRow19 at r19
  unfold Seg6.relationRow20 at r20
  unfold Seg6.relationRow21 at r21
  unfold Seg6.relationRow22 at r22
  unfold Seg6.relationRow23 at r23
  unfold Seg6.relationRow24 at r24
  unfold Seg6.relationRow25 at r25
  unfold Seg6.relationRow26 at r26
  unfold Seg6.relationRow27 at r27
  unfold Seg6.relationRow534 at r534
  unfold Seg6.relationRow535 at r535
  unfold Seg6.relationRow536 at r536
  unfold Seg6.relationRow537 at r537
  unfold Seg6.relationRow1044 at r1044
  unfold Seg6.relationRow1045 at r1045
  unfold Seg6.relationRow1317 at r1317
  unfold Seg6.relationRow1318 at r1318
  unfold Seg6.relationRow1319 at r1319
  unfold Seg6.relationRow1320 at r1320
  unfold Seg6.relationRow1321 at r1321
  have hws : GatesDef.is_bool (rho 914) :=
    is_bool_of_row _ (by linear_combination r8)
  have hz : GatesDef.is_zero (rho 913) (rho 916) := by
    refine is_zero_of_hint _ (rho 917) _ ?_ ?_
    · linear_combination -r9
    · linear_combination r10
  have hzBool : GatesDef.is_bool (rho 916) :=
    is_bool_of_row _ (by linear_combination r18)
  have hsel15 : GatesDef.select (rho 916) 1 (rho 913) (rho 913 + rho 918) := by
    refine select_of_row _ _ _ _ hzBool ?_
    linear_combination -r11
  have hinv : GatesDef.inv (rho 913 + rho 918) (rho 919) :=
    inv_of_mul _ _ (by linear_combination r12)
  have hnotWs : GatesDef.is_bool (1 - rho 914) := by
    unfold GatesDef.is_bool
    linear_combination r8
  have hnotZ : GatesDef.is_bool (1 - rho 916) := by
    unfold GatesDef.is_bool
    linear_combination r18
  have hand22 : GatesDef.and (1 - rho 914) (rho 916) (rho 922) := by
    refine and_of_row _ _ _ hnotWs hzBool ?_
    linear_combination -r17
  have hand23 : GatesDef.and (1 - rho 914) (1 - rho 916) (rho 923) := by
    refine and_of_row _ _ _ hnotWs hnotZ ?_
    linear_combination -r19
  unfold Shieldd.GnarkFormal.DtkBridge.dtkSeg0
  simp only [Shieldd.GnarkFormal.Extracted.DecafDtk.Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub, GatesDef.neg, GatesDef.eq]
  refine ⟨rho 907, (by first | linear_combination r0 | linear_combination -r0),
    rho 908, (by first | linear_combination r1 | linear_combination -r1),
    rho 908 - rho 907, rfl, (3021 : Seg6.F) * rho 907, rfl,
    rho 909, (by first | linear_combination r2 | linear_combination -r2), (1 : Seg6.F) + rho 909, rfl,
    (by first | linear_combination r3 | linear_combination -r3),
    rho 17 * rho 17, rfl,
    rho 18 * rho 18, rfl,
    rho 18 * rho 18 - rho 17 * rho 17, rfl,
    (3021 : Seg6.F) * (rho 17 * rho 17), rfl,
    (3021 : Seg6.F) * (rho 17 * rho 17) * (rho 18 * rho 18), rfl,
    (1 : Seg6.F) + (3021 : Seg6.F) * (rho 17 * rho 17) * (rho 18 * rho 18), rfl,
    (by have h' := hdiv; simp only [Specs.onCurveAt] at h'; linear_combination h'),
    rho 912, (by first | linear_combination r6 | linear_combination -r6), rho 908, (by first | linear_combination r1 | linear_combination -r1),
    rho 908 - rho 912, rfl, (3021 : Seg6.F) * rho 912, rfl,
    rho 909, (by first | linear_combination r2 + (3021 : Seg6.F) * rho 908 * (r6 - r0) | linear_combination r2 - (3021 : Seg6.F) * rho 908 * (r6 - r0) | linear_combination -r2 + (3021 : Seg6.F) * rho 908 * (r6 - r0) | linear_combination -r2 - (3021 : Seg6.F) * rho 908 * (r6 - r0)),
    (1 : Seg6.F) + rho 909, rfl, (by first | linear_combination r3 + (r6 - r0) | linear_combination r3 - (r6 - r0) | linear_combination -r3 + (r6 - r0) | linear_combination -r3 - (r6 - r0)),
    rho 910, (by first | linear_combination r4 | linear_combination -r4),
    rho 6 + rho 910, rfl, rho 6 - rho 910, rfl,
    rho 911, (by first | linear_combination r5 | linear_combination -r5), (-3022 : Seg6.F) * rho 911, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg6.F) = -3022 from by decide]; ring)),
    rho 913, (by first | linear_combination r7 | linear_combination -r7), hws, rho 916, hz,
    rho 913 + rho 918, hsel15, rho 919, hinv,
    rho 920, (by first | linear_combination r13 | linear_combination -r13), rho 921, (by first | linear_combination r14 | linear_combination -r14), (by first | linear_combination r15 | linear_combination -r15),
    (1 : Seg6.F) - rho 914, rfl, (1 : Seg6.F) - rho 916, rfl, rho 922, hand22,
    rho 923, hand23, rho 920 - rho 919, rfl,
    rho 924, (by first | linear_combination r20 | linear_combination -r20), (by first | linear_combination r21 | linear_combination -r21),
    rho 925, (by first | linear_combination r22 | linear_combination -r22), (by first | linear_combination r23 | linear_combination -r23),
    (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg6.F) * rho 919, rfl,
    rho 920 - (2841681278031794617739547238867782961338435681360110683443920362658525667816 : Seg6.F) * rho 919, rfl,
    rho 926, (by simp only [hcm] at r24 ⊢; first | linear_combination r24 | linear_combination -r24 | linear_combination (2 : Seg6.F) * r24 | linear_combination (-2 : Seg6.F) * r24 | linear_combination (3 : Seg6.F) * r24 | linear_combination (-3 : Seg6.F) * r24 | linear_combination (4 : Seg6.F) * r24 | linear_combination (-4 : Seg6.F) * r24), (by first | linear_combination r25 | linear_combination -r25),
    rho 914 + rho 922, rfl, rho 914 + rho 922 + rho 923, rfl,
    (by first | linear_combination r26 | linear_combination -r26), rho 927, (by first | linear_combination r27 | linear_combination -r27), ?_⟩
  apply hcanon1
  have hb1 : (seg6Canon1Bits rho)[0]! = rho 928 :=
    seg6Canon1Bits_get rho 0 (by omega)
  have hb1Bool : GatesDef.is_bool (1 - rho 928) := by
    unfold GatesDef.is_bool
    first | linear_combination r534 | linear_combination -r534
  have hsel40 : GatesDef.select (1 - rho 928) (rho 927) (-rho 927) (rho 1267 - rho 927) := by
    refine select_of_row _ _ _ _ hb1Bool ?_
    first | linear_combination r535 | linear_combination -r535
  refine ⟨(1 : Seg6.F) - rho 928, (by simpa [hb1]), -rho 927, (by ring),
    rho 1267 - rho 927, hsel40,
    rho 1267 - rho 927 - rho 910, rfl,
    (-3022 : Seg6.F) * rho 915, (by first | rfl | (rw [show (8444461749428370424248824938781546531375899335154063827935233455917409236019 : Seg6.F) = -3022 from by decide]; ring)), rho 1268, (by first | linear_combination r536 | linear_combination -r536),
    rho 1269, (by first | linear_combination r537 | linear_combination -r537), ?_⟩
  apply hcanon2
  have hb2 : (seg6Canon2Bits rho)[0]! = rho 1270 :=
    seg6Canon2Bits_get rho 0 (by omega)
  have hb2Bool : GatesDef.is_bool (1 - rho 1270) := by
    unfold GatesDef.is_bool
    first | linear_combination r1044 | linear_combination -r1044
  have hsel48 : GatesDef.select (1 - rho 1270) (rho 1269) (-rho 1269) (rho 1609 - rho 1269) := by
    refine select_of_row _ _ _ _ hb2Bool ?_
    first | linear_combination r1045 | linear_combination -r1045
  refine ⟨(1 : Seg6.F) - rho 1270, (by simpa [hb2]), -rho 1269, (by ring),
    rho 1609 - rho 1269, hsel48, ?_⟩
  refine Shieldd.GnarkFormal.DtkBridge.perm2_intro ?_
  refine ⟨(2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg6.F) * rho 10, rfl,
    (2111115437357092606062206234695386632838870926408408195193685246394721360383 : Seg6.F) * rho 10 + rho 9, rfl,
    (by first | linear_combination hposeidon | linear_combination (2 : Seg6.F) * hposeidon | linear_combination -hposeidon | linear_combination (-2 : Seg6.F) * hposeidon), rho 10 - (1 : Seg6.F), rfl,
    rho 1880, (by first | linear_combination r1317 | linear_combination -r1317), rho 10 - (2 : Seg6.F), rfl,
    rho 1881, (by first | linear_combination r1318 | linear_combination -r1318), rho 10 - (3 : Seg6.F), rfl,
    rho 1882, (by first | linear_combination r1319 | linear_combination -r1319), rho 10 - (4 : Seg6.F), rfl,
    rho 1883, (by first | linear_combination r1320 | linear_combination -r1320), (by first | linear_combination r1321 | linear_combination -r1321),
    seg6IvkBits rho, hIvkBinary, ?_⟩
  simpa [scalarTail] using htail

theorem seg6_sound (rho : Nat -> Seg6.F) (h : Seg6.relation rho) : Specs.deployedSpec6 rho := by
  intro hdiv
  have hseg0 := seg6_dtkSeg0 rho h hdiv
  have hcircuit := Shieldd.GnarkFormal.Deployed.Dtk.dtk_circuit_of_seg0
    (rho 8) (rho 6) (rho 7) (rho 17) (rho 18)
    (rho 914) (rho 915) (rho 9) (rho 10)
    (dtkOutX6 rho : Seg6.F) (dtkOutY6 rho : Seg6.F) hseg0
  have hdiv' : EdwardsBridge.onCurve ⟨(rho 17 : Seg6.F), (rho 18 : Seg6.F)⟩ := by
    simpa only [Specs.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using hdiv
  have hcircuit' : Shieldd.GnarkFormal.Decaf377Assumptions.DiversifiedTransmissionKeyCircuit
      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 17, rho 18⟩ (rho 9) (rho 10)
      ⟨dtkOutX6 rho, dtkOutY6 rho⟩ :=
    ⟨rho 914, rho 915, hcircuit⟩
  refine ⟨Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_sound
    (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 17, rho 18⟩ (rho 9) (rho 10)
    ⟨dtkOutX6 rho, dtkOutY6 rho⟩ hdiv' hcircuit', ?_⟩
  simpa only [Specs.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d] using
    Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_onCurve
      (rho 8) ⟨rho 6, rho 7⟩ ⟨rho 17, rho 18⟩ (rho 9) (rho 10)
      ⟨dtkOutX6 rho, dtkOutY6 rho⟩ hdiv' hcircuit'

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
