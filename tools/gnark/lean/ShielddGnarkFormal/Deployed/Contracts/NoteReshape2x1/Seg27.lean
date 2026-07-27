import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg27

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 19377, 19382, 19387, 19392, 98]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 27,
relationSha256Hex := "d0b4c9035feaf500903c19977478c4be1bd3989f0e24fe5d89c247672041a7d7",
wireRoleSha256Hex := "d5961b336d6bca8a5f27b1b72ada7f3c017313f273d87930848c9999577565cb",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg27
