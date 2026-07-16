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
    ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 7202 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 7207 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 7212 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 7217) = ((1 : F) * rho 11)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec12 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 12,
relationSha256Hex := "1e1cbb4f98e5e60fd24c0fe14e965df63e342d91fee7dd7f6dcb7f17d8500c89",
wireRoleSha256Hex := "cce7d39c1aeb565873917ebe947ef291c5c93e6eb705c433032fe71b4da4188b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg12
