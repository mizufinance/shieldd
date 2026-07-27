import ShielddGnarkFormal.Deployed.Generated.NoteReshape4x1Spend0
import ShielddGnarkFormal.Deployed.Generated.NoteReshape4x1Spend1
import ShielddGnarkFormal.Deployed.Generated.NoteReshape4x1Spend2
import ShielddGnarkFormal.Deployed.Generated.NoteReshape4x1Spend3

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Handwritten family join from exact padded-spend facts to protocol duties. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape4x1

theorem actionMembershipAndNullifiers
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    membershipAndNullifiers
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide
  rcases selectorFacts rho facts with selectors | selectors
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    simp [
      membershipAndNullifiers, action, input0, input1, input2, input3,
      NoteReshapeCanonical.primitives, h0, h1, h2, h3, h10,
      Generated.NoteReshape4x1Spend0.member rho facts h0,
      Generated.NoteReshape4x1Spend0.realNullifier rho facts h0,
      Generated.NoteReshape4x1Spend1.member rho facts h1,
      Generated.NoteReshape4x1Spend1.realNullifier rho facts h1,
      Generated.NoteReshape4x1Spend2.member rho facts h2,
      Generated.NoteReshape4x1Spend2.realNullifier rho facts h2,
      Generated.NoteReshape4x1Spend3.member rho facts h3,
      Generated.NoteReshape4x1Spend3.realNullifier rho facts h3
    ]
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    simp [
      membershipAndNullifiers, action, input0, input1, input2, input3,
      NoteReshapeCanonical.primitives, h0, h1, h2, h3, h10,
      Generated.NoteReshape4x1Spend0.member rho facts h0,
      Generated.NoteReshape4x1Spend0.realNullifier rho facts h0,
      Generated.NoteReshape4x1Spend1.member rho facts h1,
      Generated.NoteReshape4x1Spend1.realNullifier rho facts h1,
      Generated.NoteReshape4x1Spend2.member rho facts h2,
      Generated.NoteReshape4x1Spend2.realNullifier rho facts h2,
      Generated.NoteReshape4x1Spend3.dummyAmountZero rho facts h3,
      Generated.NoteReshape4x1Spend3.dummyNullifier rho facts h3
    ]

theorem actionRandomizedKeys
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    randomizedKeys
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide
  rcases selectorFacts rho facts with selectors | selectors
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    simp [
      randomizedKeys, action, input0, input1, input2, input3,
      NoteReshapeCanonical.primitives, h0, h1, h2, h3, h10,
      Generated.NoteReshape4x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape4x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape4x1Spend2.randomizedKey rho facts h2,
      Generated.NoteReshape4x1Spend3.randomizedKey rho facts h3
    ]
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    simp [
      randomizedKeys, action, input0, input1, input2, input3,
      NoteReshapeCanonical.primitives, h0, h1, h2, h3, h10,
      Generated.NoteReshape4x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape4x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape4x1Spend2.randomizedKey rho facts h2
    ]

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C
