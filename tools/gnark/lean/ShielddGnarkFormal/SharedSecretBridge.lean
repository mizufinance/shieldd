import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.ThresholdRegulatedBridge

set_option linter.unusedSectionVars false

/-! Functional bridge for `DeriveSharedSecretsSpend`. -/

namespace Shieldd.GnarkFormal.SharedSecretBridge

abbrev F := Poseidon377.F
abbrev Point := Decaf377Assumptions.Point

variable [Fact (Nat.Prime Extracted.DecafAssertEquivalent.Order)]
variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]
variable [Fact (Nat.Prime Extracted.DecafEncodeToCurve.Order)]

def epk (esk : F) : Point :=
  Decaf377Assumptions.scalarMulLE 251 Decaf377Assumptions.generator esk

def userShared (ack : Point) (esk : F) : Point :=
  Decaf377Assumptions.scalarMulLE 251 ack esk

def issuerShared (dkPub : Point) (esk : F) : Point :=
  Decaf377Assumptions.scalarMulLE 251 dkPub esk

def selectedShared (isFlagged : F) (ack dkPub : Point) (esk : F) : Point :=
  ThresholdRegulatedBridge.selectPoint isFlagged (issuerShared dkPub esk) (userShared ack esk)

structure SharedSecrets where
  issuer : Point
  user : Point
  selected : Point

def SharedSecretsCircuit
    (esk : F) (ack dkPub publishedEPK : Point) (isFlagged : F) (out : SharedSecrets) : Prop :=
  Decaf377Assumptions.DecafEquivalent (epk esk) publishedEPK ∧
  out.issuer = issuerShared dkPub esk ∧
  out.user = userShared ack esk ∧
  out.selected = selectedShared isFlagged ack dkPub esk

def SharedSecretsSpec
    (esk : F) (ack dkPub publishedEPK : Point) (isFlagged : F) (out : SharedSecrets) : Prop :=
  Decaf377Assumptions.DecafEquivalent (epk esk) publishedEPK ∧
  out.issuer = issuerShared dkPub esk ∧
  out.user = userShared ack esk ∧
  out.selected = selectedShared isFlagged ack dkPub esk

theorem shared_secrets_sound
    (esk : F) (ack dkPub publishedEPK : Point) (isFlagged : F) (out : SharedSecrets) :
    SharedSecretsCircuit esk ack dkPub publishedEPK isFlagged out →
      SharedSecretsSpec esk ack dkPub publishedEPK isFlagged out := by
  intro h
  exact h

end Shieldd.GnarkFormal.SharedSecretBridge
