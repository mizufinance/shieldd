import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg42

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 32896 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 32901 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 32906 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 32911 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 32916 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 32921 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 32926) = ((1 : F) * rho 191)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec42 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 42,
relationSha256Hex := "748317cab69a7c54139b4f8ed019e124a1b88c39300910753762b60b2238fec9",
wireRoleSha256Hex := "691dfe20945dc0b44cdf1fe8fc0a3b8e552f654aa4137d9e5a8b5598f5b1edd7",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg42
