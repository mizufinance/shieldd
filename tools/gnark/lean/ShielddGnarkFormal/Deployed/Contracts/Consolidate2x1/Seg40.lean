import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg40

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 31239 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 31244 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 31249 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 31254 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 31259 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 31264 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 31269) = ((1 : F) * rho 191)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec40 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 40,
relationSha256Hex := "2fc0a73f0caac6f0c33761fc342802b67c5f3769aaa7880529a30158c886d0fc",
wireRoleSha256Hex := "bdb491af457d45322aee5edf664c0487c5d35b78f1b8fdab980804f3b15bff8a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg40
