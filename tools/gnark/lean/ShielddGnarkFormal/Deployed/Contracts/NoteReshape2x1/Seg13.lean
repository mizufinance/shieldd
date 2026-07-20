import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg13Defs65

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg13

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
    relationPart35 rho ∧
    relationPart36 rho ∧
    relationPart37 rho ∧
    relationPart38 rho ∧
    relationPart39 rho ∧
    relationPart40 rho ∧
    relationPart41 rho ∧
    relationPart42 rho ∧
    relationPart43 rho ∧
    relationPart44 rho ∧
    relationPart45 rho ∧
    relationPart46 rho ∧
    relationPart47 rho ∧
    relationPart48 rho ∧
    relationPart49 rho ∧
    relationPart50 rho ∧
    relationPart51 rho ∧
    relationPart52 rho ∧
    relationPart53 rho ∧
    relationPart54 rho ∧
    relationPart55 rho ∧
    relationPart56 rho ∧
    relationPart57 rho ∧
    relationPart58 rho ∧
    relationPart59 rho ∧
    relationPart60 rho ∧
    relationPart61 rho ∧
    relationPart62 rho ∧
    relationPart63 rho ∧
    relationPart64 rho ∧
    relationPart65 rho ∧
    relationPart66 rho ∧
    relationPart67 rho ∧
    relationPart68 rho ∧
    relationPart69 rho ∧
    relationPart70 rho ∧
    relationPart71 rho ∧
    relationPart72 rho ∧
    relationPart73 rho ∧
    relationPart74 rho ∧
    relationPart75 rho ∧
    relationPart76 rho ∧
    relationPart77 rho ∧
    relationPart78 rho ∧
    relationPart79 rho ∧
    relationPart80 rho ∧
    relationPart81 rho ∧
    relationPart82 rho ∧
    relationPart83 rho ∧
    relationPart84 rho ∧
    relationPart85 rho ∧
    relationPart86 rho ∧
    relationPart87 rho ∧
    relationPart88 rho ∧
    relationPart89 rho ∧
    relationPart90 rho ∧
    relationPart91 rho ∧
    relationPart92 rho ∧
    relationPart93 rho ∧
    relationPart94 rho ∧
    relationPart95 rho ∧
    relationPart96 rho ∧
    relationPart97 rho ∧
    relationPart98 rho ∧
    relationPart99 rho ∧
    relationPart100 rho ∧
    relationPart101 rho ∧
    relationPart102 rho ∧
    relationPart103 rho ∧
    relationPart104 rho ∧
    relationPart105 rho ∧
    relationPart106 rho ∧
    relationPart107 rho ∧
    relationPart108 rho ∧
    relationPart109 rho ∧
    relationPart110 rho ∧
    relationPart111 rho ∧
    relationPart112 rho

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec13 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 13,
relationSha256Hex := "396765a0fe932c8e2010032246092eddef2280188bc7d139b333e24e445c4c9e",
wireRoleSha256Hex := "82c0ad016b8a3448db543c79021c7c3e60c169a4df666844deacaeedaea54f2d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg13
