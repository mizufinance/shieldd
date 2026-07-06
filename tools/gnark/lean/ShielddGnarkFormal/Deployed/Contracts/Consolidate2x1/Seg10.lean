import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg10

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 1637 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 1642 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 1647 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 1652) = ((1 : F) * rho 11)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec10 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "a0cf55b597c7443a547c1810bcf49e91e9849bfce123227120f450826b53ad9c",
wireRoleSha256Hex := "506c911b1481a77c5f0f70efe3c7c89980747fbc663333e4d0084960c57716b2",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg10
