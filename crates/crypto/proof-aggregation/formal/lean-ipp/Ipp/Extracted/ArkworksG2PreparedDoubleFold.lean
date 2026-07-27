import Ipp.Extracted.ArkworksG2PreparedDoubleExecute
import Ipp.Extracted.ArkworksG2PreparedDoubleAssembly

namespace Ipp.Extracted.ArkworksG2PreparedDouble

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedDoubleOps
open Ipp.Extracted.ArkworksG2PreparedDoubleExecute
open Ipp.Extracted.ArkworksG2PreparedDoubleAssembly

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

/-- The extracted formula returns the protocol model state and line coefficients. -/
theorem g2_double_line_exec_spec
    (r output : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple)
    (coeff : EllCoeffMont) (twoInvMont : LimbArray)
    (hr : CanonicalG2 r)
    (htwoCanonical : limbsToNat twoInvMont < baseModulus)
    (htwoDecode : decode twoInvMont = twoInv)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double_line
      r twoInvMont = .ok (output, coeff)) :
    CanonicalG2 output ∧
      decodeHomogeneous output = (doublingLineModel r).1 ∧
      decodeEllCoeff coeff = (doublingLineModel r).2 := by
  have hcut := g2_double_line_cut_spec r output coeff twoInvMont hr
    htwoCanonical htwoDecode hexec
  rcases hcut.2 with ⟨s1, s2, hs1, hs2, hstate, hcoeff⟩
  have hmodel := assemble_double_model (decodeHomogeneous r) s1 s2 hs1 hs2
  refine ⟨hcut.1, ?_, ?_⟩
  · exact hstate.trans (by simpa [doublingLineModel] using hmodel.1)
  · exact hcoeff.trans (by simpa [doublingLineModel] using hmodel.2)

#print axioms g2_double_line_exec_spec

end Ipp.Extracted.ArkworksG2PreparedDouble
