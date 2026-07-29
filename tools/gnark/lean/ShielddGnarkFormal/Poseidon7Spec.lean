import ShielddGnarkFormal.Poseidon377

/-! Circuit-facing names for the canonical fixed-rate Poseidon377 hash. -/

namespace Shieldd.GnarkFormal.Poseidon7Spec

abbrev F := Poseidon377.F
abbrev p17 := Poseidon377.Fixed7.p17
abbrev row8 := Poseidon377.Fixed7.row8
abbrev fr8 := Poseidon377.Fixed7.fr8
abbrev pr8 := Poseidon377.Fixed7.pr8
abbrev permSpec7 := Poseidon377.hash7

theorem permSpec7_eq_hash7 (domain in0 in1 in2 in3 in4 in5 in6 : F) :
    permSpec7 domain in0 in1 in2 in3 in4 in5 in6 =
      Poseidon377.hash7 domain in0 in1 in2 in3 in4 in5 in6 :=
  rfl

end Shieldd.GnarkFormal.Poseidon7Spec
