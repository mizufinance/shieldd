import ShielddGnarkFormal.Poseidon377

/-! Circuit-facing names for the canonical fixed-rate Poseidon377 hash. -/

namespace Shieldd.GnarkFormal.Poseidon2Spec

abbrev F := Poseidon377.F
abbrev p17 := Poseidon377.Fixed2.p17
abbrev fr3 := Poseidon377.Fixed2.fr3
abbrev pr3 := Poseidon377.Fixed2.pr3
abbrev permSpec2 := Poseidon377.hash2

theorem permSpec2_eq_hash2 (domain in0 in1 : F) :
    permSpec2 domain in0 in1 = Poseidon377.hash2 domain in0 in1 :=
  rfl

end Shieldd.GnarkFormal.Poseidon2Spec
