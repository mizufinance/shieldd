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
open Contracts.NoteReshape8x1.Witness (
  syntheticSpends0IsDummy syntheticSpends1IsDummy
  syntheticSpends2IsDummy syntheticSpends3IsDummy
  syntheticSpends4IsDummy syntheticSpends5IsDummy
  syntheticSpends6IsDummy syntheticSpends7IsDummy
)

@[simp] private theorem realHistory0
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends0IsDummy rho = 0) :
    historyClassification (realInput0 rho).statePosition
      (recentPositionFloor rho) (realInput0 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts real

@[simp] private theorem realHistory1
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends1IsDummy rho = 0) :
    historyClassification (realInput1 rho).statePosition
      (recentPositionFloor rho) (realInput1 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts real

@[simp] private theorem realHistory2
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends2IsDummy rho = 0) :
    historyClassification (realInput2 rho).statePosition
      (recentPositionFloor rho) (realInput2 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend2.realHistoryClassification rho facts real

@[simp] private theorem realHistory3
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends3IsDummy rho = 0) :
    historyClassification (realInput3 rho).statePosition
      (recentPositionFloor rho) (realInput3 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend3.realHistoryClassification rho facts real

@[simp] private theorem realHistory4
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends4IsDummy rho = 0) :
    historyClassification (realInput4 rho).statePosition
      (recentPositionFloor rho) (realInput4 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend4.realHistoryClassification rho facts real

@[simp] private theorem realHistory5
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends5IsDummy rho = 0) :
    historyClassification (realInput5 rho).statePosition
      (recentPositionFloor rho) (realInput5 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend5.realHistoryClassification rho facts real

@[simp] private theorem realHistory6
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends6IsDummy rho = 0) :
    historyClassification (realInput6 rho).statePosition
      (recentPositionFloor rho) (realInput6 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend6.realHistoryClassification rho facts real

@[simp] private theorem realHistory7
    (rho : Nat → DeployedF) (facts : NoteReshape8x1CircuitFacts rho)
    (real : syntheticSpends7IsDummy rho = 0) :
    historyClassification (realInput7 rho).statePosition
      (recentPositionFloor rho) (realInput7 rho).historyRequired := by
  simpa only [action] using
    Generated.NoteReshape8x1Spend7.realHistoryClassification rho facts real

theorem actionMembershipAndNullifiers
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    membershipAndNullifiers
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
  rcases selectorFacts rho facts with s | s | s | s | s | s | s
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
      Generated.NoteReshape8x1Spend7.realNullifier rho facts h7,
      Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts h0,
      Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts h1,
      Generated.NoteReshape8x1Spend2.realHistoryClassification rho facts h2,
      Generated.NoteReshape8x1Spend3.realHistoryClassification rho facts h3,
      Generated.NoteReshape8x1Spend4.realHistoryClassification rho facts h4,
      Generated.NoteReshape8x1Spend5.realHistoryClassification rho facts h5,
      Generated.NoteReshape8x1Spend6.realHistoryClassification rho facts h6,
      Generated.NoteReshape8x1Spend7.realHistoryClassification rho facts h7
    ]
    exact ⟨
      realHistory0 rho facts h0, realHistory1 rho facts h1,
      realHistory2 rho facts h2, realHistory3 rho facts h3,
      realHistory4 rho facts h4, realHistory5 rho facts h5,
      realHistory6 rho facts h6, realHistory7 rho facts h7
    ⟩
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
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7,
      Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts h0,
      Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts h1,
      Generated.NoteReshape8x1Spend2.realHistoryClassification rho facts h2,
      Generated.NoteReshape8x1Spend3.realHistoryClassification rho facts h3,
      Generated.NoteReshape8x1Spend4.realHistoryClassification rho facts h4,
      Generated.NoteReshape8x1Spend5.realHistoryClassification rho facts h5,
      Generated.NoteReshape8x1Spend6.realHistoryClassification rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyHistoryZero rho facts h7
    ]
    exact ⟨
      realHistory0 rho facts h0, realHistory1 rho facts h1,
      realHistory2 rho facts h2, realHistory3 rho facts h3,
      realHistory4 rho facts h4, realHistory5 rho facts h5,
      realHistory6 rho facts h6
    ⟩
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
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7,
      Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts h0,
      Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts h1,
      Generated.NoteReshape8x1Spend2.realHistoryClassification rho facts h2,
      Generated.NoteReshape8x1Spend3.realHistoryClassification rho facts h3,
      Generated.NoteReshape8x1Spend4.realHistoryClassification rho facts h4,
      Generated.NoteReshape8x1Spend5.realHistoryClassification rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyHistoryZero rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyHistoryZero rho facts h7
    ]
    exact ⟨
      realHistory0 rho facts h0, realHistory1 rho facts h1,
      realHistory2 rho facts h2, realHistory3 rho facts h3,
      realHistory4 rho facts h4, realHistory5 rho facts h5
    ⟩
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
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7,
      Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts h0,
      Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts h1,
      Generated.NoteReshape8x1Spend2.realHistoryClassification rho facts h2,
      Generated.NoteReshape8x1Spend3.realHistoryClassification rho facts h3,
      Generated.NoteReshape8x1Spend4.realHistoryClassification rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyHistoryZero rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyHistoryZero rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyHistoryZero rho facts h7
    ]
    exact ⟨
      realHistory0 rho facts h0, realHistory1 rho facts h1,
      realHistory2 rho facts h2, realHistory3 rho facts h3,
      realHistory4 rho facts h4
    ⟩
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
      Generated.NoteReshape8x1Spend4.dummyAmountZero rho facts h4,
      Generated.NoteReshape8x1Spend4.dummyNullifier rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyAmountZero rho facts h5,
      Generated.NoteReshape8x1Spend5.dummyNullifier rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyAmountZero rho facts h6,
      Generated.NoteReshape8x1Spend6.dummyNullifier rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyAmountZero rho facts h7,
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7,
      Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts h0,
      Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts h1,
      Generated.NoteReshape8x1Spend2.realHistoryClassification rho facts h2,
      Generated.NoteReshape8x1Spend3.realHistoryClassification rho facts h3,
      Generated.NoteReshape8x1Spend4.dummyHistoryZero rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyHistoryZero rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyHistoryZero rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyHistoryZero rho facts h7
    ]
    exact ⟨
      realHistory0 rho facts h0, realHistory1 rho facts h1,
      realHistory2 rho facts h2, realHistory3 rho facts h3
    ⟩
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
      Generated.NoteReshape8x1Spend3.dummyAmountZero rho facts h3,
      Generated.NoteReshape8x1Spend3.dummyNullifier rho facts h3,
      Generated.NoteReshape8x1Spend4.dummyAmountZero rho facts h4,
      Generated.NoteReshape8x1Spend4.dummyNullifier rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyAmountZero rho facts h5,
      Generated.NoteReshape8x1Spend5.dummyNullifier rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyAmountZero rho facts h6,
      Generated.NoteReshape8x1Spend6.dummyNullifier rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyAmountZero rho facts h7,
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7,
      Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts h0,
      Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts h1,
      Generated.NoteReshape8x1Spend2.realHistoryClassification rho facts h2,
      Generated.NoteReshape8x1Spend3.dummyHistoryZero rho facts h3,
      Generated.NoteReshape8x1Spend4.dummyHistoryZero rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyHistoryZero rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyHistoryZero rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyHistoryZero rho facts h7
    ]
    exact ⟨
      realHistory0 rho facts h0, realHistory1 rho facts h1,
      realHistory2 rho facts h2
    ⟩
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      membershipAndNullifiers, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.member rho facts h0,
      Generated.NoteReshape8x1Spend0.realNullifier rho facts h0,
      Generated.NoteReshape8x1Spend1.member rho facts h1,
      Generated.NoteReshape8x1Spend1.realNullifier rho facts h1,
      Generated.NoteReshape8x1Spend2.dummyAmountZero rho facts h2,
      Generated.NoteReshape8x1Spend2.dummyNullifier rho facts h2,
      Generated.NoteReshape8x1Spend3.dummyAmountZero rho facts h3,
      Generated.NoteReshape8x1Spend3.dummyNullifier rho facts h3,
      Generated.NoteReshape8x1Spend4.dummyAmountZero rho facts h4,
      Generated.NoteReshape8x1Spend4.dummyNullifier rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyAmountZero rho facts h5,
      Generated.NoteReshape8x1Spend5.dummyNullifier rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyAmountZero rho facts h6,
      Generated.NoteReshape8x1Spend6.dummyNullifier rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyAmountZero rho facts h7,
      Generated.NoteReshape8x1Spend7.dummyNullifier rho facts h7,
      Generated.NoteReshape8x1Spend0.realHistoryClassification rho facts h0,
      Generated.NoteReshape8x1Spend1.realHistoryClassification rho facts h1,
      Generated.NoteReshape8x1Spend2.dummyHistoryZero rho facts h2,
      Generated.NoteReshape8x1Spend3.dummyHistoryZero rho facts h3,
      Generated.NoteReshape8x1Spend4.dummyHistoryZero rho facts h4,
      Generated.NoteReshape8x1Spend5.dummyHistoryZero rho facts h5,
      Generated.NoteReshape8x1Spend6.dummyHistoryZero rho facts h6,
      Generated.NoteReshape8x1Spend7.dummyHistoryZero rho facts h7
    ]
    exact ⟨realHistory0 rho facts h0, realHistory1 rho facts h1⟩

theorem actionRandomizedKeys
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    randomizedKeys
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
  rcases selectorFacts rho facts with s | s | s | s | s | s | s
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
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      randomizedKeys, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape8x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape8x1Spend2.randomizedKey rho facts h2,
      Generated.NoteReshape8x1Spend3.randomizedKey rho facts h3
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      randomizedKeys, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape8x1Spend1.randomizedKey rho facts h1,
      Generated.NoteReshape8x1Spend2.randomizedKey rho facts h2
    ]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      randomizedKeys, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      NoteReshapeCanonical.circuitPrimitives, h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Spend0.randomizedKey rho facts h0,
      Generated.NoteReshape8x1Spend1.randomizedKey rho facts h1
    ]

theorem actionRandomizersCanonical
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    randomizersCanonical
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  intro input hinput
  simp only [action, List.mem_cons, List.mem_singleton] at hinput
  rcases hinput with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | hinput
  · by_cases h : syntheticSpends0IsDummy rho = 0 <;>
      simpa [
        input0, realInput0, dummyInput0,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend0.randomizerCanonical rho facts
  · by_cases h : syntheticSpends1IsDummy rho = 0 <;>
      simpa [
        input1, realInput1, dummyInput1,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend1.randomizerCanonical rho facts
  · by_cases h : syntheticSpends2IsDummy rho = 0 <;>
      simpa [
        input2, realInput2, dummyInput2,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend2.randomizerCanonical rho facts
  · by_cases h : syntheticSpends3IsDummy rho = 0 <;>
      simpa [
        input3, realInput3, dummyInput3,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend3.randomizerCanonical rho facts
  · by_cases h : syntheticSpends4IsDummy rho = 0 <;>
      simpa [
        input4, realInput4, dummyInput4,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend4.randomizerCanonical rho facts
  · by_cases h : syntheticSpends5IsDummy rho = 0 <;>
      simpa [
        input5, realInput5, dummyInput5,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend5.randomizerCanonical rho facts
  · by_cases h : syntheticSpends6IsDummy rho = 0 <;>
      simpa [
        input6, realInput6, dummyInput6,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend6.randomizerCanonical rho facts
  · by_cases h : syntheticSpends7IsDummy rho = 0 <;>
      simpa [
        input7, realInput7, dummyInput7,
        NoteReshapeCanonical.circuitPrimitives,
        NoteReshapeCanonical.randomizerCanonical,
        Protocol.NoteReshape.Concrete.randomizerCanonical, h
      ] using Generated.NoteReshape8x1Spend7.randomizerCanonical rho facts
  · contradiction

theorem actionDummySlotIndicesCanonical
    (rho : Nat → DeployedF) :
    dummySlotIndicesCanonical
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  intro index input hinput
  cases index with
  | zero =>
      change some (input0 rho) = some input at hinput
      cases hinput
      by_cases h : syntheticSpends0IsDummy rho = 0 <;>
        simp [
          input0, dummyInput0,
          NoteReshapeCanonical.circuitPrimitives,
          NoteReshapeCanonical.dummySlotIndexCanonical,
          Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
        ]
  | succ index =>
      cases index with
      | zero =>
          change some (input1 rho) = some input at hinput
          cases hinput
          by_cases h : syntheticSpends1IsDummy rho = 0 <;>
            simp [
              input1, dummyInput1,
              NoteReshapeCanonical.circuitPrimitives,
              NoteReshapeCanonical.dummySlotIndexCanonical,
              Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
            ]
      | succ index =>
          cases index with
          | zero =>
              change some (input2 rho) = some input at hinput
              cases hinput
              by_cases h : syntheticSpends2IsDummy rho = 0 <;>
                simp [
                  input2, dummyInput2,
                  NoteReshapeCanonical.circuitPrimitives,
                  NoteReshapeCanonical.dummySlotIndexCanonical,
                  Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
                ]
          | succ index =>
              cases index with
              | zero =>
                  change some (input3 rho) = some input at hinput
                  cases hinput
                  by_cases h : syntheticSpends3IsDummy rho = 0 <;>
                    simp [
                      input3, dummyInput3,
                      NoteReshapeCanonical.circuitPrimitives,
                      NoteReshapeCanonical.dummySlotIndexCanonical,
                      Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
                    ]
              | succ index =>
                  cases index with
                  | zero =>
                      change some (input4 rho) = some input at hinput
                      cases hinput
                      by_cases h : syntheticSpends4IsDummy rho = 0 <;>
                        simp [
                          input4, dummyInput4,
                          NoteReshapeCanonical.circuitPrimitives,
                          NoteReshapeCanonical.dummySlotIndexCanonical,
                          Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
                        ]
                  | succ index =>
                      cases index with
                      | zero =>
                          change some (input5 rho) = some input at hinput
                          cases hinput
                          by_cases h : syntheticSpends5IsDummy rho = 0 <;>
                            simp [
                              input5, dummyInput5,
                              NoteReshapeCanonical.circuitPrimitives,
                              NoteReshapeCanonical.dummySlotIndexCanonical,
                              Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
                            ]
                      | succ index =>
                          cases index with
                          | zero =>
                              change some (input6 rho) = some input at hinput
                              cases hinput
                              by_cases h : syntheticSpends6IsDummy rho = 0 <;>
                                simp [
                                  input6, dummyInput6,
                                  NoteReshapeCanonical.circuitPrimitives,
                                  NoteReshapeCanonical.dummySlotIndexCanonical,
                                  Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
                                ]
                          | succ index =>
                              cases index with
                              | zero =>
                                  change some (input7 rho) = some input at hinput
                                  cases hinput
                                  by_cases h : syntheticSpends7IsDummy rho = 0 <;>
                                    simp [
                                      input7, dummyInput7,
                                      NoteReshapeCanonical.circuitPrimitives,
                                      NoteReshapeCanonical.dummySlotIndexCanonical,
                                      Protocol.NoteReshape.Concrete.dummySlotIndexCanonical, h
                                    ]
                              | succ index =>
                                  change none = some input at hinput
                                  contradiction

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
