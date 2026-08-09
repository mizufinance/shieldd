import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) * rho 1) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (1 : F) * rho 2) = ((1 : F) * rho 3) ∧
    ((1 : F) * rho 1) * ((6269915804914941340248539306569041448191883943522231907716782445202481683650 : F) + (1 : F) * rho 4) = ((1 : F) * rho 5) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975
