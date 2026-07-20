import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg30Defs168

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg30

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
    relationPart22 rho

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec30 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 30,
relationSha256Hex := "718afa23b9fb92f1c6a3e294fe2de6821f96cf2266636f301e822842b7531cee",
wireRoleSha256Hex := "222af55db48f8fd7f234cdc941582f1608407d5fcaa08267ef9c31364fd4b46a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg30
