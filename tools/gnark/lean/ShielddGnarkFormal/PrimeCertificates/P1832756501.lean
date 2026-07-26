import ShielddGnarkFormal.PrimeCertificates.Mid
import Mathlib.Tactic.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificates

private def factors : List Nat :=
  List.replicate 2 2 ++ List.replicate 3 5 ++ [29, 126397]

theorem prime1832756501 : Nat.Prime 1832756501 := by
  apply PrimeCertificate.primality (nat_lit 1832756501) (nat_lit 2) factors
  · decide
  · norm_num [factors, List.prod_replicate]
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact prime2
    · exact prime5
    · exact prime29
    · exact prime126397
  · exact ⟨nat_lit 1832756500, Generated.P1832756501Full, by norm_num⟩
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact ⟨nat_lit 916378250, Generated.P1832756501Q2, by norm_num⟩
    · exact ⟨nat_lit 366551300, Generated.P1832756501Q5, by norm_num⟩
    · exact ⟨nat_lit 63198500, Generated.P1832756501Q29, by norm_num⟩
    · exact ⟨nat_lit 14500, Generated.P1832756501Q126397, by norm_num⟩

end Shieldd.GnarkFormal.PrimeCertificates
