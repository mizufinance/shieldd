import ShielddGnarkFormal.Poseidon2Bridge
import ShielddGnarkFormal.Protocol.Transfer.Concrete

/-! Exact extracted Poseidon2 bridge for transfer compliance salt derivation. -/

namespace Shieldd.GnarkFormal.TransferSaltBridge

abbrev F := Protocol.Common.F

def TransferSaltSpec (domain nonceRoot label output : F) : Prop :=
  output = Poseidon377.hash2 domain nonceRoot label

variable [Fact (Nat.Prime Extracted.Poseidon2.Order)]

def TransferSaltCircuit (domain nonceRoot label output : F) : Prop :=
  Extracted.Poseidon2.circuit domain nonceRoot label output

theorem transfer_salt_sound
    (domain nonceRoot label output : F)
    (h : TransferSaltCircuit domain nonceRoot label output) :
    TransferSaltSpec domain nonceRoot label output := by
  unfold TransferSaltCircuit Extracted.Poseidon2.circuit at h
  rw [Poseidon2Bridge.perm2_uncps] at h
  rcases h with ⟨heq, -⟩
  simpa [
    TransferSaltSpec,
    Poseidon2Bridge.permSpec2,
    Extracted.Poseidon2.Gates,
    GatesGnark9,
    GatesGnark8,
    GatesDef.eq,
    eq_comm
  ] using heq

end Shieldd.GnarkFormal.TransferSaltBridge
