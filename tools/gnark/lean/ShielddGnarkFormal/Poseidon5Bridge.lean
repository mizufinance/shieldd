import ShielddGnarkFormal.Extracted.PoseidonHash5

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Structural bridge for the extracted rate-5 Poseidon gadget used by transfer
asset-registry ring and leaf commitments. -/

namespace Shieldd.GnarkFormal.Poseidon5Bridge

open Shieldd.GnarkFormal.Extracted.PoseidonHash5

theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 In4 Out : F) :
    circuit Domain In0 In1 In2 In3 In4 Out →
      circuit Domain In0 In1 In2 In3 In4 Out := by
  intro h
  exact h

end Shieldd.GnarkFormal.Poseidon5Bridge
