import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((1 : F) * rho 1) = ((6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 2 + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 3 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 4) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed
