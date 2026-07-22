import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment3A

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment3A_spec (s1 : Segment1) (s2 : Segment2) (output : Segment3A)
    (hg : Canonical2 s1.g) (he2 : Canonical2 s2.e2)
    (hexec : segment3A s1 s2 = .ok output) :
    Canonical2 output.outY ∧ decodeFq2 output.outY =
      decodeFq2 s1.g * decodeFq2 s1.g -
        (decodeFq2 s2.e2 + decodeFq2 s2.e2 + decodeFq2 s2.e2) := by
  unfold segment3A at hexec
  obtain ⟨g2, hg2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoE2, htwoE2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨threeE2, hthreeE2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨outY, houtY, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sg2 := extracted_fq2_square_spec s1.g g2 hg hg2
  have stwoE2 := fq2_double_spec s2.e2 twoE2 he2 htwoE2
  have sthreeE2 := fq2_add_spec twoE2 s2.e2 threeE2 stwoE2.1 he2 hthreeE2
  have sy := fq2_sub_spec g2 threeE2 outY sg2.1 sthreeE2.1 houtY
  refine ⟨sy.1, ?_⟩
  rw [sy.2, sg2.2, sthreeE2.2, stwoE2.2]

#print axioms segment3A_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment3A
