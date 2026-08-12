import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg69

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 35402, 35407, 35412, 35417, 35422, 35427, 186]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 69,
relationSha256Hex := "4ae2fa74e22d3d67e0798fccf4515231b3d7899bf9136f0e9521e45267e0e376",
wireRoleSha256Hex := "ef51ba81ea2c21572eccd6a88d634a6479e715c55576b1366f0eafcb3d702515",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg69
