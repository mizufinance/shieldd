import ShielddGnarkFormal.PrimeCertificate
import ShielddGnarkFormal.PrimeCertificates.Generated.Facts
import Mathlib.Tactic.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificates

theorem prime2 : Nat.Prime 2 := by
  apply PrimeCertificate.primality (nat_lit 2) (nat_lit 1) []
  · decide
  · norm_num
  · simp
  · exact ⟨nat_lit 1, Generated.P2Full, by norm_num⟩
  · simp

theorem prime3 : Nat.Prime 3 := by
  apply PrimeCertificate.primality (nat_lit 3) (nat_lit 2) [2]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    subst q
    exact prime2
  · exact ⟨nat_lit 2, Generated.P3Full, by norm_num⟩
  · intro q hq
    simp at hq
    subst q
    exact ⟨nat_lit 1, Generated.P3Q2, by norm_num⟩

theorem prime5 : Nat.Prime 5 := by
  apply PrimeCertificate.primality (nat_lit 5) (nat_lit 2) [2, 2]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    subst q
    exact prime2
  · exact ⟨nat_lit 4, Generated.P5Full, by norm_num⟩
  · intro q hq
    simp at hq
    subst q
    exact ⟨nat_lit 2, Generated.P5Q2, by norm_num⟩

theorem prime7 : Nat.Prime 7 := by
  apply PrimeCertificate.primality (nat_lit 7) (nat_lit 3) [2, 3]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact prime2
    · exact prime3
  · exact ⟨nat_lit 6, Generated.P7Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact ⟨nat_lit 3, Generated.P7Q2, by norm_num⟩
    · exact ⟨nat_lit 2, Generated.P7Q3, by norm_num⟩

theorem prime13 : Nat.Prime 13 := by
  apply PrimeCertificate.primality (nat_lit 13) (nat_lit 2) [2, 2, 3]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact prime2
    · exact prime3
  · exact ⟨nat_lit 12, Generated.P13Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact ⟨nat_lit 6, Generated.P13Q2, by norm_num⟩
    · exact ⟨nat_lit 4, Generated.P13Q3, by norm_num⟩

theorem prime29 : Nat.Prime 29 := by
  apply PrimeCertificate.primality (nat_lit 29) (nat_lit 2) [2, 2, 7]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact prime2
    · exact prime7
  · exact ⟨nat_lit 28, Generated.P29Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact ⟨nat_lit 14, Generated.P29Q2, by norm_num⟩
    · exact ⟨nat_lit 4, Generated.P29Q7, by norm_num⟩

end Shieldd.GnarkFormal.PrimeCertificates
