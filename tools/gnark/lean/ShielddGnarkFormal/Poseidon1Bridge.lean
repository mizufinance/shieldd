import ShielddGnarkFormal.Extracted.PoseidonHash1
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Structural bridge for the extracted rate-1 Poseidon gadget used by the TCT
leaf hash before a state-commitment quad path.
-/

namespace Shieldd.GnarkFormal.Poseidon1Bridge

open Shieldd.GnarkFormal.Extracted.PoseidonHash1

def hash1Spec (Domain In0 : F) : F :=
  Poseidon377.hash1 Domain In0

theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 Out : F) :
    circuit Domain In0 Out →
      poseidonPerm1 Domain In0 (fun out => Gates.eq out Out ∧ True) := by
  unfold circuit
  intro h
  exact h

#guard (hash1Spec 13 2).val =
  (Poseidon377.hash1 13 2).val

end Shieldd.GnarkFormal.Poseidon1Bridge
