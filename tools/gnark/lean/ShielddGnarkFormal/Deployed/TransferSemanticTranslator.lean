import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Contracts.Transfer.ActionSeams
import ShielddGnarkFormal.Deployed.Contracts.Transfer.CryptoSeams
import ShielddGnarkFormal.Deployed.Contracts.Transfer.TranscriptSeams
import ShielddGnarkFormal.Protocol.Transfer.Concrete
import ShielddGnarkFormal.Protocol.Transfer.Refinement
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
import ShielddGnarkFormal.NoteReshapeCommitmentBridge
import ShielddGnarkFormal.StateMembership925Bridge
import ShielddGnarkFormal.Poseidon3Spec
import ShielddGnarkFormal.Poseidon6Spec

/-!
Stable composition of action-level Transfer facts.

Compiler segments, provider identities, and local wire geometry terminate in
generated seam modules. This module only assembles protocol-typed facts.
-/

namespace Shieldd.GnarkFormal.Deployed.TransferSemanticTranslator.C

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol
open Protocol.Transfer
open Deployed.Contracts.Transfer
open Deployed.TransferRefinement.C

attribute [-instance] ZMod.instField
private local instance choiceFreeTransferTranslatorCommRing :
    CommRing DeployedF :=
  ZMod.commRing _

private theorem negOne :
    (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
      DeployedF) = -1 := by
  decide

/-- The required note commitment is the certified six-input hash. -/
theorem requiredNoteCommitment
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Concrete.noteCommitment (requiredNote rho) := by
  have h := semantic.requiredNoteCommitment
  unfold RequiredNoteCommitmentSemanticSpec at h
  unfold Concrete.noteCommitment Common.noteCommitmentHash
  simp only [requiredNote, sender]
  apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
    (RequiredNoteCommitmentValuation rho) h
  · simp only [
      spend0NoteCommitmentComputed, spend0NoteCommitmentComputedLC,
      Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt408, requiredNoteCommitmentAt413,
      requiredNoteCommitmentAt418, requiredNoteCommitmentAt423,
      requiredNoteCommitmentAt428, requiredNoteCommitmentAt433,
      requiredNoteCommitmentAt438,
      zero_add, add_zero, one_mul]
    ring
  · simp [spend0NoteBlinding, spend0NoteBlindingLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt1]
  · simp [spend0NoteAmount, spend0NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt7]
  · simp [sharedAssetId, sharedAssetIdLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt13]
  · simp [senderDivGenFq, senderDivGenFqLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt19, requiredNoteCommitmentAt20, negOne]
    rw [negOne]
    ring
  · simp [senderTransmissionFq, senderTransmissionFqLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt26, requiredNoteCommitmentAt27, negOne]
    rw [negOne]
    ring
  · simp [requiredNote, sender, senderClueKey, senderClueKeyLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredNoteCommitmentAt33]
    change rho 132 = rho 132
    rfl

/-- The optional real note commitment is the certified six-input hash. -/
theorem optionalRealNoteCommitment
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Concrete.noteCommitment (optionalRealNote rho) := by
  have h := semantic.optionalNoteCommitment
  unfold OptionalNoteCommitmentSemanticSpec at h
  unfold Concrete.noteCommitment Common.noteCommitmentHash
  simp only [optionalRealNote, sender]
  apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
    (OptionalNoteCommitmentValuation rho) h
  · simp only [
      spend1NoteCommitmentComputed, spend1NoteCommitmentComputedLC,
      Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt408, optionalNoteCommitmentAt413,
      optionalNoteCommitmentAt418, optionalNoteCommitmentAt423,
      optionalNoteCommitmentAt428, optionalNoteCommitmentAt433,
      optionalNoteCommitmentAt438,
      zero_add, add_zero, one_mul]
    ring
  · simp [spend1NoteBlinding, spend1NoteBlindingLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt1]
  · simp [spend1NoteAmount, spend1NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt7]
  · simp [sharedAssetId, sharedAssetIdLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt13]
  · simp [senderDivGenFq, senderDivGenFqLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt19, optionalNoteCommitmentAt20, negOne]
    rw [negOne]
    ring
  · simp [senderTransmissionFq, senderTransmissionFqLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt26, optionalNoteCommitmentAt27, negOne]
    rw [negOne]
    ring
  · simp [optionalRealNote, sender, senderClueKey, senderClueKeyLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalNoteCommitmentAt33]
    change rho 132 = rho 132
    rfl

/-- The receiver's claimed commitment is the certified note hash. -/
theorem receiverNoteCommitment
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Concrete.noteCommitment (receiverNote rho) := by
  have hhash := semantic.receiverNoteCommitment
  unfold ReceiverNoteCommitmentSemanticSpec at hhash
  have hcomputed :
      output0NoteCommitmentComputed rho =
        Poseidon6Bridge.permSpec6 Common.noteCommitmentDomain
          (output0NoteBlinding rho) (output0NoteAmount rho)
          (sharedAssetId rho) (output0RecipientDivGenFq rho)
          (output0RecipientTransmissionFq rho)
          (output0NoteClueKey rho) := by
    apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
      (ReceiverNoteCommitmentValuation rho) hhash
    · simp only [
        output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
        Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        receiverNoteCommitmentAt408, receiverNoteCommitmentAt413,
        receiverNoteCommitmentAt418, receiverNoteCommitmentAt423,
        receiverNoteCommitmentAt428, receiverNoteCommitmentAt433,
        receiverNoteCommitmentAt438,
        zero_add, add_zero, one_mul]
      ring
    · simp [output0NoteBlinding, output0NoteBlindingLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, receiverNoteCommitmentAt1]
    · simp [output0NoteAmount, output0NoteAmountLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, receiverNoteCommitmentAt7]
    · simp [sharedAssetId, sharedAssetIdLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, receiverNoteCommitmentAt13]
    · simp [output0RecipientDivGenFq, output0RecipientDivGenFqLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        receiverNoteCommitmentAt19, receiverNoteCommitmentAt20, negOne]
      rw [negOne]
      ring
    · simp [
        output0RecipientTransmissionFq,
        output0RecipientTransmissionFqLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        receiverNoteCommitmentAt26, receiverNoteCommitmentAt27, negOne]
      rw [negOne]
      ring
    · simp [output0NoteClueKey, output0NoteClueKeyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, receiverNoteCommitmentAt33]
  have hclaimed :=
    receiverNoteClaimed_eq_computed_of_semantic rho semantic
  unfold Concrete.noteCommitment Common.noteCommitmentHash
  simp only [receiverNote, receiverAddress]
  rw [hclaimed]
  simpa [Poseidon6Bridge.permSpec6, Common.noteCommitmentDomain] using
    hcomputed

/-- The change output's claimed commitment is the certified note hash. -/
theorem changeNoteCommitment
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Concrete.noteCommitment (changeNote rho) := by
  have hhash := semantic.changeNoteCommitment
  unfold ChangeNoteCommitmentSemanticSpec at hhash
  have hcomputed :
      output1NoteCommitmentComputed rho =
        Poseidon6Bridge.permSpec6 Common.noteCommitmentDomain
          (output1NoteBlinding rho) (output1NoteAmount rho)
          (sharedAssetId rho) (senderDivGenFq rho)
          (senderTransmissionFq rho) (senderClueKey rho) := by
    apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
      (ChangeNoteCommitmentValuation rho) hhash
    · simp only [
        output1NoteCommitmentComputed, output1NoteCommitmentComputedLC,
        Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        changeNoteCommitmentAt408, changeNoteCommitmentAt413,
        changeNoteCommitmentAt418, changeNoteCommitmentAt423,
        changeNoteCommitmentAt428, changeNoteCommitmentAt433,
        changeNoteCommitmentAt438,
        zero_add, add_zero, one_mul]
      ring
    · simp [output1NoteBlinding, output1NoteBlindingLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, changeNoteCommitmentAt1]
    · simp [output1NoteAmount, output1NoteAmountLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, changeNoteCommitmentAt7]
    · simp [sharedAssetId, sharedAssetIdLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, changeNoteCommitmentAt13]
    · simp [senderDivGenFq, senderDivGenFqLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        changeNoteCommitmentAt19, changeNoteCommitmentAt20, negOne]
      rw [negOne]
      ring
    · simp [senderTransmissionFq, senderTransmissionFqLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        changeNoteCommitmentAt26, changeNoteCommitmentAt27, negOne]
      rw [negOne]
      ring
    · simp [senderClueKey, senderClueKeyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, changeNoteCommitmentAt33]
  have hclaimed :=
    changeNoteClaimed_eq_computed_of_semantic rho semantic
  unfold Concrete.noteCommitment Common.noteCommitmentHash
  simp only [changeNote, sender]
  rw [hclaimed]
  simpa [Poseidon6Bridge.permSpec6, Common.noteCommitmentDomain] using
    hcomputed

/-- The required state-path root is bound to the public anchor. -/
theorem requiredAnchorAsserted
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    anchor rho = spend0AnchorComputed rho :=
  requiredAnchor_eq_computed_of_semantic rho semantic

/-- A real optional spend's state-path root is bound to the public anchor. -/
theorem optionalAnchorAsserted
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    anchor rho = spend1AnchorComputed rho :=
  optionalAnchor_eq_computed_of_semantic rho semantic real

/-- The required note is a member of the public state anchor. -/
theorem requiredMember
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Common.stateMember (anchor rho) (spend0NoteCommitmentComputed rho)
      (spend0StateProofPosition rho) (requiredPath rho) := by
  have h := semantic.requiredStatePath
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
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, requiredStatePathAt286
    ]
  · exact (requiredStatePathProviderPath_eq rho).symm
  · rw [requiredAnchorAsserted rho semantic]
    simp [
      StateMembership925Bridge.rootOutput,
      spend0AnchorComputed, spend0AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      requiredStatePathAt8978, requiredStatePathAt8983,
      requiredStatePathAt8988, requiredStatePathAt8993,
      requiredStatePathAt8998
    ]
    ring

/-- A real optional note is a member of the public state anchor. -/
theorem optionalMember
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    Common.stateMember (anchor rho) (spend1NoteCommitmentComputed rho)
      (spend1StateProofPosition rho) (optionalPath rho) := by
  have h := semantic.optionalStatePath
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
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, optionalStatePathAt286
    ]
  · exact (optionalStatePathProviderPath_eq rho).symm
  · rw [optionalAnchorAsserted rho semantic real]
    simp [
      StateMembership925Bridge.rootOutput,
      spend1AnchorComputed, spend1AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      optionalStatePathAt8978, optionalStatePathAt8983,
      optionalStatePathAt8988, optionalStatePathAt8993,
      optionalStatePathAt8998
    ]
    ring

/-- The required real nullifier is the certified Poseidon3 output. -/
theorem requiredNullifierHash
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend0NullifierReal rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend0NoteCommitmentComputed rho)
        (spend0StateProofPosition rho) := by
  have h := semantic.requiredNullifier
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
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      requiredNullifierAt304, requiredNullifierAt309,
      requiredNullifierAt314, requiredNullifierAt319
    ]
    ring
  rw [houtput, ← requiredNullifierStateCommitment_eq rho]
  simpa [
    authNk, authNkLC, spend0StateProofPosition,
    spend0StateProofPositionLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual,
    requiredNullifierAt1, requiredNullifierAt19
  ] using h

/-- The optional real nullifier is the certified Poseidon3 output. -/
theorem optionalNullifierHash
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend1NullifierReal rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend1NoteCommitmentComputed rho)
        (spend1StateProofPosition rho) := by
  have h := semantic.optionalNullifier
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
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      optionalNullifierAt304, optionalNullifierAt309,
      optionalNullifierAt314, optionalNullifierAt319
    ]
    ring
  rw [houtput, ← optionalNullifierStateCommitment_eq rho]
  simpa [
    authNk, authNkLC, spend1StateProofPosition,
    spend1StateProofPositionLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual,
    optionalNullifierAt1, optionalNullifierAt19
  ] using h

/-- The public required nullifier equals the real-nullifier gadget output. -/
theorem requiredNullifierAsserted
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend0NullifierClaimed rho = spend0NullifierReal rho :=
  requiredNullifierClaimed_eq_real_of_semantic rho semantic

/-- The optional selector is Boolean. -/
theorem optionalIsDummyBoolean
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend1IsDummy rho = 0 ∨ spend1IsDummy rho = 1 := by
  have h := semantic.optionalIsDummyBoolean
  simpa [
    OptionalIsDummyBooleanSemanticSpec,
    spend1IsDummy, spend1IsDummyLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, optionalIsDummyBooleanAt1
  ] using h

/-- The claimed optional nullifier equals the mux output. -/
theorem optionalClaimedNullifierSelected
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend1NullifierClaimed rho = spend1NullifierSelected rho := by
  have h := semantic.optionalNullifierAssert
  simpa [
    OptionalNullifierAssertSemanticSpec,
    spend1NullifierClaimed, spend1NullifierClaimedLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual,
    optionalNullifierAssertAt1, optionalNullifierAssertAt2,
    optionalNullifierAssertAt3
  ] using h.symm

/-- In the real branch the optional mux selects the real nullifier. -/
theorem optionalClaimedNullifierReal
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    spend1NullifierClaimed rho = spend1NullifierReal rho := by
  calc
    spend1NullifierClaimed rho = spend1NullifierSelected rho :=
      optionalClaimedNullifierSelected rho semantic
    _ = spend1NullifierReal rho :=
      optionalNullifierSelected_eq_real_of_semantic rho semantic real

/-- In the dummy branch the optional mux selects the synthetic nullifier. -/
theorem optionalClaimedNullifierDummy
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NullifierClaimed rho = spend1NullifierSynthetic rho := by
  calc
    spend1NullifierClaimed rho = spend1NullifierSelected rho :=
      optionalClaimedNullifierSelected rho semantic
    _ = spend1NullifierSynthetic rho :=
      optionalNullifierSelected_eq_synthetic_of_semantic
        rho semantic dummy

/-- A dummy optional spend has zero amount. -/
theorem optionalDummyAmountZero
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NoteAmount rho = 0 :=
  optionalDummyAmountZero_of_semantic rho semantic dummy

/-- Both optional-spend constructors expose the same circuit amount. -/
theorem optionalAmount_eq (rho : Nat → DeployedF) :
    (TransferRefinement.C.optional rho).amount =
      spend1NoteAmount rho := by
  by_cases h : spend1IsDummy rho = 1
  · simp [
      TransferRefinement.C.optional, optionalDummy,
      Protocol.Transfer.OptionalSpend.amount, h
    ]
  · simp [
      TransferRefinement.C.optional, optionalReal, optionalRealNote,
      Protocol.Transfer.OptionalSpend.amount, h
    ]

def requiredComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩

def optionalComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend1RkComputed0 rho, spend1RkComputed1 rho⟩

/-- The required RVK provider proves its bound, output, and on-curve result. -/
theorem requiredRvk
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    (spend0AuthRandomizer rho).val < 2 ^ 251 ∧
      Decaf377Assumptions.RandomizedVerificationKeySpec
        ⟨authAk0 rho, authAk1 rho⟩
        (spend0AuthRandomizer rho) (requiredComputedRk rho) ∧
      EdwardsBridge.onCurve
        ⟨(requiredComputedRk rho).x, (requiredComputedRk rho).y⟩ := by
  have h := semantic.requiredRvk
  unfold RequiredRvkSemanticSpec at h
  have hcurve :
      EdwardsBridge.onCurve
        ⟨RequiredRvkValuation rho 1807,
         RequiredRvkValuation rho 1808⟩ := by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      requiredRvkAt1807, requiredRvkAt1808
    ] using authorizationKeyOnCurve
  have hr := h.2 hcurve
  refine ⟨?_, ?_, ?_⟩
  · simpa [
      spend0AuthRandomizer, spend0AuthRandomizerLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, requiredRvkAt252
    ] using h.1
  · simpa [
      requiredComputedRk, spend0AuthRandomizer,
      spend0AuthRandomizerLC,
      authAk0, authAk0LC, authAk1, authAk1LC,
      spend0RkComputed0, spend0RkComputed0LC,
      spend0RkComputed1, spend0RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      requiredRvkAt252, requiredRvkAt1807, requiredRvkAt1808,
      requiredRvkAt1813, requiredRvkAt1814
    ] using hr.1
  · simpa [
      requiredComputedRk,
      spend0RkComputed0, spend0RkComputed0LC,
      spend0RkComputed1, spend0RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      requiredRvkAt1813, requiredRvkAt1814
    ] using hr.2

/-- The optional RVK provider proves its bound, output, and on-curve result. -/
theorem optionalRvk
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    (spend1AuthRandomizer rho).val < 2 ^ 251 ∧
      Decaf377Assumptions.RandomizedVerificationKeySpec
        ⟨authAk0 rho, authAk1 rho⟩
        (spend1AuthRandomizer rho) (optionalComputedRk rho) ∧
      EdwardsBridge.onCurve
        ⟨(optionalComputedRk rho).x, (optionalComputedRk rho).y⟩ := by
  have h := semantic.optionalRvk
  unfold OptionalRvkSemanticSpec at h
  have hcurve :
      EdwardsBridge.onCurve
        ⟨OptionalRvkValuation rho 1807,
         OptionalRvkValuation rho 1808⟩ := by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      optionalRvkAt1807, optionalRvkAt1808
    ] using authorizationKeyOnCurve
  have hr := h.2 hcurve
  refine ⟨?_, ?_, ?_⟩
  · simpa [
      spend1AuthRandomizer, spend1AuthRandomizerLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, optionalRvkAt252
    ] using h.1
  · simpa [
      optionalComputedRk, spend1AuthRandomizer,
      spend1AuthRandomizerLC,
      authAk0, authAk0LC, authAk1, authAk1LC,
      spend1RkComputed0, spend1RkComputed0LC,
      spend1RkComputed1, spend1RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      optionalRvkAt252, optionalRvkAt1807, optionalRvkAt1808,
      optionalRvkAt1813, optionalRvkAt1814
    ] using hr.1
  · simpa [
      optionalComputedRk,
      spend1RkComputed0, spend1RkComputed0LC,
      spend1RkComputed1, spend1RkComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual,
      optionalRvkAt1813, optionalRvkAt1814
    ] using hr.2

/-- Required claimed and computed RVKs are Decaf-equivalent. -/
theorem requiredRandomizedKey
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    ∃ computed,
      Common.Decaf.randomizedVerificationKey
        ⟨authAk0 rho, authAk1 rho⟩
        (spend0AuthRandomizer rho) computed ∧
      Common.Decaf.equivalent computed
        ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  have hCrossRatio :
      Decaf377Assumptions.AssertEquivalentSpec
        (requiredComputedRk rho)
        ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
    simpa only [requiredComputedRk] using
      requiredRkCrossRatio_of_semantic rho semantic
  refine ⟨
    NoteReshapeCanonical.toProtocolPoint (requiredComputedRk rho),
    ?_, ?_⟩
  · have hmapped := congrArg NoteReshapeCanonical.toProtocolPoint
      (requiredRvk rho semantic authorizationKeyOnCurve).2.1
    simpa [
      Decaf377Assumptions.RandomizedVerificationKeySpec,
      Decaf377Assumptions.rvk,
      Common.Decaf.randomizedVerificationKey,
      Common.Decaf.rvk,
      NoteReshapeRefinement.toProtocolPoint_scalarMulLE
    ] using hmapped
  · apply NoteReshapeRefinement.equivalent_of_circuitSpec
    exact ⟨
      (requiredRvk rho semantic authorizationKeyOnCurve).2.2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
        (spend0RkCompressed rho)
        (requiredRkCompressSpec_of_semantic rho semantic),
      hCrossRatio
    ⟩

/-- Optional claimed and computed RVKs are Decaf-equivalent when real. -/
theorem optionalRandomizedKey
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩)
    (real : spend1IsDummy rho = 0) :
    ∃ computed,
      Common.Decaf.randomizedVerificationKey
        ⟨authAk0 rho, authAk1 rho⟩
        (spend1AuthRandomizer rho) computed ∧
      Common.Decaf.equivalent computed
        ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  have hCrossRatio :
      Decaf377Assumptions.AssertEquivalentSpec
        (optionalComputedRk rho)
        ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
    simpa only [optionalComputedRk] using
      optionalRkCrossRatio_of_semantic rho semantic real
  refine ⟨
    NoteReshapeCanonical.toProtocolPoint (optionalComputedRk rho),
    ?_, ?_⟩
  · have hmapped := congrArg NoteReshapeCanonical.toProtocolPoint
      (optionalRvk rho semantic authorizationKeyOnCurve).2.1
    simpa [
      Decaf377Assumptions.RandomizedVerificationKeySpec,
      Decaf377Assumptions.rvk,
      Common.Decaf.randomizedVerificationKey,
      Common.Decaf.rvk,
      NoteReshapeRefinement.toProtocolPoint_scalarMulLE
    ] using hmapped
  · apply NoteReshapeRefinement.equivalent_of_circuitSpec
    exact ⟨
      (optionalRvk rho semantic authorizationKeyOnCurve).2.2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
        (spend1RkCompressed rho)
        (optionalRkCompressSpec_of_semantic rho semantic),
      hCrossRatio
    ⟩

/-- Compose the encoded sender address and canonical authorization relation. -/
theorem canonicalSender_of_semantics
    (rho : Nat → SemanticF)
    (authorizationKeyNonIdentity :
      Common.Decaf.nonIdentity (authorization rho).authorizationKey)
    (senderDivGenNonIdentity :
      Common.Decaf.nonIdentity (sender rho).diversifiedGenerator)
    (incomingViewingKeyNonzero :
      Common.Decaf.incomingViewingKeyNonzero
        (authorization rho).ivkReduced)
    (senderTransmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (sender rho).transmission)
    (senderDivGenCompressed :
      Common.Decaf.compressesTo
        (sender rho).diversifiedGenerator
        (sender rho).diversifiedGeneratorEncoding)
    (senderTransmissionCompressed :
      Common.Decaf.compressesTo
        (sender rho).transmission
        (sender rho).transmissionEncoding)
    (transmissionKey :
      ∃ computedTransmission,
        Common.Decaf.diversifiedTransmissionKey
          (authorization rho).nullifierKey
          (authorization rho).authorizationKey
          (sender rho).diversifiedGenerator
          (authorization rho).ivkReduced
          (authorization rho).ivkQuotientA
          computedTransmission ∧
        Common.Decaf.equivalent
          computedTransmission (sender rho).transmission) :
    Concrete.canonicalSender (action rho) := by
  refine ⟨?_, incomingViewingKeyNonzero⟩
  refine ⟨authorizationKeyNonIdentity, ?_, rfl, transmissionKey⟩
  exact ⟨
    ⟨senderDivGenNonIdentity, senderDivGenCompressed,
      senderTransmissionCompressed⟩,
    senderTransmissionNonIdentity
  ⟩

/-- The exact DTK witness puts the authorization key on curve. -/
theorem authorizationKeyOnCurve
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩ := by
  rcases (senderDtkSpec_of_semantic rho semantic).1.1 with
    ⟨authorizationKeyEncoding, compressed, _, _⟩
  have hCurve := compressed.1
  unfold Common.Decaf.onCurve Common.Decaf.curveD at hCurve
  unfold EdwardsBridge.onCurve EdwardsBridge.d
  linear_combination hCurve

/-- Quotient equivalence carries the circuit's raw transmission-key
non-identity guard to the computed representative used by the action. -/
theorem senderTransmissionComputedNonIdentity_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (rawNonIdentity : senderTransmission0 rho ≠ 0) :
    Common.Decaf.transmissionKeyNonIdentity
      (sender rho).transmission := by
  letI : Fact (Nat.Prime Deployed.Contracts.Transfer.SemanticOrder) :=
    ⟨Deployed.decaf377ScalarFieldPrime⟩
  have heq := senderTransmissionEquivalentSpec_of_semantic rho semantic
  unfold Common.Decaf.transmissionKeyNonIdentity Common.Decaf.nonIdentity
  simp only [sender]
  intro hComputedX
  have hComputedY : senderTransmissionComputed1 rho = 0 := by
    have hcross := heq.2.2
    unfold Decaf377Assumptions.AssertEquivalentSpec at hcross
    have hprod :
        senderTransmission0 rho * senderTransmissionComputed1 rho = 0 := by
      rw [hComputedX] at hcross
      simpa only [zero_mul] using hcross.symm
    exact (mul_eq_zero.mp hprod).resolve_left rawNonIdentity
  have hcurve := heq.1
  unfold EdwardsBridge.onCurve at hcurve
  rw [hComputedX, hComputedY] at hcurve
  norm_num at hcurve

/-- Compose all exact sender-address and DTK semantics. -/
theorem canonicalSender_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyNonIdentity :
      Common.Decaf.nonIdentity (authorization rho).authorizationKey)
    (senderDivGenNonIdentity :
      Common.Decaf.nonIdentity (sender rho).diversifiedGenerator)
    (incomingViewingKeyNonzero :
      Common.Decaf.incomingViewingKeyNonzero
        (authorization rho).ivkReduced)
    (senderTransmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (sender rho).transmission) :
    Concrete.canonicalSender (action rho) := by
  apply canonicalSender_of_semantics
    rho authorizationKeyNonIdentity senderDivGenNonIdentity
      incomingViewingKeyNonzero senderTransmissionNonIdentity
  · exact NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
      (senderDivGenCompressedSpec_of_semantic rho semantic)
  · exact NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
      (senderTransmissionCompressedSpec_of_semantic rho semantic)
  · refine ⟨
      ⟨senderTransmissionComputed0 rho,
       senderTransmissionComputed1 rho⟩, ?_, ?_⟩
    · simpa only [authorization, sender] using
        (senderDtkSpec_of_semantic rho semantic).1
    · change Common.Decaf.equivalent
        ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
        ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
      have heq := senderTransmissionEquivalentSpec_of_semantic rho semantic
      unfold Common.Decaf.equivalent
      refine ⟨?_, ?_, ?_⟩
      · simpa only [
          Common.Decaf.onCurve, Common.Decaf.curveD,
          EdwardsBridge.onCurve, EdwardsBridge.d,
          sub_eq_add_neg, add_comm
        ] using heq.1
      · simpa only [
          Common.Decaf.onCurve, Common.Decaf.curveD,
          EdwardsBridge.onCurve, EdwardsBridge.d,
          sub_eq_add_neg, add_comm
        ] using heq.1
      · simp only [
          Decaf377Assumptions.DecafEquivalent,
          Decaf377Assumptions.AssertEquivalentSpec
        ]

/-- Assemble the required real-spend relation from action-level facts. -/
theorem requiredSpend_of_semantics
    (rho : Nat → SemanticF)
    (randomizerBound : ((required rho).authRandomizer).val < 2 ^ 251)
    (commitment : Concrete.noteCommitment (required rho).note)
    (member :
      Common.stateMember (action rho).anchor
        (required rho).note.commitment
        (required rho).position (required rho).path)
    (nullifier :
      (required rho).nullifier =
        Common.nullifier (authorization rho).nullifierKey
          (required rho).note.commitment (required rho).position)
    (randomizedKey :
      ∃ computedRk,
        Common.Decaf.randomizedVerificationKey
          (authorization rho).authorizationKey
          (required rho).authRandomizer computedRk ∧
        Common.Decaf.equivalent
          computedRk (required rho).randomizedVerificationKey)
    (compressed :
      Common.Decaf.compressesTo
        (required rho).randomizedVerificationKey
        (required rho).randomizedVerificationKeyEncoding) :
    Concrete.requiredSpend (action rho) := by
  unfold Concrete.requiredSpend Concrete.realSpend
  exact
    ⟨rfl, rfl, rfl, randomizerBound, commitment, member, nullifier,
      randomizedKey, compressed⟩

/-- Compose the required spend from certified provider semantics. -/
theorem requiredSpend_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    Concrete.requiredSpend (action rho) := by
  apply requiredSpend_of_semantics rho
  · exact (requiredRvk rho semantic authorizationKeyOnCurve).1
  · exact requiredNoteCommitment rho semantic
  · exact requiredMember rho semantic
  · change spend0NullifierClaimed rho =
      Common.nullifier (authNk rho)
        (spend0NoteCommitmentComputed rho)
        (spend0StateProofPosition rho)
    rw [requiredNullifierAsserted rho semantic]
    simpa [
      Common.nullifier,
      Poseidon3Bridge.permSpec3,
      Poseidon3Bridge.nullifierDomainLit,
      Poseidon377.nullifierDomain
    ] using requiredNullifierHash rho semantic
  · exact
      requiredRandomizedKey rho semantic authorizationKeyOnCurve
  · exact
      NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
        (requiredRkCompressSpec_of_semantic rho semantic)

/-- Compose the real optional-spend branch from certified providers. -/
theorem optionalRealSpend_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩)
    (real : spend1IsDummy rho = 0) :
    Concrete.realSpend (action rho) (optionalReal rho) := by
  unfold Concrete.realSpend
  refine ⟨
    rfl,
    rfl,
    rfl,
    (optionalRvk rho semantic authorizationKeyOnCurve).1,
    optionalRealNoteCommitment rho semantic,
    optionalMember rho semantic real,
    ?_,
    optionalRandomizedKey
      rho semantic authorizationKeyOnCurve real,
    NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
      (optionalRkCompressSpec_of_semantic rho semantic)
  ⟩
  change spend1NullifierClaimed rho =
    Common.nullifier (authNk rho)
      (spend1NoteCommitmentComputed rho)
      (spend1StateProofPosition rho)
  rw [optionalClaimedNullifierReal rho semantic real]
  simpa [
    Common.nullifier,
    Poseidon3Bridge.permSpec3,
    Poseidon3Bridge.nullifierDomainLit,
    Poseidon377.nullifierDomain
  ] using optionalNullifierHash rho semantic

/-- Compose either optional-spend branch from its Boolean selector. -/
theorem optionalSpend_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩) :
    Concrete.optionalSpend (action rho) := by
  rcases optionalIsDummyBoolean rho semantic with real | dummy
  · have notDummy : spend1IsDummy rho ≠ 1 := by
      intro isDummy
      have h01 : (0 : DeployedF) ≠ 1 := by decide
      exact h01 (real.symm.trans isDummy)
    have selected :
        TransferRefinement.C.optional rho =
          .real (optionalReal rho) := by
      simp [TransferRefinement.C.optional, notDummy]
    dsimp only [Concrete.optionalSpend, action]
    rw [selected]
    exact
      optionalRealSpend_of_semanticProviders
        rho semantic authorizationKeyOnCurve real
  · have selected :
        TransferRefinement.C.optional rho =
          .dummy (optionalDummy rho) := by
      simp [TransferRefinement.C.optional, dummy]
    dsimp only [Concrete.optionalSpend, action]
    rw [selected]
    refine ⟨
      optionalDummyAmountZero rho semantic dummy,
      (optionalRvk rho semantic authorizationKeyOnCurve).1,
      ?_,
      NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
        (optionalRkCompressSpec_of_semantic rho semantic)
    ⟩
    change spend1NullifierClaimed rho =
      Poseidon377.hash3 Concrete.syntheticDummyNullifierDomain
        (spend1DummyNullifierSeed rho)
        (spend1AuthRandomizer rho) 1
    rw [
      optionalClaimedNullifierDummy rho semantic dummy,
      optionalSyntheticNullifierHash_of_semantic rho semantic
    ]

/-- Assemble the receiver output relation from action-level facts. -/
theorem receiverOutput_of_semantics
    (rho : Nat → SemanticF)
    (divGenNonIdentity :
      Common.Decaf.nonIdentity
        (receiverAddress rho).diversifiedGenerator)
    (transmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (receiverAddress rho).transmission)
    (divGenCompressed :
      Common.Decaf.compressesTo
        (receiverAddress rho).diversifiedGenerator
        (receiverAddress rho).diversifiedGeneratorEncoding)
    (transmissionCompressed :
      Common.Decaf.compressesTo
        (receiverAddress rho).transmission
        (receiverAddress rho).transmissionEncoding)
    (commitment : Concrete.noteCommitment (receiverNote rho))
    (amountNonzero : (receiverNote rho).amount ≠ 0) :
    Concrete.receiverOutput (action rho) := by
  exact
    ⟨rfl,
      ⟨⟨divGenNonIdentity, divGenCompressed, transmissionCompressed⟩,
        transmissionNonIdentity⟩,
      commitment, amountNonzero⟩

/-- The receiver amount is nonzero by the is-zero output assertion. -/
theorem receiverAmountNonzero
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    output0NoteAmount rho ≠ 0 :=
  receiverAmountNonzero_of_semantic rho semantic

/-- Compose the receiver output from certified provider semantics. -/
theorem receiverOutput_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (receiverDivGenNonIdentity :
      Common.Decaf.nonIdentity
        (receiverAddress rho).diversifiedGenerator)
    (receiverTransmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (receiverAddress rho).transmission) :
    Concrete.receiverOutput (action rho) := by
  apply receiverOutput_of_semantics
    rho receiverDivGenNonIdentity receiverTransmissionNonIdentity
  · exact
      NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
        (receiverDivGenCompressSpec_of_semantic rho semantic)
  · exact
      NoteReshapeRefinement.compressesTo_of_circuitSpec _ _
        (receiverTransmissionCompressSpec_of_semantic rho semantic)
  · exact receiverNoteCommitment rho semantic
  · exact receiverAmountNonzero rho semantic

/-- Assemble the change output relation from its commitment fact. -/
theorem changeOutput_of_semantics
    (rho : Nat → SemanticF)
    (commitment : Concrete.noteCommitment (changeNote rho)) :
    Concrete.changeOutput (action rho) := by
  exact ⟨rfl, rfl, rfl, commitment⟩

/-- Compose the change output from its certified note providers. -/
theorem changeOutput_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Concrete.changeOutput (action rho) :=
  changeOutput_of_semantics rho (changeNoteCommitment rho semantic)

/-- Assemble the authenticated asset-registry relation. -/
theorem assetRegistry_of_semantics
    (rho : Nat → SemanticF)
    (assetIdNonzero : (action rho).assetId ≠ 0)
    (isRegulatedBoolean :
      Common.boolean (action rho).assetProof.isRegulated)
    (dkPubFq ringPkFq : SemanticF)
    (dkPubCompressed :
      Common.Decaf.compressesTo
        (action rho).assetProof.leaf.dkPub dkPubFq)
    (ringPkCompressed :
      Common.Decaf.compressesTo
        (action rho).assetProof.leaf.ringPk ringPkFq)
    (member :
      Common.quadMember (action rho).assetAnchor
        (Concrete.assetLeafHash
          (action rho).assetProof.leaf dkPubFq ringPkFq)
        (action rho).assetProof.path (action rho).assetProof.position)
    (gap :
      Concrete.registryGap (action rho).assetId
        (action rho).assetProof.isRegulated
        (action rho).assetProof.leaf.value
        (action rho).assetProof.leaf.nextValue) :
    Concrete.assetRegistry (action rho) := by
  exact
    ⟨assetIdNonzero, isRegulatedBoolean, dkPubFq, ringPkFq,
      dkPubCompressed, ringPkCompressed, member, gap⟩

/-- Assemble one sender-compliance membership relation. -/
theorem senderCompliance_of_semantics
    (rho : Nat → SemanticF)
    (dBound : ((senderCompliance rho).d).val < 2 ^ 251)
    (positionBound : ((senderCompliance rho).position).val < 2 ^ 32)
    (member :
      (action rho).assetProof.isRegulated = 1 →
        Common.quadMember (action rho).complianceAnchor
          (Concrete.complianceLeafHash (senderCompliance rho))
          (senderCompliance rho).path (senderCompliance rho).position) :
    Concrete.senderCompliance (action rho) := by
  exact ⟨rfl, rfl, dBound, positionBound, member⟩

/-- Assemble one receiver-compliance membership relation. -/
theorem receiverCompliance_of_semantics
    (rho : Nat → SemanticF)
    (dBound : ((receiverCompliance rho).d).val < 2 ^ 251)
    (positionBound : ((receiverCompliance rho).position).val < 2 ^ 32)
    (member :
      (action rho).assetProof.isRegulated = 1 →
        Common.quadMember (action rho).complianceAnchor
          (Concrete.complianceLeafHash (receiverCompliance rho))
          (receiverCompliance rho).path
          (receiverCompliance rho).position) :
    Concrete.receiverCompliance (action rho) := by
  exact ⟨rfl, rfl, dBound, positionBound, member⟩

/-- Assemble the net-balance computation and compression relation. -/
theorem balanceComputedAndCompressed_of_semantics
    (rho : Nat → SemanticF)
    (requiredAmountBound :
      ((required rho).note.amount).val < 2 ^ 128)
    (optionalAmountBound :
      ((optional rho).amount).val < 2 ^ 128)
    (receiverAmountBound :
      ((receiverNote rho).amount).val < 2 ^ 128)
    (changeAmountBound :
      ((changeNote rho).amount).val < 2 ^ 128)
    (blindingBound : (actionBalanceBlinding rho).val < 2 ^ 251)
    (balanceCommitment : Common.Point SemanticF)
    (computed :
      Common.Decaf.netBalanceCommitment2
        (required rho).note.amount (optional rho).amount
        (receiverNote rho).amount (changeNote rho).amount
        (action rho).assetId (actionBalanceBlinding rho)
        balanceCommitment)
    (compressed :
      Common.Decaf.compressesTo
        balanceCommitment (action rho).balanceCommitmentEncoding) :
    Concrete.balanceComputedAndCompressed (action rho) := by
  exact
    ⟨requiredAmountBound, optionalAmountBound, receiverAmountBound,
      changeAmountBound, blindingBound, balanceCommitment, computed,
      compressed⟩

/-- A protocol statement-hash equality is exactly statement binding. -/
theorem statementBinding_of_semantics
    (rho : Nat → SemanticF)
    (hash :
      (action rho).publicStatementHash =
        Common.statementHash
          Concrete.statementDomain Concrete.statementPad0
          Concrete.statementPad1 (Concrete.statementFields (action rho))) :
    Concrete.statementBinding (action rho) :=
  hash

/-- Stable action-level facts, with no compiler-owned identities. -/
structure SemanticFacts (rho : Nat → SemanticF) : Prop where
  canonicalSender : Concrete.canonicalSender (action rho)
  requiredSpend : Concrete.requiredSpend (action rho)
  optionalSpend : Concrete.optionalSpend (action rho)
  receiverOutput : Concrete.receiverOutput (action rho)
  changeOutput : Concrete.changeOutput (action rho)
  assetRegistry : Concrete.assetRegistry (action rho)
  senderCompliance : Concrete.senderCompliance (action rho)
  receiverCompliance : Concrete.receiverCompliance (action rho)
  complianceTranscript : Concrete.complianceTranscript (action rho)
  balanceComputedAndCompressed :
    Concrete.balanceComputedAndCompressed (action rho)
  statementBinding : Concrete.statementBinding (action rho)

/-- The stable semantic record is definitionally the circuit-fact record. -/
theorem circuitFacts_of_semanticFacts
    (rho : Nat → SemanticF)
    (facts : SemanticFacts rho) :
    Protocol.Transfer.CircuitFacts
      Concrete.circuitPrimitives (action rho) := by
  exact {
    canonicalSender := facts.canonicalSender
    requiredSpend := facts.requiredSpend
    optionalSpend := facts.optionalSpend
    receiverOutput := facts.receiverOutput
    changeOutput := facts.changeOutput
    assetRegistry := facts.assetRegistry
    senderCompliance := facts.senderCompliance
    receiverCompliance := facts.receiverCompliance
    complianceTranscript := facts.complianceTranscript
    balanceComputedAndCompressed := facts.balanceComputedAndCompressed
    statementBinding := facts.statementBinding
  }

/--
Close every Transfer circuit obligation from exact generated provider
semantics. Compiler-owned rows and wire identities do not cross this boundary.
-/
theorem semanticFacts_of_semanticProviders
    (rho : Nat → DeployedF)
    (authorizationKeyNonIdentity :
      Common.Decaf.nonIdentity (authorization rho).authorizationKey)
    (senderDivGenNonIdentity :
      Common.Decaf.nonIdentity (sender rho).diversifiedGenerator)
    (incomingViewingKeyNonzero :
      Common.Decaf.incomingViewingKeyNonzero
        (authorization rho).ivkReduced)
    (senderTransmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (sender rho).transmission)
    (receiverDivGenNonIdentity :
      Common.Decaf.nonIdentity
        (receiverAddress rho).diversifiedGenerator)
    (receiverTransmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (receiverAddress rho).transmission)
    (isRegulatedBoolean :
      Common.boolean (action rho).assetProof.isRegulated)
    (assetIdNonzero : (action rho).assetId ≠ 0)
    (semantic : TransferSemanticProviders rho) :
    SemanticFacts rho := by
  have authorizationKeyOnCurve :
      EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩ :=
    authorizationKeyOnCurve rho semantic
  have senderFacts :=
    senderComplianceFacts_of_semanticProviders
      rho semantic isRegulatedBoolean
  have receiverFacts :=
    receiverComplianceFacts_of_semanticProviders
      rho semantic isRegulatedBoolean
  rcases balanceFacts_of_semanticProviders rho semantic with
    ⟨requiredAmountBound, optionalAmountRawBound, receiverAmountBound,
      changeAmountBound, blindingBound, balanceComputed,
      balanceCompressed⟩
  have optionalAmountBound :
      ((TransferRefinement.C.optional rho).amount).val < 2 ^ 128 := by
    rw [optionalAmount_eq]
    exact optionalAmountRawBound
  have balanceComputedAction :
      Common.Decaf.netBalanceCommitment2
        (required rho).note.amount (optional rho).amount
        (receiverNote rho).amount (changeNote rho).amount
        (action rho).assetId (actionBalanceBlinding rho)
        (balancePoint rho) := by
    simpa only [required, requiredNote, optionalAmount_eq,
      receiverNote, changeNote, action] using balanceComputed
  have balanceCompressedAction :
      Common.Decaf.compressesTo
        (balancePoint rho) (action rho).balanceCommitmentEncoding := by
    simpa only [action] using balanceCompressed
  exact {
    canonicalSender :=
      canonicalSender_of_semanticProviders
        rho semantic authorizationKeyNonIdentity
        senderDivGenNonIdentity incomingViewingKeyNonzero
        senderTransmissionNonIdentity
    requiredSpend :=
      requiredSpend_of_semanticProviders
        rho semantic authorizationKeyOnCurve
    optionalSpend :=
      optionalSpend_of_semanticProviders
        rho semantic authorizationKeyOnCurve
    receiverOutput :=
      receiverOutput_of_semanticProviders
        rho semantic receiverDivGenNonIdentity
        receiverTransmissionNonIdentity
    changeOutput :=
      changeOutput_of_semanticProviders rho semantic
    assetRegistry :=
      assetRegistry_of_semanticProviders
        rho semantic assetIdNonzero isRegulatedBoolean
    senderCompliance :=
      senderCompliance_of_semantics
        rho senderFacts.1 senderFacts.2.1 senderFacts.2.2
    receiverCompliance :=
      receiverCompliance_of_semantics
        rho receiverFacts.1 receiverFacts.2.1 receiverFacts.2.2
    complianceTranscript :=
      complianceTranscript_of_semanticProviders
        rho semantic isRegulatedBoolean
    balanceComputedAndCompressed :=
      balanceComputedAndCompressed_of_semantics
        rho
        requiredAmountBound
        optionalAmountBound
        receiverAmountBound
        changeAmountBound
        blindingBound
        (balancePoint rho)
        balanceComputedAction
        balanceCompressedAction
    statementBinding :=
      statementBinding_of_semantics
        rho (claimedStatementHash_of_semantic rho semantic)
  }

/-- Exact generated providers imply the full Transfer circuit-fact record. -/
theorem circuitFacts_of_semanticProviders
    (rho : Nat → DeployedF)
    (authorizationKeyNonIdentity :
      Common.Decaf.nonIdentity (authorization rho).authorizationKey)
    (senderDivGenNonIdentity :
      Common.Decaf.nonIdentity (sender rho).diversifiedGenerator)
    (incomingViewingKeyNonzero :
      Common.Decaf.incomingViewingKeyNonzero
        (authorization rho).ivkReduced)
    (senderTransmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (sender rho).transmission)
    (receiverDivGenNonIdentity :
      Common.Decaf.nonIdentity
        (receiverAddress rho).diversifiedGenerator)
    (receiverTransmissionNonIdentity :
      Common.Decaf.transmissionKeyNonIdentity
        (receiverAddress rho).transmission)
    (isRegulatedBoolean :
      Common.boolean (action rho).assetProof.isRegulated)
    (assetIdNonzero : (action rho).assetId ≠ 0)
    (semantic : TransferSemanticProviders rho) :
    Protocol.Transfer.CircuitFacts
      Concrete.circuitPrimitives (action rho) :=
  circuitFacts_of_semanticFacts rho
    (semanticFacts_of_semanticProviders
      rho authorizationKeyNonIdentity senderDivGenNonIdentity
      incomingViewingKeyNonzero senderTransmissionNonIdentity
      receiverDivGenNonIdentity receiverTransmissionNonIdentity
      isRegulatedBoolean assetIdNonzero semantic)

end Shieldd.GnarkFormal.Deployed.TransferSemanticTranslator.C
