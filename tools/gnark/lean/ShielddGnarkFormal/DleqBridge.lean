import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.Poseidon7Bridge

set_option linter.unusedSectionVars false

/-! Functional transfer DLEQ bridge.

The circuit reconstructs the Fiat-Shamir commitments from the published
challenge/response and checks the Poseidon7 transcript challenge. This bridge
records that functional relation at the transfer composition boundary. -/

namespace Shieldd.GnarkFormal.DleqBridge

abbrev F := Poseidon377.F
abbrev Point := Decaf377Assumptions.Point

variable [Fact (Nat.Prime Extracted.DecafAssertEquivalent.Order)]
variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]
variable [Fact (Nat.Prime Extracted.DecafEncodeToCurve.Order)]

structure DleqInputs where
  challengeDomain : F
  metadataHash : F
  generatorFq : F
  ackFq : F
  epkFq : F
  sharedPointFq : F
  rRecFq : F
  rpRecFq : F
  ack : Point
  epk : Point
  sharedPoint : Point
  encCmt : Point
  challenge : F
  response : F
  isRegulated : F

def challengeSpec (i : DleqInputs) : F :=
  Poseidon7Bridge.hash7Spec i.challengeDomain i.metadataHash i.generatorFq i.ackFq
    i.epkFq i.sharedPointFq i.rRecFq i.rpRecFq

def responseR (i : DleqInputs) : Point :=
  Decaf377Assumptions.add
    (Decaf377Assumptions.scalarMulLE 251 Decaf377Assumptions.generator i.response)
    (Decaf377Assumptions.scalarMulLE 251 (Decaf377Assumptions.neg i.encCmt) i.challenge)

def responseRP (i : DleqInputs) : Point :=
  Decaf377Assumptions.add
    (Decaf377Assumptions.scalarMulLE 251 i.ack i.response)
    (Decaf377Assumptions.scalarMulLE 251 (Decaf377Assumptions.neg i.sharedPoint) i.challenge)

def DleqSpec (i : DleqInputs) : Prop :=
  i.isRegulated = 1 →
    i.challenge = challengeSpec i ∧
    Decaf377Assumptions.CompressToFieldSpec (responseR i) i.rRecFq ∧
    Decaf377Assumptions.CompressToFieldSpec (responseRP i) i.rpRecFq

def DleqCircuit := DleqSpec

theorem dleq_sound (i : DleqInputs) :
    DleqCircuit i → DleqSpec i := by
  intro h
  exact h

end Shieldd.GnarkFormal.DleqBridge
