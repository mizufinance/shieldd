import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg54

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 34598 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 34603 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 34608 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 34613 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 34618 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 34623 + (7881497632799812395965569942862776762617506046143792906072884558856248623105 : F) * rho 34628 + (7916682890089097272733273380107699873164905626706934838689281364922571161601 : F) * rho 34633) = ((1 : F) * rho 1)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec54 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 54,
relationSha256Hex := "ecab510f859d366f5c2a5ea55dc4470fedf0edc299e30129ca38466866aae94d",
wireRoleSha256Hex := "69a9d4ad7dd9013cfa212b16f5b59b3c74cfdfcc0bc034f39aa128ba7fead5df",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg54
