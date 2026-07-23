import Ipp.Extracted.ArkworksMultiMillerLineSemantics

/-! Pure take/drop product update for one decoded chunk line. -/

namespace Ipp.Extracted.ArkworksMultiMillerLineProduct

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineModel

set_option maxHeartbeats 1000000

/-- Replacing the active factor advances the line-pass product prefix. -/
theorem advance_line_product
    (filtered : List ExecPair) (chunkStart width cursor processed : Nat)
    (baseValues : List Fq12Model) (f nextF : Fq12Model)
    (pair : ExecPair) (coeff : G2EllCoeffLimb)
    (hactive : processed < width)
    (hbaseLength : baseValues.length = width)
    (hpairGet : filtered[chunkStart + processed]? = some pair)
    (hcoeffGet : pair.1.val[cursor]? = some coeff)
    (haccumulator : f =
      ((lineValues filtered chunkStart width cursor baseValues).take processed ++
        baseValues.drop processed).prod)
    (hdecode : nextF =
      ellModel f (decodeEllCoeff coeff).1
        (decodeEllCoeff coeff).2.1 (decodeEllCoeff coeff).2.2
        (decode pair.2.x) (decode pair.2.y)) :
    nextF =
      ((lineValues filtered chunkStart width cursor baseValues).take
          (processed + 1) ++ baseValues.drop (processed + 1)).prod := by
  have hbaseBound : processed < baseValues.length := by omega
  let base : Fq12Model := baseValues[processed]
  have hbaseGet : baseValues[processed]? = some base :=
    List.getElem?_eq_getElem hbaseBound
  have hlineBound : processed <
      (lineValues filtered chunkStart width cursor baseValues).length := by
    simpa using hactive
  have hlineGetOption := lineValues_get filtered chunkStart width cursor
    baseValues processed hactive pair base coeff hpairGet hbaseGet hcoeffGet
  have hlineGet :
      (lineValues filtered chunkStart width cursor baseValues)[processed] =
        ellModel base (decodeEllCoeff coeff).1
          (decodeEllCoeff coeff).2.1 (decodeEllCoeff coeff).2.2
          (decode pair.2.x) (decode pair.2.y) := by
    rw [List.getElem?_eq_getElem hlineBound] at hlineGetOption
    exact Option.some.inj hlineGetOption
  have hbaseDrop := List.drop_eq_getElem_cons hbaseBound
  have hlineTake := List.take_succ_eq_append_getElem hlineBound
  calc
    nextF =
        ellModel f (decodeEllCoeff coeff).1
          (decodeEllCoeff coeff).2.1 (decodeEllCoeff coeff).2.2
          (decode pair.2.x) (decode pair.2.y) := hdecode
    _ = ellModel
        (((lineValues filtered chunkStart width cursor baseValues).take
          processed ++ base :: baseValues.drop (processed + 1)).prod)
        (decodeEllCoeff coeff).1 (decodeEllCoeff coeff).2.1
        (decodeEllCoeff coeff).2.2
        (decode pair.2.x) (decode pair.2.y) := by
          rw [haccumulator, hbaseDrop]
    _ = ((lineValues filtered chunkStart width cursor baseValues).take
          processed ++
        ellModel base (decodeEllCoeff coeff).1
          (decodeEllCoeff coeff).2.1 (decodeEllCoeff coeff).2.2
          (decode pair.2.x) (decode pair.2.y) ::
        baseValues.drop (processed + 1)).prod :=
          fq12Prod_ell_replace _ _ _ _ _ _
    _ = ((lineValues filtered chunkStart width cursor baseValues).take
          (processed + 1) ++ baseValues.drop (processed + 1)).prod := by
          rw [hlineTake, hlineGet]
          rw [List.append_assoc]
          rfl

end Ipp.Extracted.ArkworksMultiMillerLineProduct
