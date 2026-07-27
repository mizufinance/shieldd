import Ipp.Extracted.ArkworksG2PreparedDoublePrefix
import Ipp.Extracted.ArkworksG2PreparedDoubleSegment3

namespace Ipp.Extracted.ArkworksG2PreparedDoubleExecute

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps
open Ipp.Extracted.ArkworksG2PreparedDoublePrefix
open Ipp.Extracted.ArkworksG2PreparedDoubleSegment3

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

/-- Execution routed through the typed cuts, before folding their pure model. -/
theorem g2_double_line_cut_spec
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (coeff : EllCoeffMont) (twoInvMont : LimbArray)
    (hr : CanonicalG2 r)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
      r twoInvMont = .ok (output, coeff)) :
    CanonicalG2 output ∧ ∃ s1 : DecodedSegment1, ∃ s2 : DecodedSegment2,
      s1 = modelSegment1 (decodeHomogeneous r) ∧
      s2 = modelSegment2 (decodeHomogeneous r) s1 ∧
      decodeHomogeneous output = modelSegment3State s1 s2 ∧
      decodeEllCoeff coeff = modelSegment3Coeff s2 := by
  rw [g2_double_line_eq_segmented, segmentedDoubleLine_eq_segment12] at hexec
  obtain ⟨stages, hstages, hs3exec⟩ := bind_eq_ok hexec
  rcases stages with ⟨raw1, raw2⟩
  have hs12 := segment12_spec r twoInvMont raw1 raw2 hr
    htwoCanonical htwoDecode hstages
  clear hstages
  have hs3 := segment3_spec raw1 raw2 output coeff
    hs12.1 hs12.2.2.1 hs3exec
  refine ⟨hs3.1, decodeSegment1 raw1, decodeSegment2 raw2,
    hs12.2.1, hs12.2.2.2, hs3.2.1, hs3.2.2⟩

#print axioms g2_double_line_cut_spec

end Ipp.Extracted.ArkworksG2PreparedDoubleExecute
