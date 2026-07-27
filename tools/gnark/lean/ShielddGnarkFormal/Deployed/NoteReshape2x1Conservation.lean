import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceCross
import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceCompress

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Complete semantic conservation facts for the exact 2x1 balance circuit. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1Conservation

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1

theorem facts
    (rho : Nat → DeployedF)
    (circuitFacts : NoteReshape2x1CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    spend0NoteCommitmentInputs1 rho + spend1NoteCommitmentInputs1 rho =
      output0NoteCommitmentInputs1 rho ∧
    Decaf377Assumptions.DecafEquivalent
      (Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho))
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  rcases NoteReshape2x1Balance.gadgetSpec rho circuitFacts with
    ⟨h0, h1, hout, hsum, hcomputed⟩
  refine ⟨h0, h1, hout, hsum, ?_⟩
  rw [← hcomputed]
  exact ⟨
    Decaf377Assumptions.onCurve_of_compress
      (NoteReshape2x1Balance.computed rho)
      (balanceCommitmentFq rho)
      (NoteReshape2x1BalanceCompress.computed rho circuitFacts),
    NoteReshape2x1BalanceCross.claimedOnCurve rho circuitFacts,
    NoteReshape2x1BalanceCross.crossRatio rho circuitFacts
  ⟩

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1Conservation
