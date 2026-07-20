import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg12

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 7196 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 7201 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 7206 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 7211) = ((1 : F) * rho 11)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec12 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 12,
relationSha256Hex := "d6c8bb0484105af9ebea241431c8f855c20037850b8362ab79c14bb22b03829d",
wireRoleSha256Hex := "af427fe76371a276b2efe8704d1f095661d6578e6924a5cc6e350cef21cdde5c",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg12
