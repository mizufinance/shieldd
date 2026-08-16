import Mathlib.Data.ZMod.Basic

/-! Field definitions shared by the generated fixed-rate Poseidon377 hashes. -/

namespace Shieldd.GnarkFormal.Poseidon377

/-- BLS12-377 scalar field prime (matches the extracted gadgets' `Order`). -/
def P : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev F := ZMod P

end Shieldd.GnarkFormal.Poseidon377
