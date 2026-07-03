import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg28

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 20337 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 20342 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 20347 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 20352) = ((1 : F) * rho 101)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec28 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 28,
relationSha256Hex := "3f7123b16e70c6db57567b13b1a108d07460b57da3743c6b732863575cc2b2ec",
wireRoleSha256Hex := "11dc5644abe37c4ea7f2fecbc9bafbb4fb2ce7d115a2e3bcf69468691f19c4eb",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg28
