import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg12

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 10550 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 10555 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 10560 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 10565 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 10570) = ((1 : F) * rho 2)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec12 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 12,
relationSha256Hex := "88814eaf1a089e9ff12da2e41875cb5e491ecd2d35ec243e3814e37750ea2262",
wireRoleSha256Hex := "b1c4a8d75221ef54f6a28ded5411b8eff3a0efdd7762f01f39db28f5d06d2921",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg12
