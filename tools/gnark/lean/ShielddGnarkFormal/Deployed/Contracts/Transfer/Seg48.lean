import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg48

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 253, 49559, 49560]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 48,
relationSha256Hex := "63a9d5a556ce2796f25f44b5d64151026f75621adb54d0a1dc7dd9e016ed7bbc",
wireRoleSha256Hex := "578f78b19aae347aa07c4ab2f9fa4dff9155049a7472760fa81d7319221a5916",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg48
