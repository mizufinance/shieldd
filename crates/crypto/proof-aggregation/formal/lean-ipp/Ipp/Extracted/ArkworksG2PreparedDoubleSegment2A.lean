import Ipp.Extracted.ArkworksG2PreparedDoubleOps

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment2A

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedDoubleOps

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment2A_spec (r : Proj) (s : Segment1) (output : Fq2LimbPair)
    (hr : CanonicalG2 r) (hs : Canonical2 s.b ∧ Canonical2 s.c)
    (hexec : segment2A r s = .ok output) :
    Canonical2 output ∧ decodeFq2 output =
      (decodeFq2 r.y + decodeFq2 r.z) *
        (decodeFq2 r.y + decodeFq2 r.z) -
      (decodeFq2 s.b + decodeFq2 s.c) := by
  unfold segment2A at hexec
  obtain ⟨yPlusZ, hyPlusZ, hexec⟩ := bind_eq_ok hexec
  obtain ⟨yPlusZ2, hyPlusZ2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bPlusC, hbPlusC, hh⟩ := bind_eq_ok hexec
  have syPlusZ := fq2_add_spec r.y r.z yPlusZ hr.2.1 hr.2.2 hyPlusZ
  have syPlusZ2 := extracted_fq2_square_spec yPlusZ yPlusZ2 syPlusZ.1 hyPlusZ2
  have sbPlusC := fq2_add_spec s.b s.c bPlusC hs.1 hs.2 hbPlusC
  have sh := fq2_sub_spec yPlusZ2 bPlusC output syPlusZ2.1 sbPlusC.1 hh
  refine ⟨sh.1, ?_⟩
  rw [sh.2, syPlusZ2.2, syPlusZ.2, sbPlusC.2]

#print axioms segment2A_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment2A
