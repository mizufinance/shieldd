import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg15Defs168

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg15

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
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec15 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 15,
relationSha256Hex := "c1820400c27688aff02758d426f41b5bb426059209f8b598ca04538b3aa7c911",
wireRoleSha256Hex := "d57d255ab914bc365249a1d78c4be852e76d5e5d36bd85a551cd706d780d8f7d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg15
