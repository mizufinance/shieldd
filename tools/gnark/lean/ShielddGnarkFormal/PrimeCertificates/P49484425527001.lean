import ShielddGnarkFormal.PrimeCertificates.P1832756501
import Mathlib.Tactic.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificates

private def factors : List Nat :=
  List.replicate 3 2 ++ List.replicate 3 3 ++ List.replicate 3 5 ++ [1832756501]

theorem prime49484425527001 : Nat.Prime 49484425527001 := by
  apply PrimeCertificate.primality (nat_lit 49484425527001) (nat_lit 14) factors
  · decide
  · norm_num [factors, List.prod_replicate]
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact prime2
    · exact prime3
    · exact prime5
    · exact prime1832756501
  · exact ⟨nat_lit 49484425527000, Generated.P49484425527001Full, by norm_num⟩
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact ⟨nat_lit 24742212763500, Generated.P49484425527001Q2, by norm_num⟩
    · exact ⟨nat_lit 16494808509000, Generated.P49484425527001Q3, by norm_num⟩
    · exact ⟨nat_lit 9896885105400, Generated.P49484425527001Q5, by norm_num⟩
    · exact ⟨nat_lit 27000, Generated.P49484425527001Q1832756501, by norm_num⟩

end Shieldd.GnarkFormal.PrimeCertificates
