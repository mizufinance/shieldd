import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment3B

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment3B_spec (s1 : Segment1) (s2 : Segment2) (output : Segment3B)
    (hb : Canonical2 s1.b) (hh : Canonical2 s2.h) (hj : Canonical2 s2.j)
    (hexec : segment3B s1 s2 = .ok output) :
    Canonical2 output.outZ ∧ Canonical2 output.negH ∧
      Canonical2 output.threeJ ∧
      decodeFq2 output.outZ = decodeFq2 s1.b * decodeFq2 s2.h ∧
      decodeFq2 output.negH = -decodeFq2 s2.h ∧
      decodeFq2 output.threeJ =
        decodeFq2 s2.j + decodeFq2 s2.j + decodeFq2 s2.j := by
  unfold segment3B at hexec
  obtain ⟨outZ, houtZ, hexec⟩ := bind_eq_ok hexec
  obtain ⟨negH, hnegH, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoJ, htwoJ, hexec⟩ := bind_eq_ok hexec
  obtain ⟨threeJ, hthreeJ, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sz := extracted_fq2_mul_spec s1.b s2.h outZ hb hh houtZ
  have snegH := fq2_neg_spec s2.h negH hh hnegH
  have stwoJ := fq2_double_spec s2.j twoJ hj htwoJ
  have sthreeJ := fq2_add_spec twoJ s2.j threeJ stwoJ.1 hj hthreeJ
  exact ⟨sz.1, snegH.1, sthreeJ.1, sz.2, snegH.2,
    sthreeJ.2.trans (by rw [stwoJ.2])⟩

#print axioms segment3B_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment3B
