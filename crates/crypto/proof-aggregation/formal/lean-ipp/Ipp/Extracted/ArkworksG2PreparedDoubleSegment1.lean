import Ipp.Extracted.ArkworksG2PreparedDoubleSegment1A
import Ipp.Extracted.ArkworksG2PreparedDoubleSegment1B
import Ipp.Extracted.ArkworksG2PreparedDoubleSegment1C
import Ipp.Extracted.ArkworksG2PreparedDoubleSegment1Assembly

namespace Ipp.Extracted.ArkworksG2PreparedDoubleSegment1

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment1A
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment1B
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment1C
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment1Assembly

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

theorem segment1_spec (r : Proj) (twoInvMont : LimbArray) (output : Segment1)
    (hr : CanonicalG2 r)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : segment1 r twoInvMont = .ok output) :
    CanonicalSegment1 output ∧
      decodeSegment1 output = modelSegment1 (decodeHomogeneous r) := by
  rw [segment1_eq_cut] at hexec
  unfold segment1Cut at hexec
  obtain ⟨a, ha, hexec⟩ := bind_eq_ok hexec
  obtain ⟨e, he, hexec⟩ := bind_eq_ok hexec
  obtain ⟨tail, htail, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have sa := segment1A_spec r twoInvMont a hr htwoCanonical htwoDecode ha
  have se := segment1B_spec a e sa.1.2.2 he
  have stail := segment1C_spec a e twoInvMont tail sa.1.2.1 se.1
    htwoCanonical htwoDecode htail
  exact assemble_segment1_spec (decodeHomogeneous r) a e tail sa.1 sa.2
    se.1 se.2 stail.1 stail.2.1 stail.2.2.1 stail.2.2.2

#print axioms segment1_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleSegment1
