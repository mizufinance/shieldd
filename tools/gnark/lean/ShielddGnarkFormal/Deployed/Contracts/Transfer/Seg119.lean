import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg119

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 152, 72290, 72295, 72300]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 119,
relationSha256Hex := "36ac06df4fcaa600cbf0643a1126fd4e016c3e389144627732f82b06d147239e",
wireRoleSha256Hex := "0295cfb34b7c1f54cc399ae42268ca5b1ac926ca231c83b85326f2ba6f7dd3b0",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg119
