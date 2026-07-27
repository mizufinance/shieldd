import ShielddGnarkFormal.Deployed.NoteReshape1x8Spend
import ShielddGnarkFormal.Deployed.NoteReshape1x8Conservation
import ShielddGnarkFormal.Deployed.NoteReshape1x8Statement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! End-to-end refinement of the deployed NoteReshape 1x8 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C

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
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Protocol.NoteReshape.CircuitFacts
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  exact {
    shape := actionShape rho
    padding := actionPadding rho
    canonicalAddress := actionCanonicalAddress rho facts
    inputsBound :=
      actionInputCommitments rho facts
        signatureVerifies nullifierFresh transitionAccepted
    membership :=
      actionMembershipAndNullifiers rho facts
        signatureVerifies nullifierFresh transitionAccepted
    authorizationKeys :=
      actionRandomizedKeys rho facts
        signatureVerifies nullifierFresh transitionAccepted
    outputsBound :=
      actionOutputCommitments rho facts
        signatureVerifies nullifierFresh transitionAccepted
    valueConserved := actionConservation rho facts
    statementBound := actionStatementBinding rho facts
  }

theorem deployedRelation_to_circuitFacts
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.CircuitFacts
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) :=
  semanticCircuitFacts
    signatureVerifies nullifierFresh transitionAccepted rho
    (note_reshape1x8_circuitFacts rho h)

theorem valid_of_deployedRelation
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (h : relationAll rho)
    (signatures :
      ExternalSignatureFacts
        (NoteReshapeCanonical.primitives
          signatureVerifies nullifierFresh transitionAccepted)
        (action rho))
    (state :
      StatePreconditions
        (NoteReshapeCanonical.primitives
          signatureVerifies nullifierFresh transitionAccepted)
        (action rho)) :
    Valid
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) :=
  Protocol.NoteReshape.valid_of_circuitFacts
    (NoteReshapeCanonical.primitives
      signatureVerifies nullifierFresh transitionAccepted)
    (action rho)
    (deployedRelation_to_circuitFacts
      signatureVerifies nullifierFresh transitionAccepted rho h)
    signatures state

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C
