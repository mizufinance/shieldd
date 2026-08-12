import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) + (-1 : F) * rho 1) * ((-1 : F) * rho 2 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 3 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 4 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 5 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 6 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 7 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 8) = ((1 : F) * rho 9) ∧
    ((1 : F)) * ((1 : F) * rho 9) = ((0 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3
