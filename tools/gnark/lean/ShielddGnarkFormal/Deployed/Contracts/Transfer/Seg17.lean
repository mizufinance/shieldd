import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg17

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 6780, 78]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 17,
relationSha256Hex := "42693942949723837fac393617502791e006545fcea16cebd60153a6736196bd",
wireRoleSha256Hex := "ba746b4cd4a5c328c2715b9fa01c29f59231790bb615c21481916aa374722ab3",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg17
