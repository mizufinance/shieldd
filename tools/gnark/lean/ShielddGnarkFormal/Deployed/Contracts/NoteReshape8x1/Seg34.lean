import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg34

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 19744, 19745, 19746, 19747, 19748, 19749, 19750, 19751, 19752, 19753, 19754, 19755, 19756, 19757, 19758, 19759, 19760, 19761, 19762, 19763, 19764, 19765, 19766, 19767, 19768, 19769, 19770, 19771, 19772, 19773, 19774, 19775, 3]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 34,
relationSha256Hex := "94c93a5528457cdb4f2cbb10f1e0f43f284916e85e653379f18977abc9fb9ef7",
wireRoleSha256Hex := "91bf2cde0e1633e26ca185f1eadb6dacb07c93ec113de46022fd2553ca8cc7fb",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg34
