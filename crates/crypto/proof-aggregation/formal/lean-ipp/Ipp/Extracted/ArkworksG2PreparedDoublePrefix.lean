import Ipp.Extracted.ArkworksG2PreparedDoubleSegment1
import Ipp.Extracted.ArkworksG2PreparedDoubleSegment2

namespace Ipp.Extracted.ArkworksG2PreparedDoublePrefix

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment1
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment2

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

def segment12 (r : Proj) (twoInvMont : LimbArray) :
    Result (Segment1 × Segment2) := do
  let s1 ← segment1 r twoInvMont
  let s2 ← segment2 r s1
  .ok (s1, s2)

theorem segment12_spec (r : Proj) (twoInvMont : LimbArray)
    (s1 : Segment1) (s2 : Segment2) (hr : CanonicalG2 r)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : segment12 r twoInvMont = .ok (s1, s2)) :
    CanonicalSegment1 s1 ∧
      decodeSegment1 s1 = modelSegment1 (decodeHomogeneous r) ∧
      CanonicalSegment2 s2 ∧
      decodeSegment2 s2 =
        modelSegment2 (decodeHomogeneous r) (decodeSegment1 s1) := by
  unfold segment12 at hexec
  obtain ⟨s1', hs1exec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2', hs2exec, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq, Prod.mk.injEq] at hret
  rcases hret with ⟨rfl, rfl⟩
  have hs1 := segment1_spec r twoInvMont s1' hr
    htwoCanonical htwoDecode hs1exec
  clear hs1exec
  have hs2 := segment2_spec r s1' s2' hr hs1.1 hs2exec
  exact ⟨hs1.1, hs1.2, hs2.1, hs2.2⟩

theorem segmentedDoubleLine_eq_segment12 (r : Proj)
    (twoInvMont : LimbArray) :
    segmentedDoubleLine r twoInvMont = (do
      let stages ← segment12 r twoInvMont
      segment3 stages.1 stages.2) := by
  unfold segmentedDoubleLine segment12
  simp only [result_bind_assoc, Result.bind_ok]

#print axioms segment12_spec
#print axioms segmentedDoubleLine_eq_segment12

end Ipp.Extracted.ArkworksG2PreparedDoublePrefix
