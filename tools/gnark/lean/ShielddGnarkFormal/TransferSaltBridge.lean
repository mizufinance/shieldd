import ShielddGnarkFormal.Poseidon2Bridge

/-! Functional bridge for transfer compliance salt derivation. -/

namespace Shieldd.GnarkFormal.TransferSaltBridge

abbrev F := Poseidon377.F

def salt (domain nonceRoot label : F) : F :=
  Poseidon2Bridge.permSpec2 domain nonceRoot label

def TransferSaltCircuit (domain nonceRoot label out : F) : Prop :=
  out = salt domain nonceRoot label

def TransferSaltSpec (domain nonceRoot label out : F) : Prop :=
  out = salt domain nonceRoot label

theorem transfer_salt_sound (domain nonceRoot label out : F) :
    TransferSaltCircuit domain nonceRoot label out → TransferSaltSpec domain nonceRoot label out := by
  intro h
  exact h

end Shieldd.GnarkFormal.TransferSaltBridge
