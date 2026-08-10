import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg58

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 336, 52084, 52083]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 58,
relationSha256Hex := "04cbfaf3c58939f3f7e47c1d14e77096458f1f8e178374feb6ddc07224afc263",
wireRoleSha256Hex := "8f0646cfe663fd6eb7d7b91f9c250d6c9ac0c063dd12158f9845d5015861f94b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg58
