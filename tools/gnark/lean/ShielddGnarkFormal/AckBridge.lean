import ShielddGnarkFormal.Decaf377Assumptions

/-! ACK derivation bridge for transfer compliance.

`DeriveACKFromLeafD` is a Decaf scalar multiplication with a witness-supplied
ring public key as base. -/

namespace Shieldd.GnarkFormal.AckBridge

abbrev F := Poseidon377.F
abbrev Point := Decaf377Assumptions.Point

def ack (ringPK : Point) (d : F) : Point :=
  Decaf377Assumptions.scalarMulLE 251 ringPK d

def AckCircuit (ringPK : Point) (d : F) (out : Point) : Prop :=
  out = ack ringPK d

def AckSpec (ringPK : Point) (d : F) (out : Point) : Prop :=
  out = ack ringPK d

theorem ack_sound (ringPK : Point) (d : F) (out : Point) :
    AckCircuit ringPK d out → AckSpec ringPK d out := by
  intro h
  exact h

end Shieldd.GnarkFormal.AckBridge
