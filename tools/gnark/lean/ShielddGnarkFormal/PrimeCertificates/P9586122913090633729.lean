import ShielddGnarkFormal.PrimeCertificates.P958612291309063373
import Mathlib.Tactic.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificates

private def factors : List Nat :=
  List.replicate 46 2 ++ [3, 7, 13, 499]

theorem prime9586122913090633729 : Nat.Prime 9586122913090633729 := by
  apply PrimeCertificate.primality (nat_lit 9586122913090633729) (nat_lit 11) factors
  · decide
  · norm_num [factors, List.prod_replicate]
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl
    · exact prime2
    · exact prime3
    · exact prime7
    · exact prime13
    · exact prime499
  · exact ⟨nat_lit 9586122913090633728, Generated.P9586122913090633729Full, by norm_num⟩
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl
    · exact ⟨nat_lit 4793061456545316864, Generated.P9586122913090633729Q2, by norm_num⟩
    · exact ⟨nat_lit 3195374304363544576, Generated.P9586122913090633729Q3, by norm_num⟩
    · exact ⟨nat_lit 1369446130441519104, Generated.P9586122913090633729Q7, by norm_num⟩
    · exact ⟨nat_lit 737394070237741056, Generated.P9586122913090633729Q13, by norm_num⟩
    · exact ⟨nat_lit 19210667160502272, Generated.P9586122913090633729Q499, by norm_num⟩

end Shieldd.GnarkFormal.PrimeCertificates
