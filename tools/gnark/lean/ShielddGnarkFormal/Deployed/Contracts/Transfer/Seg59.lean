import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg59

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 52304, 346]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 59,
relationSha256Hex := "97876351bb91987052679009adc04ef1b24a247414223975505063c365be6193",
wireRoleSha256Hex := "32857f451b9766aa7d0365e5c4165728e026bba3b987332fea671865d8519f17",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg59
