import ShielddGnarkFormal.Deployed.NoteReshape1x8Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact real-spend semantic joins for NoteReshape 1x8. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape1x8

theorem spend0NullifierHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    spend0NullifierComputed rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) (spend0StateProofCommitment rho) (rho 21) := by
  have h := facts.spend0.GadgetNullifierSeg10
  change
    Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.spec
      (Seg10.localRho rho) at h
  have hw1 : Seg10.wireSeating 1 = 12 := by decide
  have hw7 : Seg10.wireSeating 7 = 20 := by decide
  have hw13 : Seg10.wireSeating 13 = 21 := by decide
  have hw298 : Seg10.wireSeating 298 = 7818 := by decide
  have hw303 : Seg10.wireSeating 303 = 7823 := by decide
  have hw308 : Seg10.wireSeating 308 = 7828 := by decide
  have hw313 : Seg10.wireSeating 313 = 7833 := by decide
  apply NoteReshape2x1Refinement.C.nullifierHash_of_spec
    (Seg10.localRho rho) h
  · simp [
      spend0NullifierComputed, spend0NullifierComputedLC,
      Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg10.localRho, Deployed.Templates.seated,
      hw298, hw303, hw308, hw313
    ]
    ring
  · simp [authNk, authNkLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg10.localRho, Deployed.Templates.seated, hw1]
  · simp [spend0StateProofCommitment, spend0StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg10.localRho, Deployed.Templates.seated, hw7]
  · simp [Seg10.localRho, Deployed.Templates.seated, hw13]

theorem spend0NullifierAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    spend0NullifierClaimed rho = spend0NullifierComputed rho := by
  have h := facts.spend0.AssertEqSeg11
  change
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec
      (Seg11.localRho rho) at h
  have hw1 : Seg11.wireSeating 1 = 7818 := by decide
  have hw2 : Seg11.wireSeating 2 = 7823 := by decide
  have hw3 : Seg11.wireSeating 3 = 7828 := by decide
  have hw4 : Seg11.wireSeating 4 = 7833 := by decide
  have hw5 : Seg11.wireSeating 5 = 15 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec,
    one_mul, Seg11.localRho, Deployed.Templates.seated,
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
  simp only [input0, NoteReshapeCanonicalAddress1x8.authorization]
  rw [spend0NullifierAsserted rho facts, spend0NullifierHash rho facts]

theorem spend0AnchorAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    anchor rho = spend0AnchorComputed rho := by
  have h := facts.spend0.AssertEqSeg13
  change
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec
      (Seg13.localRho rho) at h
  have hw1 : Seg13.wireSeating 1 = 16731 := by decide
  have hw2 : Seg13.wireSeating 2 = 16736 := by decide
  have hw3 : Seg13.wireSeating 3 = 16741 := by decide
  have hw4 : Seg13.wireSeating 4 = 16746 := by decide
  have hw5 : Seg13.wireSeating 5 = 16751 := by decide
  have hw6 : Seg13.wireSeating 6 = 2 := by decide
  simp only [
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec,
    one_mul, Seg13.localRho, Deployed.Templates.seated,
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
  have h := facts.spend0.GadgetStateCommitmentPathSeg12
  change
    Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.spec
      (Seg12.localRho rho) at h
  have hw1 : Seg12.wireSeating 1 = 20 := by decide
  have hw280 : Seg12.wireSeating 280 = 21 := by decide
  have hw8972 : Seg12.wireSeating 8972 = 16731 := by decide
  have hw8977 : Seg12.wireSeating 8977 = 16736 := by decide
  have hw8982 : Seg12.wireSeating 8982 = 16741 := by decide
  have hw8987 : Seg12.wireSeating 8987 = 16746 := by decide
  have hw8992 : Seg12.wireSeating 8992 = 16751 := by decide
  apply NoteReshape2x1Refinement.C.member_of_state_spec
    (Seg12.localRho rho) (input0 rho) (anchor rho) h
  · simp [input0, spend0StateProofCommitment, spend0StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg12.localRho, Deployed.Templates.seated, hw1]
  · simp [input0, Seg12.localRho, Deployed.Templates.seated, hw280]
  · rfl
  · rw [spend0AnchorAsserted rho facts]
    simp [
      spend0AnchorComputed, spend0AnchorComputedLC,
      NoteReshape2x1Refinement.C.stateRootOutput,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg12.localRho, Deployed.Templates.seated,
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
    ⟨_, hdtk, _⟩
  rcases hdtk.1 with ⟨akFq, hak, _⟩
  exact Decaf377Assumptions.onCurve_of_compress
    ⟨authAk0 rho, authAk1 rho⟩ akFq hak

def spend0ComputedRk (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩

theorem spend0Rvk
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.RandomizedVerificationKeySpec
      ⟨authAk0 rho, authAk1 rho⟩ (rho 94) (spend0ComputedRk rho) ∧
    EdwardsBridge.onCurve
      ⟨(spend0ComputedRk rho).x, (spend0ComputedRk rho).y⟩ := by
  have h := facts.spend0.DecafRandomizedVerificationKeySeg14
  change
    Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec
      (Seg14.localRho rho) at h
  have hw252 : Seg14.wireSeating 252 = 94 := by decide
  have hw1807 : Seg14.wireSeating 1807 = 10 := by decide
  have hw1808 : Seg14.wireSeating 1808 = 11 := by decide
  have hw1813 : Seg14.wireSeating 1813 = 18561 := by decide
  have hw1814 : Seg14.wireSeating 1814 = 18562 := by decide
  have hr := h (by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg14.localRho, Deployed.Templates.seated, hw1807, hw1808
    ] using sharedAuthorizationKeyOnCurve rho facts)
  simpa [
    spend0ComputedRk,
    authAk0, authAk0LC, authAk1, authAk1LC,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg14.localRho, Deployed.Templates.seated,
    hw252, hw1807, hw1808, hw1813, hw1814
  ] using hr

theorem spend0ClaimedRkCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
      (spend0RkCompressed rho) := by
  have h := facts.spend0.DecafCompressToFieldSeg16
  change
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec
      (Seg16.localRho rho) at h
  have hw1 : Seg16.wireSeating 1 = 16 := by decide
  have hw3 : Seg16.wireSeating 3 = 17 := by decide
  have hw365 : Seg16.wireSeating 365 = 18927 := by decide
  have hw705 : Seg16.wireSeating 705 = 19267 := by decide
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
    Seg16.localRho, Deployed.Templates.seated,
    hw1, hw3, hw365, hw705, hneg, sub_eq_add_neg, add_comm
  ] using h

theorem spend0RkCrossRatio
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (spend0ComputedRk rho)
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  have h := facts.spend0.DecafAssertEquivalentSeg15
  change
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec
      (Seg15.localRho rho) at h
  have hw1 : Seg15.wireSeating 1 = 18561 := by decide
  have hw2 : Seg15.wireSeating 2 = 17 := by decide
  have hw4 : Seg15.wireSeating 4 = 16 := by decide
  have hw5 : Seg15.wireSeating 5 = 18562 := by decide
  simpa [
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec,
    Decaf377Assumptions.AssertEquivalentSpec, spend0ComputedRk,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg15.localRho, Deployed.Templates.seated, hw1, hw2, hw4, hw5
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

theorem actionMembershipAndNullifiers
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    membershipAndNullifiers
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  simpa [
    membershipAndNullifiers, action, input0,
    NoteReshapeCanonical.primitives
  ] using And.intro (spend0Member rho facts) (spend0RealNullifier rho facts)

theorem actionRandomizedKeys
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    randomizedKeys
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  simpa [
    randomizedKeys, action, input0, NoteReshapeCanonical.primitives
  ] using spend0RandomizedKey rho facts

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement.C
