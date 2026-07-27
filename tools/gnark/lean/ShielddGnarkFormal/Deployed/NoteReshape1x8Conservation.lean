import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCross
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCompress

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Complete semantic conservation facts for the exact 1x8 balance circuit. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Conservation

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

theorem facts
    (rho : Nat → DeployedF)
    (circuitFacts : NoteReshape1x8CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output2NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output3NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output4NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output5NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output6NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output7NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    spend0NoteCommitmentInputs1 rho =
      output0NoteCommitmentInputs1 rho + output1NoteCommitmentInputs1 rho +
      output2NoteCommitmentInputs1 rho + output3NoteCommitmentInputs1 rho +
      output4NoteCommitmentInputs1 rho + output5NoteCommitmentInputs1 rho +
      output6NoteCommitmentInputs1 rho + output7NoteCommitmentInputs1 rho ∧
    Decaf377Assumptions.DecafEquivalent
      (Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho))
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  rcases NoteReshape1x8Balance.gadgetSpec rho circuitFacts with
    ⟨hin, hout0, hout1, hout2, hout3, hout4, hout5, hout6, hout7,
     hsum, hcomputed⟩
  refine
    ⟨hin, hout0, hout1, hout2, hout3, hout4, hout5, hout6, hout7, hsum, ?_⟩
  rw [← hcomputed]
  exact ⟨
    Decaf377Assumptions.onCurve_of_compress
      (NoteReshape1x8Balance.Nb.computed rho)
      (balanceCommitmentFq rho)
      (NoteReshape1x8BalanceCompress.computed rho circuitFacts),
    NoteReshape1x8BalanceCross.claimedOnCurve rho circuitFacts,
    NoteReshape1x8BalanceCross.crossRatio rho circuitFacts
  ⟩

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Conservation
