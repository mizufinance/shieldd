import ShielddGnarkFormal.Poseidon377

/-! Circuit-facing names for the canonical fixed-rate Poseidon377 hash. -/

namespace Shieldd.GnarkFormal.Poseidon6Spec

abbrev F := Poseidon377.F
abbrev p17 := Poseidon377.Fixed6.p17
abbrev row7 := Poseidon377.Fixed6.row7
abbrev fr7 := Poseidon377.Fixed6.fr7
abbrev pr7 := Poseidon377.Fixed6.pr7
abbrev permSpec6 := Poseidon377.hash6

theorem permSpec6_eq_hash6 (domain in0 in1 in2 in3 in4 in5 : F) :
    permSpec6 domain in0 in1 in2 in3 in4 in5 =
      Poseidon377.hash6 domain in0 in1 in2 in3 in4 in5 :=
  rfl

end Shieldd.GnarkFormal.Poseidon6Spec
