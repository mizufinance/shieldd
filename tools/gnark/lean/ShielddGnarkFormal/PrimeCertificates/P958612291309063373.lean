import ShielddGnarkFormal.PrimeCertificates.P49484425527001
import Mathlib.Tactic.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificates

private def factors : List Nat :=
  List.replicate 2 2 ++ [29, 167, 49484425527001]

theorem prime958612291309063373 : Nat.Prime 958612291309063373 := by
  apply PrimeCertificate.primality (nat_lit 958612291309063373) (nat_lit 2) factors
  · decide
  · norm_num [factors, List.prod_replicate]
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact prime2
    · exact prime29
    · exact prime167
    · exact prime49484425527001
  · exact ⟨nat_lit 958612291309063372, Generated.P958612291309063373Full, by norm_num⟩
  · intro q hq
    simp [factors] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact ⟨nat_lit 479306145654531686, Generated.P958612291309063373Q2, by norm_num⟩
    · exact ⟨nat_lit 33055596252036668, Generated.P958612291309063373Q29, by norm_num⟩
    · exact ⟨nat_lit 5740193361132116, Generated.P958612291309063373Q167, by norm_num⟩
    · exact ⟨nat_lit 19372, Generated.P958612291309063373Q49484425527001, by norm_num⟩

end Shieldd.GnarkFormal.PrimeCertificates
