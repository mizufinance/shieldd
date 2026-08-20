import ShielddGnarkFormal.Deployed.NoteReshape1x8Refinement
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.RoleBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact real-spend semantic joins for NoteReshape 1x8. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape1x8
open Contracts.NoteReshape1x8.Witness (
  spends0AuthRandomizer spends0StateProofPosition
)

theorem spend0NullifierHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    spend0NullifierComputed rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend0StateProofCommitment rho)
          (spends0StateProofPosition rho) := by
  have h := facts.spend0.GadgetNullifierSeg35
  change
    Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.spec
      (Seg35.localRho rho) at h
  have hw1 : Seg35.wireSeating 1 = 74 := by decide +kernel
  have hw7 : Seg35.wireSeating 7 = 145 := by decide +kernel
  have hw13 : Seg35.wireSeating 13 = 146 := by decide +kernel
  have hw298 : Seg35.wireSeating 298 = 27178 := by decide +kernel
  have hw303 : Seg35.wireSeating 303 = 27183 := by decide +kernel
  have hw308 : Seg35.wireSeating 308 = 27188 := by decide +kernel
  have hw313 : Seg35.wireSeating 313 = 27193 := by decide +kernel
  apply NoteReshapeMembershipBridge.nullifierHash_of_spec
    (Seg35.localRho rho) h
  · simp [
      spend0NullifierComputed, spend0NullifierComputedLC,
      Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg35.localRho, Deployed.Templates.seated,
      hw298, hw303, hw308, hw313
    ]
    ring
  · simp [authNk, authNkLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg35.localRho, Deployed.Templates.seated, hw1]
  · simp [spend0StateProofCommitment, spend0StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg35.localRho, Deployed.Templates.seated, hw7]
  · simp [spends0StateProofPosition,
      Seg35.localRho, Deployed.Templates.seated, hw13]

theorem spend0NullifierAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    spend0NullifierClaimed rho = spend0NullifierComputed rho := by
  have h := facts.spend0.AssertEqSeg36
  change
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec
      (Seg36.localRho rho) at h
  have hw1 : Seg36.wireSeating 1 = 27178 := by decide +kernel
  have hw2 : Seg36.wireSeating 2 = 27183 := by decide +kernel
  have hw3 : Seg36.wireSeating 3 = 27188 := by decide +kernel
  have hw4 : Seg36.wireSeating 4 = 27193 := by decide +kernel
  have hw5 : Seg36.wireSeating 5 = 140 := by decide +kernel
  simp only [
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec,
    one_mul, Seg36.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5
  ] at h
  simp only [
    spend0NullifierClaimed, spend0NullifierClaimedLC,
    spend0NullifierComputed, spend0NullifierComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend0RealNullifier
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.realNullifier
      (NoteReshapeCanonicalAddress1x8.authorization rho) (input0 rho) := by
  unfold NoteReshapeCanonical.realNullifier
  unfold Protocol.NoteReshape.Concrete.realNullifier
  simp only [input0, NoteReshapeCanonicalAddress1x8.authorization]
  rw [spend0NullifierAsserted rho facts, spend0NullifierHash rho facts]
  rfl

theorem spend0AnchorAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    anchor rho = spend0AnchorComputed rho := by
  have h := facts.spend0.AssertEqSeg38
  change
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec
      (Seg38.localRho rho) at h
  have hw1 : Seg38.wireSeating 1 = 36091 := by decide +kernel
  have hw2 : Seg38.wireSeating 2 = 36096 := by decide +kernel
  have hw3 : Seg38.wireSeating 3 = 36101 := by decide +kernel
  have hw4 : Seg38.wireSeating 4 = 36106 := by decide +kernel
  have hw5 : Seg38.wireSeating 5 = 36111 := by decide +kernel
  have hw6 : Seg38.wireSeating 6 = 7 := by decide +kernel
  simp only [
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec,
    one_mul, Seg38.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6
  ] at h
  simp only [
    anchor, anchorLC, spend0AnchorComputed, spend0AnchorComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

theorem spend0Member
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.member (anchor rho) (input0 rho) := by
  have h := facts.spend0.GadgetStateCommitmentPathSeg37
  change
    Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.spec
      (Seg37.localRho rho) at h
  have hw1 : Seg37.wireSeating 1 = 145 := by decide +kernel
  have hw280 : Seg37.wireSeating 280 = 146 := by decide +kernel
  have hw8972 : Seg37.wireSeating 8972 = 36091 := by decide +kernel
  have hw8977 : Seg37.wireSeating 8977 = 36096 := by decide +kernel
  have hw8982 : Seg37.wireSeating 8982 = 36101 := by decide +kernel
  have hw8987 : Seg37.wireSeating 8987 = 36106 := by decide +kernel
  have hw8992 : Seg37.wireSeating 8992 = 36111 := by decide +kernel
  apply NoteReshapeMembershipBridge.member_of_state_spec
    (Seg37.localRho rho) (input0 rho) (anchor rho) h
  · simp [input0, spend0StateProofCommitment, spend0StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg37.localRho, Deployed.Templates.seated, hw1]
  · simp [input0, spends0StateProofPosition,
      Seg37.localRho, Deployed.Templates.seated, hw280]
  · rfl
  · rw [spend0AnchorAsserted rho facts]
    simp [
      spend0AnchorComputed, spend0AnchorComputedLC,
      NoteReshapeMembershipBridge.stateRootOutput,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg37.localRho, Deployed.Templates.seated,
      hw8972, hw8977, hw8982, hw8987, hw8992
    ]
    ring

theorem sharedAuthorizationKeyOnCurve
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩ := by
  rcases
      NoteReshapeCanonicalAddress1x8.canonicalTransmissionFacts_of_exact
        rho facts with
    ⟨_, _, _, hdtk, _⟩
  rcases hdtk.1 with ⟨akFq, hak, _⟩
  exact Decaf377Assumptions.onCurve_of_compress
    ⟨authAk0 rho, authAk1 rho⟩ akFq hak

def spend0ComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩

theorem spend0RandomizerCanonical
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    (spends0AuthRandomizer rho).val < 2 ^ 251 := by
  have h := facts.spend0.DecafRandomizedVerificationKeySeg39
  change
    Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec
      (Seg39.localRho rho) at h
  have hw252 : Seg39.wireSeating 252 = 219 := by decide +kernel
  simpa [
    spends0AuthRandomizer,
    Seg39.localRho, Deployed.Templates.seated, hw252
  ] using h.1

theorem spend0Rvk
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.RandomizedVerificationKeySpec
      ⟨authAk0 rho, authAk1 rho⟩
        (spends0AuthRandomizer rho) (spend0ComputedRk rho) ∧
    EdwardsBridge.onCurve
      ⟨(spend0ComputedRk rho).x, (spend0ComputedRk rho).y⟩ := by
  have h := facts.spend0.DecafRandomizedVerificationKeySeg39
  change
    Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec
      (Seg39.localRho rho) at h
  have hw252 : Seg39.wireSeating 252 = 219 := by decide +kernel
  have hw1807 : Seg39.wireSeating 1807 = 72 := by decide +kernel
  have hw1808 : Seg39.wireSeating 1808 = 73 := by decide +kernel
  have hw1813 : Seg39.wireSeating 1813 = 37921 := by decide +kernel
  have hw1814 : Seg39.wireSeating 1814 = 37922 := by decide +kernel
  have hr := h.2 (by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg39.localRho, Deployed.Templates.seated, hw1807, hw1808
    ] using sharedAuthorizationKeyOnCurve rho facts)
  simpa [
    spend0ComputedRk,
    spends0AuthRandomizer,
    authAk0, authAk0LC, authAk1, authAk1LC,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg39.localRho, Deployed.Templates.seated,
    hw252, hw1807, hw1808, hw1813, hw1814
  ] using hr

theorem spend0ClaimedRkCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
      (spend0RkCompressed rho) := by
  have h := facts.spend0.DecafCompressToFieldSeg41
  change
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec
      (Seg41.localRho rho) at h
  have hw1 : Seg41.wireSeating 1 = 141 := by decide +kernel
  have hw3 : Seg41.wireSeating 3 = 142 := by decide +kernel
  have hw365 : Seg41.wireSeating 365 = 38287 := by decide +kernel
  have hw705 : Seg41.wireSeating 705 = 38627 := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide
  simpa [
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    spend0RkCompressed, spend0RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg41.localRho, Deployed.Templates.seated,
    hw1, hw3, hw365, hw705, hneg, sub_eq_add_neg, add_comm
  ] using h

theorem spend0RkCrossRatio
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (spend0ComputedRk rho)
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  have h := facts.spend0.DecafAssertEquivalentSeg40
  change
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec
      (Seg40.localRho rho) at h
  have hw1 : Seg40.wireSeating 1 = 37921 := by decide +kernel
  have hw2 : Seg40.wireSeating 2 = 142 := by decide +kernel
  have hw4 : Seg40.wireSeating 4 = 141 := by decide +kernel
  have hw5 : Seg40.wireSeating 5 = 37922 := by decide +kernel
  simpa [
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec,
    Decaf377Assumptions.AssertEquivalentSpec, spend0ComputedRk,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg40.localRho, Deployed.Templates.seated, hw1, hw2, hw4, hw5
  ] using h

theorem spend0RandomizedKey
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.randomizedKeyReal
      (NoteReshapeCanonicalAddress1x8.authorization rho) (input0 rho) := by
  refine ⟨spend0ComputedRk rho, ?_, ?_⟩
  · simpa [
      NoteReshapeCanonicalAddress1x8.authorization,
      NoteReshapeCanonical.toDecafPoint, input0
    ] using (spend0Rvk rho facts).1
  · exact ⟨
      (spend0Rvk rho facts).2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
        (spend0RkCompressed rho) (spend0ClaimedRkCompressed rho facts),
      spend0RkCrossRatio rho facts
    ⟩

theorem spend0HistoryClassification
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.historyClassification
      (input0 rho).statePosition
      (action rho).recentPositionFloor
      (input0 rho).historyRequired := by
  have h := facts.spend0.HistoryClassifySeg42
  change
    Deployed.Templates.Semantics.THistoryClassify_24943fd2154aa0ac8bbf9adce870214e50badfb7c18cba54c33b68fcd9222905.spec
      (Seg42.localRho rho) at h
  have hw49 : Seg42.wireSeating 49 = 146 := by decide +kernel
  have hw98 : Seg42.wireSeating 98 = 6 := by decide +kernel
  have hw149 : Seg42.wireSeating 149 = 220 := by decide +kernel
  unfold
    Deployed.Templates.Semantics.THistoryClassify_24943fd2154aa0ac8bbf9adce870214e50badfb7c18cba54c33b68fcd9222905.spec
    HistoryClassifyBridge.CoreSpec at h
  change Protocol.NullifierHistory.FieldClassification
    (spends0StateProofPosition rho) (recentPositionFloor rho)
      (spend0HistoryRequired rho)
  unfold Protocol.NullifierHistory.FieldClassification
  simpa [
    input0, action, spends0StateProofPosition,
    recentPositionFloor, recentPositionFloorLC,
    spend0HistoryRequired, spend0HistoryRequiredLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg42.localRho, Deployed.Templates.seated,
    hw49, hw98, hw149
  ] using h

theorem actionMembershipAndNullifiers
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    membershipAndNullifiers
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  simpa [
    membershipAndNullifiers, action, input0,
    NoteReshapeCanonical.circuitPrimitives
  ] using ⟨spend0Member rho facts, spend0RealNullifier rho facts,
    spend0HistoryClassification rho facts⟩

theorem actionRandomizedKeys
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    randomizedKeys
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  simpa [
    randomizedKeys, action, input0, NoteReshapeCanonical.circuitPrimitives
  ] using spend0RandomizedKey rho facts

theorem actionRandomizersCanonical
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    randomizersCanonical
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  simpa [
    randomizersCanonical, action, input0,
    NoteReshapeCanonical.circuitPrimitives,
    NoteReshapeCanonical.randomizerCanonical,
    Protocol.NoteReshape.Concrete.randomizerCanonical
  ] using spend0RandomizerCanonical rho facts

theorem actionDummySlotIndicesCanonical
    (rho : Nat → DeployedF) :
    dummySlotIndicesCanonical
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  intro index input hinput
  cases index with
  | zero =>
      change some (.real (input0 rho)) = some input at hinput
      cases hinput
      exact True.intro
  | succ index =>
      change none = some input at hinput
      contradiction

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C
