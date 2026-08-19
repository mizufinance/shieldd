import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg149

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 802, 726, 115584, 115589, 115594, 115599, 115604, 115609, 115610]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 149,
relationSha256Hex := "0dbd7d9bdcdf273e5e4665fd7ee05f2a85227cc01b57240c59368126ea7cf065",
wireRoleSha256Hex := "64f019c199c3db069de3c198baf306e6f7ca29b96f29f80f0a7a0a8ee335bdd2",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg149
