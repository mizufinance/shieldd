import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Nb
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46In0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46In1Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Out0Bits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46BlindBits
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Blind
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Conserv
import ShielddGnarkFormal.ConservationNetBalanceCommitmentBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.NetBalanceCommitmentBridge
open Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge

theorem seg46_conservBody (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    conservBody (rho 15) (rho 105) (rho 193) (rho 5)
      (Specs.nbX rho) (Specs.nbY rho) := by
  have hIn0Bin := seg46In0Bits_toBinary rho h
  have hIn1Bin := seg46In1Bits_toBinary rho h
  have hOut0Bin := seg46Out0Bits_toBinary rho h
  have hBlindBin := seg46BlindBits_toBinary rho h
  obtain ⟨blindBool, hBlindEq⟩ := is_vector_binary_iff_exists_bool_vec.mp hBlindBin.2
  have hcons := seg46_conservation rho h
  have hLadder := seg46Blind_ladder rho h blindBool hBlindEq
    (fun s =>
      Extracted.ConservationNetBalanceCommitment.Gates.eq s[0] (Specs.nbX rho) ∧
      Extracted.ConservationNetBalanceCommitment.Gates.eq s[1] (Specs.nbY rho) ∧
      True)
    ⟨by
      simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
        GatesGnark8, GatesDef.eq]
      show (4661681602708190761543544705274244814260880986867766715334030151044279151219 : Seg46.F) * rho 31661 +
          seg46BlindDeltaX250 rho = Specs.nbX rho
      unfold seg46BlindDeltaX250 Specs.nbX
      ring,
      by
      simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
        GatesGnark8, GatesDef.eq]
      show (1 : Seg46.F) +
          (4337336842509898676347982752646772244181661588533917621717979456142867120377 : Seg46.F) * rho 31661 +
          seg46BlindDeltaY250 rho = Specs.nbY rho
      unfold seg46BlindDeltaY250 Specs.nbY
      ring,
      True.intro⟩
  unfold conservBody
  refine ⟨seg46In0Bits rho, hIn0Bin, ?_⟩
  refine ⟨(0 : Seg46.F) + rho 15, by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.add], ?_⟩
  refine ⟨seg46In1Bits rho, hIn1Bin, ?_⟩
  refine ⟨(0 : Seg46.F) + rho 15 + rho 105, by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.add], ?_⟩
  refine ⟨seg46Out0Bits rho, hOut0Bin, ?_⟩
  refine ⟨(0 : Seg46.F) + rho 193, by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.add], ?_⟩
  refine ⟨by
    simp only [Extracted.ConservationNetBalanceCommitment.Gates, GatesGnark9,
      GatesGnark8, GatesDef.eq]
    linear_combination hcons, ?_⟩
  exact ⟨seg46BlindBits rho, hBlindBin, hLadder.1⟩

theorem seg46_sound (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    Specs.deployedSpec46 rho := by
  have hbody := seg46_conservBody rho h
  have hcircuit := (conserv_circuit_eq (rho 15) (rho 105)
    (rho 193) (rho 5) (Specs.nbX rho) (Specs.nbY rho)).mpr hbody
  exact Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge.decaf377_conservationNetBalanceCommitment_sound
    (rho 15) (rho 105) (rho 193) (rho 5)
    ⟨Specs.nbX rho, Specs.nbY rho⟩ hcircuit

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
