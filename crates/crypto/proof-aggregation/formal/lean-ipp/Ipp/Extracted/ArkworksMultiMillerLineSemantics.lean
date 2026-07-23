import Ipp.Extracted.ArkworksMultiMillerLineExecution

/-! Thin semantic projection of the existing finite-G1 line theorem. -/

namespace Ipp.Extracted.ArkworksMultiMillerLineSemantics

open Aeneas Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel

set_option maxHeartbeats 1000000

/-- Project only the accumulator facts needed by a multi-pair line pass. -/
theorem line_semantics
    (f : Ipp.Extracted.ArkworksMultiMillerModel.Fq12Limb)
    (coeff : G2EllCoeffLimb)
    (p : G1AffineLimb) (c0 c1 c2 : Fq2LimbPair)
    (nextF : Ipp.Extracted.ArkworksMultiMillerModel.Fq12Limb)
    (fValue nextValue : Ipp.Bls12377.Fq12Model)
    (hfValue : decodeFq12 f = fValue)
    (hnextValue : decodeFq12 nextF = nextValue)
    (hf : Canonical12 f) (hcoeff : CanonicalEllCoeff coeff)
    (hp : CanonicalFiniteG1 p)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_ell f coeff p =
      .ok (c0, c1, c2, nextF)) :
    Canonical12 nextF ∧
    nextValue =
      ellModel fValue (decodeEllCoeff coeff).1
        (decodeEllCoeff coeff).2.1 (decodeEllCoeff coeff).2.2
        (decode p.x) (decode p.y) := by
  have hline := g1_ell_spec f coeff p c0 c1 c2 nextF hf hcoeff hp hexec
  refine ⟨hline.2.2.2.1, ?_⟩
  rw [← hnextValue, ← hfValue]
  exact hline.2.2.2.2.2.2.2

end Ipp.Extracted.ArkworksMultiMillerLineSemantics
