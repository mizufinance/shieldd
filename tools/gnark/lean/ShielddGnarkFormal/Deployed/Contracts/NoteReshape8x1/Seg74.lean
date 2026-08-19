import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg74

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 387, 311, 52619, 52624, 52629, 52634, 52639, 52644, 52645]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 74,
relationSha256Hex := "cf857b821a0cfb17b3e9a37cc14c40018ec42cbb569c95e26b2defc28d66a52d",
wireRoleSha256Hex := "1ee0495a07237790ed01bf2bce61e67fcd7d0843701b0f1b894e232e46909101",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg74
