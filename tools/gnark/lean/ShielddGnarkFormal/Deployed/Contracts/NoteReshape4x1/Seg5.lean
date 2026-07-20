import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg5

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 188, 381, 278, 382, 368, 383]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 5,
relationSha256Hex := "7d6492eb60326fc605d47288f5d5a5e35ae0710d221df0d2f9538b4555525f67",
wireRoleSha256Hex := "8686bb5b2be8b07bd4ec6756c2969f8bab42a37548d5ebcd4cee477bd0112132",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg5
