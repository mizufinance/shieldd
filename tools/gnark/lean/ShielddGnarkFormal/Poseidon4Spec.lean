import ShielddGnarkFormal.Poseidon377

/-! Circuit-facing names for the canonical fixed-rate Poseidon377 hash. -/

namespace Shieldd.GnarkFormal.Poseidon4Spec

abbrev F := Poseidon377.F
abbrev p17 := Poseidon377.Fixed4.p17
abbrev fr5 := Poseidon377.Fixed4.fr5
abbrev pr5 := Poseidon377.Fixed4.pr5
abbrev permSpec4 := Poseidon377.hash4

theorem permSpec4_eq_hash4 (domain in0 in1 in2 in3 : F) :
    permSpec4 domain in0 in1 in2 in3 =
      Poseidon377.hash4 domain in0 in1 in2 in3 :=
  rfl

end Shieldd.GnarkFormal.Poseidon4Spec
