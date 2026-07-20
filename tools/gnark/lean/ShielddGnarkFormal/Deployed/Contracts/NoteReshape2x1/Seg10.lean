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
    ((1 : F)) * ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 6871 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 6876 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 6881 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 6886 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 6891 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 6896 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 6901) = ((1 : F) * rho 23)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec10 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "92585ee67bf25ba8739b678d8a73afb2651de58777291d85c7e87308c9f31914",
wireRoleSha256Hex := "2c3ebb69790d398b585c0d7d955c14a69b786b5929fd80b055e7d7ad4b9e472d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg10
