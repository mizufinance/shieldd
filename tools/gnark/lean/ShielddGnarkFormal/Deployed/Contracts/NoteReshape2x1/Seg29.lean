import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg29

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 28290 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 28295 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 28300 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 28305 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 28310) = ((1 : F) * rho 2)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec29 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 29,
relationSha256Hex := "1499104d92e28684958f9add04d84ce7565376bb15c85797b7f5717efd2f0954",
wireRoleSha256Hex := "d5370e58d9adfd054bac06c46e069302769646f20d91b7a7cb5e225cad13b344",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg29
