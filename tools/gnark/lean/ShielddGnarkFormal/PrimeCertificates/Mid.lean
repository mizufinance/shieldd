import ShielddGnarkFormal.PrimeCertificates.Base
import Mathlib.Tactic.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificates

theorem prime41 : Nat.Prime 41 := by
  apply PrimeCertificate.primality (nat_lit 41) (nat_lit 6) [2, 2, 2, 5]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact prime2
    · exact prime5
  · exact ⟨nat_lit 40, Generated.P41Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact ⟨nat_lit 20, Generated.P41Q2, by norm_num⟩
    · exact ⟨nat_lit 8, Generated.P41Q5, by norm_num⟩

theorem prime83 : Nat.Prime 83 := by
  apply PrimeCertificate.primality (nat_lit 83) (nat_lit 2) [2, 41]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact prime2
    · exact prime41
  · exact ⟨nat_lit 82, Generated.P83Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact ⟨nat_lit 41, Generated.P83Q2, by norm_num⟩
    · exact ⟨nat_lit 2, Generated.P83Q41, by norm_num⟩

theorem prime167 : Nat.Prime 167 := by
  apply PrimeCertificate.primality (nat_lit 167) (nat_lit 5) [2, 83]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact prime2
    · exact prime83
  · exact ⟨nat_lit 166, Generated.P167Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl
    · exact ⟨nat_lit 83, Generated.P167Q2, by norm_num⟩
    · exact ⟨nat_lit 2, Generated.P167Q83, by norm_num⟩

theorem prime499 : Nat.Prime 499 := by
  apply PrimeCertificate.primality (nat_lit 499) (nat_lit 7) [2, 3, 83]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl | rfl
    · exact prime2
    · exact prime3
    · exact prime83
  · exact ⟨nat_lit 498, Generated.P499Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl | rfl
    · exact ⟨nat_lit 249, Generated.P499Q2, by norm_num⟩
    · exact ⟨nat_lit 166, Generated.P499Q3, by norm_num⟩
    · exact ⟨nat_lit 6, Generated.P499Q83, by norm_num⟩

theorem prime3511 : Nat.Prime 3511 := by
  apply PrimeCertificate.primality (nat_lit 3511) (nat_lit 7) [2, 3, 3, 3, 5, 13]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact prime2
    · exact prime3
    · exact prime5
    · exact prime13
  · exact ⟨nat_lit 3510, Generated.P3511Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact ⟨nat_lit 1755, Generated.P3511Q2, by norm_num⟩
    · exact ⟨nat_lit 1170, Generated.P3511Q3, by norm_num⟩
    · exact ⟨nat_lit 702, Generated.P3511Q5, by norm_num⟩
    · exact ⟨nat_lit 270, Generated.P3511Q13, by norm_num⟩

theorem prime126397 : Nat.Prime 126397 := by
  apply PrimeCertificate.primality (nat_lit 126397) (nat_lit 5) [2, 2, 3, 3, 3511]
  · decide
  · norm_num
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl | rfl
    · exact prime2
    · exact prime3
    · exact prime3511
  · exact ⟨nat_lit 126396, Generated.P126397Full, by norm_num⟩
  · intro q hq
    simp at hq
    rcases hq with rfl | rfl | rfl
    · exact ⟨nat_lit 63198, Generated.P126397Q2, by norm_num⟩
    · exact ⟨nat_lit 42132, Generated.P126397Q3, by norm_num⟩
    · exact ⟨nat_lit 36, Generated.P126397Q3511, by norm_num⟩

end Shieldd.GnarkFormal.PrimeCertificates
