import ShielddGnarkFormal.StructuredLC
import Mathlib.Tactic.LinearCombination

/-!
StructuredLC spike probe, concrete rung 128.  Self-contained (imports only the
`StructuredLC` lib module + the `linear_combination` tactic).  Benched against
`StructuredLCProbe224`: equal time/olean is the proof the representation is flat
in the rung index.  Nothing here expands the 128-term accumulator.

Validates:
1. Opaque consumption (`stepRel128`) — the row is discharged by
   `linear_combination` with the 128-term accumulator as one atom (`ring` never
   unfolds `StructuredLC.eval`/`sumAux`).
2. Constant-size rung-to-rung recurrence (`accLC_succ`, then `…128`) — the
   recurrence is proved once over a SYMBOLIC index (one peel via the reused step
   lemma `StrideRun.sumAux_succ`); the concrete rung-128 fact is a zero-cost
   instantiation.  Proving it directly at literal 128 would force `simp` to
   expand all 128 terms — the O(k) blowup this framework exists to avoid.
-/

namespace Shieldd.GnarkFormal.Probe128

open Shieldd.GnarkFormal

set_option maxHeartbeats 400000

def Order : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev F := ZMod Order

def accLC (count : Nat) : StructuredLC F :=
  { const := 1, runs := [⟨1, 15543, 13, count⟩], residual := [] }

theorem stepRel128 (rho : Nat → F) (a b c : F)
    (hrow : (a + b) * StructuredLC.eval rho (accLC 128) = c) :
    (a + b) * StructuredLC.eval rho (accLC 128) = c := by
  linear_combination hrow

/-- Symbolic rung-to-rung recurrence: one peel, index-independent. -/
theorem accLC_succ (rho : Nat → F) (n : Nat) :
    StructuredLC.eval rho (accLC (n + 1))
      = StructuredLC.eval rho (accLC n) + rho (15543 + n * 13) := by
  simp only [accLC, StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, StrideRun.sumAux_succ]
  ring

/-- Zero-cost instantiation at rung 128. -/
theorem accLC_succ128 (rho : Nat → F) :
    StructuredLC.eval rho (accLC 128)
      = StructuredLC.eval rho (accLC 127) + rho (15543 + 127 * 13) :=
  accLC_succ rho 127

end Shieldd.GnarkFormal.Probe128
