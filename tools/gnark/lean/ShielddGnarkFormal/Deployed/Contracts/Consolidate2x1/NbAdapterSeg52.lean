import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Nb
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52EncodePost
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Adds
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52In1Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Out0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52BlindBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.NetBalanceCommitmentBridge

theorem seg52_nbBody (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    nbBody (rho 45162) (rho 45164) (rho 15) (rho 105) (rho 193) (rho 5)
      (rho 52987) (rho 52988) := by
  have hbase := seg52_value_base_onCurve rho h
  have hIn0Bin := seg52In0Bits_toBinary rho h
  have hIn1Bin := seg52In1Bits_toBinary rho h
  have hOut0Bin := seg52Out0Bits_toBinary rho h
  have hBlindBin := seg52BlindBits_toBinary rho h
  obtain ⟨in0Bool, hIn0Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hIn0Bin.2
  obtain ⟨in1Bool, hIn1Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hIn1Bin.2
  obtain ⟨out0Bool, hOut0Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hOut0Bin.2
  obtain ⟨blindBool, hBlindEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hBlindBin.2
  have hP1On := (seg52In0_ladder rho h in0Bool hIn0Eq (fun _ => True)
    True.intro hbase).2
  have hP2On := (seg52In1_ladder rho h in1Bool hIn1Eq (fun _ => True)
    True.intro hbase).2
  have hP3On := (seg52Out0_ladder rho h out0Bool hOut0Eq (fun _ => True)
    True.intro hbase).2
  have hAdd1 := (seg52_add_inputs rho h hP1On hP2On (fun _ _ => True) True.intro).2
  have hA1Eq := EdwardsBridge.addSpec_eq
    (seg52In0AccState rho 128) (seg52In1AccState rho 128)
    ⟨rho 49384, rho 49385⟩ hP1On hP2On hAdd1
  have hA1On : EdwardsBridge.onCurve ⟨rho 49384, rho 49385⟩ :=
    hA1Eq ▸ EdwardsBridge.add_onCurve _ _ hP1On hP2On
  have hNegOn : EdwardsBridge.onCurve
      ⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩ := by
    simpa [EdwardsBridge.negF] using
      EdwardsBridge.neg_onCurve (seg52Out0AccState rho 128) hP3On
  have hAdd2 := (seg52_add_output rho h hA1On hNegOn (fun _ _ => True) True.intro).2
  have hA2Eq := EdwardsBridge.addSpec_eq ⟨rho 49384, rho 49385⟩
    ⟨-(seg52Out0AccState rho 128).x, (seg52Out0AccState rho 128).y⟩
    ⟨rho 51176, rho 51177⟩ hA1On hNegOn hAdd2
  have hA2On : EdwardsBridge.onCurve ⟨rho 51176, rho 51177⟩ :=
    hA2Eq ▸ EdwardsBridge.add_onCurve _ _ hA1On hNegOn
  have hBlindOn := (seg52Blind_ladder rho h blindBool hBlindEq (fun _ => True)
    True.intro).2
  have hFinalAdd := seg52_final_addSpec rho h hA2On hBlindOn
  have hOutEq := EdwardsBridge.addSpec_eq ⟨rho 51176, rho 51177⟩
    (seg52BlindAccState rho 251) ⟨rho 52987, rho 52988⟩
    hA2On hBlindOn hFinalAdd
  have hOutOn : EdwardsBridge.onCurve ⟨rho 52987, rho 52988⟩ :=
    hOutEq ▸ EdwardsBridge.add_onCurve _ _ hA2On hBlindOn
  have hFinalK : nbFinalK (rho 51176) (rho 51177)
      (seg52BlindAccState rho 251).x (seg52BlindAccState rho 251).y
      (rho 52987) (rho 52988) :=
    nbFinalK_of_addSpec ⟨rho 51176, rho 51177⟩ (seg52BlindAccState rho 251)
      ⟨rho 52987, rho 52988⟩ hFinalAdd hOutOn
  unfold nbBody
  apply Shieldd.GnarkFormal.Deployed.NetBalance.zeroLadderK128
    ⟨rho 45162, rho 45164⟩ hbase
  intro _ _
  refine ⟨seg52In0Bits rho, hIn0Bin, ?_⟩
  refine (seg52In0_ladder rho h in0Bool hIn0Eq _ ?_ hbase).1
  refine ⟨seg52In1Bits rho, hIn1Bin, ?_⟩
  refine (seg52In1_ladder rho h in1Bool hIn1Eq _ ?_ hbase).1
  refine ⟨seg52Out0Bits rho, hOut0Bin, ?_⟩
  refine (seg52Out0_ladder rho h out0Bool hOut0Eq _ ?_ hbase).1
  refine nbAddK_of_addSpec ⟨0, 1⟩ (seg52In0AccState rho 128)
    (seg52In0AccState rho 128) _ 
    (Shieldd.GnarkFormal.Deployed.NetBalance.identity_addSpec _) ?_
  refine (seg52_add_inputs rho h hP1On hP2On _ ?_).1
  refine ⟨-(seg52Out0AccState rho 128).x, ?_, ?_⟩
  · simp [Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8,
      GatesDef.neg]
  refine (seg52_add_output rho h hA1On hNegOn _ ?_).1
  refine ⟨seg52BlindBits rho, hBlindBin, ?_⟩
  refine (seg52Blind_ladder rho h blindBool hBlindEq _ ?_).1
  simpa using hFinalK

theorem seg52_sound (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Specs.deployedSpec52 rho := by
  have hbody := seg52_nbBody rho h
  have hpost := seg52_encode_post rho h
    (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
      (rho 52987) (rho 52988)) hbody
  have hpre := seg52_encode_pre rho h
    (fun T YDen => nbEncodeSeg1K (rho 44799) T YDen
      (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
        (rho 52987) (rho 52988))) hpost
  rw [seg52_poseidon_eq rho h] at hpre
  have hposeidon := (Shieldd.GnarkFormal.Poseidon1Bridge.perm1_uncps
    (6888358618106443442961843809729175081075858965522240584763322653509542282215 : Seg52.F) (rho 16)
    (fun gate_0 => Extracted.DecafEncodeToCurve.encodeSeg0 gate_0
      (rho 44799) (rho 44800)
      (fun T YDen => nbEncodeSeg1K (rho 44799) T YDen
        (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
          (rho 52987) (rho 52988))))).mpr hpre
  have hcircuit := (nb_circuit_eq (rho 15) (rho 105) (rho 193) (rho 16)
    (rho 5) (rho 44799) (rho 44800) (rho 52987) (rho 52988)).mpr hposeidon
  apply Shieldd.GnarkFormal.NetBalanceCommitmentBridge.decaf377_netBalanceCommitment_sound
    (rho 15) (rho 105) (rho 193) (rho 16) (rho 5) ⟨rho 52987, rho 52988⟩
  exact ⟨rho 44799, rho 44800, hcircuit⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
