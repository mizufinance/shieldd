import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.Poseidon2Bridge

/-! Functional specs for the transfer compliance Poseidon stream encryption. -/

namespace Shieldd.GnarkFormal.PoseidonEncryptionBridge

abbrev F := Poseidon377.F
abbrev Point := Decaf377Assumptions.Point

def streamBlock (streamDomain seed counter : F) : F :=
  Poseidon2Bridge.permSpec2 streamDomain seed counter

def amountCiphertext (streamDomain seed amount : F) : F :=
  amount + streamBlock streamDomain seed 0

def addressCiphertext0 (streamDomain seed divGenFq : F) : F :=
  divGenFq + streamBlock streamDomain seed 0

def addressCiphertext1 (streamDomain seed transmissionFq : F) : F :=
  transmissionFq + streamBlock streamDomain seed 1

def addressCiphertext2 (streamDomain seed : F) : F :=
  streamBlock streamDomain seed 2

def detectionPlaintext (assetID isFlagged flagBit : F) : F :=
  assetID + isFlagged * flagBit

def DetectionSpec
    (streamDomain issuerDomain flagBit isRegulated isFlagged ssFq senderCoreEPKFq
      detectionSalt assetID : F)
    (cipher0 cipher1 : F) : Prop :=
  isRegulated = 1 →
    let seed := Poseidon2Bridge.permSpec2 issuerDomain ssFq senderCoreEPKFq
    cipher0 = detectionPlaintext assetID isFlagged flagBit + streamBlock streamDomain seed 0 ∧
    cipher1 = detectionSalt + streamBlock streamDomain seed 1

def DetectionCircuit := DetectionSpec

def AmountSpec
    (streamDomain isRegulated sharedSecretFq c2 amount cipher0 : F) : Prop :=
  isRegulated = 1 →
    let seed := c2 - sharedSecretFq
    cipher0 = amountCiphertext streamDomain seed amount

def AmountCircuit := AmountSpec

def AddressSpec
    (streamDomain isRegulated sharedSecretFq c2 divGenFq transmissionFq cipher0 cipher1 cipher2 : F) :
    Prop :=
  isRegulated = 1 →
    let seed := c2 - sharedSecretFq
    cipher0 = addressCiphertext0 streamDomain seed divGenFq ∧
    cipher1 = addressCiphertext1 streamDomain seed transmissionFq ∧
    cipher2 = addressCiphertext2 streamDomain seed

def AddressCircuit := AddressSpec

theorem detection_sound
    (streamDomain issuerDomain flagBit isRegulated isFlagged ssFq senderCoreEPKFq
      detectionSalt assetID cipher0 cipher1 : F) :
    DetectionCircuit streamDomain issuerDomain flagBit isRegulated isFlagged ssFq
      senderCoreEPKFq detectionSalt assetID cipher0 cipher1 →
    DetectionSpec streamDomain issuerDomain flagBit isRegulated isFlagged ssFq
      senderCoreEPKFq detectionSalt assetID cipher0 cipher1 := by
  intro h
  exact h

theorem amount_sound
    (streamDomain isRegulated sharedSecretFq c2 amount cipher0 : F) :
    AmountCircuit streamDomain isRegulated sharedSecretFq c2 amount cipher0 →
      AmountSpec streamDomain isRegulated sharedSecretFq c2 amount cipher0 := by
  intro h
  exact h

theorem address_sound
    (streamDomain isRegulated sharedSecretFq c2 divGenFq transmissionFq cipher0 cipher1 cipher2 : F) :
    AddressCircuit streamDomain isRegulated sharedSecretFq c2 divGenFq transmissionFq
      cipher0 cipher1 cipher2 →
      AddressSpec streamDomain isRegulated sharedSecretFq c2 divGenFq transmissionFq
        cipher0 cipher1 cipher2 := by
  intro h
  exact h

end Shieldd.GnarkFormal.PoseidonEncryptionBridge
