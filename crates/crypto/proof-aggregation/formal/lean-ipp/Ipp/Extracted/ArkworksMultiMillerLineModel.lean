import Ipp.Extracted.ArkworksMultiMillerCursors

/-! Indexed cursor and decoded line-pass models for one chunk. -/

namespace Ipp.Extracted.ArkworksMultiMillerLineModel

open Aeneas Aeneas.Std
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMultiMillerModel

/-- Cursor vector after the first `processed` pairs consumed coefficient `cursor`. -/
def cursorState (width cursor processed : Nat) : List Usize :=
  List.replicate processed ⟨cursor + 1⟩ ++
    List.replicate (width - processed) ⟨cursor⟩

theorem cursorState_length (width cursor processed : Nat)
    (hprocessed : processed ≤ width) :
    (cursorState width cursor processed).length = width := by
  simp [cursorState]
  omega

theorem cursorState_get (width cursor processed : Nat)
    (hprocessed : processed < width) :
    (cursorState width cursor processed)[processed]? = some ⟨cursor⟩ := by
  rw [cursorState, List.getElem?_append]
  simp only [List.length_replicate, lt_self_iff_false, if_false, Nat.sub_self]
  rw [List.getElem?_replicate, if_pos (by omega)]

private theorem replicate_append_one {α : Type} (value : α) (count : Nat) :
    List.replicate count value ++ [value] =
      List.replicate (count + 1) value := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [List.replicate_succ, List.replicate_succ, List.cons_append, ih]

theorem cursorState_set (width cursor processed : Nat)
    (hprocessed : processed < width) :
    (cursorState width cursor processed).set processed ⟨cursor + 1⟩ =
      cursorState width cursor (processed + 1) := by
  unfold cursorState
  rw [List.set_append]
  simp only [List.length_replicate, lt_self_iff_false, if_false, Nat.sub_self]
  have htail : List.replicate (width - processed) (⟨cursor⟩ : Usize) =
      ⟨cursor⟩ ::
        List.replicate (width - (processed + 1)) (⟨cursor⟩ : Usize) := by
    rw [show width - processed = (width - (processed + 1)) + 1 by omega,
      List.replicate_succ]
  rw [htail]
  simp only [List.set]
  change List.replicate processed (⟨cursor + 1⟩ : Usize) ++
      ([⟨cursor + 1⟩] ++
        List.replicate (width - (processed + 1)) (⟨cursor⟩ : Usize)) = _
  rw [← List.append_assoc, replicate_append_one]

/-- Safe decoded line value at one local chunk position. -/
def lineValue (filtered : List ExecPair) (chunkStart cursor : Nat)
    (baseValues : List Fq12Model) (localIndex : Nat) : Fq12Model :=
  match filtered[chunkStart + localIndex]?, baseValues[localIndex]? with
  | some pair, some base =>
      match pair.1.val[cursor]? with
      | some coeff =>
          let decoded := decodeEllCoeff coeff
          ellModel base decoded.1 decoded.2.1 decoded.2.2
            (decode pair.2.x) (decode pair.2.y)
      | none => fq12One
  | _, _ => fq12One

/-- Decoded values after one coefficient has been applied to every chunk pair. -/
def lineValues (filtered : List ExecPair) (chunkStart width cursor : Nat)
    (baseValues : List Fq12Model) : List Fq12Model :=
  (List.range width).map (lineValue filtered chunkStart cursor baseValues)

/-- Canonical accumulator and exact cursor/product state during one line pass. -/
structure LinePassInv (filtered : List ExecPair)
    (chunkStart width cursor : Nat) (baseValues : List Fq12Model)
    (processed : Nat) (cursors : alloc.vec.Vec Usize)
    (f : ArkworksMultiMillerModel.Fq12Limb) : Prop where
  processedBound : processed ≤ width
  cursorsState : cursors.val = cursorState width cursor processed
  canonical : Canonical12 f
  accumulator : decodeFq12 f =
    ((lineValues filtered chunkStart width cursor baseValues).take processed ++
      baseValues.drop processed).prod

@[simp] theorem lineValues_length (filtered : List ExecPair)
    (chunkStart width cursor : Nat) (baseValues : List Fq12Model) :
    (lineValues filtered chunkStart width cursor baseValues).length = width := by
  simp [lineValues]

theorem lineValues_get (filtered : List ExecPair)
    (chunkStart width cursor : Nat) (baseValues : List Fq12Model)
    (localIndex : Nat) (hlocal : localIndex < width)
    (pair : ExecPair) (base : Fq12Model) (coeff : G2EllCoeffLimb)
    (hpair : filtered[chunkStart + localIndex]? = some pair)
    (hbase : baseValues[localIndex]? = some base)
    (hcoeff : pair.1.val[cursor]? = some coeff) :
    (lineValues filtered chunkStart width cursor baseValues)[localIndex]? =
      some (ellModel base (decodeEllCoeff coeff).1 (decodeEllCoeff coeff).2.1
        (decodeEllCoeff coeff).2.2 (decode pair.2.x) (decode pair.2.y)) := by
  simp [lineValues, lineValue, hlocal, hpair, hbase, hcoeff]

end Ipp.Extracted.ArkworksMultiMillerLineModel
