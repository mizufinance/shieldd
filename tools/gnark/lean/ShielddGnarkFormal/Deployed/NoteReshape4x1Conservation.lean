import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCross
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCompress

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Complete semantic conservation facts for the exact 4x1 balance circuit. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Conservation

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

theorem facts
    (rho : Nat → DeployedF)
    (circuitFacts : NoteReshape4x1CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend2NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend3NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    spend0NoteCommitmentInputs1 rho +
      spend1NoteCommitmentInputs1 rho +
      spend2NoteCommitmentInputs1 rho +
      spend3NoteCommitmentInputs1 rho =
        output0NoteCommitmentInputs1 rho ∧
    Decaf377Assumptions.DecafEquivalent
      (Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho))
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  rcases NoteReshape4x1Balance.gadgetSpec rho circuitFacts with
    ⟨hin0, hin1, hin2, hin3, hout0, hsum, hcomputed⟩
  refine ⟨hin0, hin1, hin2, hin3, hout0, hsum, ?_⟩
  rw [← hcomputed]
  exact ⟨
    Decaf377Assumptions.onCurve_of_compress
      (NoteReshape4x1Balance.Nb.computed rho)
      (balanceCommitmentFq rho)
      (NoteReshape4x1BalanceCompress.computed rho circuitFacts),
    NoteReshape4x1BalanceCross.claimedOnCurve rho circuitFacts,
    NoteReshape4x1BalanceCross.crossRatio rho circuitFacts
  ⟩

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Conservation
