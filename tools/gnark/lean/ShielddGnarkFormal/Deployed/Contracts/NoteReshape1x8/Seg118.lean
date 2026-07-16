import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg118

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 178, 21, 31660, 20, 179, 31661]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 118,
relationSha256Hex := "11597699ac47aaa1a63d25e3639a899ff48a3b82830adced0977611b0cd37d97",
wireRoleSha256Hex := "0507a5be0adda60348471f5ea93f1d6dd296947f5a34ee22671a67e5a1059a38",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg118
