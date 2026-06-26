import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg26

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 20012 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 20017 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 20022 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 20027 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 20032 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 20037 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 20042) = ((1 : F) * rho 113)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec26 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 26,
relationSha256Hex := "0cf45c5ad08194c79110e060de79c6d8de862780ade24cebb2fc8d6e90d552a4",
wireRoleSha256Hex := "edb2b274a6e03325f14dbd83329791c56def8c0a53e064041cbb53d9210f8356",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg26
