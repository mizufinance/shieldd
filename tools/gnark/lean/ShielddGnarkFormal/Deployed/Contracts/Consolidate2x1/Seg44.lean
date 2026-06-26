import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg44

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 38712 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 38717 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 38722 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 38727 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 38732 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 38737 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 38742) = ((1 : F) * rho 191)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec44 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 44,
relationSha256Hex := "39a095a709df9ddb435d8f425be0ef30bfa580267cd6f175f526cd644077c403",
wireRoleSha256Hex := "c2cbac8285e6ca1ed722c9d5747fdc4feff2bca0c589f5986b6454b985335949",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg44
