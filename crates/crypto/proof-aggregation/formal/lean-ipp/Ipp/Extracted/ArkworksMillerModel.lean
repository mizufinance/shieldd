import Ipp.Extracted.ArkworksEll
import Ipp.Extracted.ArkworksMillerGenerated
import Mathlib.Tactic

/-! Pure coefficient-consuming model for the single-pair Miller schedule. -/

namespace Ipp.Extracted.ArkworksMillerModel

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksEll

abbrev DecodedEllCoeff := Fq2 × Fq2 × Fq2

/-- Decode one extracted line coefficient componentwise. -/
def decodeEllCoeff (coeff : G2EllCoeffLimb) : DecodedEllCoeff :=
  (decodeFq2 coeff.1, decodeFq2 coeff.2.1, decodeFq2 coeff.2.2)

/-- The ate bit used by zero-based schedule step `step`. -/
def millerScheduleBit (step : Nat) : Bool :=
  ateLoopParameter.testBit (62 - step)

/-- Number of line coefficients consumed by the first `steps` schedule steps. -/
def millerCoeffCount : Nat → Nat
  | 0 => 0
  | steps + 1 => millerCoeffCount steps + if millerScheduleBit steps then 2 else 1

/-- One pure square/line step, including the optional addition line. -/
def millerModelStep (coeffs : List DecodedEllCoeff) (x y : Fq)
    (state : Fq12Model × Nat) (bit : Bool) : Option (Fq12Model × Nat) :=
  match coeffs[state.2]? with
  | none => none
  | some doubleCoeff =>
      let squared := fq12Square state.1
      let doubled := ellModel squared doubleCoeff.1 doubleCoeff.2.1
        doubleCoeff.2.2 x y
      if bit then
        match coeffs[state.2 + 1]? with
        | none => none
        | some addCoeff =>
            some (ellModel doubled addCoeff.1 addCoeff.2.1 addCoeff.2.2 x y,
              state.2 + 2)
      else some (doubled, state.2 + 1)

/-- Model state after the first `steps` MSB-first ate positions. -/
def millerPrefix (coeffs : List DecodedEllCoeff) (x y : Fq) :
    Nat → Option (Fq12Model × Nat)
  | 0 => some (fq12One, 0)
  | steps + 1 => do
      let state ← millerPrefix coeffs x y steps
      millerModelStep coeffs x y state (millerScheduleBit steps)

/-- Project a completed prefix state; an invalid short prefix maps to one. -/
def millerResult : Option (Fq12Model × Nat) → Fq12Model
  | some (f, _) => f
  | none => fq12One

/-- Pure 63-position single-pair Miller accumulation. -/
def millerFoldModel (coeffs : List DecodedEllCoeff) (x y : Fq) : Fq12Model :=
  millerResult (millerPrefix coeffs x y 63)

/-- A completed prefix determines the public fold projection. -/
theorem millerFoldModel_eq_of_prefix (coeffs : List DecodedEllCoeff) (x y : Fq)
    (f : Fq12Model) (coeffIdx : Nat)
    (hprefix : millerPrefix coeffs x y 63 = some (f, coeffIdx)) :
    millerFoldModel coeffs x y = f := by
  rw [millerFoldModel, hprefix, millerResult]

theorem millerCoeffCount_lt_succ (steps : Nat) :
    millerCoeffCount steps < millerCoeffCount (steps + 1) := by
  simp only [millerCoeffCount]
  split <;> omega

theorem millerCoeffCount_next_le (steps : Nat) (hsteps : steps < 63) :
    millerCoeffCount (steps + 1) ≤ 69 := by
  interval_cases steps <;> decide

theorem millerCoeffCount_63 : millerCoeffCount 63 = 69 := by
  decide

theorem millerScheduleBit_eq (remaining : Nat)
    (hpos : 0 < remaining) (hbound : remaining ≤ 63) :
    millerScheduleBit (63 - remaining) =
      ateLoopParameter.testBit (remaining - 1) := by
  unfold millerScheduleBit
  apply congrArg ateLoopParameter.testBit
  omega

theorem millerPrefix_next (coeffs : List DecodedEllCoeff) (x y : Fq)
    (remaining : Nat) (hpos : 0 < remaining) (hbound : remaining ≤ 63) :
    millerPrefix coeffs x y (63 - (remaining - 1)) = (do
      let state ← millerPrefix coeffs x y (63 - remaining)
      millerModelStep coeffs x y state
        (ateLoopParameter.testBit (remaining - 1))) := by
  have hcount : 63 - (remaining - 1) = (63 - remaining) + 1 := by omega
  rw [hcount]
  simp only [millerPrefix]
  rw [millerScheduleBit_eq remaining hpos hbound]

end Ipp.Extracted.ArkworksMillerModel
