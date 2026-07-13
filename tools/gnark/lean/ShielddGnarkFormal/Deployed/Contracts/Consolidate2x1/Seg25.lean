import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg25

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 19058 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 19063 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 19068 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 19073 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 19078 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 19083 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 19088) = ((1 : F) * rho 113)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec25 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 25,
relationSha256Hex := "6b551fb1ab2163c06c1efed8300a18cdeac5973315b8c5d2eb73bc7babf9475b",
wireRoleSha256Hex := "8c084646eec94d4157e42dd17304cecaeba839873f43e5fe6d3c9a2c42fb6100",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg25
