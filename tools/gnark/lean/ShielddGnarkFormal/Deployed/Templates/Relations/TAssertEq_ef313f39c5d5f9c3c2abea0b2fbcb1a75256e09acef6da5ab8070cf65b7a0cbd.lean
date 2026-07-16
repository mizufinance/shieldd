import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 1 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 2 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 3 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 4) = ((1 : F) * rho 5) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd
