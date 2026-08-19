import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg23

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 11, 22, 24253]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 23,
relationSha256Hex := "60bf0181c4c3d7af251f3e6a8684d5fb54d743d1a1810ea7dcb54c65a30c886b",
wireRoleSha256Hex := "5eb4a8323f7f3a05f6211cb6e66c3da1f28a2f0b2a7f9db41f057b462d5c717d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg23
