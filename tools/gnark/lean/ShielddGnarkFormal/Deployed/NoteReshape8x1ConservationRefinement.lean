import ShielddGnarkFormal.Deployed.NoteReshape8x1Spend
import ShielddGnarkFormal.Deployed.NoteReshape8x1Conservation

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Conservation refinement for the deployed NoteReshape 8x1 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape8x1

theorem actionConservation
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    NoteReshapeCanonical.conservation (action rho) := by
  rcases NoteReshape8x1Conservation.facts rho facts with
    ⟨hin0, hin1, hin2, hin3, hin4, hin5, hin6, hin7, hout0, hsum, hbalance⟩
  have hsum' :
      spend0NoteCommitmentInputs1 rho +
        (spend1NoteCommitmentInputs1 rho +
          (spend2NoteCommitmentInputs1 rho +
            (spend3NoteCommitmentInputs1 rho +
              (spend4NoteCommitmentInputs1 rho +
                (spend5NoteCommitmentInputs1 rho +
                  (spend6NoteCommitmentInputs1 rho +
                    spend7NoteCommitmentInputs1 rho)))))) =
        output0NoteCommitmentInputs1 rho := by
    rw [← hsum]
    ring
  unfold NoteReshapeCanonical.conservation
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro input hmem
    change input ∈
      [input0 rho, input1 rho, input2 rho, input3 rho,
       input4 rho, input5 rho, input6 rho, input7 rho] at hmem
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hmem
    rcases hmem with h | h | h | h | h | h | h | h
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
    · subst input
      rw [input4Amount]
      exact hin4
    · subst input
      rw [input5Amount]
      exact hin5
    · subst input
      rw [input6Amount]
      exact hin6
    · subst input
      rw [input7Amount]
      exact hin7
  · intro output hmem
    change output ∈ [output0 rho] at hmem
    simp only [List.mem_singleton] at hmem
    subst output
    exact hout0
  · simp only [
      action, output0, List.map, List.sum_cons, List.sum_nil, Output.amount
    ]
    rw [
      input0Amount, input1Amount, input2Amount, input3Amount,
      input4Amount, input5Amount, input6Amount, input7Amount
    ]
    simpa only [add_zero] using hsum'
  · exact hbalance

theorem claimedBalanceCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
      (balanceCommitmentFq rho) := by
  rcases NoteReshape8x1Conservation.facts rho facts with
    ⟨_, _, _, _, _, _, _, _, _, _, hbalance⟩
  rcases NoteReshape8x1Balance.gadgetSpec rho facts with
    ⟨_, _, _, _, _, _, _, _, _, _, hcomputed⟩
  apply Decaf377Assumptions.compress_respects_decafEquivalent
    ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    (NoteReshape8x1Balance.Nb.computed rho)
    (balanceCommitmentFq rho)
  · rw [hcomputed]
    exact ⟨hbalance.2.1, hbalance.1, hbalance.2.2.symm⟩
  · exact NoteReshape8x1BalanceCompress.computed rho facts

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
