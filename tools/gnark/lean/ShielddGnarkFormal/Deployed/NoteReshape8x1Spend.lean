import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend0
import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend1
import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend2
import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend3
import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend4
import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend5
import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend6
import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Spend7

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Handwritten family join from exact padded-spend facts to protocol duties. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape8x1

theorem actionMembershipAndNullifiers
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    membershipAndNullifiers
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
  rcases selectorFacts rho facts with s | s | s | s
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      membershipAndNullifiers, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.member rho facts h0,
      Generated.NoteReshape8x1Spend0.realNullifier rho facts h0,
      Generated.NoteReshape8x1Spend1.member rho facts h1,
      Generated.NoteReshape8x1Spend1.realNullifier rho facts h1,
      Generated.NoteReshape8x1Spend2.member rho facts h2,
      Generated.NoteReshape8x1Spend2.realNullifier rho facts h2,
      Generated.NoteReshape8x1Spend3.member rho facts h3,
      Generated.NoteReshape8x1Spend3.realNullifier rho facts h3,
      Generated.NoteReshape8x1Spend4.member rho facts h4,
      Generated.NoteReshape8x1Spend4.realNullifier rho facts h4,
      Generated.NoteReshape8x1Spend5.member rho facts h5,
      Generated.NoteReshape8x1Spend5.realNullifier rho facts h5,
      Generated.NoteReshape8x1Spend6.member rho facts h6,
      Generated.NoteReshape8x1Spend6.realNullifier rho facts h6,
      Generated.NoteReshape8x1Spend7.member rho facts h7,
      Generated.NoteReshape8x1Spend7.realNullifier rho facts h7
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      membershipAndNullifiers, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.member rho facts h0,
      Generated.NoteReshape8x1Spend0.realNullifier rho facts h0,
      Generated.NoteReshape8x1Spend1.member rho facts h1,
      Generated.NoteReshape8x1Spend1.realNullifier rho facts h1,
      Generated.NoteReshape8x1Spend2.member rho facts h2,
      Generated.NoteReshape8x1Spend2.realNullifier rho facts h2,
      Generated.NoteReshape8x1Spend3.member rho facts h3,
      Generated.NoteReshape8x1Spend3.realNullifier rho facts h3,
      Generated.NoteReshape8x1Spend4.member rho facts h4,
      Generated.NoteReshape8x1Spend4.realNullifier rho facts h4,
      Generated.NoteReshape8x1Spend5.member rho facts h5,
      Generated.NoteReshape8x1Spend5.realNullifier rho facts h5,
      Generated.NoteReshape8x1Spend6.member rho facts h6,
      Generated.NoteReshape8x1Spend6.realNullifier rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyAmountZero rho facts h7,
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      membershipAndNullifiers, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.member rho facts h0,
      Generated.NoteReshape8x1Spend0.realNullifier rho facts h0,
      Generated.NoteReshape8x1Spend1.member rho facts h1,
      Generated.NoteReshape8x1Spend1.realNullifier rho facts h1,
      Generated.NoteReshape8x1Spend2.member rho facts h2,
      Generated.NoteReshape8x1Spend2.realNullifier rho facts h2,
      Generated.NoteReshape8x1Spend3.member rho facts h3,
      Generated.NoteReshape8x1Spend3.realNullifier rho facts h3,
      Generated.NoteReshape8x1Spend4.member rho facts h4,
      Generated.NoteReshape8x1Spend4.realNullifier rho facts h4,
      Generated.NoteReshape8x1Spend5.member rho facts h5,
      Generated.NoteReshape8x1Spend5.realNullifier rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyAmountZero rho facts h6,
      Generated.NoteReshape8x1Spend6.dummyNullifier rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyAmountZero rho facts h7,
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      membershipAndNullifiers, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.member rho facts h0,
      Generated.NoteReshape8x1Spend0.realNullifier rho facts h0,
      Generated.NoteReshape8x1Spend1.member rho facts h1,
      Generated.NoteReshape8x1Spend1.realNullifier rho facts h1,
      Generated.NoteReshape8x1Spend2.member rho facts h2,
      Generated.NoteReshape8x1Spend2.realNullifier rho facts h2,
      Generated.NoteReshape8x1Spend3.member rho facts h3,
      Generated.NoteReshape8x1Spend3.realNullifier rho facts h3,
      Generated.NoteReshape8x1Spend4.member rho facts h4,
      Generated.NoteReshape8x1Spend4.realNullifier rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyAmountZero rho facts h5,
      Generated.NoteReshape8x1Spend5.dummyNullifier rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyAmountZero rho facts h6,
      Generated.NoteReshape8x1Spend6.dummyNullifier rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyAmountZero rho facts h7,
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7
    ]

theorem actionRandomizedKeys
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    randomizedKeys
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
  rcases selectorFacts rho facts with s | s | s | s
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      randomizedKeys, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape8x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape8x1Spend2.randomizedKey rho facts h2,
      Generated.NoteReshape8x1Spend3.randomizedKey rho facts h3,
      Generated.NoteReshape8x1Spend4.randomizedKey rho facts h4,
      Generated.NoteReshape8x1Spend5.randomizedKey rho facts h5,
      Generated.NoteReshape8x1Spend6.randomizedKey rho facts h6,
      Generated.NoteReshape8x1Spend7.randomizedKey rho facts h7
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      randomizedKeys, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape8x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape8x1Spend2.randomizedKey rho facts h2,
      Generated.NoteReshape8x1Spend3.randomizedKey rho facts h3,
      Generated.NoteReshape8x1Spend4.randomizedKey rho facts h4,
      Generated.NoteReshape8x1Spend5.randomizedKey rho facts h5,
      Generated.NoteReshape8x1Spend6.randomizedKey rho facts h6
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      randomizedKeys, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape8x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape8x1Spend2.randomizedKey rho facts h2,
      Generated.NoteReshape8x1Spend3.randomizedKey rho facts h3,
      Generated.NoteReshape8x1Spend4.randomizedKey rho facts h4,
      Generated.NoteReshape8x1Spend5.randomizedKey rho facts h5
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      randomizedKeys, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape8x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape8x1Spend2.randomizedKey rho facts h2,
      Generated.NoteReshape8x1Spend3.randomizedKey rho facts h3,
      Generated.NoteReshape8x1Spend4.randomizedKey rho facts h4
    ]

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
