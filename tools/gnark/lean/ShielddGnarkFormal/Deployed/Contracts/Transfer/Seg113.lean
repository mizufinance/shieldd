import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg113Defs8

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg113

def relation (rho : Nat -> F) : Prop :=
    relationPart0 rho ∧
    relationPart1 rho ∧
    relationPart2 rho ∧
    relationPart3 rho ∧
    relationPart4 rho ∧
    relationPart5 rho ∧
    relationPart6 rho ∧
    relationPart7 rho ∧
    relationPart8 rho ∧
    relationPart9 rho ∧
    relationPart10 rho ∧
    relationPart11 rho ∧
    relationPart12 rho ∧
    relationPart13 rho ∧
    relationPart14 rho ∧
    relationPart15 rho ∧
    relationPart16 rho ∧
    relationPart17 rho ∧
    relationPart18 rho ∧
    relationPart19 rho ∧
    relationPart20 rho ∧
    relationPart21 rho ∧
    relationPart22 rho ∧
    relationPart23 rho ∧
    relationPart24 rho ∧
    relationPart25 rho ∧
    relationPart26 rho ∧
    relationPart27 rho ∧
    relationPart28 rho ∧
    relationPart29 rho ∧
    relationPart30 rho ∧
    relationPart31 rho ∧
    relationPart32 rho ∧
    relationPart33 rho ∧
    relationPart34 rho ∧
    relationPart35 rho

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec113 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 113,
relationSha256Hex := "05a52bda2f3ea2a65901a9793d91897cbac9ff14801fbdef597728e620d15578",
wireRoleSha256Hex := "fef95dd9e66b003642910abeb05ab09371c13269e9e7cd64ad5d63706e4395df",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg113
