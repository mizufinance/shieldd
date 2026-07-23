import Ipp.Extracted.ArkworksMultiMillerAdditionPass

/-! Pure per-pair and local-chunk values for the shared Miller schedule. -/

namespace Ipp.Extracted.ArkworksMultiMillerChunkModel

open Ipp.Bls12377
open Ipp.Extracted.ArkworksEll
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineModel

private theorem replicate_append_one {α : Type} (value : α) (count : Nat) :
    List.replicate count value ++ [value] =
      List.replicate (count + 1) value := by
  induction count with
  | zero => rfl
  | succ count ih =>
      rw [List.replicate_succ, List.replicate_succ, List.cons_append, ih]

/-- The source-level pair represented by one extracted pair. -/
def sourcePair (pair : ExecPair) : MillerPair := (pair.1.val, pair.2)

/-- The doubled value of one pair at a zero-based schedule position. -/
def pairDoubleValue (pair : MillerPair) (step : Nat) : Fq12Model :=
  match pair.1[millerCoeffCount step]? with
  | some coeff =>
      ellModel (fq12Square (pairPrefixValue pair step))
        (decodeEllCoeff coeff).1 (decodeEllCoeff coeff).2.1
        (decodeEllCoeff coeff).2.2
        (Ipp.Extracted.ArkworksFqMul.decode pair.2.x)
        (Ipp.Extracted.ArkworksFqMul.decode pair.2.y)
  | none => fq12One

/-- One complete pure schedule position, including its optional addition line. -/
def pairStepValue (pair : MillerPair) (step : Nat) : Fq12Model :=
  let doubled := pairDoubleValue pair step
  if millerScheduleBit step then
    match pair.1[millerCoeffCount step + 1]? with
    | some coeff =>
        ellModel doubled (decodeEllCoeff coeff).1
          (decodeEllCoeff coeff).2.1 (decodeEllCoeff coeff).2.2
          (Ipp.Extracted.ArkworksFqMul.decode pair.2.x)
          (Ipp.Extracted.ArkworksFqMul.decode pair.2.y)
    | none => fq12One
  else doubled

theorem validPair_prefix_some (pair : MillerPair) (hvalid : ValidPair pair)
    (steps : Nat) (hsteps : steps ≤ 63) :
    ∃ value, millerPrefix (pair.1.map decodeEllCoeff)
      (Ipp.Extracted.ArkworksFqMul.decode pair.2.x)
      (Ipp.Extracted.ArkworksFqMul.decode pair.2.y) steps =
        some (value, millerCoeffCount steps) := by
  induction steps with
  | zero =>
      exact ⟨fq12One, rfl⟩
  | succ steps ih =>
      have hstep : steps < 63 := by omega
      obtain ⟨value, hprefix⟩ := ih (by omega)
      have hnextCount := millerCoeffCount_next_le steps hstep
      have hcountBound : millerCoeffCount steps < pair.1.length := by
        rw [validPair_length hvalid]
        exact lt_of_lt_of_le (millerCoeffCount_lt_succ steps) hnextCount
      let doubleCoeff := pair.1[millerCoeffCount steps]
      have hdoubleGet : pair.1[millerCoeffCount steps]? = some doubleCoeff :=
        List.getElem?_eq_getElem hcountBound
      cases hbit : millerScheduleBit steps with
      | false =>
          refine ⟨ellModel (fq12Square value)
            (decodeEllCoeff doubleCoeff).1
            (decodeEllCoeff doubleCoeff).2.1
            (decodeEllCoeff doubleCoeff).2.2
            (Ipp.Extracted.ArkworksFqMul.decode pair.2.x)
            (Ipp.Extracted.ArkworksFqMul.decode pair.2.y), ?_⟩
          simp [millerPrefix, hprefix, millerModelStep, List.getElem?_map,
            hdoubleGet, hbit, millerCoeffCount]
      | true =>
          have haddBound : millerCoeffCount steps + 1 < pair.1.length := by
            rw [validPair_length hvalid]
            simp only [millerCoeffCount, hbit, if_true] at hnextCount
            omega
          let addCoeff := pair.1[millerCoeffCount steps + 1]
          have haddGet : pair.1[millerCoeffCount steps + 1]? = some addCoeff :=
            List.getElem?_eq_getElem haddBound
          refine ⟨ellModel
            (ellModel (fq12Square value)
              (decodeEllCoeff doubleCoeff).1
              (decodeEllCoeff doubleCoeff).2.1
              (decodeEllCoeff doubleCoeff).2.2
              (Ipp.Extracted.ArkworksFqMul.decode pair.2.x)
              (Ipp.Extracted.ArkworksFqMul.decode pair.2.y))
            (decodeEllCoeff addCoeff).1
            (decodeEllCoeff addCoeff).2.1
            (decodeEllCoeff addCoeff).2.2
            (Ipp.Extracted.ArkworksFqMul.decode pair.2.x)
            (Ipp.Extracted.ArkworksFqMul.decode pair.2.y), ?_⟩
          simp [millerPrefix, hprefix, millerModelStep, List.getElem?_map,
            hdoubleGet, haddGet, hbit, millerCoeffCount]

/-- The explicit line values are exactly the next single-pair prefix. -/
theorem pairPrefixValue_next (pair : MillerPair) (hvalid : ValidPair pair)
    (step : Nat) (hstep : step < 63) :
    pairStepValue pair step = pairPrefixValue pair (step + 1) := by
  obtain ⟨value, hprefix⟩ :=
    validPair_prefix_some pair hvalid step (by omega)
  have hnextCount := millerCoeffCount_next_le step hstep
  have hcountBound : millerCoeffCount step < pair.1.length := by
    rw [validPair_length hvalid]
    exact lt_of_lt_of_le (millerCoeffCount_lt_succ step) hnextCount
  let doubleCoeff := pair.1[millerCoeffCount step]
  have hdoubleGet : pair.1[millerCoeffCount step]? = some doubleCoeff :=
    List.getElem?_eq_getElem hcountBound
  cases hbit : millerScheduleBit step with
  | false =>
      simp [pairStepValue, pairDoubleValue, pairPrefixValue, millerPrefix,
        millerResult, hprefix, millerModelStep, List.getElem?_map,
        hdoubleGet, hbit]
  | true =>
      have haddBound : millerCoeffCount step + 1 < pair.1.length := by
        rw [validPair_length hvalid]
        simp only [millerCoeffCount, hbit, if_true] at hnextCount
        omega
      let addCoeff := pair.1[millerCoeffCount step + 1]
      have haddGet : pair.1[millerCoeffCount step + 1]? = some addCoeff :=
        List.getElem?_eq_getElem haddBound
      simp [pairStepValue, pairDoubleValue, pairPrefixValue, millerPrefix,
        millerResult, hprefix, millerModelStep, List.getElem?_map,
        hdoubleGet, haddGet, hbit]

/-- One local pair prefix, defaulting only outside the proven chunk bounds. -/
def localPrefixValue (filtered : List ExecPair)
    (chunkStart step localIndex : Nat) :
    Fq12Model :=
  match filtered[chunkStart + localIndex]? with
  | some pair => pairPrefixValue (sourcePair pair) step
  | none => fq12One

def chunkPrefixValues (filtered : List ExecPair)
    (chunkStart width step : Nat) : List Fq12Model :=
  (List.range width).map (localPrefixValue filtered chunkStart step)

def chunkSquareValues (filtered : List ExecPair)
    (chunkStart width step : Nat) : List Fq12Model :=
  (chunkPrefixValues filtered chunkStart width step).map fq12Square

def localDoubleValue (filtered : List ExecPair)
    (chunkStart step localIndex : Nat) :
    Fq12Model :=
  match filtered[chunkStart + localIndex]? with
  | some pair => pairDoubleValue (sourcePair pair) step
  | none => fq12One

def chunkDoubleValues (filtered : List ExecPair)
    (chunkStart width step : Nat) : List Fq12Model :=
  (List.range width).map (localDoubleValue filtered chunkStart step)

def localStepValue (filtered : List ExecPair)
    (chunkStart step localIndex : Nat) :
    Fq12Model :=
  match filtered[chunkStart + localIndex]? with
  | some pair => pairStepValue (sourcePair pair) step
  | none => fq12One

def chunkStepValues (filtered : List ExecPair)
    (chunkStart width step : Nat) : List Fq12Model :=
  (List.range width).map (localStepValue filtered chunkStart step)

@[simp] theorem chunkPrefixValues_length (filtered : List ExecPair)
    (chunkStart width step : Nat) :
    (chunkPrefixValues filtered chunkStart width step).length = width := by
  simp [chunkPrefixValues]

@[simp] theorem chunkSquareValues_length (filtered : List ExecPair)
    (chunkStart width step : Nat) :
    (chunkSquareValues filtered chunkStart width step).length = width := by
  simp [chunkSquareValues]

@[simp] theorem chunkDoubleValues_length (filtered : List ExecPair)
    (chunkStart width step : Nat) :
    (chunkDoubleValues filtered chunkStart width step).length = width := by
  simp [chunkDoubleValues]

theorem chunkPrefixValues_get (filtered : List ExecPair)
    (chunkStart width step localIndex : Nat) (hlocal : localIndex < width)
    (pair : ExecPair)
    (hpair : filtered[chunkStart + localIndex]? = some pair) :
    (chunkPrefixValues filtered chunkStart width step)[localIndex]? =
      some (pairPrefixValue (sourcePair pair) step) := by
  simp [chunkPrefixValues, localPrefixValue, hlocal, hpair]

theorem chunkSquareValues_get (filtered : List ExecPair)
    (chunkStart width step localIndex : Nat) (hlocal : localIndex < width)
    (pair : ExecPair)
    (hpair : filtered[chunkStart + localIndex]? = some pair) :
    (chunkSquareValues filtered chunkStart width step)[localIndex]? =
      some (fq12Square (pairPrefixValue (sourcePair pair) step)) := by
  simp [chunkSquareValues, chunkPrefixValues, localPrefixValue, hlocal, hpair]

/-- The first line pass applies the doubling coefficient pointwise. -/
theorem square_lineValues_eq_double
    (filtered : List ExecPair) (chunkStart width step : Nat)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hstep : step < 63) :
    lineValues filtered chunkStart width (millerCoeffCount step)
      (chunkSquareValues filtered chunkStart width step) =
        chunkDoubleValues filtered chunkStart width step := by
  unfold lineValues chunkDoubleValues
  apply List.map_congr_left
  intro localIndex hlocalMem
  have hlocal : localIndex < width := List.mem_range.mp hlocalMem
  have hglobal : chunkStart + localIndex < filtered.length := by omega
  let pair : ExecPair := filtered[chunkStart + localIndex]
  have hpair : filtered[chunkStart + localIndex]? = some pair :=
    List.getElem?_eq_getElem hglobal
  have hpairValid : ValidPair (sourcePair pair) :=
    hvalid (chunkStart + localIndex) pair hpair
  have hnextCount := millerCoeffCount_next_le step hstep
  have hcoeffBound : millerCoeffCount step < pair.1.val.length := by
    have hlength := validPair_length hpairValid
    change pair.1.val.length = 69 at hlength
    rw [hlength]
    exact lt_of_lt_of_le (millerCoeffCount_lt_succ step) hnextCount
  let coeff := pair.1.val[millerCoeffCount step]
  have hcoeff : pair.1.val[millerCoeffCount step]? = some coeff :=
    List.getElem?_eq_getElem hcoeffBound
  have hbase := chunkSquareValues_get filtered chunkStart width step localIndex
    hlocal pair hpair
  simp [lineValue, localDoubleValue, pairDoubleValue, sourcePair, hpair,
    hbase, hcoeff]

/-- The optional second pass applies the addition coefficient pointwise. -/
theorem double_lineValues_eq_step
    (filtered : List ExecPair) (chunkStart width step : Nat)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hstep : step < 63) (hbit : millerScheduleBit step = true) :
    lineValues filtered chunkStart width (millerCoeffCount step + 1)
      (chunkDoubleValues filtered chunkStart width step) =
        chunkStepValues filtered chunkStart width step := by
  unfold lineValues chunkStepValues
  apply List.map_congr_left
  intro localIndex hlocalMem
  have hlocal : localIndex < width := List.mem_range.mp hlocalMem
  have hglobal : chunkStart + localIndex < filtered.length := by omega
  let pair : ExecPair := filtered[chunkStart + localIndex]
  have hpair : filtered[chunkStart + localIndex]? = some pair :=
    List.getElem?_eq_getElem hglobal
  have hpairValid : ValidPair (sourcePair pair) :=
    hvalid (chunkStart + localIndex) pair hpair
  have hnextCount := millerCoeffCount_next_le step hstep
  have hcoeffBound : millerCoeffCount step + 1 < pair.1.val.length := by
    have hlength := validPair_length hpairValid
    change pair.1.val.length = 69 at hlength
    rw [hlength]
    simp only [millerCoeffCount, hbit, if_true] at hnextCount
    omega
  let coeff := pair.1.val[millerCoeffCount step + 1]
  have hcoeff : pair.1.val[millerCoeffCount step + 1]? = some coeff :=
    List.getElem?_eq_getElem hcoeffBound
  have hbase :
      (chunkDoubleValues filtered chunkStart width step)[localIndex]? =
        some (pairDoubleValue (sourcePair pair) step) := by
    simp [chunkDoubleValues, localDoubleValue, hlocal, hpair]
  simp [lineValue, localStepValue, pairStepValue, sourcePair, hpair, hbase,
    hcoeff, hbit]

theorem chunkStepValues_of_false
    (filtered : List ExecPair) (chunkStart width step : Nat)
    (hbit : millerScheduleBit step = false) :
    chunkStepValues filtered chunkStart width step =
      chunkDoubleValues filtered chunkStart width step := by
  unfold chunkStepValues chunkDoubleValues
  apply List.map_congr_left
  intro localIndex hlocalMem
  simp [localStepValue, localDoubleValue, pairStepValue, hbit]

theorem chunkPrefixValues_zero
    (filtered : List ExecPair) (chunkStart width : Nat) :
    chunkPrefixValues filtered chunkStart width 0 =
      List.replicate width fq12One := by
  induction width with
  | zero => rfl
  | succ width ih =>
      unfold chunkPrefixValues at ih ⊢
      rw [show List.range (width + 1) = List.range width ++ [width] by
        exact List.range_succ]
      simp only [List.map_append, List.map_cons, List.map_nil, ih,
        List.replicate_succ]
      unfold localPrefixValue
      split <;>
        change List.replicate width fq12One ++ [fq12One] =
          List.replicate (width + 1) fq12One
      all_goals exact replicate_append_one fq12One width

/-- Pointwise pair evolution identifies the next local prefix list. -/
theorem chunkStepValues_next
    (filtered : List ExecPair) (chunkStart width step : Nat)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hstep : step < 63) :
    chunkStepValues filtered chunkStart width step =
      chunkPrefixValues filtered chunkStart width (step + 1) := by
  unfold chunkStepValues chunkPrefixValues
  apply List.map_congr_left
  intro localIndex hlocalMem
  have hlocal : localIndex < width := List.mem_range.mp hlocalMem
  have hglobal : chunkStart + localIndex < filtered.length := by omega
  let pair : ExecPair := filtered[chunkStart + localIndex]
  have hpair : filtered[chunkStart + localIndex]? = some pair :=
    List.getElem?_eq_getElem hglobal
  have hpairValid : ValidPair (sourcePair pair) :=
    hvalid (chunkStart + localIndex) pair hpair
  simp [localStepValue, localPrefixValue, hpair,
    pairPrefixValue_next (sourcePair pair) hpairValid step hstep]

/-- Local range indexing is the corresponding contiguous input slice. -/
theorem chunkPrefixValues_eq_slice
    (filtered : List ExecPair) (chunkStart width step : Nat)
    (hchunk : chunkStart + width ≤ filtered.length) :
    chunkPrefixValues filtered chunkStart width step =
      (((filtered.drop chunkStart).take width).map
        (fun pair => pairPrefixValue (sourcePair pair) step)) := by
  apply List.ext_getElem?
  intro localIndex
  by_cases hlocal : localIndex < width
  · have hglobal : chunkStart + localIndex < filtered.length := by omega
    let pair : ExecPair := filtered[chunkStart + localIndex]
    have hpair : filtered[chunkStart + localIndex]? = some pair :=
      List.getElem?_eq_getElem hglobal
    simp [chunkPrefixValues, localPrefixValue, hlocal, hpair]
  · simp [chunkPrefixValues, hlocal]

theorem chunkPrefixValues_complete
    (filtered : List ExecPair) (chunkStart width : Nat)
    (hchunk : chunkStart + width ≤ filtered.length) :
    chunkPrefixValues filtered chunkStart width 63 =
      (((filtered.drop chunkStart).take width).map
        (fun pair => pairFold (sourcePair pair))) := by
  rw [chunkPrefixValues_eq_slice filtered chunkStart width 63 hchunk]
  rfl

theorem sourcePairs_encode (pairs : List MillerPair) :
    (encodePairs pairs).map sourcePair = pairs := by
  induction pairs with
  | nil => rfl
  | cons pair pairs ih =>
      change sourcePair (encodePair pair) ::
        (encodePairs pairs).map sourcePair = pair :: pairs
      rw [ih]
      rfl

end Ipp.Extracted.ArkworksMultiMillerChunkModel
