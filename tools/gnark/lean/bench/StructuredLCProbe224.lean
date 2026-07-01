import ShielddGnarkFormal.StructuredLC
import Mathlib.Tactic.LinearCombination

/-!
StructuredLC spike probe, concrete rung 224.  Self-contained.  Benched against
`StructuredLCProbe128`: equal time/olean is the proof the representation is flat
in the rung index.  Nothing here expands the 224-term accumulator; the recurrence
is proved once over a symbolic index and instantiated at 224 for free.
-/

namespace Shieldd.GnarkFormal.Probe224

open Shieldd.GnarkFormal

set_option maxHeartbeats 400000

def Order : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev F := ZMod Order

def accLC (count : Nat) : StructuredLC F :=
  { const := 1, runs := [⟨1, 15543, 13, count⟩], residual := [] }

theorem stepRel224 (rho : Nat → F) (a b c : F)
    (hrow : (a + b) * StructuredLC.eval rho (accLC 224) = c) :
    (a + b) * StructuredLC.eval rho (accLC 224) = c := by
  linear_combination hrow

/-- Symbolic rung-to-rung recurrence: one peel, index-independent. -/
theorem accLC_succ (rho : Nat → F) (n : Nat) :
    StructuredLC.eval rho (accLC (n + 1))
      = StructuredLC.eval rho (accLC n) + rho (15543 + n * 13) := by
  simp only [accLC, StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, StrideRun.sumAux_succ]
  ring

/-- Zero-cost instantiation at rung 224. -/
theorem accLC_succ224 (rho : Nat → F) :
    StructuredLC.eval rho (accLC 224)
      = StructuredLC.eval rho (accLC 223) + rho (15543 + 223 * 13) :=
  accLC_succ rho 223

end Shieldd.GnarkFormal.Probe224
