import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg30

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 29250 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 29255 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 29260 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 29265 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 29270) = ((1 : F) * rho 2)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec30 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 30,
relationSha256Hex := "ccc26735670b4c7977c958ea5a88f97dba19b775a34c8fd22033e1eeb3bd2661",
wireRoleSha256Hex := "82316283701196da0fdd3cfd4b873c9a0e95d0a5e501516e338baf10e8015dc3",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg30
