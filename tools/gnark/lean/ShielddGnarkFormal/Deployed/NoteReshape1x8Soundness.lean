import ShielddGnarkFormal.Deployed.NoteReshape1x8Spend
import ShielddGnarkFormal.Deployed.NoteReshape1x8Conservation
import ShielddGnarkFormal.Deployed.NoteReshape1x8Statement
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Circuit-to-protocol refinement, conditional on external checks. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape1x8

theorem actionConservation
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.conservation (action rho) := by
  rcases NoteReshape1x8Conservation.facts rho facts with
    ⟨hin, hout0, hout1, hout2, hout3, hout4, hout5, hout6, hout7,
     hsum, hbalance⟩
  have hsum' :
      spend0NoteCommitmentInputs1 rho =
        output0NoteCommitmentInputs1 rho +
          (output1NoteCommitmentInputs1 rho +
            (output2NoteCommitmentInputs1 rho +
              (output3NoteCommitmentInputs1 rho +
                (output4NoteCommitmentInputs1 rho +
                  (output5NoteCommitmentInputs1 rho +
                    (output6NoteCommitmentInputs1 rho +
                      output7NoteCommitmentInputs1 rho)))))) := by
    rw [hsum]
    ring
  simpa [
    NoteReshapeCanonical.conservation, action, input0,
    output0, output1, output2, output3, output4, output5, output6, output7,
    Input.amount, NoteReshapeCanonical.toDecafPoint
  ] using
    And.intro hin
      (And.intro
        (And.intro hout0
          (And.intro hout1
            (And.intro hout2
              (And.intro hout3
                (And.intro hout4
                  (And.intro hout5 (And.intro hout6 hout7)))))))
        (And.intro hsum' hbalance))

theorem claimedBalanceCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
      (balanceCommitmentFq rho) := by
  rcases NoteReshape1x8Conservation.facts rho facts with
    ⟨_, _, _, _, _, _, _, _, _, _, hbalance⟩
  rcases NoteReshape1x8Balance.gadgetSpec rho facts with
    ⟨_, _, _, _, _, _, _, _, _, _, hcomputed⟩
  apply Decaf377Assumptions.compress_respects_decafEquivalent
    ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    (NoteReshape1x8Balance.Nb.computed rho)
    (balanceCommitmentFq rho)
  · rw [hcomputed]
    exact ⟨hbalance.2.1, hbalance.1, hbalance.2.2.symm⟩
  · exact NoteReshape1x8BalanceCompress.computed rho facts

theorem actionStatementBinding
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.statementBinding (action rho) := by
  refine ⟨
    balanceCommitmentFq rho,
    [spend0RkCompressed rho],
    claimedBalanceCompressed rho facts,
    ?_,
    ?_
  ⟩
  · refine List.Forall₂.cons ?_ List.Forall₂.nil
    simpa [
      action, input0, Input.rk, NoteReshapeCanonical.toDecafPoint
    ] using spend0ClaimedRkCompressed rho facts
  · simpa [
      action, input0,
      output0, output1, output2, output3, output4, output5, output6, output7,
      NoteReshapeCanonical.statementFields,
      NoteReshapeCanonical.inputStatementFields,
      Generated.NoteReshape1x8Commitments.output0NoteCommitmentAsserted rho facts,
      Generated.NoteReshape1x8Commitments.output1NoteCommitmentAsserted rho facts,
      Generated.NoteReshape1x8Commitments.output2NoteCommitmentAsserted rho facts,
      Generated.NoteReshape1x8Commitments.output3NoteCommitmentAsserted rho facts,
      Generated.NoteReshape1x8Commitments.output4NoteCommitmentAsserted rho facts,
      Generated.NoteReshape1x8Commitments.output5NoteCommitmentAsserted rho facts,
      Generated.NoteReshape1x8Commitments.output6NoteCommitmentAsserted rho facts,
      Generated.NoteReshape1x8Commitments.output7NoteCommitmentAsserted rho facts,
      spend0NullifierAsserted rho facts
    ] using NoteReshape1x8Statement.claimedHash rho facts

theorem semanticCircuitFacts
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Protocol.NoteReshape.CircuitFacts
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  exact {
    shape := actionShape rho
    padding := actionPadding rho
    canonicalAddress := actionCanonicalAddress rho facts
    inputsBound := actionInputCommitments rho facts
    membership := actionMembershipAndNullifiers rho facts
    authorizationKeys := actionRandomizedKeys rho facts
    outputsBound := actionOutputCommitments rho facts
    valueConserved := actionConservation rho facts
    statementBound := actionStatementBinding rho facts
  }

theorem deployedRelation_to_circuitFacts
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.CircuitFacts
      NoteReshapeCanonical.circuitPrimitives
      (action rho) :=
  semanticCircuitFacts rho
    (note_reshape1x8_circuitFacts rho h)

theorem valid_of_deployedRelation
    (authorizationChecks :
      ExternalAuthorization DeployedF Concrete.Path24)
    (stateChecks : StateChecks DeployedF Concrete.Path24)
    (rho : Nat → DeployedF)
    (h : relationAll rho)
    (signatures :
      ExternalSignatureFacts authorizationChecks (action rho))
    (state :
      StatePreconditions stateChecks (action rho)) :
    Valid
      Concrete.circuitPrimitives
      authorizationChecks
      stateChecks
      (action rho) :=
  Protocol.NoteReshape.valid_of_circuitFacts
    Concrete.circuitPrimitives
    authorizationChecks
    stateChecks
    (action rho)
    (NoteReshapeRefinement.circuitFacts_refine
      (action rho) (deployedRelation_to_circuitFacts rho h))
    signatures state

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C
