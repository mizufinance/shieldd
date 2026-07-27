import Mathlib.Algebra.Ring.Defs
import ShielddGnarkFormal.StructuredLC

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef

variable {F : Type} [CommRing F]

def relationSegment0 (rho : Nat -> F) (k : Prop) : Prop :=
    ((1 : F)) * ((7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 1 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 2 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 3 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 4 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 5) = ((1 : F) * rho 6) ∧ k

def relation (rho : Nat -> F) : Prop :=
    relationSegment0 rho (True)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef
