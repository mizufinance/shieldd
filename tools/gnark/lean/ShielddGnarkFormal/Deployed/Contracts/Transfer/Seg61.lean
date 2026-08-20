import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg61

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 345, 52307, 52306]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 61,
relationSha256Hex := "3775d2bb0a0279c9b17c019cb4686ff11383f87755354aa6f5c290cac9a39420",
wireRoleSha256Hex := "f7cf0787f0c7a51220ab020b6b4fccfec0253fb82dee06fb9fb20eb62660e0fa",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg61
