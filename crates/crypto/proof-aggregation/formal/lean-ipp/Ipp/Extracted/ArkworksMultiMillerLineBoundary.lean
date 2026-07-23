import Ipp.Extracted.ArkworksMultiMillerAdditionPass

/-! Opaque entry and exit projections for a complete line pass. -/

namespace Ipp.Extracted.ArkworksMultiMillerLineBoundary

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineModel

/-- A product accumulator and uniform cursor vector start a line pass. -/
theorem linePassInv_initial
    (filtered : List ExecPair) (chunkStart width cursor : Nat)
    (baseValues : List Ipp.Bls12377.Fq12Model)
    (cursors : alloc.vec.Vec Usize)
    (f : ArkworksMultiMillerModel.Fq12Limb)
    (hcursors : cursors.val = List.replicate width ⟨cursor⟩)
    (hcanonical : Canonical12 f)
    (hdecode : decodeFq12 f = baseValues.prod) :
    LinePassInv filtered chunkStart width cursor baseValues 0 cursors f := by
  refine ⟨by omega, ?_, hcanonical, ?_⟩
  · simpa [cursorState] using hcursors
  · simpa using hdecode

/-- A completed line pass exposes only its uniform cursor and product value. -/
theorem linePassInv_complete
    (filtered : List ExecPair) (chunkStart width cursor : Nat)
    (baseValues : List Ipp.Bls12377.Fq12Model)
    (cursors : alloc.vec.Vec Usize)
    (f : ArkworksMultiMillerModel.Fq12Limb)
    (hbaseLength : baseValues.length = width)
    (hinv : LinePassInv filtered chunkStart width cursor baseValues width
      cursors f) :
    cursors.val = List.replicate width ⟨cursor + 1⟩ ∧
      Canonical12 f ∧
      decodeFq12 f =
        (lineValues filtered chunkStart width cursor baseValues).prod := by
  refine ⟨?_, hinv.canonical, ?_⟩
  · simpa [cursorState] using hinv.cursorsState
  · let values :=
      lineValues filtered chunkStart width cursor baseValues
    have hvaluesLength : values.length = width := by
      simp [values]
    have htake : values.take width = values := by
      rw [← hvaluesLength]
      exact List.take_length
    have hdrop : baseValues.drop width = [] := by
      rw [← hbaseLength]
      exact List.drop_length
    rw [hinv.accumulator]
    change (values.take width ++ baseValues.drop width).prod = values.prod
    rw [htake, hdrop, List.append_nil]

end Ipp.Extracted.ArkworksMultiMillerLineBoundary
