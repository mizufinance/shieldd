import ShielddGnarkFormal.Deployed.NoteReshape4x1Spend
import ShielddGnarkFormal.Deployed.NoteReshape4x1Conservation

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Conservation refinement for the deployed NoteReshape 4x1 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape4x1

theorem actionConservation
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    NoteReshapeCanonical.conservation (action rho) := by
  rcases NoteReshape4x1Conservation.facts rho facts with
    ⟨hin0, hin1, hin2, hin3, hout0, hsum, hbalance⟩
  have hsum' :
      spend0NoteCommitmentInputs1 rho +
        (spend1NoteCommitmentInputs1 rho +
          (spend2NoteCommitmentInputs1 rho +
            spend3NoteCommitmentInputs1 rho)) =
        output0NoteCommitmentInputs1 rho := by
    rw [← hsum]
    ring
  unfold NoteReshapeCanonical.conservation
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro input hmem
    change input ∈ [input0 rho, input1 rho, input2 rho, input3 rho] at hmem
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hmem
    rcases hmem with h | h | h | h
    · subst input
      rw [input0Amount]
      exact hin0
    · subst input
      rw [input1Amount]
      exact hin1
    · subst input
      rw [input2Amount]
      exact hin2
    · subst input
      rw [input3Amount]
      exact hin3
  · intro output hmem
    change output ∈ [output0 rho] at hmem
    simp only [List.mem_singleton] at hmem
    subst output
    exact hout0
  · simp only [
      action, output0, List.map, List.sum_cons, List.sum_nil, Output.amount
    ]
    rw [input0Amount, input1Amount, input2Amount, input3Amount]
    simpa only [add_zero] using hsum'
  · exact hbalance

theorem claimedBalanceCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
      (balanceCommitmentFq rho) := by
  rcases NoteReshape4x1Conservation.facts rho facts with
    ⟨_, _, _, _, _, _, hbalance⟩
  rcases NoteReshape4x1Balance.gadgetSpec rho facts with
    ⟨_, _, _, _, _, _, hcomputed⟩
  apply Decaf377Assumptions.compress_respects_decafEquivalent
    ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    (NoteReshape4x1Balance.Nb.computed rho)
    (balanceCommitmentFq rho)
  · rw [hcomputed]
    exact ⟨hbalance.2.1, hbalance.1, hbalance.2.2.symm⟩
  · exact NoteReshape4x1BalanceCompress.computed rho facts

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C
