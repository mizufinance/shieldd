import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.CoreSemanticSeams
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.RefinementAction
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBindings
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
import ShielddGnarkFormal.NoteReshapeCommitmentBridge
import ShielddGnarkFormal.StateMembership925Bridge
import ShielddGnarkFormal.Poseidon3Spec
import ShielddGnarkFormal.Poseidon5Bridge
import ShielddGnarkFormal.Poseidon6Spec
import ShielddGnarkFormal.Poseidon6Bridge
import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete
import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Refinement of the exact deployed withdrawal relation into the independent
fixed-shape shielded ICS-20 withdrawal semantics.
-/

namespace Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalSemanticTranslator

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol
open Protocol.ShieldedIcs20Withdrawal
open Contracts.ShieldedIcs20Withdrawal
open Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C

namespace C

/-!
The compiler-owned action projection, including deployed state-path segment
selection, is generated in `RefinementAction` from the authenticated plan.
-/

private theorem negOne :
    (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
      DeployedF) = -1 := by
  decide

private theorem semanticNegOne :
    (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
      SemanticF) = -1 := by
  decide +kernel

private theorem optionalAmount_eq (rho : Nat → DeployedF) :
    (Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
      rho).amount = spend1NoteAmount rho := by
  unfold Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
  split <;> rfl

private theorem optionalNullifier_eq (rho : Nat → DeployedF) :
    (Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
      rho).nullifier = spend1NullifierClaimed rho := by
  unfold Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
  split <;> rfl

private theorem optionalRkEncoding_eq (rho : Nat → DeployedF) :
    (Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
      rho).rkEncoding = spend1RkCompressed rho := by
  unfold Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
  split <;> rfl

theorem spend0NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend0NoteCommitmentComputed rho =
      Poseidon5Bridge.permSpec5 Common.noteCommitmentDomain
        (spend0NoteCommitmentInputs0 rho)
        (spend0NoteCommitmentInputs1 rho)
        (spend0NoteCommitmentInputs2 rho)
        (spend0NoteCommitmentInputs3 rho)
        (spend0NoteCommitmentInputs4 rho) := by
  have h := requiredNoteCommitmentSemanticSpec_of_exact rho facts
  unfold RequiredNoteCommitmentSemanticSpec at h
  apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
    (RequiredNoteCommitmentValuation rho) h
  · simp only [
      spend0NoteCommitmentComputed, spend0NoteCommitmentComputedLC,
      NoteReshapeCommitmentBridge.templateOutput_eq,
      NoteReshapeCommitmentBridge.output,
      Deployed.Poseidon5Link.row6,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt372, requiredNoteCommitmentAt377,
      requiredNoteCommitmentAt382, requiredNoteCommitmentAt387,
      requiredNoteCommitmentAt392, requiredNoteCommitmentAt397,
      zero_add, add_zero, one_mul]
    ring
  · simp [spend0NoteCommitmentInputs0, spend0NoteCommitmentInputs0LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt1]
  · simp [spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt7]
  · simp [spend0NoteCommitmentInputs2, spend0NoteCommitmentInputs2LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt13]
  · simp [spend0NoteCommitmentInputs3, spend0NoteCommitmentInputs3LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt19, requiredNoteCommitmentAt20,
      negOne, semanticNegOne]
    ring_nf
  · simp [spend0NoteCommitmentInputs4, spend0NoteCommitmentInputs4LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt26, requiredNoteCommitmentAt27,
      negOne, semanticNegOne]
    ring_nf

theorem spend1NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend1NoteCommitmentComputed rho =
      Poseidon5Bridge.permSpec5 Common.noteCommitmentDomain
        (spend1NoteCommitmentInputs0 rho)
        (spend1NoteCommitmentInputs1 rho)
        (spend1NoteCommitmentInputs2 rho)
        (spend1NoteCommitmentInputs3 rho)
        (spend1NoteCommitmentInputs4 rho) := by
  have h := optionalNoteCommitmentSemanticSpec_of_exact rho facts
  unfold OptionalNoteCommitmentSemanticSpec at h
  apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
    (OptionalNoteCommitmentValuation rho) h
  · simp only [
      spend1NoteCommitmentComputed, spend1NoteCommitmentComputedLC,
      NoteReshapeCommitmentBridge.templateOutput_eq,
      NoteReshapeCommitmentBridge.output,
      Deployed.Poseidon5Link.row6,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt372, optionalNoteCommitmentAt377,
      optionalNoteCommitmentAt382, optionalNoteCommitmentAt387,
      optionalNoteCommitmentAt392, optionalNoteCommitmentAt397,
      zero_add, add_zero, one_mul]
    ring
  · simp [spend1NoteCommitmentInputs0, spend1NoteCommitmentInputs0LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt1]
  · simp [spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt7]
  · simp [spend1NoteCommitmentInputs2, spend1NoteCommitmentInputs2LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt13]
  · simp [spend1NoteCommitmentInputs3, spend1NoteCommitmentInputs3LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt19, optionalNoteCommitmentAt20,
      negOne, semanticNegOne]
    ring_nf
  · simp [spend1NoteCommitmentInputs4, spend1NoteCommitmentInputs4LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt26, optionalNoteCommitmentAt27,
      negOne, semanticNegOne]
    ring_nf

theorem output0NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    output0NoteCommitmentComputed rho =
      Poseidon5Bridge.permSpec5 Common.noteCommitmentDomain
        (output0NoteCommitmentInputs0 rho)
        (output0NoteCommitmentInputs1 rho)
        (output0NoteCommitmentInputs2 rho)
        (output0NoteCommitmentInputs3 rho)
        (output0NoteCommitmentInputs4 rho) := by
  have h := changeNoteCommitmentSemanticSpec_of_exact rho facts
  unfold ChangeNoteCommitmentSemanticSpec at h
  apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
    (ChangeNoteCommitmentValuation rho) h
  · simp only [
      output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
      NoteReshapeCommitmentBridge.templateOutput_eq,
      NoteReshapeCommitmentBridge.output,
      Deployed.Poseidon5Link.row6,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      changeNoteCommitmentAt372, changeNoteCommitmentAt377,
      changeNoteCommitmentAt382, changeNoteCommitmentAt387,
      changeNoteCommitmentAt392, changeNoteCommitmentAt397,
      zero_add, add_zero, one_mul]
    ring
  · simp [output0NoteCommitmentInputs0, output0NoteCommitmentInputs0LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      changeNoteCommitmentAt1]
  · simp [output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      changeNoteCommitmentAt7]
  · simp [output0NoteCommitmentInputs2, output0NoteCommitmentInputs2LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      changeNoteCommitmentAt13]
  · simp [output0NoteCommitmentInputs3, output0NoteCommitmentInputs3LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      changeNoteCommitmentAt19, changeNoteCommitmentAt20,
      negOne, semanticNegOne]
    ring_nf
  · simp [output0NoteCommitmentInputs4, output0NoteCommitmentInputs4LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      changeNoteCommitmentAt26, changeNoteCommitmentAt27,
      negOne, semanticNegOne]
    ring_nf

theorem output0NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    output0NoteCommitmentClaimed rho =
      output0NoteCommitmentComputed rho := by
  exact changeNoteCommitmentAsserted_of_exact rho facts

theorem requiredNoteCommitment
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Concrete.noteCommitment (requiredNote rho) := by
  unfold Concrete.noteCommitment Common.noteCommitmentHash
  simp only [requiredNote, sender]
  simpa [Poseidon5Bridge.permSpec5, Common.noteCommitmentDomain] using
    spend0NoteCommitmentHash rho facts

theorem optionalRealNoteCommitment
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Concrete.noteCommitment (optionalRealNote rho) := by
  unfold Concrete.noteCommitment Common.noteCommitmentHash
  simp only [optionalRealNote, sender]
  simpa [Poseidon5Bridge.permSpec5, Common.noteCommitmentDomain] using
    spend1NoteCommitmentHash rho facts

theorem changeNoteCommitment
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Concrete.noteCommitment (change rho) := by
  unfold Concrete.noteCommitment Common.noteCommitmentHash
  simp only [change, sender]
  rw [output0NoteCommitmentAsserted rho facts]
  simpa [Poseidon5Bridge.permSpec5, Common.noteCommitmentDomain] using
    output0NoteCommitmentHash rho facts

theorem changeOutput
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Concrete.changeOutput (action rho) := by
  exact ⟨rfl, rfl, changeNoteCommitment rho facts⟩

theorem spend0AnchorAsserted
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    anchor rho = spend0AnchorComputed rho := by
  exact requiredAnchorAsserted_of_exact rho facts

theorem spend1AnchorAsserted
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (real : spend1IsDummy rho = 0) :
    anchor rho = spend1AnchorComputed rho := by
  exact optionalAnchorAsserted_of_exact rho facts real

/-!
These two theorems are the whole state-membership wiring seam. Each proof
checks the exact leaf, position, path, and root seats before invoking the
generic 24-level seven-lane state-path bridge.
-/

theorem spend0Member
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Common.stateMember (anchor rho) (spend0NoteCommitmentComputed rho)
      (spend0StateProofPosition rho) (requiredPath rho) := by
  have h := requiredStatePathSemanticSpec_of_exact rho facts
  unfold RequiredStatePathSemanticSpec at h
  apply StateMembership925Bridge.member_of_spec
    (RequiredStatePathValuation rho)
    (anchor rho)
    (spend0NoteCommitmentComputed rho)
    (spend0StateProofPosition rho)
    (requiredPath rho)
    h
  · simp [
      StateMembership925Bridge.leafInput,
      spend0NoteCommitmentComputed, spend0NoteCommitmentComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredStatePathAt1, requiredStatePathAt2,
      requiredStatePathAt3, requiredStatePathAt4,
      requiredStatePathAt5, requiredStatePathAt6,
      requiredStatePathAt7
    ]
    ring
  · simp [
      spend0StateProofPosition, spend0StateProofPositionLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredStatePathAt286
    ]
  · exact (requiredStatePathProviderPath_eq rho).symm
  · rw [spend0AnchorAsserted rho facts]
    simp [
      StateMembership925Bridge.rootOutput,
      spend0AnchorComputed, spend0AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredStatePathAt8978, requiredStatePathAt8983,
      requiredStatePathAt8988, requiredStatePathAt8993,
      requiredStatePathAt8998
    ]
    ring

theorem spend1Member
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (real : spend1IsDummy rho = 0) :
    Common.stateMember (anchor rho) (spend1NoteCommitmentComputed rho)
      (spend1StateProofPosition rho) (optionalPath rho) := by
  have h := optionalStatePathSemanticSpec_of_exact rho facts
  unfold OptionalStatePathSemanticSpec at h
  apply StateMembership925Bridge.member_of_spec
    (OptionalStatePathValuation rho)
    (anchor rho)
    (spend1NoteCommitmentComputed rho)
    (spend1StateProofPosition rho)
    (optionalPath rho)
    h
  · simp [
      StateMembership925Bridge.leafInput,
      spend1NoteCommitmentComputed, spend1NoteCommitmentComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalStatePathAt1, optionalStatePathAt2,
      optionalStatePathAt3, optionalStatePathAt4,
      optionalStatePathAt5, optionalStatePathAt6,
      optionalStatePathAt7
    ]
    ring
  · simp [
      spend1StateProofPosition, spend1StateProofPositionLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalStatePathAt286
    ]
  · exact (optionalStatePathProviderPath_eq rho).symm
  · rw [spend1AnchorAsserted rho facts real]
    simp [
      StateMembership925Bridge.rootOutput,
      spend1AnchorComputed, spend1AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalStatePathAt8978, optionalStatePathAt8983,
      optionalStatePathAt8988, optionalStatePathAt8993,
      optionalStatePathAt8998
    ]
    ring

theorem spend0NullifierHash
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend0NullifierReal rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend0NoteCommitmentComputed rho)
        (spend0StateProofPosition rho) := by
  have h := requiredNullifierSemanticSpec_of_exact rho facts
  change
    Deployed.Nullifier.s38_1
        (RequiredNullifierValuation rho 304)
        (RequiredNullifierValuation rho 309)
        (RequiredNullifierValuation rho 314)
        (RequiredNullifierValuation rho 319) =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (RequiredNullifierValuation rho 1)
        (RequiredNullifierStateCommitment rho)
        (RequiredNullifierValuation rho 19) at h
  have houtput :
      spend0NullifierReal rho =
        Deployed.Nullifier.s38_1
          (RequiredNullifierValuation rho 304)
          (RequiredNullifierValuation rho 309)
          (RequiredNullifierValuation rho 314)
          (RequiredNullifierValuation rho 319) := by
    simp [
      spend0NullifierReal, spend0NullifierRealLC,
      Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNullifierAt304, requiredNullifierAt309,
      requiredNullifierAt314, requiredNullifierAt319
    ]
    ring
  have hnk :
      authNk rho = RequiredNullifierValuation rho 1 := by
    simp [authNk, authNkLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNullifierAt1]
  have hposition :
      spend0StateProofPosition rho =
        RequiredNullifierValuation rho 19 := by
    simp [spend0StateProofPosition, spend0StateProofPositionLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNullifierAt19]
  rw [
    houtput, hnk, ← requiredNullifierStateCommitment_eq rho,
    hposition
  ]
  exact h

theorem spend1NullifierHash
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend1NullifierReal rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend1NoteCommitmentComputed rho)
        (spend1StateProofPosition rho) := by
  have h := optionalNullifierSemanticSpec_of_exact rho facts
  change
    Deployed.Nullifier.s38_1
        (OptionalNullifierValuation rho 304)
        (OptionalNullifierValuation rho 309)
        (OptionalNullifierValuation rho 314)
        (OptionalNullifierValuation rho 319) =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (OptionalNullifierValuation rho 1)
        (OptionalNullifierStateCommitment rho)
        (OptionalNullifierValuation rho 19) at h
  have houtput :
      spend1NullifierReal rho =
        Deployed.Nullifier.s38_1
          (OptionalNullifierValuation rho 304)
          (OptionalNullifierValuation rho 309)
          (OptionalNullifierValuation rho 314)
          (OptionalNullifierValuation rho 319) := by
    simp [
      spend1NullifierReal, spend1NullifierRealLC,
      Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNullifierAt304, optionalNullifierAt309,
      optionalNullifierAt314, optionalNullifierAt319
    ]
    ring
  have hnk :
      authNk rho = OptionalNullifierValuation rho 1 := by
    simp [authNk, authNkLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNullifierAt1]
  have hposition :
      spend1StateProofPosition rho =
        OptionalNullifierValuation rho 19 := by
    simp [spend1StateProofPosition, spend1StateProofPositionLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNullifierAt19]
  rw [
    houtput, hnk, ← optionalNullifierStateCommitment_eq rho,
    hposition
  ]
  exact h

theorem spend1IsDummyBoolean
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend1IsDummy rho = 0 ∨ spend1IsDummy rho = 1 := by
  have h := optionalIsDummyBooleanSemanticSpec_of_exact rho facts
  simpa [
    OptionalIsDummyBooleanSemanticSpec,
    spend1IsDummy, spend1IsDummyLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    optionalIsDummyBooleanAt1
  ] using h

theorem spend1ClaimedNullifierSelected
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend1NullifierClaimed rho = spend1NullifierSelected rho := by
  exact optionalNullifierClaimed_eq_selected_of_exact rho facts

theorem spend1ClaimedNullifierReal
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (real : spend1IsDummy rho = 0) :
    spend1NullifierClaimed rho = spend1NullifierReal rho := by
  exact optionalNullifierClaimed_eq_real_of_exact rho facts real

theorem spend1ClaimedNullifierDummy
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NullifierClaimed rho = spend1NullifierSynthetic rho := by
  exact optionalNullifierClaimed_eq_synthetic_of_exact rho facts dummy

theorem spend1DummyAmountZero
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NoteAmount rho = 0 := by
  exact optionalAmount_eq_zero_of_exact rho facts dummy

theorem senderDivGenCompressedSpec
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩
      (senderDivGenFq rho) := by
  exact senderDivGenCompressedSpec_of_exact rho facts

theorem senderDivGenCompressed
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Common.Decaf.compressesTo
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩
      (senderDivGenFq rho) :=
  NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
    (senderDivGenCompressedSpec rho facts)

def spend0ComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩

def spend1ComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend1RkComputed0 rho, spend1RkComputed1 rho⟩

theorem spend0ClaimedRkCompressed
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
      (spend0RkCompressed rho) := by
  exact requiredRkCompressSpec_of_exact rho facts

theorem spend1ClaimedRkCompressed
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
      (spend1RkCompressed rho) := by
  exact optionalRkCompressSpec_of_exact rho facts

theorem spend0Rvk
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    (spend0AuthRandomizer rho).val < 2 ^ 251 ∧
      Decaf377Assumptions.RandomizedVerificationKeySpec
        ⟨authAk0 rho, authAk1 rho⟩
        (spend0AuthRandomizer rho) (spend0ComputedRk rho) ∧
      EdwardsBridge.onCurve
        ⟨(spend0ComputedRk rho).x, (spend0ComputedRk rho).y⟩ := by
  have h := requiredRvkSemanticSpec_of_exact rho facts
  unfold RequiredRvkSemanticSpec at h
  have hcurve :
      EdwardsBridge.onCurve
        ⟨RequiredRvkValuation rho 1807,
         RequiredRvkValuation rho 1808⟩ := by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredRvkAt1807, requiredRvkAt1808
    ] using authorizationKeyOnCurve
  have hr := h.2 hcurve
  refine ⟨?_, ?_, ?_⟩
  · simpa [
      spend0AuthRandomizer, spend0AuthRandomizerLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredRvkAt252
    ] using h.1
  · simpa [
      spend0ComputedRk, spend0AuthRandomizer,
      spend0AuthRandomizerLC,
      authAk0, authAk0LC, authAk1, authAk1LC,
      spend0RkComputed0, spend0RkComputed0LC,
      spend0RkComputed1, spend0RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredRvkAt252, requiredRvkAt1807, requiredRvkAt1808,
      requiredRvkAt1813, requiredRvkAt1814
    ] using hr.1
  · simpa [
      spend0ComputedRk,
      spend0RkComputed0, spend0RkComputed0LC,
      spend0RkComputed1, spend0RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredRvkAt1813, requiredRvkAt1814
    ] using hr.2

theorem spend1Rvk
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    (spend1AuthRandomizer rho).val < 2 ^ 251 ∧
      Decaf377Assumptions.RandomizedVerificationKeySpec
        ⟨authAk0 rho, authAk1 rho⟩
        (spend1AuthRandomizer rho) (spend1ComputedRk rho) ∧
      EdwardsBridge.onCurve
        ⟨(spend1ComputedRk rho).x, (spend1ComputedRk rho).y⟩ := by
  have h := optionalRvkSemanticSpec_of_exact rho facts
  unfold OptionalRvkSemanticSpec at h
  have hcurve :
      EdwardsBridge.onCurve
        ⟨OptionalRvkValuation rho 1807,
         OptionalRvkValuation rho 1808⟩ := by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalRvkAt1807, optionalRvkAt1808
    ] using authorizationKeyOnCurve
  have hr := h.2 hcurve
  refine ⟨?_, ?_, ?_⟩
  · simpa [
      spend1AuthRandomizer, spend1AuthRandomizerLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalRvkAt252
    ] using h.1
  · simpa [
      spend1ComputedRk, spend1AuthRandomizer,
      spend1AuthRandomizerLC,
      authAk0, authAk0LC, authAk1, authAk1LC,
      spend1RkComputed0, spend1RkComputed0LC,
      spend1RkComputed1, spend1RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalRvkAt252, optionalRvkAt1807, optionalRvkAt1808,
      optionalRvkAt1813, optionalRvkAt1814
    ] using hr.1
  · simpa [
      spend1ComputedRk,
      spend1RkComputed0, spend1RkComputed0LC,
      spend1RkComputed1, spend1RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalRvkAt1813, optionalRvkAt1814
    ] using hr.2

theorem spend0RkCrossRatio
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (spend0ComputedRk rho)
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  exact requiredRkEquivalentSpec_of_exact rho facts

theorem spend1RkCrossRatio
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (real : spend1IsDummy rho = 0) :
    Decaf377Assumptions.AssertEquivalentSpec
      (spend1ComputedRk rho)
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  exact optionalRkEquivalentSpec_of_exact rho facts real

theorem spend0RandomizedKey
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    ∃ computed,
      Common.Decaf.randomizedVerificationKey
        ⟨authAk0 rho, authAk1 rho⟩
        (spend0AuthRandomizer rho) computed ∧
      Common.Decaf.equivalent computed
        ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  refine ⟨
    NoteReshapeCanonical.toProtocolPoint (spend0ComputedRk rho),
    ?_, ?_⟩
  · have hmapped := congrArg NoteReshapeCanonical.toProtocolPoint
      (spend0Rvk rho facts authorizationKeyOnCurve).2.1
    simpa [
      Decaf377Assumptions.RandomizedVerificationKeySpec,
      Decaf377Assumptions.rvk,
      Common.Decaf.randomizedVerificationKey,
      Common.Decaf.rvk,
      NoteReshapeRefinement.toProtocolPoint_scalarMulLE
    ] using hmapped
  · apply NoteReshapeRefinement.equivalent_of_circuitSpec
    exact ⟨
      (spend0Rvk rho facts authorizationKeyOnCurve).2.2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
        (spend0RkCompressed rho) (spend0ClaimedRkCompressed rho facts),
      spend0RkCrossRatio rho facts
    ⟩

theorem spend1RandomizedKey
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩)
    (real : spend1IsDummy rho = 0) :
    ∃ computed,
      Common.Decaf.randomizedVerificationKey
        ⟨authAk0 rho, authAk1 rho⟩
        (spend1AuthRandomizer rho) computed ∧
      Common.Decaf.equivalent computed
        ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  refine ⟨
    NoteReshapeCanonical.toProtocolPoint (spend1ComputedRk rho),
    ?_, ?_⟩
  · have hmapped := congrArg NoteReshapeCanonical.toProtocolPoint
      (spend1Rvk rho facts authorizationKeyOnCurve).2.1
    simpa [
      Decaf377Assumptions.RandomizedVerificationKeySpec,
      Decaf377Assumptions.rvk,
      Common.Decaf.randomizedVerificationKey,
      Common.Decaf.rvk,
      NoteReshapeRefinement.toProtocolPoint_scalarMulLE
    ] using hmapped
  · apply NoteReshapeRefinement.equivalent_of_circuitSpec
    exact ⟨
      (spend1Rvk rho facts authorizationKeyOnCurve).2.2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
        (spend1RkCompressed rho) (spend1ClaimedRkCompressed rho facts),
      spend1RkCrossRatio rho facts real
    ⟩

theorem requiredSpend_of_nullifierAssertion
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩)
    (nullifierAsserted :
      spend0NullifierClaimed rho = spend0NullifierReal rho) :
    Concrete.requiredSpend (action rho) := by
  unfold Concrete.requiredSpend Concrete.realSpend
  refine ⟨
    rfl,
    rfl,
    (spend0Rvk rho facts authorizationKeyOnCurve).1,
    requiredNoteCommitment rho facts,
    spend0Member rho facts,
    ?_,
    ?_,
    spend0RandomizedKey rho facts authorizationKeyOnCurve
  ⟩
  · change spend0NullifierClaimed rho =
      Common.nullifier (authNk rho) (spend0NoteCommitmentComputed rho)
        (spend0StateProofPosition rho)
    rw [nullifierAsserted]
    simpa [
      Common.nullifier,
      Poseidon3Bridge.permSpec3,
      Poseidon3Bridge.nullifierDomainLit,
      Poseidon377.nullifierDomain
    ] using spend0NullifierHash rho facts
  · exact
      NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
        (spend0ClaimedRkCompressed rho facts)

theorem optionalRealSpend
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩)
    (real : spend1IsDummy rho = 0) :
    Concrete.realSpend (action rho) (optionalReal rho) := by
  unfold Concrete.realSpend
  refine ⟨
    rfl,
    rfl,
    (spend1Rvk rho facts authorizationKeyOnCurve).1,
    optionalRealNoteCommitment rho facts,
    spend1Member rho facts real,
    ?_,
    ?_,
    spend1RandomizedKey rho facts authorizationKeyOnCurve real
  ⟩
  · change spend1NullifierClaimed rho =
      Common.nullifier (authNk rho) (spend1NoteCommitmentComputed rho)
        (spend1StateProofPosition rho)
    rw [spend1ClaimedNullifierReal rho facts real]
    simpa [
      Common.nullifier,
      Poseidon3Bridge.permSpec3,
      Poseidon3Bridge.nullifierDomainLit,
      Poseidon377.nullifierDomain
    ] using spend1NullifierHash rho facts
  · exact
      NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
        (spend1ClaimedRkCompressed rho facts)

theorem optionalSpend_of_syntheticHash
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩)
    (syntheticHash :
      spend1NullifierSynthetic rho =
        Poseidon377.hash3 Concrete.syntheticDummyNullifierDomain
          (spend1DummyNullifierSeed rho) (spend1AuthRandomizer rho) 1) :
    Concrete.optionalSpend (action rho) := by
  rcases spend1IsDummyBoolean rho facts with real | dummy
  · have notDummy : spend1IsDummy rho ≠ 1 := by
      intro isDummy
      have h01 : (0 : DeployedF) ≠ 1 := by decide
      exact h01 (real.symm.trans isDummy)
    have selected :
        optional rho = .real (optionalReal rho) := by
      simp [
        Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional,
        notDummy]
    dsimp only [Concrete.optionalSpend, action]
    rw [selected]
    exact optionalRealSpend rho facts authorizationKeyOnCurve real
  · have selected :
        optional rho = .dummy (optionalDummy rho) := by
      simp [
        Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional,
        dummy]
    dsimp only [Concrete.optionalSpend, action]
    rw [selected]
    refine ⟨
      spend1DummyAmountZero rho facts dummy,
      (spend1Rvk rho facts authorizationKeyOnCurve).1,
      ?_,
      ?_
    ⟩
    · exact
        NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
          (spend1ClaimedRkCompressed rho facts)
    · change spend1NullifierClaimed rho =
        Poseidon377.hash3 Concrete.syntheticDummyNullifierDomain
          (spend1DummyNullifierSeed rho) (spend1AuthRandomizer rho) 1
      rw [
        spend1ClaimedNullifierDummy rho facts dummy,
        syntheticHash
      ]

theorem balanceCommitmentPoint_of_circuitSpec
    (rho : Nat → DeployedF)
    (h :
      (⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩ :
          Decaf377Assumptions.Point) =
        Decaf377Assumptions.scalarMulLE 251
          Decaf377Assumptions.valueBlindingGenerator
          (actionBalanceBlinding rho)) :
    (⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩ :
        Common.Point DeployedF) =
      Common.Decaf.scalarMulLE 251 Common.Decaf.valueBlindingGenerator
        (actionBalanceBlinding rho) := by
  have mapped := congrArg NoteReshapeCanonical.toProtocolPoint h
  rw [NoteReshapeRefinement.toProtocolPoint_scalarMulLE] at mapped
  change
    (⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩ :
      Common.Point DeployedF) =
      Common.Decaf.scalarMulLE 251 Common.Decaf.valueBlindingGenerator
        (actionBalanceBlinding rho) at mapped
  exact mapped

theorem authorizationKeyOnCurve_of_dtkSpec
    (rho : Nat → DeployedF)
    (h :
      Decaf377Assumptions.DiversifiedTransmissionKeySpec
        (authNk rho)
        ⟨authAk0 rho, authAk1 rho⟩
        ⟨senderDivGen0 rho, senderDivGen1 rho⟩
        (authIvkReduced rho) (authIvkQuotientA rho)
        ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩) :
    EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩ := by
  rcases h.1 with ⟨authorizationKeyEncoding, compressed, _, _⟩
  exact
    Decaf377Assumptions.onCurve_of_compress
      ⟨authAk0 rho, authAk1 rho⟩ authorizationKeyEncoding compressed

theorem canonicalSender_of_circuitSpecs
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyNonIdentity : authAk0 rho ≠ 0)
    (senderDivGenNonIdentity : senderDivGen0 rho ≠ 0)
    (incomingViewingKeyNonzero : authIvkReduced rho ≠ 0)
    (senderTransmissionNonIdentity :
      senderTransmissionComputed0 rho ≠ 0)
    (dtk :
      Decaf377Assumptions.DiversifiedTransmissionKeySpec
        (authNk rho)
        ⟨authAk0 rho, authAk1 rho⟩
        ⟨senderDivGen0 rho, senderDivGen1 rho⟩
        (authIvkReduced rho) (authIvkQuotientA rho)
        ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩)
    (transmissionCompressed :
      Decaf377Assumptions.CompressToFieldSpec
        ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
        (senderTransmissionFq rho)) :
    Concrete.canonicalSender (action rho) := by
  refine ⟨?_, ?_⟩
  · refine ⟨?_, ?_, ?_⟩
    · change authAk0 rho ≠ 0
      exact authorizationKeyNonIdentity
    · refine ⟨?_, ?_⟩
      · refine ⟨?_, senderDivGenCompressed rho facts, ?_⟩
        · change senderDivGen0 rho ≠ 0
          exact senderDivGenNonIdentity
        · exact
          NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
            transmissionCompressed
      · change senderTransmissionComputed0 rho ≠ 0
        exact senderTransmissionNonIdentity
    · exact
        NoteReshapeRefinement.diversifiedTransmissionKey_of_circuitSpec
          (authNk rho)
          ⟨authAk0 rho, authAk1 rho⟩
          ⟨senderDivGen0 rho, senderDivGen1 rho⟩
          ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
          (authIvkReduced rho) (authIvkQuotientA rho)
          dtk
  · change authIvkReduced rho ≠ 0
    exact incomingViewingKeyNonzero

theorem assetLeafHash_of_circuitSpecs
    (rho : Nat → DeployedF)
    (leafHash :
      assetLeafCommitment rho =
        Poseidon5Bridge.permSpec5 Concrete.assetLeafDomain
          (assetLeafValue rho) (assetLeafNextIndex rho)
          (assetLeafNextValue rho)
          (assetLeafParamsHash rho) (assetLeafRingHash rho)) :
    assetLeafCommitment rho =
      Concrete.assetLeafHash (assetLeaf rho) := by
  rw [leafHash]
  rfl

theorem complianceLeafHash_of_circuitSpec
    (rho : Nat → DeployedF)
    (leafHash :
      senderLeafCommitment rho =
        Poseidon6Bridge.permSpec6 Concrete.complianceLeafDomain
          (senderDivGenFq rho) (senderTransmissionFq rho)
          (outboundAssetId rho) (senderSlotId rho)
          (senderSlotDerivation rho) (senderD rho)) :
    senderLeafCommitment rho =
      Concrete.complianceLeafHash (action rho) := by
  rw [leafHash]
  rfl

theorem assetRegistry_of_exactSeams
    (rho : Nat → DeployedF)
    (assetIdNonzero : outboundAssetId rho ≠ 0)
    (isRegulatedBoolean : Common.boolean (isRegulated rho))
    (leafHash :
      assetLeafCommitment rho =
        Concrete.assetLeafHash (assetLeaf rho))
    (member :
      Common.quadMember (assetAnchor rho) (assetLeafCommitment rho)
        (assetPath rho) (assetPosition rho))
    (gap :
      Concrete.registryGap (outboundAssetId rho) (isRegulated rho)
        (assetLeafValue rho) (assetLeafNextValue rho)) :
    Concrete.assetRegistry (action rho) := by
  refine ⟨
    assetIdNonzero,
    isRegulatedBoolean,
    ?_,
    gap
  ⟩
  change Common.quadMember (assetAnchor rho)
    (Concrete.assetLeafHash (assetLeaf rho))
    (assetPath rho) (assetPosition rho)
  rwa [← leafHash]

theorem senderCompliance_of_exactSeams
    (rho : Nat → DeployedF)
    (leafHash :
      senderLeafCommitment rho =
        Concrete.complianceLeafHash (action rho))
    (positionBound : (senderPosition rho).val < 2 ^ 32)
    (pathRoot :
      Common.quadRoot (senderLeafCommitment rho)
          (senderPath rho) (senderPosition rho) =
        senderComplianceRoot rho)
    (rootAsserted :
      isRegulated rho = 1 →
        senderComplianceRoot rho = complianceAnchor rho) :
    Concrete.senderCompliance (action rho) := by
  refine ⟨positionBound, ?_⟩
  intro regulated
  change Common.quadRoot (Concrete.complianceLeafHash (action rho))
      (senderPath rho) (senderPosition rho) = complianceAnchor rho
  rw [← leafHash, pathRoot, rootAsserted regulated]

theorem conservation_of_circuitSpecs
    (rho : Nat → DeployedF)
    (requiredAmountBound : (spend0NoteAmount rho).val < 2 ^ 128)
    (optionalAmountBound : (spend1NoteAmount rho).val < 2 ^ 128)
    (changeAmountBound : (output0NoteAmount rho).val < 2 ^ 128)
    (outboundAmountBound : (outboundAmount rho).val < 2 ^ 128)
    (balanceBlindingBound : (actionBalanceBlinding rho).val < 2 ^ 251)
    (amountsConserved :
      spend0NoteAmount rho + spend1NoteAmount rho =
        output0NoteAmount rho + outboundAmount rho)
    (balancePoint :
      (⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩ :
          Decaf377Assumptions.Point) =
        Decaf377Assumptions.scalarMulLE 251
          Decaf377Assumptions.valueBlindingGenerator
          (actionBalanceBlinding rho))
    (balanceCompressed :
      Decaf377Assumptions.CompressToFieldSpec
        ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩
        (balanceCommitmentFq rho)) :
    Concrete.conservation (action rho) := by
  refine ⟨
    requiredAmountBound,
    ?_,
    changeAmountBound,
    outboundAmountBound,
    balanceBlindingBound,
    ?_,
    ?_
  ⟩
  · change Common.amount128
      (Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
        rho).amount
    rw [optionalAmount_eq]
    exact optionalAmountBound
  · change spend0NoteAmount rho +
      id (α := SemanticF)
        (Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C.optional
          rho).amount = output0NoteAmount rho + outboundAmount rho
    rw [optionalAmount_eq]
    simpa only [id_eq] using amountsConserved
  · have pointEq :=
      balanceCommitmentPoint_of_circuitSpec rho balancePoint
    have compressed :=
      NoteReshapeRefinement.compressesTo_of_circuitSpec
        ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩
        (balanceCommitmentFq rho) balanceCompressed
    simpa [action, ← pointEq] using compressed

theorem actionStatementFields
    (rho : Nat → DeployedF) :
    Concrete.statementFields (action rho) =
      [anchor rho,
       output0NoteCommitmentClaimed rho,
       balanceCommitmentFq rho,
       spend0NullifierClaimed rho,
       spend0RkCompressed rho,
       spend1NullifierClaimed rho,
       spend1RkCompressed rho,
       assetAnchor rho,
       complianceAnchor rho,
       targetTimestamp rho,
       outboundAssetId rho,
       outboundAmount rho,
       withdrawalEffectHashLimb rho 0,
       withdrawalEffectHashLimb rho 1,
       withdrawalEffectHashLimb rho 2,
       withdrawalEffectHashLimb rho 3,
       routingTag rho,
       routingParameterSetId rho] := by
  unfold Concrete.statementFields
  dsimp only [action, required, change, withdrawal]
  rw [optionalNullifier_eq, optionalRkEncoding_eq]

theorem statementBinding_of_exactHash
    (rho : Nat → DeployedF)
    (statementHash :
      claimedStatementHash rho =
        Common.statementHash
          Concrete.statementDomain Concrete.statementPad0 Concrete.statementPad1
          [anchor rho,
           output0NoteCommitmentClaimed rho,
           balanceCommitmentFq rho,
           spend0NullifierClaimed rho,
           spend0RkCompressed rho,
           spend1NullifierClaimed rho,
           spend1RkCompressed rho,
           assetAnchor rho,
           complianceAnchor rho,
           targetTimestamp rho,
           outboundAssetId rho,
           outboundAmount rho,
           withdrawalEffectHashLimb rho 0,
           withdrawalEffectHashLimb rho 1,
           withdrawalEffectHashLimb rho 2,
           withdrawalEffectHashLimb rho 3,
           routingTag rho,
           routingParameterSetId rho]) :
    Concrete.statementBinding (action rho) := by
  unfold Concrete.statementBinding
  change
    claimedStatementHash rho =
      Common.statementHash
        Concrete.statementDomain Concrete.statementPad0 Concrete.statementPad1
        (Concrete.statementFields (action rho))
  rw [actionStatementFields]
  exact statementHash

theorem semanticCircuitFacts_of_exactSeams
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (authorizationKeyNonIdentity : authAk0 rho ≠ 0)
    (senderDivGenNonIdentity : senderDivGen0 rho ≠ 0)
    (incomingViewingKeyNonzero : authIvkReduced rho ≠ 0)
    (senderTransmissionNonIdentity :
      senderTransmissionComputed0 rho ≠ 0)
    (dtk :
      Decaf377Assumptions.DiversifiedTransmissionKeySpec
        (authNk rho)
        ⟨authAk0 rho, authAk1 rho⟩
        ⟨senderDivGen0 rho, senderDivGen1 rho⟩
        (authIvkReduced rho) (authIvkQuotientA rho)
        ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩)
    (transmissionCompressed :
      Decaf377Assumptions.CompressToFieldSpec
        ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
        (senderTransmissionFq rho))
    (requiredNullifierAsserted :
      spend0NullifierClaimed rho = spend0NullifierReal rho)
    (syntheticHash :
      spend1NullifierSynthetic rho =
        Poseidon377.hash3 Concrete.syntheticDummyNullifierDomain
          (spend1DummyNullifierSeed rho) (spend1AuthRandomizer rho) 1)
    (assetCommitmentHash :
      assetLeafCommitment rho =
        Poseidon5Bridge.permSpec5 Concrete.assetLeafDomain
          (assetLeafValue rho) (assetLeafNextIndex rho)
          (assetLeafNextValue rho)
          (assetLeafParamsHash rho) (assetLeafRingHash rho))
    (assetIdNonzero : outboundAssetId rho ≠ 0)
    (isRegulatedBoolean : Common.boolean (isRegulated rho))
    (assetMember :
      Common.quadMember (assetAnchor rho) (assetLeafCommitment rho)
        (assetPath rho) (assetPosition rho))
    (assetGap :
      Concrete.registryGap (outboundAssetId rho) (isRegulated rho)
        (assetLeafValue rho) (assetLeafNextValue rho))
    (complianceLeaf :
      senderLeafCommitment rho =
        Poseidon6Bridge.permSpec6 Concrete.complianceLeafDomain
          (senderDivGenFq rho) (senderTransmissionFq rho)
          (outboundAssetId rho) (senderSlotId rho)
          (senderSlotDerivation rho) (senderD rho))
    (compliancePositionBound : (senderPosition rho).val < 2 ^ 32)
    (compliancePathRoot :
      Common.quadRoot (senderLeafCommitment rho)
          (senderPath rho) (senderPosition rho) =
        senderComplianceRoot rho)
    (complianceRootAsserted :
      isRegulated rho = 1 →
        senderComplianceRoot rho = complianceAnchor rho)
    (requiredAmountBound : (spend0NoteAmount rho).val < 2 ^ 128)
    (optionalAmountBound : (spend1NoteAmount rho).val < 2 ^ 128)
    (changeAmountBound : (output0NoteAmount rho).val < 2 ^ 128)
    (outboundAmountBound : (outboundAmount rho).val < 2 ^ 128)
    (balanceBlindingBound : (actionBalanceBlinding rho).val < 2 ^ 251)
    (amountsConserved :
      spend0NoteAmount rho + spend1NoteAmount rho =
        output0NoteAmount rho + outboundAmount rho)
    (balancePoint :
      (⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩ :
          Decaf377Assumptions.Point) =
        Decaf377Assumptions.scalarMulLE 251
          Decaf377Assumptions.valueBlindingGenerator
          (actionBalanceBlinding rho))
    (balanceCompressed :
      Decaf377Assumptions.CompressToFieldSpec
        ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩
        (balanceCommitmentFq rho))
    (statementHash :
      claimedStatementHash rho =
        Common.statementHash
          Concrete.statementDomain Concrete.statementPad0 Concrete.statementPad1
          [anchor rho,
           output0NoteCommitmentClaimed rho,
           balanceCommitmentFq rho,
           spend0NullifierClaimed rho,
           spend0RkCompressed rho,
           spend1NullifierClaimed rho,
           spend1RkCompressed rho,
           assetAnchor rho,
           complianceAnchor rho,
           targetTimestamp rho,
           outboundAssetId rho,
           outboundAmount rho,
           withdrawalEffectHashLimb rho 0,
           withdrawalEffectHashLimb rho 1,
           withdrawalEffectHashLimb rho 2,
           withdrawalEffectHashLimb rho 3,
           routingTag rho,
           routingParameterSetId rho]) :
    Protocol.ShieldedIcs20Withdrawal.CircuitFacts
      Concrete.circuitPrimitives (action rho) := by
  have authorizationKeyOnCurve :=
    authorizationKeyOnCurve_of_dtkSpec rho dtk
  exact {
    canonicalSender :=
      canonicalSender_of_circuitSpecs
        rho facts authorizationKeyNonIdentity senderDivGenNonIdentity
        incomingViewingKeyNonzero senderTransmissionNonIdentity
        dtk transmissionCompressed
    requiredSpend :=
      requiredSpend_of_nullifierAssertion
        rho facts authorizationKeyOnCurve requiredNullifierAsserted
    optionalSpend :=
      optionalSpend_of_syntheticHash
        rho facts authorizationKeyOnCurve syntheticHash
    changeOutput := changeOutput rho facts
    assetRegistry :=
      assetRegistry_of_exactSeams rho
        assetIdNonzero isRegulatedBoolean
        (assetLeafHash_of_circuitSpecs rho assetCommitmentHash)
        assetMember assetGap
    senderCompliance :=
      senderCompliance_of_exactSeams rho
        (complianceLeafHash_of_circuitSpec rho complianceLeaf)
        compliancePositionBound compliancePathRoot complianceRootAsserted
    conservation :=
      conservation_of_circuitSpecs rho
        requiredAmountBound optionalAmountBound
        changeAmountBound outboundAmountBound balanceBlindingBound
        amountsConserved balancePoint balanceCompressed
    statementBinding :=
      statementBinding_of_exactHash rho statementHash
  }

end C

end Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalSemanticTranslator
