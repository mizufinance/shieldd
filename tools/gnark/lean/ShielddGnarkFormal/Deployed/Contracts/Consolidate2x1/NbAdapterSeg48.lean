import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Nb
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48EncodePost
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Adds
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48In1Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48Out0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48BlindBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.NetBalanceCommitmentBridge

theorem seg48_nbBody (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    nbBody (rho 33530) (rho 33532) (rho 15) (rho 105) (rho 193) (rho 5)
      (rho 40715) (rho 40716) := by
  have hbase := seg48_value_base_onCurve rho h
  have hIn0Bin := seg48In0Bits_toBinary rho h
  have hIn1Bin := seg48In1Bits_toBinary rho h
  have hOut0Bin := seg48Out0Bits_toBinary rho h
  have hBlindBin := seg48BlindBits_toBinary rho h
  obtain ⟨in0Bool, hIn0Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hIn0Bin.2
  obtain ⟨in1Bool, hIn1Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hIn1Bin.2
  obtain ⟨out0Bool, hOut0Eq⟩ := is_vector_binary_iff_exists_bool_vec.mp hOut0Bin.2
  obtain ⟨blindBool, hBlindEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hBlindBin.2
  have hP1On := (seg48In0_ladder rho h in0Bool hIn0Eq (fun _ => True)
    True.intro hbase).2
  have hP2On := (seg48In1_ladder rho h in1Bool hIn1Eq (fun _ => True)
    True.intro hbase).2
  have hP3On := (seg48Out0_ladder rho h out0Bool hOut0Eq (fun _ => True)
    True.intro hbase).2
  have hAdd1 := (seg48_add_inputs rho h hP1On hP2On (fun _ _ => True) True.intro).2
  have hA1Eq := EdwardsBridge.addSpec_eq
    (seg48In0AccState rho 128) (seg48In1AccState rho 128)
    ⟨rho 37112, rho 37113⟩ hP1On hP2On hAdd1
  have hA1On : EdwardsBridge.onCurve ⟨rho 37112, rho 37113⟩ :=
    hA1Eq ▸ EdwardsBridge.add_onCurve _ _ hP1On hP2On
  have hNegOn : EdwardsBridge.onCurve
      ⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩ := by
    simpa [EdwardsBridge.negF] using
      EdwardsBridge.neg_onCurve (seg48Out0AccState rho 128) hP3On
  have hAdd2 := (seg48_add_output rho h hA1On hNegOn (fun _ _ => True) True.intro).2
  have hA2Eq := EdwardsBridge.addSpec_eq ⟨rho 37112, rho 37113⟩
    ⟨-(seg48Out0AccState rho 128).x, (seg48Out0AccState rho 128).y⟩
    ⟨rho 38904, rho 38905⟩ hA1On hNegOn hAdd2
  have hA2On : EdwardsBridge.onCurve ⟨rho 38904, rho 38905⟩ :=
    hA2Eq ▸ EdwardsBridge.add_onCurve _ _ hA1On hNegOn
  have hBlindOn := (seg48Blind_ladder rho h blindBool hBlindEq (fun _ => True)
    True.intro).2
  have hFinalAdd := seg48_final_addSpec rho h hA2On hBlindOn
  have hOutEq := EdwardsBridge.addSpec_eq ⟨rho 38904, rho 38905⟩
    (seg48BlindAccState rho 251) ⟨rho 40715, rho 40716⟩
    hA2On hBlindOn hFinalAdd
  have hOutOn : EdwardsBridge.onCurve ⟨rho 40715, rho 40716⟩ :=
    hOutEq ▸ EdwardsBridge.add_onCurve _ _ hA2On hBlindOn
  have hFinalK : nbFinalK (rho 38904) (rho 38905)
      (seg48BlindAccState rho 251).x (seg48BlindAccState rho 251).y
      (rho 40715) (rho 40716) :=
    nbFinalK_of_addSpec ⟨rho 38904, rho 38905⟩ (seg48BlindAccState rho 251)
      ⟨rho 40715, rho 40716⟩ hFinalAdd hOutOn
  unfold nbBody
  refine ⟨seg48In0Bits rho, hIn0Bin, ?_⟩
  refine (seg48In0_ladder rho h in0Bool hIn0Eq _ ?_ hbase).1
  refine ⟨seg48In1Bits rho, hIn1Bin, ?_⟩
  refine (seg48In1_ladder rho h in1Bool hIn1Eq _ ?_ hbase).1
  refine ⟨seg48Out0Bits rho, hOut0Bin, ?_⟩
  refine (seg48Out0_ladder rho h out0Bool hOut0Eq _ ?_ hbase).1
  refine nbAddK_of_addSpec ⟨0, 1⟩ (seg48In0AccState rho 128)
    (seg48In0AccState rho 128) _ 
    (Shieldd.GnarkFormal.Deployed.NetBalance.identity_addSpec _) ?_
  refine (seg48_add_inputs rho h hP1On hP2On _ ?_).1
  refine ⟨-(seg48Out0AccState rho 128).x, ?_, ?_⟩
  · simp [Extracted.NetBalanceCommitment.Gates, GatesGnark9, GatesGnark8,
      GatesDef.neg]
  refine (seg48_add_output rho h hA1On hNegOn _ ?_).1
  refine ⟨seg48BlindBits rho, hBlindBin, ?_⟩
  refine (seg48Blind_ladder rho h blindBool hBlindEq _ ?_).1
  simpa using hFinalK

theorem seg48_sound (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Specs.deployedSpec48 rho := by
  have hbody := seg48_nbBody rho h
  have hpost := seg48_encode_post rho h
    (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
      (rho 40715) (rho 40716)) hbody
  have hpre := seg48_encode_pre rho h
    (fun T YDen => nbEncodeSeg1K (rho 33167) T YDen
      (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
        (rho 40715) (rho 40716))) hpost
  rw [seg48_poseidon_eq rho h] at hpre
  have hposeidon := (Shieldd.GnarkFormal.Poseidon1Bridge.perm1_uncps
    (6888358618106443442961843809729175081075858965522240584763322653509542282215 : Seg48.F) (rho 16)
    (fun gate_0 => Extracted.DecafEncodeToCurve.encodeSeg0 gate_0
      (rho 33167) (rho 33168)
      (fun T YDen => nbEncodeSeg1K (rho 33167) T YDen
        (fun vgX vgY => nbBody vgX vgY (rho 15) (rho 105) (rho 193) (rho 5)
          (rho 40715) (rho 40716))))).mpr hpre
  have hcircuit := (nb_circuit_eq (rho 15) (rho 105) (rho 193) (rho 16)
    (rho 5) (rho 33167) (rho 33168) (rho 40715) (rho 40716)).mpr hposeidon
  apply Shieldd.GnarkFormal.NetBalanceCommitmentBridge.decaf377_netBalanceCommitment_sound
    (rho 15) (rho 105) (rho 193) (rho 16) (rho 5) ⟨rho 40715, rho 40716⟩
  exact ⟨rho 33167, rho 33168, hcircuit⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
