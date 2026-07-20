import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg46Defs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg46

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
    relationPart27 rho

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec46 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 46,
relationSha256Hex := "1da8c27c7f11adcd181ad6f0f0f28d439f857e0d43dd4649039e4371aeb366d6",
wireRoleSha256Hex := "661579abf6956d53e1a70bf6afd5835fefea9e49643ee30b8e25693b1ac8893b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg46
