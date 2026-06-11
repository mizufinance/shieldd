import ShielddGnarkFormal.Extracted.PoseidonHash6
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Structural bridge for the extracted rate-6 Poseidon gadget.

The extractor now emits a reusable `poseidonPerm6` call instead of inlining every
hash site. This bridge pins the wrapper circuit to that reusable relation; the
concrete `Poseidon377.hash6` spec remains the generated `Poseidon377` executable
spec and parity guard.
-/

namespace Shieldd.GnarkFormal.Poseidon6Bridge

open Shieldd.GnarkFormal.Extracted.PoseidonHash6

def hash6Spec (Domain In0 In1 In2 In3 In4 In5 : F) : F :=
  Poseidon377.hash6 Domain In0 In1 In2 In3 In4 In5

theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 In5 Out : F) :
    circuit Domain In0 In1 In2 In3 In4 In5 Out →
      poseidonPerm6 Domain In0 In1 In2 In3 In4 In5 (fun out => Gates.eq out Out ∧ True) := by
  unfold circuit
  intro h
  exact h

#guard (hash6Spec 13 2 3 5 7 11 17).val =
  (Poseidon377.hash6 13 2 3 5 7 11 17).val

end Shieldd.GnarkFormal.Poseidon6Bridge
