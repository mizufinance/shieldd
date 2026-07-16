import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F) + (-1 : F) * rho 1) * ((-1 : F) * rho 2 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 3 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 4 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 5 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 7) = ((1 : F) * rho 8) ∧
    ((1 : F)) * ((1 : F) * rho 8) = ((0 : F)) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03
