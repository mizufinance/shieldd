import ShielddGnarkFormal.Poseidon377

/-! Circuit-facing names for the canonical fixed-rate Poseidon377 hash. -/

namespace Shieldd.GnarkFormal.Poseidon3Spec

abbrev F := Poseidon377.F
abbrev p17 := Poseidon377.Fixed3.p17
abbrev fr4 := Poseidon377.Fixed3.fr4
abbrev pr4 := Poseidon377.Fixed3.pr4
abbrev permSpec3 := Poseidon377.hash3

theorem permSpec3_eq_hash3 (domain in0 in1 in2 : F) :
    permSpec3 domain in0 in1 in2 = Poseidon377.hash3 domain in0 in1 in2 :=
  rfl

end Shieldd.GnarkFormal.Poseidon3Spec
