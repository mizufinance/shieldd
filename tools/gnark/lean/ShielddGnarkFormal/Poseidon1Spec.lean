import ShielddGnarkFormal.Poseidon377

/-! Circuit-facing names for the canonical fixed-rate Poseidon377 hash. -/

namespace Shieldd.GnarkFormal.Poseidon1Spec

abbrev F := Poseidon377.F
abbrev p17 := Poseidon377.Fixed1.p17
abbrev fr2 := Poseidon377.Fixed1.fr2
abbrev pr2 := Poseidon377.Fixed1.pr2
abbrev permSpec1 := Poseidon377.hash1

theorem permSpec1_eq_hash1 (domain in0 : F) :
    permSpec1 domain in0 = Poseidon377.hash1 domain in0 :=
  rfl

end Shieldd.GnarkFormal.Poseidon1Spec
