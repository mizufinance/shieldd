import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg10

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 6877 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6882 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 6887 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 6892 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 6897 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6902 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 6907) = ((1 : F) * rho 23)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec10 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "7136a32814217c612a20ae06b4608f42391e4b10115e03b76648223e47e4c78b",
wireRoleSha256Hex := "cc23b03860b124971965da24e733efad30a9292c5e996816909c1fae3f405c9a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg10
