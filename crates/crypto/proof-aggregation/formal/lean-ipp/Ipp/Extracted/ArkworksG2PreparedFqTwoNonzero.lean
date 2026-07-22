import Ipp.Extracted.ArkworksG2PreparedModel

namespace Ipp.Extracted.ArkworksG2PreparedFqTwoNonzero

open Ipp.Bls12377

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩

theorem fq_two_ne_zero : (2 : Fq) ≠ 0 := by
  change ((2 : Nat) : Fq) ≠ 0
  intro h
  have hnat := (fq_natCast_eq_zero_iff 2).mp h
  norm_num [baseModulus] at hnat

end Ipp.Extracted.ArkworksG2PreparedFqTwoNonzero
