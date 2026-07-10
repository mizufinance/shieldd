import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg14

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 16366 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 16371 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 16376 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 16381 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 16386) = ((1 : F) * rho 2)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec14 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 14,
relationSha256Hex := "a3e105ecfb3e72c606c0f4391f61b143bba704b0cfc17dcebf1dc3ca69f66c7e",
wireRoleSha256Hex := "9d73f5b79e6c2ab4b97aa9919ad76555ca4e1a2327eee14c803df815cf612b3f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg14
