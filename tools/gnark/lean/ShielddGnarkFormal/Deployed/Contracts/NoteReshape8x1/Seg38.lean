import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg38

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 17, 18, 28002, 28003]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 38,
relationSha256Hex := "0e7325827a2457630b75af7de6f044bb85ffeda1b7b958b1f8a1679ac8183d5f",
wireRoleSha256Hex := "f6ac3c82d33125b0bfc3cc4af6ec2654d34872f48f570a8444da38bc8636a3d1",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg38
