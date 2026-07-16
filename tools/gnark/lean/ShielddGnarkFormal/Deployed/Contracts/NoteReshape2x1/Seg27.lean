import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg27

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 19383 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 19388 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 19393 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 19398) = ((1 : F) * rho 101)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec27 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 27,
relationSha256Hex := "7004e8e0ae9f6a1aa44d6ece203f98c776e9b3dbf6cac9650ffbab6b38a1eae5",
wireRoleSha256Hex := "4e6f8998bd5df6d9c95f00a4a0ebb514148772dbe5347f70abc63d01cbd1a204",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg27
