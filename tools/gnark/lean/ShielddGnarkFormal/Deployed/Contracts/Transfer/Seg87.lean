import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg87

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 66845, 66846, 66847, 66848, 66849, 66850, 66851, 66852, 66853, 66854, 66855, 66856, 66857, 66858, 66859, 66860, 66861, 66862, 66863, 66864, 66865, 66866, 66867, 66868, 66869, 66870, 66871, 66872, 66873, 66874, 66875, 66876, 3]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 87,
relationSha256Hex := "08f75bcfaa5505e17e53ff2d63a22d54c247ee06b2f527778c5aee4bbeb814ba",
wireRoleSha256Hex := "dbc970b100edb34032184679d44ad6ba35a0726c11b2b0267ca06c05c85aefaa",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg87
