import ShielddGnarkFormal.Extracted.PoseidonHash7
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Structural bridge for the extracted rate-7 Poseidon gadget used by the
consolidate/split statement hash.
-/

namespace Shieldd.GnarkFormal.Poseidon7Bridge

open Shieldd.GnarkFormal.Extracted.PoseidonHash7

def hash7Spec (Domain In0 In1 In2 In3 In4 In5 In6 : F) : F :=
  Poseidon377.hash7 Domain In0 In1 In2 In3 In4 In5 In6

theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 In6 Out : F) :
    circuit Domain In0 In1 In2 In3 In4 In5 In6 Out →
      poseidonPerm7 Domain In0 In1 In2 In3 In4 In5 In6 (fun out => Gates.eq out Out ∧ True) := by
  unfold circuit
  intro h
  exact h

#guard (hash7Spec Poseidon377.hash7Domain 1 2 3 4 5 6 7).val =
  4343785876047570911133173947224221823797937726350094165458715664628871658969

end Shieldd.GnarkFormal.Poseidon7Bridge
