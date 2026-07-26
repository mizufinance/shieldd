import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * ((1 : F) * rho 1) = ((1 : F) * rho 2) ∧
    ((1 : F) * rho 3) * ((1 : F) * rho 3) = ((1 : F) * rho 4) ∧
    ((3021 : F) * rho 2) * ((1 : F) * rho 4) = ((1 : F) * rho 5) ∧
    ((1 : F)) * ((-1 : F) * rho 2 + (1 : F) * rho 4) = ((1 : F) + (1 : F) * rho 5) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e
