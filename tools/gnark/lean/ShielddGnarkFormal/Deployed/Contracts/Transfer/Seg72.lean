import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Transfer.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg72

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relationRow0 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77330) * ((1 : F) + (-1 : F) * rho 77330) = ((0 : F))

def relationRow1 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77331) * ((1 : F) + (-1 : F) * rho 77331) = ((0 : F))

def relationRow2 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77332) * ((1 : F) + (-1 : F) * rho 77332) = ((0 : F))

def relationRow3 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77333) * ((1 : F) + (-1 : F) * rho 77333) = ((0 : F))

def relationRow4 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77334) * ((1 : F) + (-1 : F) * rho 77334) = ((0 : F))

def relationRow5 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77335) * ((1 : F) + (-1 : F) * rho 77335) = ((0 : F))

def relationRow6 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77336) * ((1 : F) + (-1 : F) * rho 77336) = ((0 : F))

def relationRow7 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77337) * ((1 : F) + (-1 : F) * rho 77337) = ((0 : F))

def relationRow8 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77338) * ((1 : F) + (-1 : F) * rho 77338) = ((0 : F))

def relationRow9 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77339) * ((1 : F) + (-1 : F) * rho 77339) = ((0 : F))

def relationRow10 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77340) * ((1 : F) + (-1 : F) * rho 77340) = ((0 : F))

def relationRow11 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77341) * ((1 : F) + (-1 : F) * rho 77341) = ((0 : F))

def relationRow12 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77342) * ((1 : F) + (-1 : F) * rho 77342) = ((0 : F))

def relationRow13 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77343) * ((1 : F) + (-1 : F) * rho 77343) = ((0 : F))

def relationRow14 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77344) * ((1 : F) + (-1 : F) * rho 77344) = ((0 : F))

def relationRow15 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77345) * ((1 : F) + (-1 : F) * rho 77345) = ((0 : F))

def relationRow16 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77346) * ((1 : F) + (-1 : F) * rho 77346) = ((0 : F))

def relationRow17 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77347) * ((1 : F) + (-1 : F) * rho 77347) = ((0 : F))

def relationRow18 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77348) * ((1 : F) + (-1 : F) * rho 77348) = ((0 : F))

def relationRow19 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77349) * ((1 : F) + (-1 : F) * rho 77349) = ((0 : F))

def relationRow20 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77350) * ((1 : F) + (-1 : F) * rho 77350) = ((0 : F))

def relationRow21 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77351) * ((1 : F) + (-1 : F) * rho 77351) = ((0 : F))

def relationRow22 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77352) * ((1 : F) + (-1 : F) * rho 77352) = ((0 : F))

def relationRow23 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77353) * ((1 : F) + (-1 : F) * rho 77353) = ((0 : F))

def relationRow24 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77354) * ((1 : F) + (-1 : F) * rho 77354) = ((0 : F))

def relationRow25 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77355) * ((1 : F) + (-1 : F) * rho 77355) = ((0 : F))

def relationRow26 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77356) * ((1 : F) + (-1 : F) * rho 77356) = ((0 : F))

def relationRow27 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77357) * ((1 : F) + (-1 : F) * rho 77357) = ((0 : F))

def relationRow28 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77358) * ((1 : F) + (-1 : F) * rho 77358) = ((0 : F))

def relationRow29 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77359) * ((1 : F) + (-1 : F) * rho 77359) = ((0 : F))

def relationRow30 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77360) * ((1 : F) + (-1 : F) * rho 77360) = ((0 : F))

def relationRow31 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77361) * ((1 : F) + (-1 : F) * rho 77361) = ((0 : F))

def relationRow32 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77362) * ((1 : F) + (-1 : F) * rho 77362) = ((0 : F))

def relationRow33 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77363) * ((1 : F) + (-1 : F) * rho 77363) = ((0 : F))

def relationRow34 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77364) * ((1 : F) + (-1 : F) * rho 77364) = ((0 : F))

def relationRow35 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77365) * ((1 : F) + (-1 : F) * rho 77365) = ((0 : F))

def relationRow36 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77366) * ((1 : F) + (-1 : F) * rho 77366) = ((0 : F))

def relationRow37 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77367) * ((1 : F) + (-1 : F) * rho 77367) = ((0 : F))

def relationRow38 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77368) * ((1 : F) + (-1 : F) * rho 77368) = ((0 : F))

def relationRow39 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77369) * ((1 : F) + (-1 : F) * rho 77369) = ((0 : F))

def relationRow40 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77370) * ((1 : F) + (-1 : F) * rho 77370) = ((0 : F))

def relationRow41 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77371) * ((1 : F) + (-1 : F) * rho 77371) = ((0 : F))

def relationRow42 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77372) * ((1 : F) + (-1 : F) * rho 77372) = ((0 : F))

def relationRow43 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77373) * ((1 : F) + (-1 : F) * rho 77373) = ((0 : F))

def relationRow44 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77374) * ((1 : F) + (-1 : F) * rho 77374) = ((0 : F))

def relationRow45 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77375) * ((1 : F) + (-1 : F) * rho 77375) = ((0 : F))

def relationRow46 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77376) * ((1 : F) + (-1 : F) * rho 77376) = ((0 : F))

def relationRow47 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77377) * ((1 : F) + (-1 : F) * rho 77377) = ((0 : F))

def relationRow48 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77378) * ((1 : F) + (-1 : F) * rho 77378) = ((0 : F))

def relationRow49 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77379) * ((1 : F) + (-1 : F) * rho 77379) = ((0 : F))

def relationRow50 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77380) * ((1 : F) + (-1 : F) * rho 77380) = ((0 : F))

def relationRow51 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77381) * ((1 : F) + (-1 : F) * rho 77381) = ((0 : F))

def relationRow52 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77382) * ((1 : F) + (-1 : F) * rho 77382) = ((0 : F))

def relationRow53 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77383) * ((1 : F) + (-1 : F) * rho 77383) = ((0 : F))

def relationRow54 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77384) * ((1 : F) + (-1 : F) * rho 77384) = ((0 : F))

def relationRow55 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77385) * ((1 : F) + (-1 : F) * rho 77385) = ((0 : F))

def relationRow56 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77386) * ((1 : F) + (-1 : F) * rho 77386) = ((0 : F))

def relationRow57 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77387) * ((1 : F) + (-1 : F) * rho 77387) = ((0 : F))

def relationRow58 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77388) * ((1 : F) + (-1 : F) * rho 77388) = ((0 : F))

def relationRow59 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77389) * ((1 : F) + (-1 : F) * rho 77389) = ((0 : F))

def relationRow60 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77390) * ((1 : F) + (-1 : F) * rho 77390) = ((0 : F))

def relationRow61 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77391) * ((1 : F) + (-1 : F) * rho 77391) = ((0 : F))

def relationRow62 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77392) * ((1 : F) + (-1 : F) * rho 77392) = ((0 : F))

def relationRow63 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77393) * ((1 : F) + (-1 : F) * rho 77393) = ((0 : F))

def relationRow64 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77394) * ((1 : F) + (-1 : F) * rho 77394) = ((0 : F))

def relationRow65 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77395) * ((1 : F) + (-1 : F) * rho 77395) = ((0 : F))

def relationRow66 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77396) * ((1 : F) + (-1 : F) * rho 77396) = ((0 : F))

def relationRow67 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77397) * ((1 : F) + (-1 : F) * rho 77397) = ((0 : F))

def relationRow68 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77398) * ((1 : F) + (-1 : F) * rho 77398) = ((0 : F))

def relationRow69 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77399) * ((1 : F) + (-1 : F) * rho 77399) = ((0 : F))

def relationRow70 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77400) * ((1 : F) + (-1 : F) * rho 77400) = ((0 : F))

def relationRow71 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77401) * ((1 : F) + (-1 : F) * rho 77401) = ((0 : F))

def relationRow72 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77402) * ((1 : F) + (-1 : F) * rho 77402) = ((0 : F))

def relationRow73 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77403) * ((1 : F) + (-1 : F) * rho 77403) = ((0 : F))

def relationRow74 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77404) * ((1 : F) + (-1 : F) * rho 77404) = ((0 : F))

def relationRow75 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77405) * ((1 : F) + (-1 : F) * rho 77405) = ((0 : F))

def relationRow76 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77406) * ((1 : F) + (-1 : F) * rho 77406) = ((0 : F))

def relationRow77 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77407) * ((1 : F) + (-1 : F) * rho 77407) = ((0 : F))

def relationRow78 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77408) * ((1 : F) + (-1 : F) * rho 77408) = ((0 : F))

def relationRow79 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77409) * ((1 : F) + (-1 : F) * rho 77409) = ((0 : F))

def relationRow80 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77410) * ((1 : F) + (-1 : F) * rho 77410) = ((0 : F))

def relationRow81 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77411) * ((1 : F) + (-1 : F) * rho 77411) = ((0 : F))

def relationRow82 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77412) * ((1 : F) + (-1 : F) * rho 77412) = ((0 : F))

def relationRow83 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77413) * ((1 : F) + (-1 : F) * rho 77413) = ((0 : F))

def relationRow84 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77414) * ((1 : F) + (-1 : F) * rho 77414) = ((0 : F))

def relationRow85 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77415) * ((1 : F) + (-1 : F) * rho 77415) = ((0 : F))

def relationRow86 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77416) * ((1 : F) + (-1 : F) * rho 77416) = ((0 : F))

def relationRow87 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77417) * ((1 : F) + (-1 : F) * rho 77417) = ((0 : F))

def relationRow88 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77418) * ((1 : F) + (-1 : F) * rho 77418) = ((0 : F))

def relationRow89 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77419) * ((1 : F) + (-1 : F) * rho 77419) = ((0 : F))

def relationRow90 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77420) * ((1 : F) + (-1 : F) * rho 77420) = ((0 : F))

def relationRow91 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77421) * ((1 : F) + (-1 : F) * rho 77421) = ((0 : F))

def relationRow92 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77422) * ((1 : F) + (-1 : F) * rho 77422) = ((0 : F))

def relationRow93 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77423) * ((1 : F) + (-1 : F) * rho 77423) = ((0 : F))

def relationRow94 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77424) * ((1 : F) + (-1 : F) * rho 77424) = ((0 : F))

def relationRow95 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77425) * ((1 : F) + (-1 : F) * rho 77425) = ((0 : F))

def relationRow96 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77426) * ((1 : F) + (-1 : F) * rho 77426) = ((0 : F))

def relationRow97 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77427) * ((1 : F) + (-1 : F) * rho 77427) = ((0 : F))

def relationRow98 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77428) * ((1 : F) + (-1 : F) * rho 77428) = ((0 : F))

def relationRow99 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77429) * ((1 : F) + (-1 : F) * rho 77429) = ((0 : F))

def relationRow100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77430) * ((1 : F) + (-1 : F) * rho 77430) = ((0 : F))

def relationRow101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77431) * ((1 : F) + (-1 : F) * rho 77431) = ((0 : F))

def relationRow102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77432) * ((1 : F) + (-1 : F) * rho 77432) = ((0 : F))

def relationRow103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77433) * ((1 : F) + (-1 : F) * rho 77433) = ((0 : F))

def relationRow104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77434) * ((1 : F) + (-1 : F) * rho 77434) = ((0 : F))

def relationRow105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77435) * ((1 : F) + (-1 : F) * rho 77435) = ((0 : F))

def relationRow106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77436) * ((1 : F) + (-1 : F) * rho 77436) = ((0 : F))

def relationRow107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77437) * ((1 : F) + (-1 : F) * rho 77437) = ((0 : F))

def relationRow108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77438) * ((1 : F) + (-1 : F) * rho 77438) = ((0 : F))

def relationRow109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77439) * ((1 : F) + (-1 : F) * rho 77439) = ((0 : F))

def relationRow110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77440) * ((1 : F) + (-1 : F) * rho 77440) = ((0 : F))

def relationRow111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77441) * ((1 : F) + (-1 : F) * rho 77441) = ((0 : F))

def relationRow112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77442) * ((1 : F) + (-1 : F) * rho 77442) = ((0 : F))

def relationRow113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77443) * ((1 : F) + (-1 : F) * rho 77443) = ((0 : F))

def relationRow114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77444) * ((1 : F) + (-1 : F) * rho 77444) = ((0 : F))

def relationRow115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77445) * ((1 : F) + (-1 : F) * rho 77445) = ((0 : F))

def relationRow116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77446) * ((1 : F) + (-1 : F) * rho 77446) = ((0 : F))

def relationRow117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77447) * ((1 : F) + (-1 : F) * rho 77447) = ((0 : F))

def relationRow118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77448) * ((1 : F) + (-1 : F) * rho 77448) = ((0 : F))

def relationRow119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77449) * ((1 : F) + (-1 : F) * rho 77449) = ((0 : F))

def relationRow120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77450) * ((1 : F) + (-1 : F) * rho 77450) = ((0 : F))

def relationRow121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77451) * ((1 : F) + (-1 : F) * rho 77451) = ((0 : F))

def relationRow122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77452) * ((1 : F) + (-1 : F) * rho 77452) = ((0 : F))

def relationRow123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77453) * ((1 : F) + (-1 : F) * rho 77453) = ((0 : F))

def relationRow124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77454) * ((1 : F) + (-1 : F) * rho 77454) = ((0 : F))

def relationRow125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77455) * ((1 : F) + (-1 : F) * rho 77455) = ((0 : F))

def relationRow126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77456) * ((1 : F) + (-1 : F) * rho 77456) = ((0 : F))

def relationRow127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77457) * ((1 : F) + (-1 : F) * rho 77457) = ((0 : F))

def relationRow128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77458) * ((1 : F) + (-1 : F) * rho 77458) = ((0 : F))

def relationRow129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77459) * ((1 : F) + (-1 : F) * rho 77459) = ((0 : F))

def relationRow130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77460) * ((1 : F) + (-1 : F) * rho 77460) = ((0 : F))

def relationRow131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77461) * ((1 : F) + (-1 : F) * rho 77461) = ((0 : F))

def relationRow132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77462) * ((1 : F) + (-1 : F) * rho 77462) = ((0 : F))

def relationRow133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77463) * ((1 : F) + (-1 : F) * rho 77463) = ((0 : F))

def relationRow134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77464) * ((1 : F) + (-1 : F) * rho 77464) = ((0 : F))

def relationRow135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77465) * ((1 : F) + (-1 : F) * rho 77465) = ((0 : F))

def relationRow136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77466) * ((1 : F) + (-1 : F) * rho 77466) = ((0 : F))

def relationRow137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77467) * ((1 : F) + (-1 : F) * rho 77467) = ((0 : F))

def relationRow138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77468) * ((1 : F) + (-1 : F) * rho 77468) = ((0 : F))

def relationRow139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77469) * ((1 : F) + (-1 : F) * rho 77469) = ((0 : F))

def relationRow140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77470) * ((1 : F) + (-1 : F) * rho 77470) = ((0 : F))

def relationRow141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77471) * ((1 : F) + (-1 : F) * rho 77471) = ((0 : F))

def relationRow142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77472) * ((1 : F) + (-1 : F) * rho 77472) = ((0 : F))

def relationRow143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77473) * ((1 : F) + (-1 : F) * rho 77473) = ((0 : F))

def relationRow144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77474) * ((1 : F) + (-1 : F) * rho 77474) = ((0 : F))

def relationRow145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77475) * ((1 : F) + (-1 : F) * rho 77475) = ((0 : F))

def relationRow146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77476) * ((1 : F) + (-1 : F) * rho 77476) = ((0 : F))

def relationRow147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77477) * ((1 : F) + (-1 : F) * rho 77477) = ((0 : F))

def relationRow148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77478) * ((1 : F) + (-1 : F) * rho 77478) = ((0 : F))

def relationRow149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77479) * ((1 : F) + (-1 : F) * rho 77479) = ((0 : F))

def relationRow150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77480) * ((1 : F) + (-1 : F) * rho 77480) = ((0 : F))

def relationRow151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77481) * ((1 : F) + (-1 : F) * rho 77481) = ((0 : F))

def relationRow152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77482) * ((1 : F) + (-1 : F) * rho 77482) = ((0 : F))

def relationRow153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77483) * ((1 : F) + (-1 : F) * rho 77483) = ((0 : F))

def relationRow154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77484) * ((1 : F) + (-1 : F) * rho 77484) = ((0 : F))

def relationRow155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77485) * ((1 : F) + (-1 : F) * rho 77485) = ((0 : F))

def relationRow156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77486) * ((1 : F) + (-1 : F) * rho 77486) = ((0 : F))

def relationRow157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77487) * ((1 : F) + (-1 : F) * rho 77487) = ((0 : F))

def relationRow158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77488) * ((1 : F) + (-1 : F) * rho 77488) = ((0 : F))

def relationRow159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77489) * ((1 : F) + (-1 : F) * rho 77489) = ((0 : F))

def relationRow160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77490) * ((1 : F) + (-1 : F) * rho 77490) = ((0 : F))

def relationRow161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77491) * ((1 : F) + (-1 : F) * rho 77491) = ((0 : F))

def relationRow162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77492) * ((1 : F) + (-1 : F) * rho 77492) = ((0 : F))

def relationRow163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77493) * ((1 : F) + (-1 : F) * rho 77493) = ((0 : F))

def relationRow164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77494) * ((1 : F) + (-1 : F) * rho 77494) = ((0 : F))

def relationRow165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77495) * ((1 : F) + (-1 : F) * rho 77495) = ((0 : F))

def relationRow166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77496) * ((1 : F) + (-1 : F) * rho 77496) = ((0 : F))

def relationRow167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77497) * ((1 : F) + (-1 : F) * rho 77497) = ((0 : F))

def relationRow168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77498) * ((1 : F) + (-1 : F) * rho 77498) = ((0 : F))

def relationRow169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77499) * ((1 : F) + (-1 : F) * rho 77499) = ((0 : F))

def relationRow170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77500) * ((1 : F) + (-1 : F) * rho 77500) = ((0 : F))

def relationRow171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77501) * ((1 : F) + (-1 : F) * rho 77501) = ((0 : F))

def relationRow172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77502) * ((1 : F) + (-1 : F) * rho 77502) = ((0 : F))

def relationRow173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77503) * ((1 : F) + (-1 : F) * rho 77503) = ((0 : F))

def relationRow174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77504) * ((1 : F) + (-1 : F) * rho 77504) = ((0 : F))

def relationRow175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77505) * ((1 : F) + (-1 : F) * rho 77505) = ((0 : F))

def relationRow176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77506) * ((1 : F) + (-1 : F) * rho 77506) = ((0 : F))

def relationRow177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77507) * ((1 : F) + (-1 : F) * rho 77507) = ((0 : F))

def relationRow178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77508) * ((1 : F) + (-1 : F) * rho 77508) = ((0 : F))

def relationRow179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77509) * ((1 : F) + (-1 : F) * rho 77509) = ((0 : F))

def relationRow180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77510) * ((1 : F) + (-1 : F) * rho 77510) = ((0 : F))

def relationRow181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77511) * ((1 : F) + (-1 : F) * rho 77511) = ((0 : F))

def relationRow182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77512) * ((1 : F) + (-1 : F) * rho 77512) = ((0 : F))

def relationRow183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77513) * ((1 : F) + (-1 : F) * rho 77513) = ((0 : F))

def relationRow184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77514) * ((1 : F) + (-1 : F) * rho 77514) = ((0 : F))

def relationRow185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77515) * ((1 : F) + (-1 : F) * rho 77515) = ((0 : F))

def relationRow186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77516) * ((1 : F) + (-1 : F) * rho 77516) = ((0 : F))

def relationRow187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77517) * ((1 : F) + (-1 : F) * rho 77517) = ((0 : F))

def relationRow188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77518) * ((1 : F) + (-1 : F) * rho 77518) = ((0 : F))

def relationRow189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77519) * ((1 : F) + (-1 : F) * rho 77519) = ((0 : F))

def relationRow190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77520) * ((1 : F) + (-1 : F) * rho 77520) = ((0 : F))

def relationRow191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77521) * ((1 : F) + (-1 : F) * rho 77521) = ((0 : F))

def relationRow192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77522) * ((1 : F) + (-1 : F) * rho 77522) = ((0 : F))

def relationRow193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77523) * ((1 : F) + (-1 : F) * rho 77523) = ((0 : F))

def relationRow194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77524) * ((1 : F) + (-1 : F) * rho 77524) = ((0 : F))

def relationRow195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77525) * ((1 : F) + (-1 : F) * rho 77525) = ((0 : F))

def relationRow196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77526) * ((1 : F) + (-1 : F) * rho 77526) = ((0 : F))

def relationRow197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77527) * ((1 : F) + (-1 : F) * rho 77527) = ((0 : F))

def relationRow198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77528) * ((1 : F) + (-1 : F) * rho 77528) = ((0 : F))

def relationRow199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77529) * ((1 : F) + (-1 : F) * rho 77529) = ((0 : F))

def relationRow200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77530) * ((1 : F) + (-1 : F) * rho 77530) = ((0 : F))

def relationRow201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77531) * ((1 : F) + (-1 : F) * rho 77531) = ((0 : F))

def relationRow202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77532) * ((1 : F) + (-1 : F) * rho 77532) = ((0 : F))

def relationRow203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77533) * ((1 : F) + (-1 : F) * rho 77533) = ((0 : F))

def relationRow204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77534) * ((1 : F) + (-1 : F) * rho 77534) = ((0 : F))

def relationRow205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77535) * ((1 : F) + (-1 : F) * rho 77535) = ((0 : F))

def relationRow206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77536) * ((1 : F) + (-1 : F) * rho 77536) = ((0 : F))

def relationRow207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77537) * ((1 : F) + (-1 : F) * rho 77537) = ((0 : F))

def relationRow208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77538) * ((1 : F) + (-1 : F) * rho 77538) = ((0 : F))

def relationRow209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77539) * ((1 : F) + (-1 : F) * rho 77539) = ((0 : F))

def relationRow210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77540) * ((1 : F) + (-1 : F) * rho 77540) = ((0 : F))

def relationRow211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77541) * ((1 : F) + (-1 : F) * rho 77541) = ((0 : F))

def relationRow212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77542) * ((1 : F) + (-1 : F) * rho 77542) = ((0 : F))

def relationRow213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77543) * ((1 : F) + (-1 : F) * rho 77543) = ((0 : F))

def relationRow214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77544) * ((1 : F) + (-1 : F) * rho 77544) = ((0 : F))

def relationRow215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77545) * ((1 : F) + (-1 : F) * rho 77545) = ((0 : F))

def relationRow216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77546) * ((1 : F) + (-1 : F) * rho 77546) = ((0 : F))

def relationRow217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77547) * ((1 : F) + (-1 : F) * rho 77547) = ((0 : F))

def relationRow218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77548) * ((1 : F) + (-1 : F) * rho 77548) = ((0 : F))

def relationRow219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77549) * ((1 : F) + (-1 : F) * rho 77549) = ((0 : F))

def relationRow220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77550) * ((1 : F) + (-1 : F) * rho 77550) = ((0 : F))

def relationRow221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77551) * ((1 : F) + (-1 : F) * rho 77551) = ((0 : F))

def relationRow222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77552) * ((1 : F) + (-1 : F) * rho 77552) = ((0 : F))

def relationRow223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77553) * ((1 : F) + (-1 : F) * rho 77553) = ((0 : F))

def relationRow224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77554) * ((1 : F) + (-1 : F) * rho 77554) = ((0 : F))

def relationRow225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77555) * ((1 : F) + (-1 : F) * rho 77555) = ((0 : F))

def relationRow226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77556) * ((1 : F) + (-1 : F) * rho 77556) = ((0 : F))

def relationRow227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77557) * ((1 : F) + (-1 : F) * rho 77557) = ((0 : F))

def relationRow228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77558) * ((1 : F) + (-1 : F) * rho 77558) = ((0 : F))

def relationRow229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77559) * ((1 : F) + (-1 : F) * rho 77559) = ((0 : F))

def relationRow230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77560) * ((1 : F) + (-1 : F) * rho 77560) = ((0 : F))

def relationRow231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77561) * ((1 : F) + (-1 : F) * rho 77561) = ((0 : F))

def relationRow232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77562) * ((1 : F) + (-1 : F) * rho 77562) = ((0 : F))

def relationRow233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77563) * ((1 : F) + (-1 : F) * rho 77563) = ((0 : F))

def relationRow234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77564) * ((1 : F) + (-1 : F) * rho 77564) = ((0 : F))

def relationRow235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77565) * ((1 : F) + (-1 : F) * rho 77565) = ((0 : F))

def relationRow236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77566) * ((1 : F) + (-1 : F) * rho 77566) = ((0 : F))

def relationRow237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77567) * ((1 : F) + (-1 : F) * rho 77567) = ((0 : F))

def relationRow238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77568) * ((1 : F) + (-1 : F) * rho 77568) = ((0 : F))

def relationRow239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77569) * ((1 : F) + (-1 : F) * rho 77569) = ((0 : F))

def relationRow240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77570) * ((1 : F) + (-1 : F) * rho 77570) = ((0 : F))

def relationRow241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77571) * ((1 : F) + (-1 : F) * rho 77571) = ((0 : F))

def relationRow242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77572) * ((1 : F) + (-1 : F) * rho 77572) = ((0 : F))

def relationRow243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77573) * ((1 : F) + (-1 : F) * rho 77573) = ((0 : F))

def relationRow244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77574) * ((1 : F) + (-1 : F) * rho 77574) = ((0 : F))

def relationRow245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77575) * ((1 : F) + (-1 : F) * rho 77575) = ((0 : F))

def relationRow246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77576) * ((1 : F) + (-1 : F) * rho 77576) = ((0 : F))

def relationRow247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77577) * ((1 : F) + (-1 : F) * rho 77577) = ((0 : F))

def relationRow248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77578) * ((1 : F) + (-1 : F) * rho 77578) = ((0 : F))

def relationRow249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77579) * ((1 : F) + (-1 : F) * rho 77579) = ((0 : F))

def relationRow250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77580) * ((1 : F) + (-1 : F) * rho 77580) = ((0 : F))

def relationLc0Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 77330 + (2 : F) * rho 77331 + (4 : F) * rho 77332 + (8 : F) * rho 77333 + (16 : F) * rho 77334 + (32 : F) * rho 77335 + (64 : F) * rho 77336 + (128 : F) * rho 77337 + (256 : F) * rho 77338 + (512 : F) * rho 77339 + (1024 : F) * rho 77340 + (2048 : F) * rho 77341 + (4096 : F) * rho 77342 + (8192 : F) * rho 77343 + (16384 : F) * rho 77344 + (32768 : F) * rho 77345 + (65536 : F) * rho 77346 + (131072 : F) * rho 77347 + (262144 : F) * rho 77348 + (524288 : F) * rho 77349 + (1048576 : F) * rho 77350 + (2097152 : F) * rho 77351 + (4194304 : F) * rho 77352 + (8388608 : F) * rho 77353 + (16777216 : F) * rho 77354 + (33554432 : F) * rho 77355 + (67108864 : F) * rho 77356 + (134217728 : F) * rho 77357 + (268435456 : F) * rho 77358 + (536870912 : F) * rho 77359 + (1073741824 : F) * rho 77360 + (2147483648 : F) * rho 77361

def relationLc0Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 77362 + (8589934592 : F) * rho 77363 + (17179869184 : F) * rho 77364 + (34359738368 : F) * rho 77365 + (68719476736 : F) * rho 77366 + (137438953472 : F) * rho 77367 + (274877906944 : F) * rho 77368 + (549755813888 : F) * rho 77369 + (1099511627776 : F) * rho 77370 + (2199023255552 : F) * rho 77371 + (4398046511104 : F) * rho 77372 + (8796093022208 : F) * rho 77373 + (17592186044416 : F) * rho 77374 + (35184372088832 : F) * rho 77375 + (70368744177664 : F) * rho 77376 + (140737488355328 : F) * rho 77377 + (281474976710656 : F) * rho 77378 + (562949953421312 : F) * rho 77379 + (1125899906842624 : F) * rho 77380 + (2251799813685248 : F) * rho 77381 + (4503599627370496 : F) * rho 77382 + (9007199254740992 : F) * rho 77383 + (18014398509481984 : F) * rho 77384 + (36028797018963968 : F) * rho 77385 + (72057594037927936 : F) * rho 77386 + (144115188075855872 : F) * rho 77387 + (288230376151711744 : F) * rho 77388 + (576460752303423488 : F) * rho 77389 + (1152921504606846976 : F) * rho 77390 + (2305843009213693952 : F) * rho 77391 + (4611686018427387904 : F) * rho 77392 + (9223372036854775808 : F) * rho 77393

def relationLc0Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 77394 + (36893488147419103232 : F) * rho 77395 + (73786976294838206464 : F) * rho 77396 + (147573952589676412928 : F) * rho 77397 + (295147905179352825856 : F) * rho 77398 + (590295810358705651712 : F) * rho 77399 + (1180591620717411303424 : F) * rho 77400 + (2361183241434822606848 : F) * rho 77401 + (4722366482869645213696 : F) * rho 77402 + (9444732965739290427392 : F) * rho 77403 + (18889465931478580854784 : F) * rho 77404 + (37778931862957161709568 : F) * rho 77405 + (75557863725914323419136 : F) * rho 77406 + (151115727451828646838272 : F) * rho 77407 + (302231454903657293676544 : F) * rho 77408 + (604462909807314587353088 : F) * rho 77409 + (1208925819614629174706176 : F) * rho 77410 + (2417851639229258349412352 : F) * rho 77411 + (4835703278458516698824704 : F) * rho 77412 + (9671406556917033397649408 : F) * rho 77413 + (19342813113834066795298816 : F) * rho 77414 + (38685626227668133590597632 : F) * rho 77415 + (77371252455336267181195264 : F) * rho 77416 + (154742504910672534362390528 : F) * rho 77417 + (309485009821345068724781056 : F) * rho 77418 + (618970019642690137449562112 : F) * rho 77419 + (1237940039285380274899124224 : F) * rho 77420 + (2475880078570760549798248448 : F) * rho 77421 + (4951760157141521099596496896 : F) * rho 77422 + (9903520314283042199192993792 : F) * rho 77423 + (19807040628566084398385987584 : F) * rho 77424 + (39614081257132168796771975168 : F) * rho 77425

def relationLc0Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 77426 + (158456325028528675187087900672 : F) * rho 77427 + (316912650057057350374175801344 : F) * rho 77428 + (633825300114114700748351602688 : F) * rho 77429 + (1267650600228229401496703205376 : F) * rho 77430 + (2535301200456458802993406410752 : F) * rho 77431 + (5070602400912917605986812821504 : F) * rho 77432 + (10141204801825835211973625643008 : F) * rho 77433 + (20282409603651670423947251286016 : F) * rho 77434 + (40564819207303340847894502572032 : F) * rho 77435 + (81129638414606681695789005144064 : F) * rho 77436 + (162259276829213363391578010288128 : F) * rho 77437 + (324518553658426726783156020576256 : F) * rho 77438 + (649037107316853453566312041152512 : F) * rho 77439 + (1298074214633706907132624082305024 : F) * rho 77440 + (2596148429267413814265248164610048 : F) * rho 77441 + (5192296858534827628530496329220096 : F) * rho 77442 + (10384593717069655257060992658440192 : F) * rho 77443 + (20769187434139310514121985316880384 : F) * rho 77444 + (41538374868278621028243970633760768 : F) * rho 77445 + (83076749736557242056487941267521536 : F) * rho 77446 + (166153499473114484112975882535043072 : F) * rho 77447 + (332306998946228968225951765070086144 : F) * rho 77448 + (664613997892457936451903530140172288 : F) * rho 77449 + (1329227995784915872903807060280344576 : F) * rho 77450 + (2658455991569831745807614120560689152 : F) * rho 77451 + (5316911983139663491615228241121378304 : F) * rho 77452 + (10633823966279326983230456482242756608 : F) * rho 77453 + (21267647932558653966460912964485513216 : F) * rho 77454 + (42535295865117307932921825928971026432 : F) * rho 77455 + (85070591730234615865843651857942052864 : F) * rho 77456 + (170141183460469231731687303715884105728 : F) * rho 77457

def relationLc0Part4 (rho : Nat -> F) : F :=
    (340282366920938463463374607431768211456 : F) * rho 77458 + (680564733841876926926749214863536422912 : F) * rho 77459 + (1361129467683753853853498429727072845824 : F) * rho 77460 + (2722258935367507707706996859454145691648 : F) * rho 77461 + (5444517870735015415413993718908291383296 : F) * rho 77462 + (10889035741470030830827987437816582766592 : F) * rho 77463 + (21778071482940061661655974875633165533184 : F) * rho 77464 + (43556142965880123323311949751266331066368 : F) * rho 77465 + (87112285931760246646623899502532662132736 : F) * rho 77466 + (174224571863520493293247799005065324265472 : F) * rho 77467 + (348449143727040986586495598010130648530944 : F) * rho 77468 + (696898287454081973172991196020261297061888 : F) * rho 77469 + (1393796574908163946345982392040522594123776 : F) * rho 77470 + (2787593149816327892691964784081045188247552 : F) * rho 77471 + (5575186299632655785383929568162090376495104 : F) * rho 77472 + (11150372599265311570767859136324180752990208 : F) * rho 77473 + (22300745198530623141535718272648361505980416 : F) * rho 77474 + (44601490397061246283071436545296723011960832 : F) * rho 77475 + (89202980794122492566142873090593446023921664 : F) * rho 77476 + (178405961588244985132285746181186892047843328 : F) * rho 77477 + (356811923176489970264571492362373784095686656 : F) * rho 77478 + (713623846352979940529142984724747568191373312 : F) * rho 77479 + (1427247692705959881058285969449495136382746624 : F) * rho 77480 + (2854495385411919762116571938898990272765493248 : F) * rho 77481 + (5708990770823839524233143877797980545530986496 : F) * rho 77482 + (11417981541647679048466287755595961091061972992 : F) * rho 77483 + (22835963083295358096932575511191922182123945984 : F) * rho 77484 + (45671926166590716193865151022383844364247891968 : F) * rho 77485 + (91343852333181432387730302044767688728495783936 : F) * rho 77486 + (182687704666362864775460604089535377456991567872 : F) * rho 77487 + (365375409332725729550921208179070754913983135744 : F) * rho 77488 + (730750818665451459101842416358141509827966271488 : F) * rho 77489

def relationLc0Part5 (rho : Nat -> F) : F :=
    (1461501637330902918203684832716283019655932542976 : F) * rho 77490 + (2923003274661805836407369665432566039311865085952 : F) * rho 77491 + (5846006549323611672814739330865132078623730171904 : F) * rho 77492 + (11692013098647223345629478661730264157247460343808 : F) * rho 77493 + (23384026197294446691258957323460528314494920687616 : F) * rho 77494 + (46768052394588893382517914646921056628989841375232 : F) * rho 77495 + (93536104789177786765035829293842113257979682750464 : F) * rho 77496 + (187072209578355573530071658587684226515959365500928 : F) * rho 77497 + (374144419156711147060143317175368453031918731001856 : F) * rho 77498 + (748288838313422294120286634350736906063837462003712 : F) * rho 77499 + (1496577676626844588240573268701473812127674924007424 : F) * rho 77500 + (2993155353253689176481146537402947624255349848014848 : F) * rho 77501 + (5986310706507378352962293074805895248510699696029696 : F) * rho 77502 + (11972621413014756705924586149611790497021399392059392 : F) * rho 77503 + (23945242826029513411849172299223580994042798784118784 : F) * rho 77504 + (47890485652059026823698344598447161988085597568237568 : F) * rho 77505 + (95780971304118053647396689196894323976171195136475136 : F) * rho 77506 + (191561942608236107294793378393788647952342390272950272 : F) * rho 77507 + (383123885216472214589586756787577295904684780545900544 : F) * rho 77508 + (766247770432944429179173513575154591809369561091801088 : F) * rho 77509 + (1532495540865888858358347027150309183618739122183602176 : F) * rho 77510 + (3064991081731777716716694054300618367237478244367204352 : F) * rho 77511 + (6129982163463555433433388108601236734474956488734408704 : F) * rho 77512 + (12259964326927110866866776217202473468949912977468817408 : F) * rho 77513 + (24519928653854221733733552434404946937899825954937634816 : F) * rho 77514 + (49039857307708443467467104868809893875799651909875269632 : F) * rho 77515 + (98079714615416886934934209737619787751599303819750539264 : F) * rho 77516 + (196159429230833773869868419475239575503198607639501078528 : F) * rho 77517 + (392318858461667547739736838950479151006397215279002157056 : F) * rho 77518 + (784637716923335095479473677900958302012794430558004314112 : F) * rho 77519 + (1569275433846670190958947355801916604025588861116008628224 : F) * rho 77520 + (3138550867693340381917894711603833208051177722232017256448 : F) * rho 77521

def relationLc0Part6 (rho : Nat -> F) : F :=
    (6277101735386680763835789423207666416102355444464034512896 : F) * rho 77522 + (12554203470773361527671578846415332832204710888928069025792 : F) * rho 77523 + (25108406941546723055343157692830665664409421777856138051584 : F) * rho 77524 + (50216813883093446110686315385661331328818843555712276103168 : F) * rho 77525 + (100433627766186892221372630771322662657637687111424552206336 : F) * rho 77526 + (200867255532373784442745261542645325315275374222849104412672 : F) * rho 77527 + (401734511064747568885490523085290650630550748445698208825344 : F) * rho 77528 + (803469022129495137770981046170581301261101496891396417650688 : F) * rho 77529 + (1606938044258990275541962092341162602522202993782792835301376 : F) * rho 77530 + (3213876088517980551083924184682325205044405987565585670602752 : F) * rho 77531 + (6427752177035961102167848369364650410088811975131171341205504 : F) * rho 77532 + (12855504354071922204335696738729300820177623950262342682411008 : F) * rho 77533 + (25711008708143844408671393477458601640355247900524685364822016 : F) * rho 77534 + (51422017416287688817342786954917203280710495801049370729644032 : F) * rho 77535 + (102844034832575377634685573909834406561420991602098741459288064 : F) * rho 77536 + (205688069665150755269371147819668813122841983204197482918576128 : F) * rho 77537 + (411376139330301510538742295639337626245683966408394965837152256 : F) * rho 77538 + (822752278660603021077484591278675252491367932816789931674304512 : F) * rho 77539 + (1645504557321206042154969182557350504982735865633579863348609024 : F) * rho 77540 + (3291009114642412084309938365114701009965471731267159726697218048 : F) * rho 77541 + (6582018229284824168619876730229402019930943462534319453394436096 : F) * rho 77542 + (13164036458569648337239753460458804039861886925068638906788872192 : F) * rho 77543 + (26328072917139296674479506920917608079723773850137277813577744384 : F) * rho 77544 + (52656145834278593348959013841835216159447547700274555627155488768 : F) * rho 77545 + (105312291668557186697918027683670432318895095400549111254310977536 : F) * rho 77546 + (210624583337114373395836055367340864637790190801098222508621955072 : F) * rho 77547 + (421249166674228746791672110734681729275580381602196445017243910144 : F) * rho 77548 + (842498333348457493583344221469363458551160763204392890034487820288 : F) * rho 77549 + (1684996666696914987166688442938726917102321526408785780068975640576 : F) * rho 77550 + (3369993333393829974333376885877453834204643052817571560137951281152 : F) * rho 77551 + (6739986666787659948666753771754907668409286105635143120275902562304 : F) * rho 77552 + (13479973333575319897333507543509815336818572211270286240551805124608 : F) * rho 77553

def relationLc0Part7 (rho : Nat -> F) : F :=
    (26959946667150639794667015087019630673637144422540572481103610249216 : F) * rho 77554 + (53919893334301279589334030174039261347274288845081144962207220498432 : F) * rho 77555 + (107839786668602559178668060348078522694548577690162289924414440996864 : F) * rho 77556 + (215679573337205118357336120696157045389097155380324579848828881993728 : F) * rho 77557 + (431359146674410236714672241392314090778194310760649159697657763987456 : F) * rho 77558 + (862718293348820473429344482784628181556388621521298319395315527974912 : F) * rho 77559 + (1725436586697640946858688965569256363112777243042596638790631055949824 : F) * rho 77560 + (3450873173395281893717377931138512726225554486085193277581262111899648 : F) * rho 77561 + (6901746346790563787434755862277025452451108972170386555162524223799296 : F) * rho 77562 + (13803492693581127574869511724554050904902217944340773110325048447598592 : F) * rho 77563 + (27606985387162255149739023449108101809804435888681546220650096895197184 : F) * rho 77564 + (55213970774324510299478046898216203619608871777363092441300193790394368 : F) * rho 77565 + (110427941548649020598956093796432407239217743554726184882600387580788736 : F) * rho 77566 + (220855883097298041197912187592864814478435487109452369765200775161577472 : F) * rho 77567 + (441711766194596082395824375185729628956870974218904739530401550323154944 : F) * rho 77568 + (883423532389192164791648750371459257913741948437809479060803100646309888 : F) * rho 77569 + (1766847064778384329583297500742918515827483896875618958121606201292619776 : F) * rho 77570 + (3533694129556768659166595001485837031654967793751237916243212402585239552 : F) * rho 77571 + (7067388259113537318333190002971674063309935587502475832486424805170479104 : F) * rho 77572 + (14134776518227074636666380005943348126619871175004951664972849610340958208 : F) * rho 77573 + (28269553036454149273332760011886696253239742350009903329945699220681916416 : F) * rho 77574 + (56539106072908298546665520023773392506479484700019806659891398441363832832 : F) * rho 77575 + (113078212145816597093331040047546785012958969400039613319782796882727665664 : F) * rho 77576 + (226156424291633194186662080095093570025917938800079226639565593765455331328 : F) * rho 77577 + (452312848583266388373324160190187140051835877600158453279131187530910662656 : F) * rho 77578 + (904625697166532776746648320380374280103671755200316906558262375061821325312 : F) * rho 77579 + (1809251394333065553493296640760748560207343510400633813116524750123642650624 : F) * rho 77580

def relationLc0 (rho : Nat -> F) : F :=
    relationLc0Part0 rho +
    relationLc0Part1 rho +
    relationLc0Part2 rho +
    relationLc0Part3 rho +
    relationLc0Part4 rho +
    relationLc0Part5 rho +
    relationLc0Part6 rho +
    relationLc0Part7 rho

def relationRow251 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc0 rho) = ((1 : F) * rho 425)

def relationRow252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77330) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 77581)

def relationRow253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77330) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 545) = ((1 : F) * rho 77582)

def relationRow254 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 77583)

def relationRow255 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 77584)

def relationRow256 (rho : Nat -> F) : Prop :=
    ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 77585)

def relationRow257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77586) * ((-1 : F) * rho 77584 + (1 : F) * rho 77585) = ((2 : F) * rho 77583)

def relationRow258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77587) * ((2 : F) + (1 : F) * rho 77584 + (-1 : F) * rho 77585) = ((1 : F) * rho 77584 + (1 : F) * rho 77585)

def relationRow259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77586 + (1 : F) * rho 77587) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582) = ((1 : F) * rho 77588)

def relationRow260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77587) * ((1 : F) * rho 77581) = ((1 : F) * rho 77589)

def relationRow261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77586) * ((1 : F) + (1 : F) * rho 77582) = ((1 : F) * rho 77590)

def relationRow262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77589) * ((1 : F) * rho 77590) = ((1 : F) * rho 77591)

def relationRow263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77592) * ((1 : F) + (1 : F) * rho 77591) = ((1 : F) * rho 77589 + (1 : F) * rho 77590)

def relationRow264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77593) * ((1 : F) + (-1 : F) * rho 77591) = ((1 : F) * rho 77588 + (-1 : F) * rho 77589 + (-1 : F) * rho 77590)

def relationRow265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77331) * ((-1 : F) * rho 77581 + (1 : F) * rho 77592) = ((1 : F) * rho 77594)

def relationRow266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77331) * ((-1 : F) + (-1 : F) * rho 77582 + (1 : F) * rho 77593) = ((1 : F) * rho 77595)

def relationRow267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77586) * ((1 : F) * rho 77587) = ((1 : F) * rho 77596)

def relationRow268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77586) * ((1 : F) * rho 77586) = ((1 : F) * rho 77597)

def relationRow269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77587) * ((1 : F) * rho 77587) = ((1 : F) * rho 77598)

def relationRow270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77599) * ((-1 : F) * rho 77597 + (1 : F) * rho 77598) = ((2 : F) * rho 77596)

def relationRow271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77600) * ((2 : F) + (1 : F) * rho 77597 + (-1 : F) * rho 77598) = ((1 : F) * rho 77597 + (1 : F) * rho 77598)

def relationRow272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77599 + (1 : F) * rho 77600) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595) = ((1 : F) * rho 77601)

def relationRow273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77600) * ((1 : F) * rho 77581 + (1 : F) * rho 77594) = ((1 : F) * rho 77602)

def relationRow274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77599) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595) = ((1 : F) * rho 77603)

def relationRow275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77602) * ((1 : F) * rho 77603) = ((1 : F) * rho 77604)

def relationRow276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77605) * ((1 : F) + (1 : F) * rho 77604) = ((1 : F) * rho 77602 + (1 : F) * rho 77603)

def relationRow277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77606) * ((1 : F) + (-1 : F) * rho 77604) = ((1 : F) * rho 77601 + (-1 : F) * rho 77602 + (-1 : F) * rho 77603)

def relationRow278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77332) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (1 : F) * rho 77605) = ((1 : F) * rho 77607)

def relationRow279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77332) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (1 : F) * rho 77606) = ((1 : F) * rho 77608)

def relationRow280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77599) * ((1 : F) * rho 77600) = ((1 : F) * rho 77609)

def relationRow281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77599) * ((1 : F) * rho 77599) = ((1 : F) * rho 77610)

def relationRow282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77600) * ((1 : F) * rho 77600) = ((1 : F) * rho 77611)

def relationRow283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77612) * ((-1 : F) * rho 77610 + (1 : F) * rho 77611) = ((2 : F) * rho 77609)

def relationRow284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77613) * ((2 : F) + (1 : F) * rho 77610 + (-1 : F) * rho 77611) = ((1 : F) * rho 77610 + (1 : F) * rho 77611)

def relationRow285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77612 + (1 : F) * rho 77613) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608) = ((1 : F) * rho 77614)

def relationRow286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77613) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607) = ((1 : F) * rho 77615)

def relationRow287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77612) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608) = ((1 : F) * rho 77616)

def relationRow288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77615) * ((1 : F) * rho 77616) = ((1 : F) * rho 77617)

def relationRow289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77618) * ((1 : F) + (1 : F) * rho 77617) = ((1 : F) * rho 77615 + (1 : F) * rho 77616)

def relationRow290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77619) * ((1 : F) + (-1 : F) * rho 77617) = ((1 : F) * rho 77614 + (-1 : F) * rho 77615 + (-1 : F) * rho 77616)

def relationRow291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77333) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (1 : F) * rho 77618) = ((1 : F) * rho 77620)

def relationRow292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77333) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (1 : F) * rho 77619) = ((1 : F) * rho 77621)

def relationRow293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77612) * ((1 : F) * rho 77613) = ((1 : F) * rho 77622)

def relationRow294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77612) * ((1 : F) * rho 77612) = ((1 : F) * rho 77623)

def relationRow295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77613) * ((1 : F) * rho 77613) = ((1 : F) * rho 77624)

def relationRow296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77625) * ((-1 : F) * rho 77623 + (1 : F) * rho 77624) = ((2 : F) * rho 77622)

def relationRow297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77626) * ((2 : F) + (1 : F) * rho 77623 + (-1 : F) * rho 77624) = ((1 : F) * rho 77623 + (1 : F) * rho 77624)

def relationRow298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77625 + (1 : F) * rho 77626) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621) = ((1 : F) * rho 77627)

def relationRow299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77626) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620) = ((1 : F) * rho 77628)

def relationRow300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77625) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621) = ((1 : F) * rho 77629)

def relationRow301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77628) * ((1 : F) * rho 77629) = ((1 : F) * rho 77630)

def relationRow302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77631) * ((1 : F) + (1 : F) * rho 77630) = ((1 : F) * rho 77628 + (1 : F) * rho 77629)

def relationRow303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77632) * ((1 : F) + (-1 : F) * rho 77630) = ((1 : F) * rho 77627 + (-1 : F) * rho 77628 + (-1 : F) * rho 77629)

def relationRow304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77334) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (1 : F) * rho 77631) = ((1 : F) * rho 77633)

def relationRow305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77334) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (1 : F) * rho 77632) = ((1 : F) * rho 77634)

def relationRow306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77625) * ((1 : F) * rho 77626) = ((1 : F) * rho 77635)

def relationRow307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77625) * ((1 : F) * rho 77625) = ((1 : F) * rho 77636)

def relationRow308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77626) * ((1 : F) * rho 77626) = ((1 : F) * rho 77637)

def relationRow309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77638) * ((-1 : F) * rho 77636 + (1 : F) * rho 77637) = ((2 : F) * rho 77635)

def relationRow310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77639) * ((2 : F) + (1 : F) * rho 77636 + (-1 : F) * rho 77637) = ((1 : F) * rho 77636 + (1 : F) * rho 77637)

def relationRow311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77638 + (1 : F) * rho 77639) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634) = ((1 : F) * rho 77640)

def relationRow312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77639) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633) = ((1 : F) * rho 77641)

def relationRow313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77638) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634) = ((1 : F) * rho 77642)

def relationRow314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77641) * ((1 : F) * rho 77642) = ((1 : F) * rho 77643)

def relationRow315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77644) * ((1 : F) + (1 : F) * rho 77643) = ((1 : F) * rho 77641 + (1 : F) * rho 77642)

def relationRow316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77645) * ((1 : F) + (-1 : F) * rho 77643) = ((1 : F) * rho 77640 + (-1 : F) * rho 77641 + (-1 : F) * rho 77642)

def relationRow317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77335) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (1 : F) * rho 77644) = ((1 : F) * rho 77646)

def relationRow318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77335) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (1 : F) * rho 77645) = ((1 : F) * rho 77647)

def relationRow319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77638) * ((1 : F) * rho 77639) = ((1 : F) * rho 77648)

def relationRow320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77638) * ((1 : F) * rho 77638) = ((1 : F) * rho 77649)

def relationRow321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77639) * ((1 : F) * rho 77639) = ((1 : F) * rho 77650)

def relationRow322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77651) * ((-1 : F) * rho 77649 + (1 : F) * rho 77650) = ((2 : F) * rho 77648)

def relationRow323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77652) * ((2 : F) + (1 : F) * rho 77649 + (-1 : F) * rho 77650) = ((1 : F) * rho 77649 + (1 : F) * rho 77650)

def relationRow324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77651 + (1 : F) * rho 77652) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647) = ((1 : F) * rho 77653)

def relationRow325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77652) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646) = ((1 : F) * rho 77654)

def relationRow326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77651) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647) = ((1 : F) * rho 77655)

def relationRow327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77654) * ((1 : F) * rho 77655) = ((1 : F) * rho 77656)

def relationRow328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77657) * ((1 : F) + (1 : F) * rho 77656) = ((1 : F) * rho 77654 + (1 : F) * rho 77655)

def relationRow329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77658) * ((1 : F) + (-1 : F) * rho 77656) = ((1 : F) * rho 77653 + (-1 : F) * rho 77654 + (-1 : F) * rho 77655)

def relationRow330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77336) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (1 : F) * rho 77657) = ((1 : F) * rho 77659)

def relationRow331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77336) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (1 : F) * rho 77658) = ((1 : F) * rho 77660)

def relationRow332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77651) * ((1 : F) * rho 77652) = ((1 : F) * rho 77661)

def relationRow333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77651) * ((1 : F) * rho 77651) = ((1 : F) * rho 77662)

def relationRow334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77652) * ((1 : F) * rho 77652) = ((1 : F) * rho 77663)

def relationRow335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77664) * ((-1 : F) * rho 77662 + (1 : F) * rho 77663) = ((2 : F) * rho 77661)

def relationRow336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77665) * ((2 : F) + (1 : F) * rho 77662 + (-1 : F) * rho 77663) = ((1 : F) * rho 77662 + (1 : F) * rho 77663)

def relationRow337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77664 + (1 : F) * rho 77665) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660) = ((1 : F) * rho 77666)

def relationRow338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77665) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659) = ((1 : F) * rho 77667)

def relationRow339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77664) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660) = ((1 : F) * rho 77668)

def relationRow340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77667) * ((1 : F) * rho 77668) = ((1 : F) * rho 77669)

def relationRow341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77670) * ((1 : F) + (1 : F) * rho 77669) = ((1 : F) * rho 77667 + (1 : F) * rho 77668)

def relationRow342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77671) * ((1 : F) + (-1 : F) * rho 77669) = ((1 : F) * rho 77666 + (-1 : F) * rho 77667 + (-1 : F) * rho 77668)

def relationRow343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77337) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (1 : F) * rho 77670) = ((1 : F) * rho 77672)

def relationRow344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77337) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (1 : F) * rho 77671) = ((1 : F) * rho 77673)

def relationRow345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77664) * ((1 : F) * rho 77665) = ((1 : F) * rho 77674)

def relationRow346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77664) * ((1 : F) * rho 77664) = ((1 : F) * rho 77675)

def relationRow347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77665) * ((1 : F) * rho 77665) = ((1 : F) * rho 77676)

def relationRow348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77677) * ((-1 : F) * rho 77675 + (1 : F) * rho 77676) = ((2 : F) * rho 77674)

def relationRow349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77678) * ((2 : F) + (1 : F) * rho 77675 + (-1 : F) * rho 77676) = ((1 : F) * rho 77675 + (1 : F) * rho 77676)

def relationRow350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77677 + (1 : F) * rho 77678) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673) = ((1 : F) * rho 77679)

def relationRow351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77678) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672) = ((1 : F) * rho 77680)

def relationRow352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77677) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673) = ((1 : F) * rho 77681)

def relationRow353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77680) * ((1 : F) * rho 77681) = ((1 : F) * rho 77682)

def relationRow354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77683) * ((1 : F) + (1 : F) * rho 77682) = ((1 : F) * rho 77680 + (1 : F) * rho 77681)

def relationRow355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77684) * ((1 : F) + (-1 : F) * rho 77682) = ((1 : F) * rho 77679 + (-1 : F) * rho 77680 + (-1 : F) * rho 77681)

def relationRow356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77338) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (1 : F) * rho 77683) = ((1 : F) * rho 77685)

def relationRow357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77338) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (1 : F) * rho 77684) = ((1 : F) * rho 77686)

def relationRow358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77677) * ((1 : F) * rho 77678) = ((1 : F) * rho 77687)

def relationRow359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77677) * ((1 : F) * rho 77677) = ((1 : F) * rho 77688)

def relationRow360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77678) * ((1 : F) * rho 77678) = ((1 : F) * rho 77689)

def relationRow361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77690) * ((-1 : F) * rho 77688 + (1 : F) * rho 77689) = ((2 : F) * rho 77687)

def relationRow362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77691) * ((2 : F) + (1 : F) * rho 77688 + (-1 : F) * rho 77689) = ((1 : F) * rho 77688 + (1 : F) * rho 77689)

def relationRow363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77690 + (1 : F) * rho 77691) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673 + (1 : F) * rho 77685 + (1 : F) * rho 77686) = ((1 : F) * rho 77692)

def relationRow364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77691) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672 + (1 : F) * rho 77685) = ((1 : F) * rho 77693)

def relationRow365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77690) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673 + (1 : F) * rho 77686) = ((1 : F) * rho 77694)

def relationRow366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77693) * ((1 : F) * rho 77694) = ((1 : F) * rho 77695)

def relationRow367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77696) * ((1 : F) + (1 : F) * rho 77695) = ((1 : F) * rho 77693 + (1 : F) * rho 77694)

def relationRow368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77697) * ((1 : F) + (-1 : F) * rho 77695) = ((1 : F) * rho 77692 + (-1 : F) * rho 77693 + (-1 : F) * rho 77694)

def relationRow369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77339) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (-1 : F) * rho 77685 + (1 : F) * rho 77696) = ((1 : F) * rho 77698)

def relationRow370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77339) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (-1 : F) * rho 77686 + (1 : F) * rho 77697) = ((1 : F) * rho 77699)

def relationRow371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77690) * ((1 : F) * rho 77691) = ((1 : F) * rho 77700)

def relationRow372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77690) * ((1 : F) * rho 77690) = ((1 : F) * rho 77701)

def relationRow373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77691) * ((1 : F) * rho 77691) = ((1 : F) * rho 77702)

def relationRow374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77703) * ((-1 : F) * rho 77701 + (1 : F) * rho 77702) = ((2 : F) * rho 77700)

def relationRow375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77704) * ((2 : F) + (1 : F) * rho 77701 + (-1 : F) * rho 77702) = ((1 : F) * rho 77701 + (1 : F) * rho 77702)

def relationRow376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77703 + (1 : F) * rho 77704) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673 + (1 : F) * rho 77685 + (1 : F) * rho 77686 + (1 : F) * rho 77698 + (1 : F) * rho 77699) = ((1 : F) * rho 77705)

def relationRow377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77704) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672 + (1 : F) * rho 77685 + (1 : F) * rho 77698) = ((1 : F) * rho 77706)

def relationRow378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77703) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673 + (1 : F) * rho 77686 + (1 : F) * rho 77699) = ((1 : F) * rho 77707)

def relationRow379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77706) * ((1 : F) * rho 77707) = ((1 : F) * rho 77708)

def relationRow380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77709) * ((1 : F) + (1 : F) * rho 77708) = ((1 : F) * rho 77706 + (1 : F) * rho 77707)

def relationRow381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77710) * ((1 : F) + (-1 : F) * rho 77708) = ((1 : F) * rho 77705 + (-1 : F) * rho 77706 + (-1 : F) * rho 77707)

def relationRow382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77340) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (-1 : F) * rho 77685 + (-1 : F) * rho 77698 + (1 : F) * rho 77709) = ((1 : F) * rho 77711)

def relationRow383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77340) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (-1 : F) * rho 77686 + (-1 : F) * rho 77699 + (1 : F) * rho 77710) = ((1 : F) * rho 77712)

def relationRow384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77703) * ((1 : F) * rho 77704) = ((1 : F) * rho 77713)

def relationRow385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77703) * ((1 : F) * rho 77703) = ((1 : F) * rho 77714)

def relationRow386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77704) * ((1 : F) * rho 77704) = ((1 : F) * rho 77715)

def relationRow387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77716) * ((-1 : F) * rho 77714 + (1 : F) * rho 77715) = ((2 : F) * rho 77713)

def relationRow388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77717) * ((2 : F) + (1 : F) * rho 77714 + (-1 : F) * rho 77715) = ((1 : F) * rho 77714 + (1 : F) * rho 77715)

def relationRow389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77716 + (1 : F) * rho 77717) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673 + (1 : F) * rho 77685 + (1 : F) * rho 77686 + (1 : F) * rho 77698 + (1 : F) * rho 77699 + (1 : F) * rho 77711 + (1 : F) * rho 77712) = ((1 : F) * rho 77718)

def relationRow390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77717) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672 + (1 : F) * rho 77685 + (1 : F) * rho 77698 + (1 : F) * rho 77711) = ((1 : F) * rho 77719)

def relationRow391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77716) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673 + (1 : F) * rho 77686 + (1 : F) * rho 77699 + (1 : F) * rho 77712) = ((1 : F) * rho 77720)

def relationRow392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77719) * ((1 : F) * rho 77720) = ((1 : F) * rho 77721)

def relationRow393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77722) * ((1 : F) + (1 : F) * rho 77721) = ((1 : F) * rho 77719 + (1 : F) * rho 77720)

def relationRow394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77723) * ((1 : F) + (-1 : F) * rho 77721) = ((1 : F) * rho 77718 + (-1 : F) * rho 77719 + (-1 : F) * rho 77720)

def relationRow395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77341) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (-1 : F) * rho 77685 + (-1 : F) * rho 77698 + (-1 : F) * rho 77711 + (1 : F) * rho 77722) = ((1 : F) * rho 77724)

def relationRow396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77341) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (-1 : F) * rho 77686 + (-1 : F) * rho 77699 + (-1 : F) * rho 77712 + (1 : F) * rho 77723) = ((1 : F) * rho 77725)

def relationRow397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77716) * ((1 : F) * rho 77717) = ((1 : F) * rho 77726)

def relationRow398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77716) * ((1 : F) * rho 77716) = ((1 : F) * rho 77727)

def relationRow399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77717) * ((1 : F) * rho 77717) = ((1 : F) * rho 77728)

def relationRow400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77729) * ((-1 : F) * rho 77727 + (1 : F) * rho 77728) = ((2 : F) * rho 77726)

def relationRow401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77730) * ((2 : F) + (1 : F) * rho 77727 + (-1 : F) * rho 77728) = ((1 : F) * rho 77727 + (1 : F) * rho 77728)

def relationRow402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77729 + (1 : F) * rho 77730) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673 + (1 : F) * rho 77685 + (1 : F) * rho 77686 + (1 : F) * rho 77698 + (1 : F) * rho 77699 + (1 : F) * rho 77711 + (1 : F) * rho 77712 + (1 : F) * rho 77724 + (1 : F) * rho 77725) = ((1 : F) * rho 77731)

def relationRow403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77730) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672 + (1 : F) * rho 77685 + (1 : F) * rho 77698 + (1 : F) * rho 77711 + (1 : F) * rho 77724) = ((1 : F) * rho 77732)

def relationRow404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77729) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673 + (1 : F) * rho 77686 + (1 : F) * rho 77699 + (1 : F) * rho 77712 + (1 : F) * rho 77725) = ((1 : F) * rho 77733)

def relationRow405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77732) * ((1 : F) * rho 77733) = ((1 : F) * rho 77734)

def relationRow406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77735) * ((1 : F) + (1 : F) * rho 77734) = ((1 : F) * rho 77732 + (1 : F) * rho 77733)

def relationRow407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77736) * ((1 : F) + (-1 : F) * rho 77734) = ((1 : F) * rho 77731 + (-1 : F) * rho 77732 + (-1 : F) * rho 77733)

def relationRow408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77342) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (-1 : F) * rho 77685 + (-1 : F) * rho 77698 + (-1 : F) * rho 77711 + (-1 : F) * rho 77724 + (1 : F) * rho 77735) = ((1 : F) * rho 77737)

def relationRow409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77342) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (-1 : F) * rho 77686 + (-1 : F) * rho 77699 + (-1 : F) * rho 77712 + (-1 : F) * rho 77725 + (1 : F) * rho 77736) = ((1 : F) * rho 77738)

def relationRow410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77729) * ((1 : F) * rho 77730) = ((1 : F) * rho 77739)

def relationRow411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77729) * ((1 : F) * rho 77729) = ((1 : F) * rho 77740)

def relationRow412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77730) * ((1 : F) * rho 77730) = ((1 : F) * rho 77741)

def relationRow413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77742) * ((-1 : F) * rho 77740 + (1 : F) * rho 77741) = ((2 : F) * rho 77739)

def relationRow414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77743) * ((2 : F) + (1 : F) * rho 77740 + (-1 : F) * rho 77741) = ((1 : F) * rho 77740 + (1 : F) * rho 77741)

def relationRow415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77742 + (1 : F) * rho 77743) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673 + (1 : F) * rho 77685 + (1 : F) * rho 77686 + (1 : F) * rho 77698 + (1 : F) * rho 77699 + (1 : F) * rho 77711 + (1 : F) * rho 77712 + (1 : F) * rho 77724 + (1 : F) * rho 77725 + (1 : F) * rho 77737 + (1 : F) * rho 77738) = ((1 : F) * rho 77744)

def relationRow416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77743) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672 + (1 : F) * rho 77685 + (1 : F) * rho 77698 + (1 : F) * rho 77711 + (1 : F) * rho 77724 + (1 : F) * rho 77737) = ((1 : F) * rho 77745)

def relationRow417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77742) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673 + (1 : F) * rho 77686 + (1 : F) * rho 77699 + (1 : F) * rho 77712 + (1 : F) * rho 77725 + (1 : F) * rho 77738) = ((1 : F) * rho 77746)

def relationRow418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77745) * ((1 : F) * rho 77746) = ((1 : F) * rho 77747)

def relationRow419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77748) * ((1 : F) + (1 : F) * rho 77747) = ((1 : F) * rho 77745 + (1 : F) * rho 77746)

def relationRow420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77749) * ((1 : F) + (-1 : F) * rho 77747) = ((1 : F) * rho 77744 + (-1 : F) * rho 77745 + (-1 : F) * rho 77746)

def relationRow421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77343) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (-1 : F) * rho 77685 + (-1 : F) * rho 77698 + (-1 : F) * rho 77711 + (-1 : F) * rho 77724 + (-1 : F) * rho 77737 + (1 : F) * rho 77748) = ((1 : F) * rho 77750)

def relationRow422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77343) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (-1 : F) * rho 77686 + (-1 : F) * rho 77699 + (-1 : F) * rho 77712 + (-1 : F) * rho 77725 + (-1 : F) * rho 77738 + (1 : F) * rho 77749) = ((1 : F) * rho 77751)

def relationRow423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77742) * ((1 : F) * rho 77743) = ((1 : F) * rho 77752)

def relationRow424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77742) * ((1 : F) * rho 77742) = ((1 : F) * rho 77753)

def relationRow425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77743) * ((1 : F) * rho 77743) = ((1 : F) * rho 77754)

def relationRow426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77755) * ((-1 : F) * rho 77753 + (1 : F) * rho 77754) = ((2 : F) * rho 77752)

def relationRow427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77756) * ((2 : F) + (1 : F) * rho 77753 + (-1 : F) * rho 77754) = ((1 : F) * rho 77753 + (1 : F) * rho 77754)

def relationRow428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77755 + (1 : F) * rho 77756) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673 + (1 : F) * rho 77685 + (1 : F) * rho 77686 + (1 : F) * rho 77698 + (1 : F) * rho 77699 + (1 : F) * rho 77711 + (1 : F) * rho 77712 + (1 : F) * rho 77724 + (1 : F) * rho 77725 + (1 : F) * rho 77737 + (1 : F) * rho 77738 + (1 : F) * rho 77750 + (1 : F) * rho 77751) = ((1 : F) * rho 77757)

def relationRow429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77756) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672 + (1 : F) * rho 77685 + (1 : F) * rho 77698 + (1 : F) * rho 77711 + (1 : F) * rho 77724 + (1 : F) * rho 77737 + (1 : F) * rho 77750) = ((1 : F) * rho 77758)

def relationRow430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77755) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673 + (1 : F) * rho 77686 + (1 : F) * rho 77699 + (1 : F) * rho 77712 + (1 : F) * rho 77725 + (1 : F) * rho 77738 + (1 : F) * rho 77751) = ((1 : F) * rho 77759)

def relationRow431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77758) * ((1 : F) * rho 77759) = ((1 : F) * rho 77760)

def relationRow432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77761) * ((1 : F) + (1 : F) * rho 77760) = ((1 : F) * rho 77758 + (1 : F) * rho 77759)

def relationRow433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77762) * ((1 : F) + (-1 : F) * rho 77760) = ((1 : F) * rho 77757 + (-1 : F) * rho 77758 + (-1 : F) * rho 77759)

def relationRow434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77344) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (-1 : F) * rho 77685 + (-1 : F) * rho 77698 + (-1 : F) * rho 77711 + (-1 : F) * rho 77724 + (-1 : F) * rho 77737 + (-1 : F) * rho 77750 + (1 : F) * rho 77761) = ((1 : F) * rho 77763)

def relationRow435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77344) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (-1 : F) * rho 77686 + (-1 : F) * rho 77699 + (-1 : F) * rho 77712 + (-1 : F) * rho 77725 + (-1 : F) * rho 77738 + (-1 : F) * rho 77751 + (1 : F) * rho 77762) = ((1 : F) * rho 77764)

def relationRow436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77755) * ((1 : F) * rho 77756) = ((1 : F) * rho 77765)

def relationRow437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77755) * ((1 : F) * rho 77755) = ((1 : F) * rho 77766)

def relationRow438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77756) * ((1 : F) * rho 77756) = ((1 : F) * rho 77767)

def relationRow439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77768) * ((-1 : F) * rho 77766 + (1 : F) * rho 77767) = ((2 : F) * rho 77765)

def relationRow440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77769) * ((2 : F) + (1 : F) * rho 77766 + (-1 : F) * rho 77767) = ((1 : F) * rho 77766 + (1 : F) * rho 77767)

def relationRow441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77768 + (1 : F) * rho 77769) * ((1 : F) + (1 : F) * rho 77581 + (1 : F) * rho 77582 + (1 : F) * rho 77594 + (1 : F) * rho 77595 + (1 : F) * rho 77607 + (1 : F) * rho 77608 + (1 : F) * rho 77620 + (1 : F) * rho 77621 + (1 : F) * rho 77633 + (1 : F) * rho 77634 + (1 : F) * rho 77646 + (1 : F) * rho 77647 + (1 : F) * rho 77659 + (1 : F) * rho 77660 + (1 : F) * rho 77672 + (1 : F) * rho 77673 + (1 : F) * rho 77685 + (1 : F) * rho 77686 + (1 : F) * rho 77698 + (1 : F) * rho 77699 + (1 : F) * rho 77711 + (1 : F) * rho 77712 + (1 : F) * rho 77724 + (1 : F) * rho 77725 + (1 : F) * rho 77737 + (1 : F) * rho 77738 + (1 : F) * rho 77750 + (1 : F) * rho 77751 + (1 : F) * rho 77763 + (1 : F) * rho 77764) = ((1 : F) * rho 77770)

def relationRow442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77769) * ((1 : F) * rho 77581 + (1 : F) * rho 77594 + (1 : F) * rho 77607 + (1 : F) * rho 77620 + (1 : F) * rho 77633 + (1 : F) * rho 77646 + (1 : F) * rho 77659 + (1 : F) * rho 77672 + (1 : F) * rho 77685 + (1 : F) * rho 77698 + (1 : F) * rho 77711 + (1 : F) * rho 77724 + (1 : F) * rho 77737 + (1 : F) * rho 77750 + (1 : F) * rho 77763) = ((1 : F) * rho 77771)

def relationRow443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77768) * ((1 : F) + (1 : F) * rho 77582 + (1 : F) * rho 77595 + (1 : F) * rho 77608 + (1 : F) * rho 77621 + (1 : F) * rho 77634 + (1 : F) * rho 77647 + (1 : F) * rho 77660 + (1 : F) * rho 77673 + (1 : F) * rho 77686 + (1 : F) * rho 77699 + (1 : F) * rho 77712 + (1 : F) * rho 77725 + (1 : F) * rho 77738 + (1 : F) * rho 77751 + (1 : F) * rho 77764) = ((1 : F) * rho 77772)

def relationRow444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77771) * ((1 : F) * rho 77772) = ((1 : F) * rho 77773)

def relationRow445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77774) * ((1 : F) + (1 : F) * rho 77773) = ((1 : F) * rho 77771 + (1 : F) * rho 77772)

def relationRow446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77775) * ((1 : F) + (-1 : F) * rho 77773) = ((1 : F) * rho 77770 + (-1 : F) * rho 77771 + (-1 : F) * rho 77772)

def relationRow447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77345) * ((-1 : F) * rho 77581 + (-1 : F) * rho 77594 + (-1 : F) * rho 77607 + (-1 : F) * rho 77620 + (-1 : F) * rho 77633 + (-1 : F) * rho 77646 + (-1 : F) * rho 77659 + (-1 : F) * rho 77672 + (-1 : F) * rho 77685 + (-1 : F) * rho 77698 + (-1 : F) * rho 77711 + (-1 : F) * rho 77724 + (-1 : F) * rho 77737 + (-1 : F) * rho 77750 + (-1 : F) * rho 77763 + (1 : F) * rho 77774) = ((1 : F) * rho 77776)

def relationRow448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77345) * ((-1 : F) + (-1 : F) * rho 77582 + (-1 : F) * rho 77595 + (-1 : F) * rho 77608 + (-1 : F) * rho 77621 + (-1 : F) * rho 77634 + (-1 : F) * rho 77647 + (-1 : F) * rho 77660 + (-1 : F) * rho 77673 + (-1 : F) * rho 77686 + (-1 : F) * rho 77699 + (-1 : F) * rho 77712 + (-1 : F) * rho 77725 + (-1 : F) * rho 77738 + (-1 : F) * rho 77751 + (-1 : F) * rho 77764 + (1 : F) * rho 77775) = ((1 : F) * rho 77777)

def relationRow449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77768) * ((1 : F) * rho 77769) = ((1 : F) * rho 77778)

def relationRow450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77768) * ((1 : F) * rho 77768) = ((1 : F) * rho 77779)

def relationRow451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77769) * ((1 : F) * rho 77769) = ((1 : F) * rho 77780)

def relationRow452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77781) * ((-1 : F) * rho 77779 + (1 : F) * rho 77780) = ((2 : F) * rho 77778)

def relationRow453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77782) * ((2 : F) + (1 : F) * rho 77779 + (-1 : F) * rho 77780) = ((1 : F) * rho 77779 + (1 : F) * rho 77780)

def relationRow454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77781 + (1 : F) * rho 77782) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 16⟩, ⟨(1 : F), 77582, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77783)

def relationRow455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77782) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77784)

def relationRow456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77781) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77785)

def relationRow457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77784) * ((1 : F) * rho 77785) = ((1 : F) * rho 77786)

def relationRow458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77787) * ((1 : F) + (1 : F) * rho 77786) = ((1 : F) * rho 77784 + (1 : F) * rho 77785)

def relationRow459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77788) * ((1 : F) + (-1 : F) * rho 77786) = ((1 : F) * rho 77783 + (-1 : F) * rho 77784 + (-1 : F) * rho 77785)

def relationRow460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77346) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 16⟩], residual := [((1 : F), 77787)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77789)

def relationRow461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77346) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 16⟩], residual := [((1 : F), 77788)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77790)

def relationRow462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77781) * ((1 : F) * rho 77782) = ((1 : F) * rho 77791)

def relationRow463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77781) * ((1 : F) * rho 77781) = ((1 : F) * rho 77792)

def relationRow464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77782) * ((1 : F) * rho 77782) = ((1 : F) * rho 77793)

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77794) * ((-1 : F) * rho 77792 + (1 : F) * rho 77793) = ((2 : F) * rho 77791)

def relationRow466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77795) * ((2 : F) + (1 : F) * rho 77792 + (-1 : F) * rho 77793) = ((1 : F) * rho 77792 + (1 : F) * rho 77793)

def relationRow467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77794 + (1 : F) * rho 77795) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 17⟩, ⟨(1 : F), 77582, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77796)

def relationRow468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77795) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77797)

def relationRow469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77794) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77798)

def relationRow470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77797) * ((1 : F) * rho 77798) = ((1 : F) * rho 77799)

def relationRow471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77800) * ((1 : F) + (1 : F) * rho 77799) = ((1 : F) * rho 77797 + (1 : F) * rho 77798)

def relationRow472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77801) * ((1 : F) + (-1 : F) * rho 77799) = ((1 : F) * rho 77796 + (-1 : F) * rho 77797 + (-1 : F) * rho 77798)

def relationRow473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77347) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 17⟩], residual := [((1 : F), 77800)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77802)

def relationRow474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77347) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 17⟩], residual := [((1 : F), 77801)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77803)

def relationRow475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77794) * ((1 : F) * rho 77795) = ((1 : F) * rho 77804)

def relationRow476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77794) * ((1 : F) * rho 77794) = ((1 : F) * rho 77805)

def relationRow477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77795) * ((1 : F) * rho 77795) = ((1 : F) * rho 77806)

def relationRow478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77807) * ((-1 : F) * rho 77805 + (1 : F) * rho 77806) = ((2 : F) * rho 77804)

def relationRow479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77808) * ((2 : F) + (1 : F) * rho 77805 + (-1 : F) * rho 77806) = ((1 : F) * rho 77805 + (1 : F) * rho 77806)

def relationRow480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77807 + (1 : F) * rho 77808) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 18⟩, ⟨(1 : F), 77582, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77809)

def relationRow481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77808) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77810)

def relationRow482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77807) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77811)

def relationRow483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77810) * ((1 : F) * rho 77811) = ((1 : F) * rho 77812)

def relationRow484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77813) * ((1 : F) + (1 : F) * rho 77812) = ((1 : F) * rho 77810 + (1 : F) * rho 77811)

def relationRow485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77814) * ((1 : F) + (-1 : F) * rho 77812) = ((1 : F) * rho 77809 + (-1 : F) * rho 77810 + (-1 : F) * rho 77811)

def relationRow486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77348) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 18⟩], residual := [((1 : F), 77813)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77815)

def relationRow487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77348) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 18⟩], residual := [((1 : F), 77814)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77816)

def relationRow488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77807) * ((1 : F) * rho 77808) = ((1 : F) * rho 77817)

def relationRow489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77807) * ((1 : F) * rho 77807) = ((1 : F) * rho 77818)

def relationRow490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77808) * ((1 : F) * rho 77808) = ((1 : F) * rho 77819)

def relationRow491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77820) * ((-1 : F) * rho 77818 + (1 : F) * rho 77819) = ((2 : F) * rho 77817)

def relationRow492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77821) * ((2 : F) + (1 : F) * rho 77818 + (-1 : F) * rho 77819) = ((1 : F) * rho 77818 + (1 : F) * rho 77819)

def relationRow493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77820 + (1 : F) * rho 77821) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 19⟩, ⟨(1 : F), 77582, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77822)

def relationRow494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77821) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77823)

def relationRow495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77820) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77824)

def relationRow496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77823) * ((1 : F) * rho 77824) = ((1 : F) * rho 77825)

def relationRow497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77826) * ((1 : F) + (1 : F) * rho 77825) = ((1 : F) * rho 77823 + (1 : F) * rho 77824)

def relationRow498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77827) * ((1 : F) + (-1 : F) * rho 77825) = ((1 : F) * rho 77822 + (-1 : F) * rho 77823 + (-1 : F) * rho 77824)

def relationRow499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77349) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 19⟩], residual := [((1 : F), 77826)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77828)

def relationRow500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77349) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 19⟩], residual := [((1 : F), 77827)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77829)

def relationRow501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77820) * ((1 : F) * rho 77821) = ((1 : F) * rho 77830)

def relationRow502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77820) * ((1 : F) * rho 77820) = ((1 : F) * rho 77831)

def relationRow503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77821) * ((1 : F) * rho 77821) = ((1 : F) * rho 77832)

def relationRow504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833) * ((-1 : F) * rho 77831 + (1 : F) * rho 77832) = ((2 : F) * rho 77830)

def relationRow505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77834) * ((2 : F) + (1 : F) * rho 77831 + (-1 : F) * rho 77832) = ((1 : F) * rho 77831 + (1 : F) * rho 77832)

def relationRow506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833 + (1 : F) * rho 77834) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 20⟩, ⟨(1 : F), 77582, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77835)

def relationRow507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77834) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77836)

def relationRow508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77837)

def relationRow509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77836) * ((1 : F) * rho 77837) = ((1 : F) * rho 77838)

def relationRow510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77839) * ((1 : F) + (1 : F) * rho 77838) = ((1 : F) * rho 77836 + (1 : F) * rho 77837)

def relationRow511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77840) * ((1 : F) + (-1 : F) * rho 77838) = ((1 : F) * rho 77835 + (-1 : F) * rho 77836 + (-1 : F) * rho 77837)

def relationRow512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77350) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 20⟩], residual := [((1 : F), 77839)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77841)

def relationRow513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77350) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 20⟩], residual := [((1 : F), 77840)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77842)

def relationRow514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833) * ((1 : F) * rho 77834) = ((1 : F) * rho 77843)

def relationRow515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833) * ((1 : F) * rho 77833) = ((1 : F) * rho 77844)

def relationRow516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77834) * ((1 : F) * rho 77834) = ((1 : F) * rho 77845)

def relationRow517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846) * ((-1 : F) * rho 77844 + (1 : F) * rho 77845) = ((2 : F) * rho 77843)

def relationRow518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77847) * ((2 : F) + (1 : F) * rho 77844 + (-1 : F) * rho 77845) = ((1 : F) * rho 77844 + (1 : F) * rho 77845)

def relationRow519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846 + (1 : F) * rho 77847) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 21⟩, ⟨(1 : F), 77582, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77848)

def relationRow520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77847) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77849)

def relationRow521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77850)

def relationRow522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77849) * ((1 : F) * rho 77850) = ((1 : F) * rho 77851)

def relationRow523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77852) * ((1 : F) + (1 : F) * rho 77851) = ((1 : F) * rho 77849 + (1 : F) * rho 77850)

def relationRow524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77853) * ((1 : F) + (-1 : F) * rho 77851) = ((1 : F) * rho 77848 + (-1 : F) * rho 77849 + (-1 : F) * rho 77850)

def relationRow525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77351) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 21⟩], residual := [((1 : F), 77852)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77854)

def relationRow526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77351) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 21⟩], residual := [((1 : F), 77853)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77855)

def relationRow527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846) * ((1 : F) * rho 77847) = ((1 : F) * rho 77856)

def relationRow528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846) * ((1 : F) * rho 77846) = ((1 : F) * rho 77857)

def relationRow529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77847) * ((1 : F) * rho 77847) = ((1 : F) * rho 77858)

def relationRow530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859) * ((-1 : F) * rho 77857 + (1 : F) * rho 77858) = ((2 : F) * rho 77856)

def relationRow531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77860) * ((2 : F) + (1 : F) * rho 77857 + (-1 : F) * rho 77858) = ((1 : F) * rho 77857 + (1 : F) * rho 77858)

def relationRow532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859 + (1 : F) * rho 77860) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 22⟩, ⟨(1 : F), 77582, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77861)

def relationRow533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77860) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77862)

def relationRow534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77863)

def relationRow535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77862) * ((1 : F) * rho 77863) = ((1 : F) * rho 77864)

def relationRow536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77865) * ((1 : F) + (1 : F) * rho 77864) = ((1 : F) * rho 77862 + (1 : F) * rho 77863)

def relationRow537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77866) * ((1 : F) + (-1 : F) * rho 77864) = ((1 : F) * rho 77861 + (-1 : F) * rho 77862 + (-1 : F) * rho 77863)

def relationRow538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77352) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 22⟩], residual := [((1 : F), 77865)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77867)

def relationRow539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77352) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 22⟩], residual := [((1 : F), 77866)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77868)

def relationRow540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859) * ((1 : F) * rho 77860) = ((1 : F) * rho 77869)

def relationRow541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859) * ((1 : F) * rho 77859) = ((1 : F) * rho 77870)

def relationRow542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77860) * ((1 : F) * rho 77860) = ((1 : F) * rho 77871)

def relationRow543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872) * ((-1 : F) * rho 77870 + (1 : F) * rho 77871) = ((2 : F) * rho 77869)

def relationRow544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77873) * ((2 : F) + (1 : F) * rho 77870 + (-1 : F) * rho 77871) = ((1 : F) * rho 77870 + (1 : F) * rho 77871)

def relationRow545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872 + (1 : F) * rho 77873) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 23⟩, ⟨(1 : F), 77582, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77874)

def relationRow546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77873) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77875)

def relationRow547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77876)

def relationRow548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77875) * ((1 : F) * rho 77876) = ((1 : F) * rho 77877)

def relationRow549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77878) * ((1 : F) + (1 : F) * rho 77877) = ((1 : F) * rho 77875 + (1 : F) * rho 77876)

def relationRow550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77879) * ((1 : F) + (-1 : F) * rho 77877) = ((1 : F) * rho 77874 + (-1 : F) * rho 77875 + (-1 : F) * rho 77876)

def relationRow551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77353) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 23⟩], residual := [((1 : F), 77878)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77880)

def relationRow552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77353) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 23⟩], residual := [((1 : F), 77879)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77881)

def relationRow553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872) * ((1 : F) * rho 77873) = ((1 : F) * rho 77882)

def relationRow554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872) * ((1 : F) * rho 77872) = ((1 : F) * rho 77883)

def relationRow555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77873) * ((1 : F) * rho 77873) = ((1 : F) * rho 77884)

def relationRow556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885) * ((-1 : F) * rho 77883 + (1 : F) * rho 77884) = ((2 : F) * rho 77882)

def relationRow557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77886) * ((2 : F) + (1 : F) * rho 77883 + (-1 : F) * rho 77884) = ((1 : F) * rho 77883 + (1 : F) * rho 77884)

def relationRow558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885 + (1 : F) * rho 77886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 24⟩, ⟨(1 : F), 77582, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77887)

def relationRow559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77888)

def relationRow560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77889)

def relationRow561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77888) * ((1 : F) * rho 77889) = ((1 : F) * rho 77890)

def relationRow562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77891) * ((1 : F) + (1 : F) * rho 77890) = ((1 : F) * rho 77888 + (1 : F) * rho 77889)

def relationRow563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77892) * ((1 : F) + (-1 : F) * rho 77890) = ((1 : F) * rho 77887 + (-1 : F) * rho 77888 + (-1 : F) * rho 77889)

def relationRow564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77354) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 24⟩], residual := [((1 : F), 77891)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77893)

def relationRow565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77354) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 24⟩], residual := [((1 : F), 77892)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77894)

def relationRow566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885) * ((1 : F) * rho 77886) = ((1 : F) * rho 77895)

def relationRow567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885) * ((1 : F) * rho 77885) = ((1 : F) * rho 77896)

def relationRow568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77886) * ((1 : F) * rho 77886) = ((1 : F) * rho 77897)

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898) * ((-1 : F) * rho 77896 + (1 : F) * rho 77897) = ((2 : F) * rho 77895)

def relationRow570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77899) * ((2 : F) + (1 : F) * rho 77896 + (-1 : F) * rho 77897) = ((1 : F) * rho 77896 + (1 : F) * rho 77897)

def relationRow571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898 + (1 : F) * rho 77899) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 25⟩, ⟨(1 : F), 77582, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77900)

def relationRow572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77899) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77901)

def relationRow573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77902)

def relationRow574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77901) * ((1 : F) * rho 77902) = ((1 : F) * rho 77903)

def relationRow575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77904) * ((1 : F) + (1 : F) * rho 77903) = ((1 : F) * rho 77901 + (1 : F) * rho 77902)

def relationRow576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77905) * ((1 : F) + (-1 : F) * rho 77903) = ((1 : F) * rho 77900 + (-1 : F) * rho 77901 + (-1 : F) * rho 77902)

def relationRow577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 25⟩], residual := [((1 : F), 77904)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77906)

def relationRow578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 25⟩], residual := [((1 : F), 77905)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77907)

def relationRow579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898) * ((1 : F) * rho 77899) = ((1 : F) * rho 77908)

def relationRow580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898) * ((1 : F) * rho 77898) = ((1 : F) * rho 77909)

def relationRow581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77899) * ((1 : F) * rho 77899) = ((1 : F) * rho 77910)

def relationRow582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911) * ((-1 : F) * rho 77909 + (1 : F) * rho 77910) = ((2 : F) * rho 77908)

def relationRow583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77912) * ((2 : F) + (1 : F) * rho 77909 + (-1 : F) * rho 77910) = ((1 : F) * rho 77909 + (1 : F) * rho 77910)

def relationRow584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911 + (1 : F) * rho 77912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 26⟩, ⟨(1 : F), 77582, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77913)

def relationRow585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77914)

def relationRow586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77915)

def relationRow587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77914) * ((1 : F) * rho 77915) = ((1 : F) * rho 77916)

def relationRow588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77917) * ((1 : F) + (1 : F) * rho 77916) = ((1 : F) * rho 77914 + (1 : F) * rho 77915)

def relationRow589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77918) * ((1 : F) + (-1 : F) * rho 77916) = ((1 : F) * rho 77913 + (-1 : F) * rho 77914 + (-1 : F) * rho 77915)

def relationRow590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77356) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 26⟩], residual := [((1 : F), 77917)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77919)

def relationRow591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77356) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 26⟩], residual := [((1 : F), 77918)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77920)

def relationRow592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911) * ((1 : F) * rho 77912) = ((1 : F) * rho 77921)

def relationRow593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911) * ((1 : F) * rho 77911) = ((1 : F) * rho 77922)

def relationRow594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77912) * ((1 : F) * rho 77912) = ((1 : F) * rho 77923)

def relationRow595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924) * ((-1 : F) * rho 77922 + (1 : F) * rho 77923) = ((2 : F) * rho 77921)

def relationRow596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77925) * ((2 : F) + (1 : F) * rho 77922 + (-1 : F) * rho 77923) = ((1 : F) * rho 77922 + (1 : F) * rho 77923)

def relationRow597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924 + (1 : F) * rho 77925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 27⟩, ⟨(1 : F), 77582, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77926)

def relationRow598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77927)

def relationRow599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77928)

def relationRow600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77927) * ((1 : F) * rho 77928) = ((1 : F) * rho 77929)

def relationRow601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77930) * ((1 : F) + (1 : F) * rho 77929) = ((1 : F) * rho 77927 + (1 : F) * rho 77928)

def relationRow602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77931) * ((1 : F) + (-1 : F) * rho 77929) = ((1 : F) * rho 77926 + (-1 : F) * rho 77927 + (-1 : F) * rho 77928)

def relationRow603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77357) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 27⟩], residual := [((1 : F), 77930)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77932)

def relationRow604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77357) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 27⟩], residual := [((1 : F), 77931)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77933)

def relationRow605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924) * ((1 : F) * rho 77925) = ((1 : F) * rho 77934)

def relationRow606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924) * ((1 : F) * rho 77924) = ((1 : F) * rho 77935)

def relationRow607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77925) * ((1 : F) * rho 77925) = ((1 : F) * rho 77936)

def relationRow608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937) * ((-1 : F) * rho 77935 + (1 : F) * rho 77936) = ((2 : F) * rho 77934)

def relationRow609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77938) * ((2 : F) + (1 : F) * rho 77935 + (-1 : F) * rho 77936) = ((1 : F) * rho 77935 + (1 : F) * rho 77936)

def relationRow610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937 + (1 : F) * rho 77938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 28⟩, ⟨(1 : F), 77582, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77939)

def relationRow611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77940)

def relationRow612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77941)

def relationRow613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77940) * ((1 : F) * rho 77941) = ((1 : F) * rho 77942)

def relationRow614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77943) * ((1 : F) + (1 : F) * rho 77942) = ((1 : F) * rho 77940 + (1 : F) * rho 77941)

def relationRow615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77944) * ((1 : F) + (-1 : F) * rho 77942) = ((1 : F) * rho 77939 + (-1 : F) * rho 77940 + (-1 : F) * rho 77941)

def relationRow616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77358) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 28⟩], residual := [((1 : F), 77943)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77945)

def relationRow617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77358) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 28⟩], residual := [((1 : F), 77944)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77946)

def relationRow618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937) * ((1 : F) * rho 77938) = ((1 : F) * rho 77947)

def relationRow619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937) * ((1 : F) * rho 77937) = ((1 : F) * rho 77948)

def relationRow620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77938) * ((1 : F) * rho 77938) = ((1 : F) * rho 77949)

def relationRow621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950) * ((-1 : F) * rho 77948 + (1 : F) * rho 77949) = ((2 : F) * rho 77947)

def relationRow622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77951) * ((2 : F) + (1 : F) * rho 77948 + (-1 : F) * rho 77949) = ((1 : F) * rho 77948 + (1 : F) * rho 77949)

def relationRow623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950 + (1 : F) * rho 77951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 29⟩, ⟨(1 : F), 77582, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77952)

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77953)

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77954)

def relationRow626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77953) * ((1 : F) * rho 77954) = ((1 : F) * rho 77955)

def relationRow627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77956) * ((1 : F) + (1 : F) * rho 77955) = ((1 : F) * rho 77953 + (1 : F) * rho 77954)

def relationRow628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77957) * ((1 : F) + (-1 : F) * rho 77955) = ((1 : F) * rho 77952 + (-1 : F) * rho 77953 + (-1 : F) * rho 77954)

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77359) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 29⟩], residual := [((1 : F), 77956)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77958)

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77359) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 29⟩], residual := [((1 : F), 77957)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77959)

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950) * ((1 : F) * rho 77951) = ((1 : F) * rho 77960)

def relationRow632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950) * ((1 : F) * rho 77950) = ((1 : F) * rho 77961)

def relationRow633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77951) * ((1 : F) * rho 77951) = ((1 : F) * rho 77962)

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963) * ((-1 : F) * rho 77961 + (1 : F) * rho 77962) = ((2 : F) * rho 77960)

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77964) * ((2 : F) + (1 : F) * rho 77961 + (-1 : F) * rho 77962) = ((1 : F) * rho 77961 + (1 : F) * rho 77962)

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963 + (1 : F) * rho 77964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 30⟩, ⟨(1 : F), 77582, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77965)

def relationRow637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77966)

def relationRow638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77967)

def relationRow639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77966) * ((1 : F) * rho 77967) = ((1 : F) * rho 77968)

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77969) * ((1 : F) + (1 : F) * rho 77968) = ((1 : F) * rho 77966 + (1 : F) * rho 77967)

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77970) * ((1 : F) + (-1 : F) * rho 77968) = ((1 : F) * rho 77965 + (-1 : F) * rho 77966 + (-1 : F) * rho 77967)

def relationRow642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77360) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 30⟩], residual := [((1 : F), 77969)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77971)

def relationRow643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77360) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 30⟩], residual := [((1 : F), 77970)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77972)

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963) * ((1 : F) * rho 77964) = ((1 : F) * rho 77973)

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963) * ((1 : F) * rho 77963) = ((1 : F) * rho 77974)

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77964) * ((1 : F) * rho 77964) = ((1 : F) * rho 77975)

def relationRow647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976) * ((-1 : F) * rho 77974 + (1 : F) * rho 77975) = ((2 : F) * rho 77973)

def relationRow648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77977) * ((2 : F) + (1 : F) * rho 77974 + (-1 : F) * rho 77975) = ((1 : F) * rho 77974 + (1 : F) * rho 77975)

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976 + (1 : F) * rho 77977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 31⟩, ⟨(1 : F), 77582, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77978)

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77979)

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77980)

def relationRow652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77979) * ((1 : F) * rho 77980) = ((1 : F) * rho 77981)

def relationRow653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77982) * ((1 : F) + (1 : F) * rho 77981) = ((1 : F) * rho 77979 + (1 : F) * rho 77980)

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77983) * ((1 : F) + (-1 : F) * rho 77981) = ((1 : F) * rho 77978 + (-1 : F) * rho 77979 + (-1 : F) * rho 77980)

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77361) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 31⟩], residual := [((1 : F), 77982)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77984)

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77361) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 31⟩], residual := [((1 : F), 77983)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77985)

def relationRow657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976) * ((1 : F) * rho 77977) = ((1 : F) * rho 77986)

def relationRow658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976) * ((1 : F) * rho 77976) = ((1 : F) * rho 77987)

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77977) * ((1 : F) * rho 77977) = ((1 : F) * rho 77988)

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989) * ((-1 : F) * rho 77987 + (1 : F) * rho 77988) = ((2 : F) * rho 77986)

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77990) * ((2 : F) + (1 : F) * rho 77987 + (-1 : F) * rho 77988) = ((1 : F) * rho 77987 + (1 : F) * rho 77988)

def relationRow662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989 + (1 : F) * rho 77990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 32⟩, ⟨(1 : F), 77582, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77991)

def relationRow663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77992)

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77993)

def relationRow665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 77992) * ((1 : F) * rho 77993) = ((1 : F) * rho 77994)

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77995) * ((1 : F) + (1 : F) * rho 77994) = ((1 : F) * rho 77992 + (1 : F) * rho 77993)

def relationRow667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77996) * ((1 : F) + (-1 : F) * rho 77994) = ((1 : F) * rho 77991 + (-1 : F) * rho 77992 + (-1 : F) * rho 77993)

def relationRow668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77362) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 32⟩], residual := [((1 : F), 77995)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77997)

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77362) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 32⟩], residual := [((1 : F), 77996)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 77998)

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989) * ((1 : F) * rho 77990) = ((1 : F) * rho 77999)

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989) * ((1 : F) * rho 77989) = ((1 : F) * rho 78000)

def relationRow672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77990) * ((1 : F) * rho 77990) = ((1 : F) * rho 78001)

def relationRow673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002) * ((-1 : F) * rho 78000 + (1 : F) * rho 78001) = ((2 : F) * rho 77999)

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78003) * ((2 : F) + (1 : F) * rho 78000 + (-1 : F) * rho 78001) = ((1 : F) * rho 78000 + (1 : F) * rho 78001)

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002 + (1 : F) * rho 78003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 33⟩, ⟨(1 : F), 77582, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78004)

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78005)

def relationRow677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78006)

def relationRow678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78005) * ((1 : F) * rho 78006) = ((1 : F) * rho 78007)

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78008) * ((1 : F) + (1 : F) * rho 78007) = ((1 : F) * rho 78005 + (1 : F) * rho 78006)

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78009) * ((1 : F) + (-1 : F) * rho 78007) = ((1 : F) * rho 78004 + (-1 : F) * rho 78005 + (-1 : F) * rho 78006)

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77363) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 33⟩], residual := [((1 : F), 78008)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78010)

def relationRow682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77363) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 33⟩], residual := [((1 : F), 78009)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78011)

def relationRow683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002) * ((1 : F) * rho 78003) = ((1 : F) * rho 78012)

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002) * ((1 : F) * rho 78002) = ((1 : F) * rho 78013)

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78003) * ((1 : F) * rho 78003) = ((1 : F) * rho 78014)

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015) * ((-1 : F) * rho 78013 + (1 : F) * rho 78014) = ((2 : F) * rho 78012)

def relationRow687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78016) * ((2 : F) + (1 : F) * rho 78013 + (-1 : F) * rho 78014) = ((1 : F) * rho 78013 + (1 : F) * rho 78014)

def relationRow688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015 + (1 : F) * rho 78016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 34⟩, ⟨(1 : F), 77582, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78017)

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78018)

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78019)

def relationRow691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78018) * ((1 : F) * rho 78019) = ((1 : F) * rho 78020)

def relationRow692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78021) * ((1 : F) + (1 : F) * rho 78020) = ((1 : F) * rho 78018 + (1 : F) * rho 78019)

def relationRow693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78022) * ((1 : F) + (-1 : F) * rho 78020) = ((1 : F) * rho 78017 + (-1 : F) * rho 78018 + (-1 : F) * rho 78019)

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77364) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 34⟩], residual := [((1 : F), 78021)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78023)

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77364) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 34⟩], residual := [((1 : F), 78022)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78024)

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015) * ((1 : F) * rho 78016) = ((1 : F) * rho 78025)

def relationRow697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015) * ((1 : F) * rho 78015) = ((1 : F) * rho 78026)

def relationRow698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78016) * ((1 : F) * rho 78016) = ((1 : F) * rho 78027)

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028) * ((-1 : F) * rho 78026 + (1 : F) * rho 78027) = ((2 : F) * rho 78025)

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78029) * ((2 : F) + (1 : F) * rho 78026 + (-1 : F) * rho 78027) = ((1 : F) * rho 78026 + (1 : F) * rho 78027)

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028 + (1 : F) * rho 78029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 35⟩, ⟨(1 : F), 77582, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78030)

def relationRow702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78031)

def relationRow703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78032)

def relationRow704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78031) * ((1 : F) * rho 78032) = ((1 : F) * rho 78033)

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78034) * ((1 : F) + (1 : F) * rho 78033) = ((1 : F) * rho 78031 + (1 : F) * rho 78032)

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78035) * ((1 : F) + (-1 : F) * rho 78033) = ((1 : F) * rho 78030 + (-1 : F) * rho 78031 + (-1 : F) * rho 78032)

def relationRow707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77365) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 35⟩], residual := [((1 : F), 78034)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78036)

def relationRow708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77365) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 35⟩], residual := [((1 : F), 78035)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78037)

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028) * ((1 : F) * rho 78029) = ((1 : F) * rho 78038)

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028) * ((1 : F) * rho 78028) = ((1 : F) * rho 78039)

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78029) * ((1 : F) * rho 78029) = ((1 : F) * rho 78040)

def relationRow712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041) * ((-1 : F) * rho 78039 + (1 : F) * rho 78040) = ((2 : F) * rho 78038)

def relationRow713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78042) * ((2 : F) + (1 : F) * rho 78039 + (-1 : F) * rho 78040) = ((1 : F) * rho 78039 + (1 : F) * rho 78040)

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041 + (1 : F) * rho 78042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 36⟩, ⟨(1 : F), 77582, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78043)

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78044)

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78045)

def relationRow717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78044) * ((1 : F) * rho 78045) = ((1 : F) * rho 78046)

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78047) * ((1 : F) + (1 : F) * rho 78046) = ((1 : F) * rho 78044 + (1 : F) * rho 78045)

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78048) * ((1 : F) + (-1 : F) * rho 78046) = ((1 : F) * rho 78043 + (-1 : F) * rho 78044 + (-1 : F) * rho 78045)

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77366) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 36⟩], residual := [((1 : F), 78047)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78049)

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77366) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 36⟩], residual := [((1 : F), 78048)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78050)

def relationRow722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041) * ((1 : F) * rho 78042) = ((1 : F) * rho 78051)

def relationRow723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041) * ((1 : F) * rho 78041) = ((1 : F) * rho 78052)

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78042) * ((1 : F) * rho 78042) = ((1 : F) * rho 78053)

def relationRow725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054) * ((-1 : F) * rho 78052 + (1 : F) * rho 78053) = ((2 : F) * rho 78051)

def relationRow726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78055) * ((2 : F) + (1 : F) * rho 78052 + (-1 : F) * rho 78053) = ((1 : F) * rho 78052 + (1 : F) * rho 78053)

def relationRow727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054 + (1 : F) * rho 78055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 37⟩, ⟨(1 : F), 77582, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78056)

def relationRow728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78057)

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78058)

def relationRow730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78057) * ((1 : F) * rho 78058) = ((1 : F) * rho 78059)

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78060) * ((1 : F) + (1 : F) * rho 78059) = ((1 : F) * rho 78057 + (1 : F) * rho 78058)

def relationRow732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78061) * ((1 : F) + (-1 : F) * rho 78059) = ((1 : F) * rho 78056 + (-1 : F) * rho 78057 + (-1 : F) * rho 78058)

def relationRow733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77367) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 37⟩], residual := [((1 : F), 78060)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78062)

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77367) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 37⟩], residual := [((1 : F), 78061)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78063)

def relationRow735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054) * ((1 : F) * rho 78055) = ((1 : F) * rho 78064)

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054) * ((1 : F) * rho 78054) = ((1 : F) * rho 78065)

def relationRow737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78055) * ((1 : F) * rho 78055) = ((1 : F) * rho 78066)

def relationRow738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067) * ((-1 : F) * rho 78065 + (1 : F) * rho 78066) = ((2 : F) * rho 78064)

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78068) * ((2 : F) + (1 : F) * rho 78065 + (-1 : F) * rho 78066) = ((1 : F) * rho 78065 + (1 : F) * rho 78066)

def relationRow740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067 + (1 : F) * rho 78068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 38⟩, ⟨(1 : F), 77582, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78069)

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78070)

def relationRow742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78071)

def relationRow743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78070) * ((1 : F) * rho 78071) = ((1 : F) * rho 78072)

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78073) * ((1 : F) + (1 : F) * rho 78072) = ((1 : F) * rho 78070 + (1 : F) * rho 78071)

def relationRow745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78074) * ((1 : F) + (-1 : F) * rho 78072) = ((1 : F) * rho 78069 + (-1 : F) * rho 78070 + (-1 : F) * rho 78071)

def relationRow746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 38⟩], residual := [((1 : F), 78073)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78075)

def relationRow747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 38⟩], residual := [((1 : F), 78074)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78076)

def relationRow748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067) * ((1 : F) * rho 78068) = ((1 : F) * rho 78077)

def relationRow749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067) * ((1 : F) * rho 78067) = ((1 : F) * rho 78078)

def relationRow750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78068) * ((1 : F) * rho 78068) = ((1 : F) * rho 78079)

def relationRow751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080) * ((-1 : F) * rho 78078 + (1 : F) * rho 78079) = ((2 : F) * rho 78077)

def relationRow752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78081) * ((2 : F) + (1 : F) * rho 78078 + (-1 : F) * rho 78079) = ((1 : F) * rho 78078 + (1 : F) * rho 78079)

def relationRow753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080 + (1 : F) * rho 78081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 39⟩, ⟨(1 : F), 77582, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78082)

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78083)

def relationRow755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78084)

def relationRow756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78083) * ((1 : F) * rho 78084) = ((1 : F) * rho 78085)

def relationRow757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78086) * ((1 : F) + (1 : F) * rho 78085) = ((1 : F) * rho 78083 + (1 : F) * rho 78084)

def relationRow758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78087) * ((1 : F) + (-1 : F) * rho 78085) = ((1 : F) * rho 78082 + (-1 : F) * rho 78083 + (-1 : F) * rho 78084)

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77369) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 39⟩], residual := [((1 : F), 78086)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78088)

def relationRow760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77369) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 39⟩], residual := [((1 : F), 78087)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78089)

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080) * ((1 : F) * rho 78081) = ((1 : F) * rho 78090)

def relationRow762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080) * ((1 : F) * rho 78080) = ((1 : F) * rho 78091)

def relationRow763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78081) * ((1 : F) * rho 78081) = ((1 : F) * rho 78092)

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78093) * ((-1 : F) * rho 78091 + (1 : F) * rho 78092) = ((2 : F) * rho 78090)

def relationRow765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78094) * ((2 : F) + (1 : F) * rho 78091 + (-1 : F) * rho 78092) = ((1 : F) * rho 78091 + (1 : F) * rho 78092)

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78093 + (1 : F) * rho 78094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 40⟩, ⟨(1 : F), 77582, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78095)

def relationRow767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78096)

def relationRow768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78093) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78097)

def relationRow769 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78096) * ((1 : F) * rho 78097) = ((1 : F) * rho 78098)

def relationRow770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78099) * ((1 : F) + (1 : F) * rho 78098) = ((1 : F) * rho 78096 + (1 : F) * rho 78097)

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78100) * ((1 : F) + (-1 : F) * rho 78098) = ((1 : F) * rho 78095 + (-1 : F) * rho 78096 + (-1 : F) * rho 78097)

def relationRow772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77370) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 40⟩], residual := [((1 : F), 78099)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78101)

def relationRow773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77370) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 40⟩], residual := [((1 : F), 78100)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78102)

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78093) * ((1 : F) * rho 78094) = ((1 : F) * rho 78103)

def relationRow775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78093) * ((1 : F) * rho 78093) = ((1 : F) * rho 78104)

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78094) * ((1 : F) * rho 78094) = ((1 : F) * rho 78105)

def relationRow777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78106) * ((-1 : F) * rho 78104 + (1 : F) * rho 78105) = ((2 : F) * rho 78103)

def relationRow778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78107) * ((2 : F) + (1 : F) * rho 78104 + (-1 : F) * rho 78105) = ((1 : F) * rho 78104 + (1 : F) * rho 78105)

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78106 + (1 : F) * rho 78107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 41⟩, ⟨(1 : F), 77582, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78108)

def relationRow780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78109)

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78106) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78110)

def relationRow782 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78109) * ((1 : F) * rho 78110) = ((1 : F) * rho 78111)

def relationRow783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78112) * ((1 : F) + (1 : F) * rho 78111) = ((1 : F) * rho 78109 + (1 : F) * rho 78110)

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78113) * ((1 : F) + (-1 : F) * rho 78111) = ((1 : F) * rho 78108 + (-1 : F) * rho 78109 + (-1 : F) * rho 78110)

def relationRow785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77371) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 41⟩], residual := [((1 : F), 78112)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78114)

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77371) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 41⟩], residual := [((1 : F), 78113)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78115)

def relationRow787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78106) * ((1 : F) * rho 78107) = ((1 : F) * rho 78116)

def relationRow788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78106) * ((1 : F) * rho 78106) = ((1 : F) * rho 78117)

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78107) * ((1 : F) * rho 78107) = ((1 : F) * rho 78118)

def relationRow790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78119) * ((-1 : F) * rho 78117 + (1 : F) * rho 78118) = ((2 : F) * rho 78116)

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78120) * ((2 : F) + (1 : F) * rho 78117 + (-1 : F) * rho 78118) = ((1 : F) * rho 78117 + (1 : F) * rho 78118)

def relationRow792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78119 + (1 : F) * rho 78120) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 42⟩, ⟨(1 : F), 77582, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78121)

def relationRow793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78120) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78122)

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78119) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78123)

def relationRow795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78122) * ((1 : F) * rho 78123) = ((1 : F) * rho 78124)

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78125) * ((1 : F) + (1 : F) * rho 78124) = ((1 : F) * rho 78122 + (1 : F) * rho 78123)

def relationRow797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78126) * ((1 : F) + (-1 : F) * rho 78124) = ((1 : F) * rho 78121 + (-1 : F) * rho 78122 + (-1 : F) * rho 78123)

def relationRow798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77372) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 42⟩], residual := [((1 : F), 78125)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78127)

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77372) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 42⟩], residual := [((1 : F), 78126)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78128)

def relationRow800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78119) * ((1 : F) * rho 78120) = ((1 : F) * rho 78129)

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78119) * ((1 : F) * rho 78119) = ((1 : F) * rho 78130)

def relationRow802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78120) * ((1 : F) * rho 78120) = ((1 : F) * rho 78131)

def relationRow803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78132) * ((-1 : F) * rho 78130 + (1 : F) * rho 78131) = ((2 : F) * rho 78129)

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78133) * ((2 : F) + (1 : F) * rho 78130 + (-1 : F) * rho 78131) = ((1 : F) * rho 78130 + (1 : F) * rho 78131)

def relationRow805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78132 + (1 : F) * rho 78133) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 43⟩, ⟨(1 : F), 77582, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78134)

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78133) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78135)

def relationRow807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78132) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78136)

def relationRow808 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78135) * ((1 : F) * rho 78136) = ((1 : F) * rho 78137)

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78138) * ((1 : F) + (1 : F) * rho 78137) = ((1 : F) * rho 78135 + (1 : F) * rho 78136)

def relationRow810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78139) * ((1 : F) + (-1 : F) * rho 78137) = ((1 : F) * rho 78134 + (-1 : F) * rho 78135 + (-1 : F) * rho 78136)

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77373) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 43⟩], residual := [((1 : F), 78138)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78140)

def relationRow812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77373) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 43⟩], residual := [((1 : F), 78139)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78141)

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78132) * ((1 : F) * rho 78133) = ((1 : F) * rho 78142)

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78132) * ((1 : F) * rho 78132) = ((1 : F) * rho 78143)

def relationRow815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78133) * ((1 : F) * rho 78133) = ((1 : F) * rho 78144)

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78145) * ((-1 : F) * rho 78143 + (1 : F) * rho 78144) = ((2 : F) * rho 78142)

def relationRow817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78146) * ((2 : F) + (1 : F) * rho 78143 + (-1 : F) * rho 78144) = ((1 : F) * rho 78143 + (1 : F) * rho 78144)

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78145 + (1 : F) * rho 78146) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 44⟩, ⟨(1 : F), 77582, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78147)

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78146) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78148)

def relationRow820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78145) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78149)

def relationRow821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78148) * ((1 : F) * rho 78149) = ((1 : F) * rho 78150)

def relationRow822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78151) * ((1 : F) + (1 : F) * rho 78150) = ((1 : F) * rho 78148 + (1 : F) * rho 78149)

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78152) * ((1 : F) + (-1 : F) * rho 78150) = ((1 : F) * rho 78147 + (-1 : F) * rho 78148 + (-1 : F) * rho 78149)

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77374) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 44⟩], residual := [((1 : F), 78151)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78153)

def relationRow825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77374) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 44⟩], residual := [((1 : F), 78152)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78154)

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78145) * ((1 : F) * rho 78146) = ((1 : F) * rho 78155)

def relationRow827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78145) * ((1 : F) * rho 78145) = ((1 : F) * rho 78156)

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78146) * ((1 : F) * rho 78146) = ((1 : F) * rho 78157)

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78158) * ((-1 : F) * rho 78156 + (1 : F) * rho 78157) = ((2 : F) * rho 78155)

def relationRow830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78159) * ((2 : F) + (1 : F) * rho 78156 + (-1 : F) * rho 78157) = ((1 : F) * rho 78156 + (1 : F) * rho 78157)

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78158 + (1 : F) * rho 78159) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 45⟩, ⟨(1 : F), 77582, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78160)

def relationRow832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78159) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78161)

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78158) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78162)

def relationRow834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78161) * ((1 : F) * rho 78162) = ((1 : F) * rho 78163)

def relationRow835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78164) * ((1 : F) + (1 : F) * rho 78163) = ((1 : F) * rho 78161 + (1 : F) * rho 78162)

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78165) * ((1 : F) + (-1 : F) * rho 78163) = ((1 : F) * rho 78160 + (-1 : F) * rho 78161 + (-1 : F) * rho 78162)

def relationRow837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77375) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 45⟩], residual := [((1 : F), 78164)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78166)

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77375) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 45⟩], residual := [((1 : F), 78165)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78167)

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78158) * ((1 : F) * rho 78159) = ((1 : F) * rho 78168)

def relationRow840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78158) * ((1 : F) * rho 78158) = ((1 : F) * rho 78169)

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78159) * ((1 : F) * rho 78159) = ((1 : F) * rho 78170)

def relationRow842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78171) * ((-1 : F) * rho 78169 + (1 : F) * rho 78170) = ((2 : F) * rho 78168)

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78172) * ((2 : F) + (1 : F) * rho 78169 + (-1 : F) * rho 78170) = ((1 : F) * rho 78169 + (1 : F) * rho 78170)

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78171 + (1 : F) * rho 78172) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 46⟩, ⟨(1 : F), 77582, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78173)

def relationRow845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78172) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78174)

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78171) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78175)

def relationRow847 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78174) * ((1 : F) * rho 78175) = ((1 : F) * rho 78176)

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78177) * ((1 : F) + (1 : F) * rho 78176) = ((1 : F) * rho 78174 + (1 : F) * rho 78175)

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78178) * ((1 : F) + (-1 : F) * rho 78176) = ((1 : F) * rho 78173 + (-1 : F) * rho 78174 + (-1 : F) * rho 78175)

def relationRow850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77376) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 46⟩], residual := [((1 : F), 78177)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78179)

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77376) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 46⟩], residual := [((1 : F), 78178)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78180)

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78171) * ((1 : F) * rho 78172) = ((1 : F) * rho 78181)

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78171) * ((1 : F) * rho 78171) = ((1 : F) * rho 78182)

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78172) * ((1 : F) * rho 78172) = ((1 : F) * rho 78183)

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78184) * ((-1 : F) * rho 78182 + (1 : F) * rho 78183) = ((2 : F) * rho 78181)

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78185) * ((2 : F) + (1 : F) * rho 78182 + (-1 : F) * rho 78183) = ((1 : F) * rho 78182 + (1 : F) * rho 78183)

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78184 + (1 : F) * rho 78185) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 47⟩, ⟨(1 : F), 77582, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78186)

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78185) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78187)

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78184) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78188)

def relationRow860 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78187) * ((1 : F) * rho 78188) = ((1 : F) * rho 78189)

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78190) * ((1 : F) + (1 : F) * rho 78189) = ((1 : F) * rho 78187 + (1 : F) * rho 78188)

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78191) * ((1 : F) + (-1 : F) * rho 78189) = ((1 : F) * rho 78186 + (-1 : F) * rho 78187 + (-1 : F) * rho 78188)

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77377) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 47⟩], residual := [((1 : F), 78190)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78192)

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77377) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 47⟩], residual := [((1 : F), 78191)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78193)

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78184) * ((1 : F) * rho 78185) = ((1 : F) * rho 78194)

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78184) * ((1 : F) * rho 78184) = ((1 : F) * rho 78195)

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78185) * ((1 : F) * rho 78185) = ((1 : F) * rho 78196)

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78197) * ((-1 : F) * rho 78195 + (1 : F) * rho 78196) = ((2 : F) * rho 78194)

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78198) * ((2 : F) + (1 : F) * rho 78195 + (-1 : F) * rho 78196) = ((1 : F) * rho 78195 + (1 : F) * rho 78196)

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78197 + (1 : F) * rho 78198) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 48⟩, ⟨(1 : F), 77582, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78199)

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78198) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78200)

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78197) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78201)

def relationRow873 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78200) * ((1 : F) * rho 78201) = ((1 : F) * rho 78202)

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78203) * ((1 : F) + (1 : F) * rho 78202) = ((1 : F) * rho 78200 + (1 : F) * rho 78201)

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78204) * ((1 : F) + (-1 : F) * rho 78202) = ((1 : F) * rho 78199 + (-1 : F) * rho 78200 + (-1 : F) * rho 78201)

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77378) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 48⟩], residual := [((1 : F), 78203)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78205)

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77378) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 48⟩], residual := [((1 : F), 78204)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78206)

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78197) * ((1 : F) * rho 78198) = ((1 : F) * rho 78207)

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78197) * ((1 : F) * rho 78197) = ((1 : F) * rho 78208)

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78198) * ((1 : F) * rho 78198) = ((1 : F) * rho 78209)

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78210) * ((-1 : F) * rho 78208 + (1 : F) * rho 78209) = ((2 : F) * rho 78207)

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78211) * ((2 : F) + (1 : F) * rho 78208 + (-1 : F) * rho 78209) = ((1 : F) * rho 78208 + (1 : F) * rho 78209)

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78210 + (1 : F) * rho 78211) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 49⟩, ⟨(1 : F), 77582, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78212)

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78211) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78213)

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78210) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78214)

def relationRow886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78213) * ((1 : F) * rho 78214) = ((1 : F) * rho 78215)

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78216) * ((1 : F) + (1 : F) * rho 78215) = ((1 : F) * rho 78213 + (1 : F) * rho 78214)

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78217) * ((1 : F) + (-1 : F) * rho 78215) = ((1 : F) * rho 78212 + (-1 : F) * rho 78213 + (-1 : F) * rho 78214)

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77379) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 49⟩], residual := [((1 : F), 78216)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78218)

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77379) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 49⟩], residual := [((1 : F), 78217)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78219)

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78210) * ((1 : F) * rho 78211) = ((1 : F) * rho 78220)

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78210) * ((1 : F) * rho 78210) = ((1 : F) * rho 78221)

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78211) * ((1 : F) * rho 78211) = ((1 : F) * rho 78222)

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78223) * ((-1 : F) * rho 78221 + (1 : F) * rho 78222) = ((2 : F) * rho 78220)

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78224) * ((2 : F) + (1 : F) * rho 78221 + (-1 : F) * rho 78222) = ((1 : F) * rho 78221 + (1 : F) * rho 78222)

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78223 + (1 : F) * rho 78224) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 50⟩, ⟨(1 : F), 77582, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78225)

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78224) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78226)

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78223) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78227)

def relationRow899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78226) * ((1 : F) * rho 78227) = ((1 : F) * rho 78228)

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78229) * ((1 : F) + (1 : F) * rho 78228) = ((1 : F) * rho 78226 + (1 : F) * rho 78227)

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78230) * ((1 : F) + (-1 : F) * rho 78228) = ((1 : F) * rho 78225 + (-1 : F) * rho 78226 + (-1 : F) * rho 78227)

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77380) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 50⟩], residual := [((1 : F), 78229)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78231)

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77380) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 50⟩], residual := [((1 : F), 78230)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78232)

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78223) * ((1 : F) * rho 78224) = ((1 : F) * rho 78233)

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78223) * ((1 : F) * rho 78223) = ((1 : F) * rho 78234)

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78224) * ((1 : F) * rho 78224) = ((1 : F) * rho 78235)

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78236) * ((-1 : F) * rho 78234 + (1 : F) * rho 78235) = ((2 : F) * rho 78233)

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78237) * ((2 : F) + (1 : F) * rho 78234 + (-1 : F) * rho 78235) = ((1 : F) * rho 78234 + (1 : F) * rho 78235)

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78236 + (1 : F) * rho 78237) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 51⟩, ⟨(1 : F), 77582, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78238)

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78237) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78239)

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78236) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78240)

def relationRow912 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78239) * ((1 : F) * rho 78240) = ((1 : F) * rho 78241)

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78242) * ((1 : F) + (1 : F) * rho 78241) = ((1 : F) * rho 78239 + (1 : F) * rho 78240)

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78243) * ((1 : F) + (-1 : F) * rho 78241) = ((1 : F) * rho 78238 + (-1 : F) * rho 78239 + (-1 : F) * rho 78240)

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77381) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 51⟩], residual := [((1 : F), 78242)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78244)

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77381) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 51⟩], residual := [((1 : F), 78243)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78245)

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78236) * ((1 : F) * rho 78237) = ((1 : F) * rho 78246)

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78236) * ((1 : F) * rho 78236) = ((1 : F) * rho 78247)

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78237) * ((1 : F) * rho 78237) = ((1 : F) * rho 78248)

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78249) * ((-1 : F) * rho 78247 + (1 : F) * rho 78248) = ((2 : F) * rho 78246)

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78250) * ((2 : F) + (1 : F) * rho 78247 + (-1 : F) * rho 78248) = ((1 : F) * rho 78247 + (1 : F) * rho 78248)

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78249 + (1 : F) * rho 78250) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 52⟩, ⟨(1 : F), 77582, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78251)

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78250) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78252)

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78249) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78253)

def relationRow925 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78252) * ((1 : F) * rho 78253) = ((1 : F) * rho 78254)

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78255) * ((1 : F) + (1 : F) * rho 78254) = ((1 : F) * rho 78252 + (1 : F) * rho 78253)

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78256) * ((1 : F) + (-1 : F) * rho 78254) = ((1 : F) * rho 78251 + (-1 : F) * rho 78252 + (-1 : F) * rho 78253)

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77382) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 52⟩], residual := [((1 : F), 78255)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78257)

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77382) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 52⟩], residual := [((1 : F), 78256)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78258)

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78249) * ((1 : F) * rho 78250) = ((1 : F) * rho 78259)

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78249) * ((1 : F) * rho 78249) = ((1 : F) * rho 78260)

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78250) * ((1 : F) * rho 78250) = ((1 : F) * rho 78261)

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78262) * ((-1 : F) * rho 78260 + (1 : F) * rho 78261) = ((2 : F) * rho 78259)

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78263) * ((2 : F) + (1 : F) * rho 78260 + (-1 : F) * rho 78261) = ((1 : F) * rho 78260 + (1 : F) * rho 78261)

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78262 + (1 : F) * rho 78263) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 53⟩, ⟨(1 : F), 77582, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78264)

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78263) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78265)

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78262) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78266)

def relationRow938 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78265) * ((1 : F) * rho 78266) = ((1 : F) * rho 78267)

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78268) * ((1 : F) + (1 : F) * rho 78267) = ((1 : F) * rho 78265 + (1 : F) * rho 78266)

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78269) * ((1 : F) + (-1 : F) * rho 78267) = ((1 : F) * rho 78264 + (-1 : F) * rho 78265 + (-1 : F) * rho 78266)

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77383) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 53⟩], residual := [((1 : F), 78268)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78270)

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77383) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 53⟩], residual := [((1 : F), 78269)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78271)

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78262) * ((1 : F) * rho 78263) = ((1 : F) * rho 78272)

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78262) * ((1 : F) * rho 78262) = ((1 : F) * rho 78273)

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78263) * ((1 : F) * rho 78263) = ((1 : F) * rho 78274)

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78275) * ((-1 : F) * rho 78273 + (1 : F) * rho 78274) = ((2 : F) * rho 78272)

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78276) * ((2 : F) + (1 : F) * rho 78273 + (-1 : F) * rho 78274) = ((1 : F) * rho 78273 + (1 : F) * rho 78274)

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78275 + (1 : F) * rho 78276) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 54⟩, ⟨(1 : F), 77582, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78277)

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78276) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78278)

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78275) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78279)

def relationRow951 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78278) * ((1 : F) * rho 78279) = ((1 : F) * rho 78280)

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78281) * ((1 : F) + (1 : F) * rho 78280) = ((1 : F) * rho 78278 + (1 : F) * rho 78279)

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78282) * ((1 : F) + (-1 : F) * rho 78280) = ((1 : F) * rho 78277 + (-1 : F) * rho 78278 + (-1 : F) * rho 78279)

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77384) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 54⟩], residual := [((1 : F), 78281)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78283)

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77384) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 54⟩], residual := [((1 : F), 78282)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78284)

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78275) * ((1 : F) * rho 78276) = ((1 : F) * rho 78285)

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78275) * ((1 : F) * rho 78275) = ((1 : F) * rho 78286)

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78276) * ((1 : F) * rho 78276) = ((1 : F) * rho 78287)

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78288) * ((-1 : F) * rho 78286 + (1 : F) * rho 78287) = ((2 : F) * rho 78285)

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78289) * ((2 : F) + (1 : F) * rho 78286 + (-1 : F) * rho 78287) = ((1 : F) * rho 78286 + (1 : F) * rho 78287)

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78288 + (1 : F) * rho 78289) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 55⟩, ⟨(1 : F), 77582, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78290)

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78289) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78291)

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78288) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78292)

def relationRow964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78291) * ((1 : F) * rho 78292) = ((1 : F) * rho 78293)

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78294) * ((1 : F) + (1 : F) * rho 78293) = ((1 : F) * rho 78291 + (1 : F) * rho 78292)

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78295) * ((1 : F) + (-1 : F) * rho 78293) = ((1 : F) * rho 78290 + (-1 : F) * rho 78291 + (-1 : F) * rho 78292)

def relationRow967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77385) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 55⟩], residual := [((1 : F), 78294)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78296)

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77385) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 55⟩], residual := [((1 : F), 78295)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78297)

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78288) * ((1 : F) * rho 78289) = ((1 : F) * rho 78298)

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78288) * ((1 : F) * rho 78288) = ((1 : F) * rho 78299)

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78289) * ((1 : F) * rho 78289) = ((1 : F) * rho 78300)

def relationRow972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78301) * ((-1 : F) * rho 78299 + (1 : F) * rho 78300) = ((2 : F) * rho 78298)

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78302) * ((2 : F) + (1 : F) * rho 78299 + (-1 : F) * rho 78300) = ((1 : F) * rho 78299 + (1 : F) * rho 78300)

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78301 + (1 : F) * rho 78302) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 56⟩, ⟨(1 : F), 77582, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78303)

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78302) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78304)

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78301) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78305)

def relationRow977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78304) * ((1 : F) * rho 78305) = ((1 : F) * rho 78306)

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78307) * ((1 : F) + (1 : F) * rho 78306) = ((1 : F) * rho 78304 + (1 : F) * rho 78305)

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78308) * ((1 : F) + (-1 : F) * rho 78306) = ((1 : F) * rho 78303 + (-1 : F) * rho 78304 + (-1 : F) * rho 78305)

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77386) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 56⟩], residual := [((1 : F), 78307)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78309)

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77386) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 56⟩], residual := [((1 : F), 78308)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78310)

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78301) * ((1 : F) * rho 78302) = ((1 : F) * rho 78311)

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78301) * ((1 : F) * rho 78301) = ((1 : F) * rho 78312)

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78302) * ((1 : F) * rho 78302) = ((1 : F) * rho 78313)

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78314) * ((-1 : F) * rho 78312 + (1 : F) * rho 78313) = ((2 : F) * rho 78311)

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78315) * ((2 : F) + (1 : F) * rho 78312 + (-1 : F) * rho 78313) = ((1 : F) * rho 78312 + (1 : F) * rho 78313)

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78314 + (1 : F) * rho 78315) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 57⟩, ⟨(1 : F), 77582, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78316)

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78315) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78317)

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78314) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78318)

def relationRow990 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78317) * ((1 : F) * rho 78318) = ((1 : F) * rho 78319)

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78320) * ((1 : F) + (1 : F) * rho 78319) = ((1 : F) * rho 78317 + (1 : F) * rho 78318)

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78321) * ((1 : F) + (-1 : F) * rho 78319) = ((1 : F) * rho 78316 + (-1 : F) * rho 78317 + (-1 : F) * rho 78318)

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77387) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 57⟩], residual := [((1 : F), 78320)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78322)

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77387) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 57⟩], residual := [((1 : F), 78321)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78323)

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78314) * ((1 : F) * rho 78315) = ((1 : F) * rho 78324)

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78314) * ((1 : F) * rho 78314) = ((1 : F) * rho 78325)

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78315) * ((1 : F) * rho 78315) = ((1 : F) * rho 78326)

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78327) * ((-1 : F) * rho 78325 + (1 : F) * rho 78326) = ((2 : F) * rho 78324)

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78328) * ((2 : F) + (1 : F) * rho 78325 + (-1 : F) * rho 78326) = ((1 : F) * rho 78325 + (1 : F) * rho 78326)

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78327 + (1 : F) * rho 78328) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 58⟩, ⟨(1 : F), 77582, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78329)

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78328) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78330)

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78327) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78331)

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78330) * ((1 : F) * rho 78331) = ((1 : F) * rho 78332)

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78333) * ((1 : F) + (1 : F) * rho 78332) = ((1 : F) * rho 78330 + (1 : F) * rho 78331)

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78334) * ((1 : F) + (-1 : F) * rho 78332) = ((1 : F) * rho 78329 + (-1 : F) * rho 78330 + (-1 : F) * rho 78331)

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77388) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 58⟩], residual := [((1 : F), 78333)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78335)

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77388) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 58⟩], residual := [((1 : F), 78334)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78336)

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78327) * ((1 : F) * rho 78328) = ((1 : F) * rho 78337)

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78327) * ((1 : F) * rho 78327) = ((1 : F) * rho 78338)

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78328) * ((1 : F) * rho 78328) = ((1 : F) * rho 78339)

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78340) * ((-1 : F) * rho 78338 + (1 : F) * rho 78339) = ((2 : F) * rho 78337)

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78341) * ((2 : F) + (1 : F) * rho 78338 + (-1 : F) * rho 78339) = ((1 : F) * rho 78338 + (1 : F) * rho 78339)

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78340 + (1 : F) * rho 78341) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 59⟩, ⟨(1 : F), 77582, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78342)

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78341) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78343)

def relationRow1015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78340) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78344)

def relationRow1016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78343) * ((1 : F) * rho 78344) = ((1 : F) * rho 78345)

def relationRow1017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78346) * ((1 : F) + (1 : F) * rho 78345) = ((1 : F) * rho 78343 + (1 : F) * rho 78344)

def relationRow1018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78347) * ((1 : F) + (-1 : F) * rho 78345) = ((1 : F) * rho 78342 + (-1 : F) * rho 78343 + (-1 : F) * rho 78344)

def relationRow1019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77389) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 59⟩], residual := [((1 : F), 78346)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78348)

def relationRow1020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77389) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 59⟩], residual := [((1 : F), 78347)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78349)

def relationRow1021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78340) * ((1 : F) * rho 78341) = ((1 : F) * rho 78350)

def relationRow1022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78340) * ((1 : F) * rho 78340) = ((1 : F) * rho 78351)

def relationRow1023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78341) * ((1 : F) * rho 78341) = ((1 : F) * rho 78352)

def relationRow1024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78353) * ((-1 : F) * rho 78351 + (1 : F) * rho 78352) = ((2 : F) * rho 78350)

def relationRow1025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78354) * ((2 : F) + (1 : F) * rho 78351 + (-1 : F) * rho 78352) = ((1 : F) * rho 78351 + (1 : F) * rho 78352)

def relationRow1026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78353 + (1 : F) * rho 78354) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 60⟩, ⟨(1 : F), 77582, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78355)

def relationRow1027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78354) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78356)

def relationRow1028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78353) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78357)

def relationRow1029 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78356) * ((1 : F) * rho 78357) = ((1 : F) * rho 78358)

def relationRow1030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78359) * ((1 : F) + (1 : F) * rho 78358) = ((1 : F) * rho 78356 + (1 : F) * rho 78357)

def relationRow1031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78360) * ((1 : F) + (-1 : F) * rho 78358) = ((1 : F) * rho 78355 + (-1 : F) * rho 78356 + (-1 : F) * rho 78357)

def relationRow1032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77390) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 60⟩], residual := [((1 : F), 78359)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78361)

def relationRow1033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77390) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 60⟩], residual := [((1 : F), 78360)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78362)

def relationRow1034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78353) * ((1 : F) * rho 78354) = ((1 : F) * rho 78363)

def relationRow1035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78353) * ((1 : F) * rho 78353) = ((1 : F) * rho 78364)

def relationRow1036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78354) * ((1 : F) * rho 78354) = ((1 : F) * rho 78365)

def relationRow1037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78366) * ((-1 : F) * rho 78364 + (1 : F) * rho 78365) = ((2 : F) * rho 78363)

def relationRow1038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78367) * ((2 : F) + (1 : F) * rho 78364 + (-1 : F) * rho 78365) = ((1 : F) * rho 78364 + (1 : F) * rho 78365)

def relationRow1039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78366 + (1 : F) * rho 78367) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 61⟩, ⟨(1 : F), 77582, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78368)

def relationRow1040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78367) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78369)

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78366) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78370)

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78369) * ((1 : F) * rho 78370) = ((1 : F) * rho 78371)

def relationRow1043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78372) * ((1 : F) + (1 : F) * rho 78371) = ((1 : F) * rho 78369 + (1 : F) * rho 78370)

def relationRow1044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78373) * ((1 : F) + (-1 : F) * rho 78371) = ((1 : F) * rho 78368 + (-1 : F) * rho 78369 + (-1 : F) * rho 78370)

def relationRow1045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77391) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 61⟩], residual := [((1 : F), 78372)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78374)

def relationRow1046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77391) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 61⟩], residual := [((1 : F), 78373)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78375)

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78366) * ((1 : F) * rho 78367) = ((1 : F) * rho 78376)

def relationRow1048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78366) * ((1 : F) * rho 78366) = ((1 : F) * rho 78377)

def relationRow1049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78367) * ((1 : F) * rho 78367) = ((1 : F) * rho 78378)

def relationRow1050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78379) * ((-1 : F) * rho 78377 + (1 : F) * rho 78378) = ((2 : F) * rho 78376)

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78380) * ((2 : F) + (1 : F) * rho 78377 + (-1 : F) * rho 78378) = ((1 : F) * rho 78377 + (1 : F) * rho 78378)

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78379 + (1 : F) * rho 78380) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 62⟩, ⟨(1 : F), 77582, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78381)

def relationRow1053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78380) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78382)

def relationRow1054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78379) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78383)

def relationRow1055 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78382) * ((1 : F) * rho 78383) = ((1 : F) * rho 78384)

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78385) * ((1 : F) + (1 : F) * rho 78384) = ((1 : F) * rho 78382 + (1 : F) * rho 78383)

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78386) * ((1 : F) + (-1 : F) * rho 78384) = ((1 : F) * rho 78381 + (-1 : F) * rho 78382 + (-1 : F) * rho 78383)

def relationRow1058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77392) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 62⟩], residual := [((1 : F), 78385)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78387)

def relationRow1059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77392) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 62⟩], residual := [((1 : F), 78386)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78388)

def relationRow1060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78379) * ((1 : F) * rho 78380) = ((1 : F) * rho 78389)

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78379) * ((1 : F) * rho 78379) = ((1 : F) * rho 78390)

def relationRow1062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78380) * ((1 : F) * rho 78380) = ((1 : F) * rho 78391)

def relationRow1063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78392) * ((-1 : F) * rho 78390 + (1 : F) * rho 78391) = ((2 : F) * rho 78389)

def relationRow1064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78393) * ((2 : F) + (1 : F) * rho 78390 + (-1 : F) * rho 78391) = ((1 : F) * rho 78390 + (1 : F) * rho 78391)

def relationRow1065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78392 + (1 : F) * rho 78393) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 63⟩, ⟨(1 : F), 77582, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78394)

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78393) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78395)

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78392) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78396)

def relationRow1068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78395) * ((1 : F) * rho 78396) = ((1 : F) * rho 78397)

def relationRow1069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78398) * ((1 : F) + (1 : F) * rho 78397) = ((1 : F) * rho 78395 + (1 : F) * rho 78396)

def relationRow1070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78399) * ((1 : F) + (-1 : F) * rho 78397) = ((1 : F) * rho 78394 + (-1 : F) * rho 78395 + (-1 : F) * rho 78396)

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77393) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 63⟩], residual := [((1 : F), 78398)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78400)

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77393) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 63⟩], residual := [((1 : F), 78399)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78401)

def relationRow1073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78392) * ((1 : F) * rho 78393) = ((1 : F) * rho 78402)

def relationRow1074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78392) * ((1 : F) * rho 78392) = ((1 : F) * rho 78403)

def relationRow1075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78393) * ((1 : F) * rho 78393) = ((1 : F) * rho 78404)

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78405) * ((-1 : F) * rho 78403 + (1 : F) * rho 78404) = ((2 : F) * rho 78402)

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78406) * ((2 : F) + (1 : F) * rho 78403 + (-1 : F) * rho 78404) = ((1 : F) * rho 78403 + (1 : F) * rho 78404)

def relationRow1078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78405 + (1 : F) * rho 78406) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 64⟩, ⟨(1 : F), 77582, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78407)

def relationRow1079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78406) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78408)

def relationRow1080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78405) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78409)

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78408) * ((1 : F) * rho 78409) = ((1 : F) * rho 78410)

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78411) * ((1 : F) + (1 : F) * rho 78410) = ((1 : F) * rho 78408 + (1 : F) * rho 78409)

def relationRow1083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78412) * ((1 : F) + (-1 : F) * rho 78410) = ((1 : F) * rho 78407 + (-1 : F) * rho 78408 + (-1 : F) * rho 78409)

def relationRow1084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 64⟩], residual := [((1 : F), 78411)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78413)

def relationRow1085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 64⟩], residual := [((1 : F), 78412)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78414)

def relationRow1086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78405) * ((1 : F) * rho 78406) = ((1 : F) * rho 78415)

def relationRow1087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78405) * ((1 : F) * rho 78405) = ((1 : F) * rho 78416)

def relationRow1088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78406) * ((1 : F) * rho 78406) = ((1 : F) * rho 78417)

def relationRow1089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78418) * ((-1 : F) * rho 78416 + (1 : F) * rho 78417) = ((2 : F) * rho 78415)

def relationRow1090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78419) * ((2 : F) + (1 : F) * rho 78416 + (-1 : F) * rho 78417) = ((1 : F) * rho 78416 + (1 : F) * rho 78417)

def relationRow1091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78418 + (1 : F) * rho 78419) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 65⟩, ⟨(1 : F), 77582, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78420)

def relationRow1092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78419) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78421)

def relationRow1093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78418) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78422)

def relationRow1094 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78421) * ((1 : F) * rho 78422) = ((1 : F) * rho 78423)

def relationRow1095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78424) * ((1 : F) + (1 : F) * rho 78423) = ((1 : F) * rho 78421 + (1 : F) * rho 78422)

def relationRow1096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78425) * ((1 : F) + (-1 : F) * rho 78423) = ((1 : F) * rho 78420 + (-1 : F) * rho 78421 + (-1 : F) * rho 78422)

def relationRow1097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77395) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 65⟩], residual := [((1 : F), 78424)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78426)

def relationRow1098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77395) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 65⟩], residual := [((1 : F), 78425)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78427)

def relationRow1099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78418) * ((1 : F) * rho 78419) = ((1 : F) * rho 78428)

def relationRow1100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78418) * ((1 : F) * rho 78418) = ((1 : F) * rho 78429)

def relationRow1101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78419) * ((1 : F) * rho 78419) = ((1 : F) * rho 78430)

def relationRow1102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78431) * ((-1 : F) * rho 78429 + (1 : F) * rho 78430) = ((2 : F) * rho 78428)

def relationRow1103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78432) * ((2 : F) + (1 : F) * rho 78429 + (-1 : F) * rho 78430) = ((1 : F) * rho 78429 + (1 : F) * rho 78430)

def relationRow1104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78431 + (1 : F) * rho 78432) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 66⟩, ⟨(1 : F), 77582, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78433)

def relationRow1105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78432) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78434)

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78431) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78435)

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78434) * ((1 : F) * rho 78435) = ((1 : F) * rho 78436)

def relationRow1108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78437) * ((1 : F) + (1 : F) * rho 78436) = ((1 : F) * rho 78434 + (1 : F) * rho 78435)

def relationRow1109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78438) * ((1 : F) + (-1 : F) * rho 78436) = ((1 : F) * rho 78433 + (-1 : F) * rho 78434 + (-1 : F) * rho 78435)

def relationRow1110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77396) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 66⟩], residual := [((1 : F), 78437)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78439)

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77396) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 66⟩], residual := [((1 : F), 78438)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78440)

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78431) * ((1 : F) * rho 78432) = ((1 : F) * rho 78441)

def relationRow1113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78431) * ((1 : F) * rho 78431) = ((1 : F) * rho 78442)

def relationRow1114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78432) * ((1 : F) * rho 78432) = ((1 : F) * rho 78443)

def relationRow1115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78444) * ((-1 : F) * rho 78442 + (1 : F) * rho 78443) = ((2 : F) * rho 78441)

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78445) * ((2 : F) + (1 : F) * rho 78442 + (-1 : F) * rho 78443) = ((1 : F) * rho 78442 + (1 : F) * rho 78443)

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78444 + (1 : F) * rho 78445) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 67⟩, ⟨(1 : F), 77582, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78446)

def relationRow1118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78445) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78447)

def relationRow1119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78444) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78448)

def relationRow1120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78447) * ((1 : F) * rho 78448) = ((1 : F) * rho 78449)

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78450) * ((1 : F) + (1 : F) * rho 78449) = ((1 : F) * rho 78447 + (1 : F) * rho 78448)

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78451) * ((1 : F) + (-1 : F) * rho 78449) = ((1 : F) * rho 78446 + (-1 : F) * rho 78447 + (-1 : F) * rho 78448)

def relationRow1123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77397) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 67⟩], residual := [((1 : F), 78450)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78452)

def relationRow1124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77397) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 67⟩], residual := [((1 : F), 78451)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78453)

def relationRow1125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78444) * ((1 : F) * rho 78445) = ((1 : F) * rho 78454)

def relationRow1126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78444) * ((1 : F) * rho 78444) = ((1 : F) * rho 78455)

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78445) * ((1 : F) * rho 78445) = ((1 : F) * rho 78456)

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78457) * ((-1 : F) * rho 78455 + (1 : F) * rho 78456) = ((2 : F) * rho 78454)

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78458) * ((2 : F) + (1 : F) * rho 78455 + (-1 : F) * rho 78456) = ((1 : F) * rho 78455 + (1 : F) * rho 78456)

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78457 + (1 : F) * rho 78458) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 68⟩, ⟨(1 : F), 77582, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78459)

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78458) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78460)

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78457) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78461)

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78460) * ((1 : F) * rho 78461) = ((1 : F) * rho 78462)

def relationRow1134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78463) * ((1 : F) + (1 : F) * rho 78462) = ((1 : F) * rho 78460 + (1 : F) * rho 78461)

def relationRow1135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78464) * ((1 : F) + (-1 : F) * rho 78462) = ((1 : F) * rho 78459 + (-1 : F) * rho 78460 + (-1 : F) * rho 78461)

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77398) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 68⟩], residual := [((1 : F), 78463)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78465)

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77398) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 68⟩], residual := [((1 : F), 78464)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78466)

def relationRow1138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78457) * ((1 : F) * rho 78458) = ((1 : F) * rho 78467)

def relationRow1139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78457) * ((1 : F) * rho 78457) = ((1 : F) * rho 78468)

def relationRow1140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78458) * ((1 : F) * rho 78458) = ((1 : F) * rho 78469)

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78470) * ((-1 : F) * rho 78468 + (1 : F) * rho 78469) = ((2 : F) * rho 78467)

def relationRow1142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78471) * ((2 : F) + (1 : F) * rho 78468 + (-1 : F) * rho 78469) = ((1 : F) * rho 78468 + (1 : F) * rho 78469)

def relationRow1143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78470 + (1 : F) * rho 78471) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 69⟩, ⟨(1 : F), 77582, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78472)

def relationRow1144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78471) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78473)

def relationRow1145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78470) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78474)

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78473) * ((1 : F) * rho 78474) = ((1 : F) * rho 78475)

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78476) * ((1 : F) + (1 : F) * rho 78475) = ((1 : F) * rho 78473 + (1 : F) * rho 78474)

def relationRow1148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78477) * ((1 : F) + (-1 : F) * rho 78475) = ((1 : F) * rho 78472 + (-1 : F) * rho 78473 + (-1 : F) * rho 78474)

def relationRow1149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77399) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 69⟩], residual := [((1 : F), 78476)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78478)

def relationRow1150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77399) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 69⟩], residual := [((1 : F), 78477)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78479)

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78470) * ((1 : F) * rho 78471) = ((1 : F) * rho 78480)

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78470) * ((1 : F) * rho 78470) = ((1 : F) * rho 78481)

def relationRow1153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78471) * ((1 : F) * rho 78471) = ((1 : F) * rho 78482)

def relationRow1154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78483) * ((-1 : F) * rho 78481 + (1 : F) * rho 78482) = ((2 : F) * rho 78480)

def relationRow1155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78484) * ((2 : F) + (1 : F) * rho 78481 + (-1 : F) * rho 78482) = ((1 : F) * rho 78481 + (1 : F) * rho 78482)

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78483 + (1 : F) * rho 78484) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 70⟩, ⟨(1 : F), 77582, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78485)

def relationRow1157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78484) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78486)

def relationRow1158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78483) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78487)

def relationRow1159 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78486) * ((1 : F) * rho 78487) = ((1 : F) * rho 78488)

def relationRow1160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78489) * ((1 : F) + (1 : F) * rho 78488) = ((1 : F) * rho 78486 + (1 : F) * rho 78487)

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78490) * ((1 : F) + (-1 : F) * rho 78488) = ((1 : F) * rho 78485 + (-1 : F) * rho 78486 + (-1 : F) * rho 78487)

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77400) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 70⟩], residual := [((1 : F), 78489)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78491)

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77400) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 70⟩], residual := [((1 : F), 78490)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78492)

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78483) * ((1 : F) * rho 78484) = ((1 : F) * rho 78493)

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78483) * ((1 : F) * rho 78483) = ((1 : F) * rho 78494)

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78484) * ((1 : F) * rho 78484) = ((1 : F) * rho 78495)

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78496) * ((-1 : F) * rho 78494 + (1 : F) * rho 78495) = ((2 : F) * rho 78493)

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78497) * ((2 : F) + (1 : F) * rho 78494 + (-1 : F) * rho 78495) = ((1 : F) * rho 78494 + (1 : F) * rho 78495)

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78496 + (1 : F) * rho 78497) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 71⟩, ⟨(1 : F), 77582, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78498)

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78497) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78499)

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78496) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78500)

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78499) * ((1 : F) * rho 78500) = ((1 : F) * rho 78501)

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78502) * ((1 : F) + (1 : F) * rho 78501) = ((1 : F) * rho 78499 + (1 : F) * rho 78500)

def relationRow1174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78503) * ((1 : F) + (-1 : F) * rho 78501) = ((1 : F) * rho 78498 + (-1 : F) * rho 78499 + (-1 : F) * rho 78500)

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77401) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 71⟩], residual := [((1 : F), 78502)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78504)

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77401) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 71⟩], residual := [((1 : F), 78503)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78505)

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78496) * ((1 : F) * rho 78497) = ((1 : F) * rho 78506)

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78496) * ((1 : F) * rho 78496) = ((1 : F) * rho 78507)

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78497) * ((1 : F) * rho 78497) = ((1 : F) * rho 78508)

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78509) * ((-1 : F) * rho 78507 + (1 : F) * rho 78508) = ((2 : F) * rho 78506)

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78510) * ((2 : F) + (1 : F) * rho 78507 + (-1 : F) * rho 78508) = ((1 : F) * rho 78507 + (1 : F) * rho 78508)

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78509 + (1 : F) * rho 78510) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 72⟩, ⟨(1 : F), 77582, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78511)

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78510) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78512)

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78509) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78513)

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78512) * ((1 : F) * rho 78513) = ((1 : F) * rho 78514)

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78515) * ((1 : F) + (1 : F) * rho 78514) = ((1 : F) * rho 78512 + (1 : F) * rho 78513)

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78516) * ((1 : F) + (-1 : F) * rho 78514) = ((1 : F) * rho 78511 + (-1 : F) * rho 78512 + (-1 : F) * rho 78513)

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77402) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 72⟩], residual := [((1 : F), 78515)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78517)

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77402) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 72⟩], residual := [((1 : F), 78516)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78518)

def relationRow1190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78509) * ((1 : F) * rho 78510) = ((1 : F) * rho 78519)

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78509) * ((1 : F) * rho 78509) = ((1 : F) * rho 78520)

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78510) * ((1 : F) * rho 78510) = ((1 : F) * rho 78521)

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78522) * ((-1 : F) * rho 78520 + (1 : F) * rho 78521) = ((2 : F) * rho 78519)

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78523) * ((2 : F) + (1 : F) * rho 78520 + (-1 : F) * rho 78521) = ((1 : F) * rho 78520 + (1 : F) * rho 78521)

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78522 + (1 : F) * rho 78523) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 73⟩, ⟨(1 : F), 77582, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78524)

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78523) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78525)

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78522) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78526)

def relationRow1198 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78525) * ((1 : F) * rho 78526) = ((1 : F) * rho 78527)

def relationRow1199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78528) * ((1 : F) + (1 : F) * rho 78527) = ((1 : F) * rho 78525 + (1 : F) * rho 78526)

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78529) * ((1 : F) + (-1 : F) * rho 78527) = ((1 : F) * rho 78524 + (-1 : F) * rho 78525 + (-1 : F) * rho 78526)

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77403) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 73⟩], residual := [((1 : F), 78528)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78530)

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77403) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 73⟩], residual := [((1 : F), 78529)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78531)

def relationRow1203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78522) * ((1 : F) * rho 78523) = ((1 : F) * rho 78532)

def relationRow1204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78522) * ((1 : F) * rho 78522) = ((1 : F) * rho 78533)

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78523) * ((1 : F) * rho 78523) = ((1 : F) * rho 78534)

def relationRow1206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78535) * ((-1 : F) * rho 78533 + (1 : F) * rho 78534) = ((2 : F) * rho 78532)

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78536) * ((2 : F) + (1 : F) * rho 78533 + (-1 : F) * rho 78534) = ((1 : F) * rho 78533 + (1 : F) * rho 78534)

def relationRow1208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78535 + (1 : F) * rho 78536) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 74⟩, ⟨(1 : F), 77582, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78537)

def relationRow1209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78536) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78538)

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78535) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78539)

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78538) * ((1 : F) * rho 78539) = ((1 : F) * rho 78540)

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78541) * ((1 : F) + (1 : F) * rho 78540) = ((1 : F) * rho 78538 + (1 : F) * rho 78539)

def relationRow1213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78542) * ((1 : F) + (-1 : F) * rho 78540) = ((1 : F) * rho 78537 + (-1 : F) * rho 78538 + (-1 : F) * rho 78539)

def relationRow1214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77404) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 74⟩], residual := [((1 : F), 78541)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78543)

def relationRow1215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77404) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 74⟩], residual := [((1 : F), 78542)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78544)

def relationRow1216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78535) * ((1 : F) * rho 78536) = ((1 : F) * rho 78545)

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78535) * ((1 : F) * rho 78535) = ((1 : F) * rho 78546)

def relationRow1218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78536) * ((1 : F) * rho 78536) = ((1 : F) * rho 78547)

def relationRow1219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78548) * ((-1 : F) * rho 78546 + (1 : F) * rho 78547) = ((2 : F) * rho 78545)

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78549) * ((2 : F) + (1 : F) * rho 78546 + (-1 : F) * rho 78547) = ((1 : F) * rho 78546 + (1 : F) * rho 78547)

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78548 + (1 : F) * rho 78549) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 75⟩, ⟨(1 : F), 77582, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78550)

def relationRow1222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78549) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78551)

def relationRow1223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78548) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78552)

def relationRow1224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78551) * ((1 : F) * rho 78552) = ((1 : F) * rho 78553)

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78554) * ((1 : F) + (1 : F) * rho 78553) = ((1 : F) * rho 78551 + (1 : F) * rho 78552)

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78555) * ((1 : F) + (-1 : F) * rho 78553) = ((1 : F) * rho 78550 + (-1 : F) * rho 78551 + (-1 : F) * rho 78552)

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77405) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 75⟩], residual := [((1 : F), 78554)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78556)

def relationRow1228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77405) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 75⟩], residual := [((1 : F), 78555)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78557)

def relationRow1229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78548) * ((1 : F) * rho 78549) = ((1 : F) * rho 78558)

def relationRow1230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78548) * ((1 : F) * rho 78548) = ((1 : F) * rho 78559)

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78549) * ((1 : F) * rho 78549) = ((1 : F) * rho 78560)

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78561) * ((-1 : F) * rho 78559 + (1 : F) * rho 78560) = ((2 : F) * rho 78558)

def relationRow1233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78562) * ((2 : F) + (1 : F) * rho 78559 + (-1 : F) * rho 78560) = ((1 : F) * rho 78559 + (1 : F) * rho 78560)

def relationRow1234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78561 + (1 : F) * rho 78562) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 76⟩, ⟨(1 : F), 77582, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78563)

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78562) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78564)

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78561) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78565)

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78564) * ((1 : F) * rho 78565) = ((1 : F) * rho 78566)

def relationRow1238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78567) * ((1 : F) + (1 : F) * rho 78566) = ((1 : F) * rho 78564 + (1 : F) * rho 78565)

def relationRow1239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78568) * ((1 : F) + (-1 : F) * rho 78566) = ((1 : F) * rho 78563 + (-1 : F) * rho 78564 + (-1 : F) * rho 78565)

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77406) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 76⟩], residual := [((1 : F), 78567)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78569)

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77406) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 76⟩], residual := [((1 : F), 78568)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78570)

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78561) * ((1 : F) * rho 78562) = ((1 : F) * rho 78571)

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78561) * ((1 : F) * rho 78561) = ((1 : F) * rho 78572)

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78562) * ((1 : F) * rho 78562) = ((1 : F) * rho 78573)

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78574) * ((-1 : F) * rho 78572 + (1 : F) * rho 78573) = ((2 : F) * rho 78571)

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78575) * ((2 : F) + (1 : F) * rho 78572 + (-1 : F) * rho 78573) = ((1 : F) * rho 78572 + (1 : F) * rho 78573)

def relationRow1247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78574 + (1 : F) * rho 78575) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 77⟩, ⟨(1 : F), 77582, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78576)

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78575) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78577)

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78574) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78578)

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78577) * ((1 : F) * rho 78578) = ((1 : F) * rho 78579)

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78580) * ((1 : F) + (1 : F) * rho 78579) = ((1 : F) * rho 78577 + (1 : F) * rho 78578)

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78581) * ((1 : F) + (-1 : F) * rho 78579) = ((1 : F) * rho 78576 + (-1 : F) * rho 78577 + (-1 : F) * rho 78578)

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 77⟩], residual := [((1 : F), 78580)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78582)

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 77⟩], residual := [((1 : F), 78581)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78583)

def relationRow1255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78574) * ((1 : F) * rho 78575) = ((1 : F) * rho 78584)

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78574) * ((1 : F) * rho 78574) = ((1 : F) * rho 78585)

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78575) * ((1 : F) * rho 78575) = ((1 : F) * rho 78586)

def relationRow1258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78587) * ((-1 : F) * rho 78585 + (1 : F) * rho 78586) = ((2 : F) * rho 78584)

def relationRow1259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78588) * ((2 : F) + (1 : F) * rho 78585 + (-1 : F) * rho 78586) = ((1 : F) * rho 78585 + (1 : F) * rho 78586)

def relationRow1260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78587 + (1 : F) * rho 78588) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 78⟩, ⟨(1 : F), 77582, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78589)

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78588) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78590)

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78587) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78591)

def relationRow1263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78590) * ((1 : F) * rho 78591) = ((1 : F) * rho 78592)

def relationRow1264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78593) * ((1 : F) + (1 : F) * rho 78592) = ((1 : F) * rho 78590 + (1 : F) * rho 78591)

def relationRow1265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78594) * ((1 : F) + (-1 : F) * rho 78592) = ((1 : F) * rho 78589 + (-1 : F) * rho 78590 + (-1 : F) * rho 78591)

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77408) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 78⟩], residual := [((1 : F), 78593)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78595)

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77408) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 78⟩], residual := [((1 : F), 78594)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78596)

def relationRow1268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78587) * ((1 : F) * rho 78588) = ((1 : F) * rho 78597)

def relationRow1269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78587) * ((1 : F) * rho 78587) = ((1 : F) * rho 78598)

def relationRow1270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78588) * ((1 : F) * rho 78588) = ((1 : F) * rho 78599)

def relationRow1271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78600) * ((-1 : F) * rho 78598 + (1 : F) * rho 78599) = ((2 : F) * rho 78597)

def relationRow1272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78601) * ((2 : F) + (1 : F) * rho 78598 + (-1 : F) * rho 78599) = ((1 : F) * rho 78598 + (1 : F) * rho 78599)

def relationRow1273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78600 + (1 : F) * rho 78601) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 79⟩, ⟨(1 : F), 77582, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78602)

def relationRow1274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78601) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78603)

def relationRow1275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78600) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78604)

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78603) * ((1 : F) * rho 78604) = ((1 : F) * rho 78605)

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78606) * ((1 : F) + (1 : F) * rho 78605) = ((1 : F) * rho 78603 + (1 : F) * rho 78604)

def relationRow1278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78607) * ((1 : F) + (-1 : F) * rho 78605) = ((1 : F) * rho 78602 + (-1 : F) * rho 78603 + (-1 : F) * rho 78604)

def relationRow1279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77409) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 79⟩], residual := [((1 : F), 78606)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78608)

def relationRow1280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77409) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 79⟩], residual := [((1 : F), 78607)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78609)

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78600) * ((1 : F) * rho 78601) = ((1 : F) * rho 78610)

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78600) * ((1 : F) * rho 78600) = ((1 : F) * rho 78611)

def relationRow1283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78601) * ((1 : F) * rho 78601) = ((1 : F) * rho 78612)

def relationRow1284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78613) * ((-1 : F) * rho 78611 + (1 : F) * rho 78612) = ((2 : F) * rho 78610)

def relationRow1285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78614) * ((2 : F) + (1 : F) * rho 78611 + (-1 : F) * rho 78612) = ((1 : F) * rho 78611 + (1 : F) * rho 78612)

def relationRow1286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78613 + (1 : F) * rho 78614) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 80⟩, ⟨(1 : F), 77582, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78615)

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78614) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78616)

def relationRow1288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78613) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78617)

def relationRow1289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78616) * ((1 : F) * rho 78617) = ((1 : F) * rho 78618)

def relationRow1290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78619) * ((1 : F) + (1 : F) * rho 78618) = ((1 : F) * rho 78616 + (1 : F) * rho 78617)

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78620) * ((1 : F) + (-1 : F) * rho 78618) = ((1 : F) * rho 78615 + (-1 : F) * rho 78616 + (-1 : F) * rho 78617)

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77410) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 80⟩], residual := [((1 : F), 78619)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78621)

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77410) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 80⟩], residual := [((1 : F), 78620)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78622)

def relationRow1294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78613) * ((1 : F) * rho 78614) = ((1 : F) * rho 78623)

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78613) * ((1 : F) * rho 78613) = ((1 : F) * rho 78624)

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78614) * ((1 : F) * rho 78614) = ((1 : F) * rho 78625)

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78626) * ((-1 : F) * rho 78624 + (1 : F) * rho 78625) = ((2 : F) * rho 78623)

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78627) * ((2 : F) + (1 : F) * rho 78624 + (-1 : F) * rho 78625) = ((1 : F) * rho 78624 + (1 : F) * rho 78625)

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78626 + (1 : F) * rho 78627) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 81⟩, ⟨(1 : F), 77582, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78628)

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78627) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78629)

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78626) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78630)

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78629) * ((1 : F) * rho 78630) = ((1 : F) * rho 78631)

def relationRow1303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78632) * ((1 : F) + (1 : F) * rho 78631) = ((1 : F) * rho 78629 + (1 : F) * rho 78630)

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78633) * ((1 : F) + (-1 : F) * rho 78631) = ((1 : F) * rho 78628 + (-1 : F) * rho 78629 + (-1 : F) * rho 78630)

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77411) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 81⟩], residual := [((1 : F), 78632)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78634)

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77411) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 81⟩], residual := [((1 : F), 78633)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78635)

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78626) * ((1 : F) * rho 78627) = ((1 : F) * rho 78636)

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78626) * ((1 : F) * rho 78626) = ((1 : F) * rho 78637)

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78627) * ((1 : F) * rho 78627) = ((1 : F) * rho 78638)

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78639) * ((-1 : F) * rho 78637 + (1 : F) * rho 78638) = ((2 : F) * rho 78636)

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78640) * ((2 : F) + (1 : F) * rho 78637 + (-1 : F) * rho 78638) = ((1 : F) * rho 78637 + (1 : F) * rho 78638)

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78639 + (1 : F) * rho 78640) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 82⟩, ⟨(1 : F), 77582, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78641)

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78640) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78642)

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78639) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78643)

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78642) * ((1 : F) * rho 78643) = ((1 : F) * rho 78644)

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78645) * ((1 : F) + (1 : F) * rho 78644) = ((1 : F) * rho 78642 + (1 : F) * rho 78643)

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78646) * ((1 : F) + (-1 : F) * rho 78644) = ((1 : F) * rho 78641 + (-1 : F) * rho 78642 + (-1 : F) * rho 78643)

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77412) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 82⟩], residual := [((1 : F), 78645)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78647)

def relationRow1319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77412) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 82⟩], residual := [((1 : F), 78646)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78648)

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78639) * ((1 : F) * rho 78640) = ((1 : F) * rho 78649)

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78639) * ((1 : F) * rho 78639) = ((1 : F) * rho 78650)

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78640) * ((1 : F) * rho 78640) = ((1 : F) * rho 78651)

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78652) * ((-1 : F) * rho 78650 + (1 : F) * rho 78651) = ((2 : F) * rho 78649)

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78653) * ((2 : F) + (1 : F) * rho 78650 + (-1 : F) * rho 78651) = ((1 : F) * rho 78650 + (1 : F) * rho 78651)

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78652 + (1 : F) * rho 78653) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 83⟩, ⟨(1 : F), 77582, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78654)

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78653) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78655)

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78652) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78656)

def relationRow1328 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78655) * ((1 : F) * rho 78656) = ((1 : F) * rho 78657)

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78658) * ((1 : F) + (1 : F) * rho 78657) = ((1 : F) * rho 78655 + (1 : F) * rho 78656)

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78659) * ((1 : F) + (-1 : F) * rho 78657) = ((1 : F) * rho 78654 + (-1 : F) * rho 78655 + (-1 : F) * rho 78656)

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77413) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 83⟩], residual := [((1 : F), 78658)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78660)

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77413) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 83⟩], residual := [((1 : F), 78659)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78661)

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78652) * ((1 : F) * rho 78653) = ((1 : F) * rho 78662)

def relationRow1334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78652) * ((1 : F) * rho 78652) = ((1 : F) * rho 78663)

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78653) * ((1 : F) * rho 78653) = ((1 : F) * rho 78664)

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78665) * ((-1 : F) * rho 78663 + (1 : F) * rho 78664) = ((2 : F) * rho 78662)

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78666) * ((2 : F) + (1 : F) * rho 78663 + (-1 : F) * rho 78664) = ((1 : F) * rho 78663 + (1 : F) * rho 78664)

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78665 + (1 : F) * rho 78666) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 84⟩, ⟨(1 : F), 77582, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78667)

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78666) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78668)

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78665) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78669)

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78668) * ((1 : F) * rho 78669) = ((1 : F) * rho 78670)

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78671) * ((1 : F) + (1 : F) * rho 78670) = ((1 : F) * rho 78668 + (1 : F) * rho 78669)

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78672) * ((1 : F) + (-1 : F) * rho 78670) = ((1 : F) * rho 78667 + (-1 : F) * rho 78668 + (-1 : F) * rho 78669)

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77414) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 84⟩], residual := [((1 : F), 78671)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78673)

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77414) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 84⟩], residual := [((1 : F), 78672)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78674)

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78665) * ((1 : F) * rho 78666) = ((1 : F) * rho 78675)

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78665) * ((1 : F) * rho 78665) = ((1 : F) * rho 78676)

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78666) * ((1 : F) * rho 78666) = ((1 : F) * rho 78677)

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78678) * ((-1 : F) * rho 78676 + (1 : F) * rho 78677) = ((2 : F) * rho 78675)

def relationRow1350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78679) * ((2 : F) + (1 : F) * rho 78676 + (-1 : F) * rho 78677) = ((1 : F) * rho 78676 + (1 : F) * rho 78677)

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78678 + (1 : F) * rho 78679) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 85⟩, ⟨(1 : F), 77582, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78680)

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78679) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78681)

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78678) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78682)

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78681) * ((1 : F) * rho 78682) = ((1 : F) * rho 78683)

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78684) * ((1 : F) + (1 : F) * rho 78683) = ((1 : F) * rho 78681 + (1 : F) * rho 78682)

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78685) * ((1 : F) + (-1 : F) * rho 78683) = ((1 : F) * rho 78680 + (-1 : F) * rho 78681 + (-1 : F) * rho 78682)

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77415) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 85⟩], residual := [((1 : F), 78684)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78686)

def relationRow1358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77415) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 85⟩], residual := [((1 : F), 78685)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78687)

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78678) * ((1 : F) * rho 78679) = ((1 : F) * rho 78688)

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78678) * ((1 : F) * rho 78678) = ((1 : F) * rho 78689)

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78679) * ((1 : F) * rho 78679) = ((1 : F) * rho 78690)

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78691) * ((-1 : F) * rho 78689 + (1 : F) * rho 78690) = ((2 : F) * rho 78688)

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78692) * ((2 : F) + (1 : F) * rho 78689 + (-1 : F) * rho 78690) = ((1 : F) * rho 78689 + (1 : F) * rho 78690)

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78691 + (1 : F) * rho 78692) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 86⟩, ⟨(1 : F), 77582, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78693)

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78692) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78694)

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78691) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78695)

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78694) * ((1 : F) * rho 78695) = ((1 : F) * rho 78696)

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78697) * ((1 : F) + (1 : F) * rho 78696) = ((1 : F) * rho 78694 + (1 : F) * rho 78695)

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78698) * ((1 : F) + (-1 : F) * rho 78696) = ((1 : F) * rho 78693 + (-1 : F) * rho 78694 + (-1 : F) * rho 78695)

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77416) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 86⟩], residual := [((1 : F), 78697)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78699)

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77416) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 86⟩], residual := [((1 : F), 78698)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78700)

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78691) * ((1 : F) * rho 78692) = ((1 : F) * rho 78701)

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78691) * ((1 : F) * rho 78691) = ((1 : F) * rho 78702)

def relationRow1374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78692) * ((1 : F) * rho 78692) = ((1 : F) * rho 78703)

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78704) * ((-1 : F) * rho 78702 + (1 : F) * rho 78703) = ((2 : F) * rho 78701)

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78705) * ((2 : F) + (1 : F) * rho 78702 + (-1 : F) * rho 78703) = ((1 : F) * rho 78702 + (1 : F) * rho 78703)

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78704 + (1 : F) * rho 78705) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 87⟩, ⟨(1 : F), 77582, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78706)

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78705) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78707)

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78704) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78708)

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78707) * ((1 : F) * rho 78708) = ((1 : F) * rho 78709)

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78710) * ((1 : F) + (1 : F) * rho 78709) = ((1 : F) * rho 78707 + (1 : F) * rho 78708)

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78711) * ((1 : F) + (-1 : F) * rho 78709) = ((1 : F) * rho 78706 + (-1 : F) * rho 78707 + (-1 : F) * rho 78708)

def relationRow1383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77417) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 87⟩], residual := [((1 : F), 78710)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78712)

def relationRow1384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77417) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 87⟩], residual := [((1 : F), 78711)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78713)

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78704) * ((1 : F) * rho 78705) = ((1 : F) * rho 78714)

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78704) * ((1 : F) * rho 78704) = ((1 : F) * rho 78715)

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78705) * ((1 : F) * rho 78705) = ((1 : F) * rho 78716)

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78717) * ((-1 : F) * rho 78715 + (1 : F) * rho 78716) = ((2 : F) * rho 78714)

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78718) * ((2 : F) + (1 : F) * rho 78715 + (-1 : F) * rho 78716) = ((1 : F) * rho 78715 + (1 : F) * rho 78716)

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78717 + (1 : F) * rho 78718) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 88⟩, ⟨(1 : F), 77582, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78719)

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78718) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78720)

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78717) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78721)

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78720) * ((1 : F) * rho 78721) = ((1 : F) * rho 78722)

def relationRow1394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78723) * ((1 : F) + (1 : F) * rho 78722) = ((1 : F) * rho 78720 + (1 : F) * rho 78721)

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78724) * ((1 : F) + (-1 : F) * rho 78722) = ((1 : F) * rho 78719 + (-1 : F) * rho 78720 + (-1 : F) * rho 78721)

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77418) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 88⟩], residual := [((1 : F), 78723)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78725)

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77418) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 88⟩], residual := [((1 : F), 78724)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78726)

def relationRow1398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78717) * ((1 : F) * rho 78718) = ((1 : F) * rho 78727)

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78717) * ((1 : F) * rho 78717) = ((1 : F) * rho 78728)

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78718) * ((1 : F) * rho 78718) = ((1 : F) * rho 78729)

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78730) * ((-1 : F) * rho 78728 + (1 : F) * rho 78729) = ((2 : F) * rho 78727)

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78731) * ((2 : F) + (1 : F) * rho 78728 + (-1 : F) * rho 78729) = ((1 : F) * rho 78728 + (1 : F) * rho 78729)

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78730 + (1 : F) * rho 78731) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 89⟩, ⟨(1 : F), 77582, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78732)

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78731) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78733)

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78730) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78734)

def relationRow1406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78733) * ((1 : F) * rho 78734) = ((1 : F) * rho 78735)

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78736) * ((1 : F) + (1 : F) * rho 78735) = ((1 : F) * rho 78733 + (1 : F) * rho 78734)

def relationRow1408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78737) * ((1 : F) + (-1 : F) * rho 78735) = ((1 : F) * rho 78732 + (-1 : F) * rho 78733 + (-1 : F) * rho 78734)

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77419) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 89⟩], residual := [((1 : F), 78736)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78738)

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77419) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 89⟩], residual := [((1 : F), 78737)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78739)

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78730) * ((1 : F) * rho 78731) = ((1 : F) * rho 78740)

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78730) * ((1 : F) * rho 78730) = ((1 : F) * rho 78741)

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78731) * ((1 : F) * rho 78731) = ((1 : F) * rho 78742)

def relationRow1414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78743) * ((-1 : F) * rho 78741 + (1 : F) * rho 78742) = ((2 : F) * rho 78740)

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78744) * ((2 : F) + (1 : F) * rho 78741 + (-1 : F) * rho 78742) = ((1 : F) * rho 78741 + (1 : F) * rho 78742)

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78743 + (1 : F) * rho 78744) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 90⟩, ⟨(1 : F), 77582, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78745)

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78744) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78746)

def relationRow1418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78743) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78747)

def relationRow1419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78746) * ((1 : F) * rho 78747) = ((1 : F) * rho 78748)

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78749) * ((1 : F) + (1 : F) * rho 78748) = ((1 : F) * rho 78746 + (1 : F) * rho 78747)

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78750) * ((1 : F) + (-1 : F) * rho 78748) = ((1 : F) * rho 78745 + (-1 : F) * rho 78746 + (-1 : F) * rho 78747)

def relationRow1422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 90⟩], residual := [((1 : F), 78749)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78751)

def relationRow1423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 90⟩], residual := [((1 : F), 78750)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78752)

def relationRow1424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78743) * ((1 : F) * rho 78744) = ((1 : F) * rho 78753)

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78743) * ((1 : F) * rho 78743) = ((1 : F) * rho 78754)

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78744) * ((1 : F) * rho 78744) = ((1 : F) * rho 78755)

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78756) * ((-1 : F) * rho 78754 + (1 : F) * rho 78755) = ((2 : F) * rho 78753)

def relationRow1428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78757) * ((2 : F) + (1 : F) * rho 78754 + (-1 : F) * rho 78755) = ((1 : F) * rho 78754 + (1 : F) * rho 78755)

def relationRow1429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78756 + (1 : F) * rho 78757) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 91⟩, ⟨(1 : F), 77582, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78758)

def relationRow1430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78757) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78759)

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78756) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78760)

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78759) * ((1 : F) * rho 78760) = ((1 : F) * rho 78761)

def relationRow1433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78762) * ((1 : F) + (1 : F) * rho 78761) = ((1 : F) * rho 78759 + (1 : F) * rho 78760)

def relationRow1434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78763) * ((1 : F) + (-1 : F) * rho 78761) = ((1 : F) * rho 78758 + (-1 : F) * rho 78759 + (-1 : F) * rho 78760)

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77421) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 91⟩], residual := [((1 : F), 78762)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78764)

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77421) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 91⟩], residual := [((1 : F), 78763)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78765)

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78756) * ((1 : F) * rho 78757) = ((1 : F) * rho 78766)

def relationRow1438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78756) * ((1 : F) * rho 78756) = ((1 : F) * rho 78767)

def relationRow1439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78757) * ((1 : F) * rho 78757) = ((1 : F) * rho 78768)

def relationRow1440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78769) * ((-1 : F) * rho 78767 + (1 : F) * rho 78768) = ((2 : F) * rho 78766)

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78770) * ((2 : F) + (1 : F) * rho 78767 + (-1 : F) * rho 78768) = ((1 : F) * rho 78767 + (1 : F) * rho 78768)

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78769 + (1 : F) * rho 78770) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 92⟩, ⟨(1 : F), 77582, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78771)

def relationRow1443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78770) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78772)

def relationRow1444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78769) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78773)

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78772) * ((1 : F) * rho 78773) = ((1 : F) * rho 78774)

def relationRow1446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78775) * ((1 : F) + (1 : F) * rho 78774) = ((1 : F) * rho 78772 + (1 : F) * rho 78773)

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78776) * ((1 : F) + (-1 : F) * rho 78774) = ((1 : F) * rho 78771 + (-1 : F) * rho 78772 + (-1 : F) * rho 78773)

def relationRow1448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77422) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 92⟩], residual := [((1 : F), 78775)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78777)

def relationRow1449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77422) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 92⟩], residual := [((1 : F), 78776)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78778)

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78769) * ((1 : F) * rho 78770) = ((1 : F) * rho 78779)

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78769) * ((1 : F) * rho 78769) = ((1 : F) * rho 78780)

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78770) * ((1 : F) * rho 78770) = ((1 : F) * rho 78781)

def relationRow1453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78782) * ((-1 : F) * rho 78780 + (1 : F) * rho 78781) = ((2 : F) * rho 78779)

def relationRow1454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78783) * ((2 : F) + (1 : F) * rho 78780 + (-1 : F) * rho 78781) = ((1 : F) * rho 78780 + (1 : F) * rho 78781)

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78782 + (1 : F) * rho 78783) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 93⟩, ⟨(1 : F), 77582, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78784)

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78783) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78785)

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78782) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78786)

def relationRow1458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78785) * ((1 : F) * rho 78786) = ((1 : F) * rho 78787)

def relationRow1459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78788) * ((1 : F) + (1 : F) * rho 78787) = ((1 : F) * rho 78785 + (1 : F) * rho 78786)

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78789) * ((1 : F) + (-1 : F) * rho 78787) = ((1 : F) * rho 78784 + (-1 : F) * rho 78785 + (-1 : F) * rho 78786)

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77423) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 93⟩], residual := [((1 : F), 78788)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78790)

def relationRow1462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77423) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 93⟩], residual := [((1 : F), 78789)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78791)

def relationRow1463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78782) * ((1 : F) * rho 78783) = ((1 : F) * rho 78792)

def relationRow1464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78782) * ((1 : F) * rho 78782) = ((1 : F) * rho 78793)

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78783) * ((1 : F) * rho 78783) = ((1 : F) * rho 78794)

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78795) * ((-1 : F) * rho 78793 + (1 : F) * rho 78794) = ((2 : F) * rho 78792)

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78796) * ((2 : F) + (1 : F) * rho 78793 + (-1 : F) * rho 78794) = ((1 : F) * rho 78793 + (1 : F) * rho 78794)

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78795 + (1 : F) * rho 78796) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 94⟩, ⟨(1 : F), 77582, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78797)

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78796) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78798)

def relationRow1470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78795) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78799)

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78798) * ((1 : F) * rho 78799) = ((1 : F) * rho 78800)

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78801) * ((1 : F) + (1 : F) * rho 78800) = ((1 : F) * rho 78798 + (1 : F) * rho 78799)

def relationRow1473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78802) * ((1 : F) + (-1 : F) * rho 78800) = ((1 : F) * rho 78797 + (-1 : F) * rho 78798 + (-1 : F) * rho 78799)

def relationRow1474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77424) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 94⟩], residual := [((1 : F), 78801)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78803)

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77424) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 94⟩], residual := [((1 : F), 78802)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78804)

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78795) * ((1 : F) * rho 78796) = ((1 : F) * rho 78805)

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78795) * ((1 : F) * rho 78795) = ((1 : F) * rho 78806)

def relationRow1478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78796) * ((1 : F) * rho 78796) = ((1 : F) * rho 78807)

def relationRow1479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78808) * ((-1 : F) * rho 78806 + (1 : F) * rho 78807) = ((2 : F) * rho 78805)

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78809) * ((2 : F) + (1 : F) * rho 78806 + (-1 : F) * rho 78807) = ((1 : F) * rho 78806 + (1 : F) * rho 78807)

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78808 + (1 : F) * rho 78809) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 95⟩, ⟨(1 : F), 77582, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78810)

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78809) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78811)

def relationRow1483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78808) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78812)

def relationRow1484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78811) * ((1 : F) * rho 78812) = ((1 : F) * rho 78813)

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78814) * ((1 : F) + (1 : F) * rho 78813) = ((1 : F) * rho 78811 + (1 : F) * rho 78812)

def relationRow1486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78815) * ((1 : F) + (-1 : F) * rho 78813) = ((1 : F) * rho 78810 + (-1 : F) * rho 78811 + (-1 : F) * rho 78812)

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77425) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 95⟩], residual := [((1 : F), 78814)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78816)

def relationRow1488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77425) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 95⟩], residual := [((1 : F), 78815)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78817)

def relationRow1489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78808) * ((1 : F) * rho 78809) = ((1 : F) * rho 78818)

def relationRow1490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78808) * ((1 : F) * rho 78808) = ((1 : F) * rho 78819)

def relationRow1491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78809) * ((1 : F) * rho 78809) = ((1 : F) * rho 78820)

def relationRow1492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78821) * ((-1 : F) * rho 78819 + (1 : F) * rho 78820) = ((2 : F) * rho 78818)

def relationRow1493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78822) * ((2 : F) + (1 : F) * rho 78819 + (-1 : F) * rho 78820) = ((1 : F) * rho 78819 + (1 : F) * rho 78820)

def relationRow1494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78821 + (1 : F) * rho 78822) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 96⟩, ⟨(1 : F), 77582, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78823)

def relationRow1495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78822) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78824)

def relationRow1496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78821) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78825)

def relationRow1497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78824) * ((1 : F) * rho 78825) = ((1 : F) * rho 78826)

def relationRow1498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78827) * ((1 : F) + (1 : F) * rho 78826) = ((1 : F) * rho 78824 + (1 : F) * rho 78825)

def relationRow1499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78828) * ((1 : F) + (-1 : F) * rho 78826) = ((1 : F) * rho 78823 + (-1 : F) * rho 78824 + (-1 : F) * rho 78825)

def relationRow1500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77426) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 96⟩], residual := [((1 : F), 78827)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78829)

def relationRow1501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77426) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 96⟩], residual := [((1 : F), 78828)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78830)

def relationRow1502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78821) * ((1 : F) * rho 78822) = ((1 : F) * rho 78831)

def relationRow1503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78821) * ((1 : F) * rho 78821) = ((1 : F) * rho 78832)

def relationRow1504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78822) * ((1 : F) * rho 78822) = ((1 : F) * rho 78833)

def relationRow1505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78834) * ((-1 : F) * rho 78832 + (1 : F) * rho 78833) = ((2 : F) * rho 78831)

def relationRow1506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78835) * ((2 : F) + (1 : F) * rho 78832 + (-1 : F) * rho 78833) = ((1 : F) * rho 78832 + (1 : F) * rho 78833)

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78834 + (1 : F) * rho 78835) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 97⟩, ⟨(1 : F), 77582, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78836)

def relationRow1508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78835) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78837)

def relationRow1509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78834) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78838)

def relationRow1510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78837) * ((1 : F) * rho 78838) = ((1 : F) * rho 78839)

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78840) * ((1 : F) + (1 : F) * rho 78839) = ((1 : F) * rho 78837 + (1 : F) * rho 78838)

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78841) * ((1 : F) + (-1 : F) * rho 78839) = ((1 : F) * rho 78836 + (-1 : F) * rho 78837 + (-1 : F) * rho 78838)

def relationRow1513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77427) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 97⟩], residual := [((1 : F), 78840)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78842)

def relationRow1514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77427) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 97⟩], residual := [((1 : F), 78841)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78843)

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78834) * ((1 : F) * rho 78835) = ((1 : F) * rho 78844)

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78834) * ((1 : F) * rho 78834) = ((1 : F) * rho 78845)

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78835) * ((1 : F) * rho 78835) = ((1 : F) * rho 78846)

def relationRow1518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78847) * ((-1 : F) * rho 78845 + (1 : F) * rho 78846) = ((2 : F) * rho 78844)

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78848) * ((2 : F) + (1 : F) * rho 78845 + (-1 : F) * rho 78846) = ((1 : F) * rho 78845 + (1 : F) * rho 78846)

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78847 + (1 : F) * rho 78848) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 98⟩, ⟨(1 : F), 77582, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78849)

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78848) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78850)

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78847) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78851)

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78850) * ((1 : F) * rho 78851) = ((1 : F) * rho 78852)

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78853) * ((1 : F) + (1 : F) * rho 78852) = ((1 : F) * rho 78850 + (1 : F) * rho 78851)

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78854) * ((1 : F) + (-1 : F) * rho 78852) = ((1 : F) * rho 78849 + (-1 : F) * rho 78850 + (-1 : F) * rho 78851)

def relationRow1526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77428) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 98⟩], residual := [((1 : F), 78853)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78855)

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77428) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 98⟩], residual := [((1 : F), 78854)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78856)

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78847) * ((1 : F) * rho 78848) = ((1 : F) * rho 78857)

def relationRow1529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78847) * ((1 : F) * rho 78847) = ((1 : F) * rho 78858)

def relationRow1530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78848) * ((1 : F) * rho 78848) = ((1 : F) * rho 78859)

def relationRow1531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78860) * ((-1 : F) * rho 78858 + (1 : F) * rho 78859) = ((2 : F) * rho 78857)

def relationRow1532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78861) * ((2 : F) + (1 : F) * rho 78858 + (-1 : F) * rho 78859) = ((1 : F) * rho 78858 + (1 : F) * rho 78859)

def relationRow1533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78860 + (1 : F) * rho 78861) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 99⟩, ⟨(1 : F), 77582, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78862)

def relationRow1534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78861) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78863)

def relationRow1535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78860) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78864)

def relationRow1536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78863) * ((1 : F) * rho 78864) = ((1 : F) * rho 78865)

def relationRow1537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78866) * ((1 : F) + (1 : F) * rho 78865) = ((1 : F) * rho 78863 + (1 : F) * rho 78864)

def relationRow1538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78867) * ((1 : F) + (-1 : F) * rho 78865) = ((1 : F) * rho 78862 + (-1 : F) * rho 78863 + (-1 : F) * rho 78864)

def relationRow1539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77429) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 99⟩], residual := [((1 : F), 78866)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78868)

def relationRow1540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77429) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 99⟩], residual := [((1 : F), 78867)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78869)

def relationRow1541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78860) * ((1 : F) * rho 78861) = ((1 : F) * rho 78870)

def relationRow1542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78860) * ((1 : F) * rho 78860) = ((1 : F) * rho 78871)

def relationRow1543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78861) * ((1 : F) * rho 78861) = ((1 : F) * rho 78872)

def relationRow1544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78873) * ((-1 : F) * rho 78871 + (1 : F) * rho 78872) = ((2 : F) * rho 78870)

def relationRow1545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78874) * ((2 : F) + (1 : F) * rho 78871 + (-1 : F) * rho 78872) = ((1 : F) * rho 78871 + (1 : F) * rho 78872)

def relationRow1546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78873 + (1 : F) * rho 78874) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 100⟩, ⟨(1 : F), 77582, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78875)

def relationRow1547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78874) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78876)

def relationRow1548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78873) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78877)

def relationRow1549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78876) * ((1 : F) * rho 78877) = ((1 : F) * rho 78878)

def relationRow1550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78879) * ((1 : F) + (1 : F) * rho 78878) = ((1 : F) * rho 78876 + (1 : F) * rho 78877)

def relationRow1551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78880) * ((1 : F) + (-1 : F) * rho 78878) = ((1 : F) * rho 78875 + (-1 : F) * rho 78876 + (-1 : F) * rho 78877)

def relationRow1552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77430) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 100⟩], residual := [((1 : F), 78879)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78881)

def relationRow1553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77430) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 100⟩], residual := [((1 : F), 78880)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78882)

def relationRow1554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78873) * ((1 : F) * rho 78874) = ((1 : F) * rho 78883)

def relationRow1555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78873) * ((1 : F) * rho 78873) = ((1 : F) * rho 78884)

def relationRow1556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78874) * ((1 : F) * rho 78874) = ((1 : F) * rho 78885)

def relationRow1557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78886) * ((-1 : F) * rho 78884 + (1 : F) * rho 78885) = ((2 : F) * rho 78883)

def relationRow1558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78887) * ((2 : F) + (1 : F) * rho 78884 + (-1 : F) * rho 78885) = ((1 : F) * rho 78884 + (1 : F) * rho 78885)

def relationRow1559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78886 + (1 : F) * rho 78887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 101⟩, ⟨(1 : F), 77582, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78888)

def relationRow1560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78889)

def relationRow1561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78890)

def relationRow1562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78889) * ((1 : F) * rho 78890) = ((1 : F) * rho 78891)

def relationRow1563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78892) * ((1 : F) + (1 : F) * rho 78891) = ((1 : F) * rho 78889 + (1 : F) * rho 78890)

def relationRow1564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78893) * ((1 : F) + (-1 : F) * rho 78891) = ((1 : F) * rho 78888 + (-1 : F) * rho 78889 + (-1 : F) * rho 78890)

def relationRow1565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77431) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 101⟩], residual := [((1 : F), 78892)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78894)

def relationRow1566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77431) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 101⟩], residual := [((1 : F), 78893)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78895)

def relationRow1567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78886) * ((1 : F) * rho 78887) = ((1 : F) * rho 78896)

def relationRow1568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78886) * ((1 : F) * rho 78886) = ((1 : F) * rho 78897)

def relationRow1569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78887) * ((1 : F) * rho 78887) = ((1 : F) * rho 78898)

def relationRow1570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78899) * ((-1 : F) * rho 78897 + (1 : F) * rho 78898) = ((2 : F) * rho 78896)

def relationRow1571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78900) * ((2 : F) + (1 : F) * rho 78897 + (-1 : F) * rho 78898) = ((1 : F) * rho 78897 + (1 : F) * rho 78898)

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78899 + (1 : F) * rho 78900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 102⟩, ⟨(1 : F), 77582, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78901)

def relationRow1573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78902)

def relationRow1574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78899) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78903)

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78902) * ((1 : F) * rho 78903) = ((1 : F) * rho 78904)

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78905) * ((1 : F) + (1 : F) * rho 78904) = ((1 : F) * rho 78902 + (1 : F) * rho 78903)

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78906) * ((1 : F) + (-1 : F) * rho 78904) = ((1 : F) * rho 78901 + (-1 : F) * rho 78902 + (-1 : F) * rho 78903)

def relationRow1578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77432) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 102⟩], residual := [((1 : F), 78905)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78907)

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77432) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 102⟩], residual := [((1 : F), 78906)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78908)

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78899) * ((1 : F) * rho 78900) = ((1 : F) * rho 78909)

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78899) * ((1 : F) * rho 78899) = ((1 : F) * rho 78910)

def relationRow1582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78900) * ((1 : F) * rho 78900) = ((1 : F) * rho 78911)

def relationRow1583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78912) * ((-1 : F) * rho 78910 + (1 : F) * rho 78911) = ((2 : F) * rho 78909)

def relationRow1584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78913) * ((2 : F) + (1 : F) * rho 78910 + (-1 : F) * rho 78911) = ((1 : F) * rho 78910 + (1 : F) * rho 78911)

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78912 + (1 : F) * rho 78913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 103⟩, ⟨(1 : F), 77582, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78914)

def relationRow1586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78915)

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78916)

def relationRow1588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78915) * ((1 : F) * rho 78916) = ((1 : F) * rho 78917)

def relationRow1589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78918) * ((1 : F) + (1 : F) * rho 78917) = ((1 : F) * rho 78915 + (1 : F) * rho 78916)

def relationRow1590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78919) * ((1 : F) + (-1 : F) * rho 78917) = ((1 : F) * rho 78914 + (-1 : F) * rho 78915 + (-1 : F) * rho 78916)

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 103⟩], residual := [((1 : F), 78918)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78920)

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 103⟩], residual := [((1 : F), 78919)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78921)

def relationRow1593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78912) * ((1 : F) * rho 78913) = ((1 : F) * rho 78922)

def relationRow1594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78912) * ((1 : F) * rho 78912) = ((1 : F) * rho 78923)

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78913) * ((1 : F) * rho 78913) = ((1 : F) * rho 78924)

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78925) * ((-1 : F) * rho 78923 + (1 : F) * rho 78924) = ((2 : F) * rho 78922)

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78926) * ((2 : F) + (1 : F) * rho 78923 + (-1 : F) * rho 78924) = ((1 : F) * rho 78923 + (1 : F) * rho 78924)

def relationRow1598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78925 + (1 : F) * rho 78926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 104⟩, ⟨(1 : F), 77582, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78927)

def relationRow1599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78928)

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78929)

def relationRow1601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78928) * ((1 : F) * rho 78929) = ((1 : F) * rho 78930)

def relationRow1602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78931) * ((1 : F) + (1 : F) * rho 78930) = ((1 : F) * rho 78928 + (1 : F) * rho 78929)

def relationRow1603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78932) * ((1 : F) + (-1 : F) * rho 78930) = ((1 : F) * rho 78927 + (-1 : F) * rho 78928 + (-1 : F) * rho 78929)

def relationRow1604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77434) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 104⟩], residual := [((1 : F), 78931)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78933)

def relationRow1605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77434) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 104⟩], residual := [((1 : F), 78932)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78934)

def relationRow1606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78925) * ((1 : F) * rho 78926) = ((1 : F) * rho 78935)

def relationRow1607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78925) * ((1 : F) * rho 78925) = ((1 : F) * rho 78936)

def relationRow1608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78926) * ((1 : F) * rho 78926) = ((1 : F) * rho 78937)

def relationRow1609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78938) * ((-1 : F) * rho 78936 + (1 : F) * rho 78937) = ((2 : F) * rho 78935)

def relationRow1610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78939) * ((2 : F) + (1 : F) * rho 78936 + (-1 : F) * rho 78937) = ((1 : F) * rho 78936 + (1 : F) * rho 78937)

def relationRow1611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78938 + (1 : F) * rho 78939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 105⟩, ⟨(1 : F), 77582, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78940)

def relationRow1612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78941)

def relationRow1613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78942)

def relationRow1614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78941) * ((1 : F) * rho 78942) = ((1 : F) * rho 78943)

def relationRow1615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78944) * ((1 : F) + (1 : F) * rho 78943) = ((1 : F) * rho 78941 + (1 : F) * rho 78942)

def relationRow1616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78945) * ((1 : F) + (-1 : F) * rho 78943) = ((1 : F) * rho 78940 + (-1 : F) * rho 78941 + (-1 : F) * rho 78942)

def relationRow1617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77435) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 105⟩], residual := [((1 : F), 78944)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78946)

def relationRow1618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77435) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 105⟩], residual := [((1 : F), 78945)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78947)

def relationRow1619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78938) * ((1 : F) * rho 78939) = ((1 : F) * rho 78948)

def relationRow1620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78938) * ((1 : F) * rho 78938) = ((1 : F) * rho 78949)

def relationRow1621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78939) * ((1 : F) * rho 78939) = ((1 : F) * rho 78950)

def relationRow1622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78951) * ((-1 : F) * rho 78949 + (1 : F) * rho 78950) = ((2 : F) * rho 78948)

def relationRow1623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78952) * ((2 : F) + (1 : F) * rho 78949 + (-1 : F) * rho 78950) = ((1 : F) * rho 78949 + (1 : F) * rho 78950)

def relationRow1624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78951 + (1 : F) * rho 78952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 106⟩, ⟨(1 : F), 77582, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78953)

def relationRow1625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78954)

def relationRow1626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78955)

def relationRow1627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78954) * ((1 : F) * rho 78955) = ((1 : F) * rho 78956)

def relationRow1628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78957) * ((1 : F) + (1 : F) * rho 78956) = ((1 : F) * rho 78954 + (1 : F) * rho 78955)

def relationRow1629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78958) * ((1 : F) + (-1 : F) * rho 78956) = ((1 : F) * rho 78953 + (-1 : F) * rho 78954 + (-1 : F) * rho 78955)

def relationRow1630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77436) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 106⟩], residual := [((1 : F), 78957)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78959)

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77436) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 106⟩], residual := [((1 : F), 78958)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78960)

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78951) * ((1 : F) * rho 78952) = ((1 : F) * rho 78961)

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78951) * ((1 : F) * rho 78951) = ((1 : F) * rho 78962)

def relationRow1634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78952) * ((1 : F) * rho 78952) = ((1 : F) * rho 78963)

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78964) * ((-1 : F) * rho 78962 + (1 : F) * rho 78963) = ((2 : F) * rho 78961)

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78965) * ((2 : F) + (1 : F) * rho 78962 + (-1 : F) * rho 78963) = ((1 : F) * rho 78962 + (1 : F) * rho 78963)

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78964 + (1 : F) * rho 78965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 107⟩, ⟨(1 : F), 77582, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78966)

def relationRow1638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78967)

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78968)

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78967) * ((1 : F) * rho 78968) = ((1 : F) * rho 78969)

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78970) * ((1 : F) + (1 : F) * rho 78969) = ((1 : F) * rho 78967 + (1 : F) * rho 78968)

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78971) * ((1 : F) + (-1 : F) * rho 78969) = ((1 : F) * rho 78966 + (-1 : F) * rho 78967 + (-1 : F) * rho 78968)

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77437) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 107⟩], residual := [((1 : F), 78970)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78972)

def relationRow1644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77437) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 107⟩], residual := [((1 : F), 78971)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78973)

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78964) * ((1 : F) * rho 78965) = ((1 : F) * rho 78974)

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78964) * ((1 : F) * rho 78964) = ((1 : F) * rho 78975)

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78965) * ((1 : F) * rho 78965) = ((1 : F) * rho 78976)

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78977) * ((-1 : F) * rho 78975 + (1 : F) * rho 78976) = ((2 : F) * rho 78974)

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78978) * ((2 : F) + (1 : F) * rho 78975 + (-1 : F) * rho 78976) = ((1 : F) * rho 78975 + (1 : F) * rho 78976)

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78977 + (1 : F) * rho 78978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 108⟩, ⟨(1 : F), 77582, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78979)

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78980)

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78981)

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78980) * ((1 : F) * rho 78981) = ((1 : F) * rho 78982)

def relationRow1654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78983) * ((1 : F) + (1 : F) * rho 78982) = ((1 : F) * rho 78980 + (1 : F) * rho 78981)

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78984) * ((1 : F) + (-1 : F) * rho 78982) = ((1 : F) * rho 78979 + (-1 : F) * rho 78980 + (-1 : F) * rho 78981)

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77438) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 108⟩], residual := [((1 : F), 78983)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78985)

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77438) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 108⟩], residual := [((1 : F), 78984)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78986)

def relationRow1658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78977) * ((1 : F) * rho 78978) = ((1 : F) * rho 78987)

def relationRow1659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78977) * ((1 : F) * rho 78977) = ((1 : F) * rho 78988)

def relationRow1660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78978) * ((1 : F) * rho 78978) = ((1 : F) * rho 78989)

def relationRow1661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78990) * ((-1 : F) * rho 78988 + (1 : F) * rho 78989) = ((2 : F) * rho 78987)

def relationRow1662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78991) * ((2 : F) + (1 : F) * rho 78988 + (-1 : F) * rho 78989) = ((1 : F) * rho 78988 + (1 : F) * rho 78989)

def relationRow1663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78990 + (1 : F) * rho 78991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 109⟩, ⟨(1 : F), 77582, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78992)

def relationRow1664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78993)

def relationRow1665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78994)

def relationRow1666 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78993) * ((1 : F) * rho 78994) = ((1 : F) * rho 78995)

def relationRow1667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78996) * ((1 : F) + (1 : F) * rho 78995) = ((1 : F) * rho 78993 + (1 : F) * rho 78994)

def relationRow1668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78997) * ((1 : F) + (-1 : F) * rho 78995) = ((1 : F) * rho 78992 + (-1 : F) * rho 78993 + (-1 : F) * rho 78994)

def relationRow1669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77439) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 109⟩], residual := [((1 : F), 78996)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78998)

def relationRow1670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77439) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 109⟩], residual := [((1 : F), 78997)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78999)

def relationRow1671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78990) * ((1 : F) * rho 78991) = ((1 : F) * rho 79000)

def relationRow1672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78990) * ((1 : F) * rho 78990) = ((1 : F) * rho 79001)

def relationRow1673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78991) * ((1 : F) * rho 78991) = ((1 : F) * rho 79002)

def relationRow1674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79003) * ((-1 : F) * rho 79001 + (1 : F) * rho 79002) = ((2 : F) * rho 79000)

def relationRow1675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79004) * ((2 : F) + (1 : F) * rho 79001 + (-1 : F) * rho 79002) = ((1 : F) * rho 79001 + (1 : F) * rho 79002)

def relationRow1676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79003 + (1 : F) * rho 79004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 110⟩, ⟨(1 : F), 77582, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79005)

def relationRow1677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79006)

def relationRow1678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79007)

def relationRow1679 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79006) * ((1 : F) * rho 79007) = ((1 : F) * rho 79008)

def relationRow1680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79009) * ((1 : F) + (1 : F) * rho 79008) = ((1 : F) * rho 79006 + (1 : F) * rho 79007)

def relationRow1681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79010) * ((1 : F) + (-1 : F) * rho 79008) = ((1 : F) * rho 79005 + (-1 : F) * rho 79006 + (-1 : F) * rho 79007)

def relationRow1682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77440) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 110⟩], residual := [((1 : F), 79009)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79011)

def relationRow1683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77440) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 110⟩], residual := [((1 : F), 79010)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79012)

def relationRow1684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79003) * ((1 : F) * rho 79004) = ((1 : F) * rho 79013)

def relationRow1685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79003) * ((1 : F) * rho 79003) = ((1 : F) * rho 79014)

def relationRow1686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79004) * ((1 : F) * rho 79004) = ((1 : F) * rho 79015)

def relationRow1687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79016) * ((-1 : F) * rho 79014 + (1 : F) * rho 79015) = ((2 : F) * rho 79013)

def relationRow1688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79017) * ((2 : F) + (1 : F) * rho 79014 + (-1 : F) * rho 79015) = ((1 : F) * rho 79014 + (1 : F) * rho 79015)

def relationRow1689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79016 + (1 : F) * rho 79017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 111⟩, ⟨(1 : F), 77582, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79018)

def relationRow1690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79019)

def relationRow1691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79020)

def relationRow1692 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79019) * ((1 : F) * rho 79020) = ((1 : F) * rho 79021)

def relationRow1693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79022) * ((1 : F) + (1 : F) * rho 79021) = ((1 : F) * rho 79019 + (1 : F) * rho 79020)

def relationRow1694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79023) * ((1 : F) + (-1 : F) * rho 79021) = ((1 : F) * rho 79018 + (-1 : F) * rho 79019 + (-1 : F) * rho 79020)

def relationRow1695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77441) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 111⟩], residual := [((1 : F), 79022)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79024)

def relationRow1696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77441) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 111⟩], residual := [((1 : F), 79023)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79025)

def relationRow1697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79016) * ((1 : F) * rho 79017) = ((1 : F) * rho 79026)

def relationRow1698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79016) * ((1 : F) * rho 79016) = ((1 : F) * rho 79027)

def relationRow1699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79017) * ((1 : F) * rho 79017) = ((1 : F) * rho 79028)

def relationRow1700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79029) * ((-1 : F) * rho 79027 + (1 : F) * rho 79028) = ((2 : F) * rho 79026)

def relationRow1701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79030) * ((2 : F) + (1 : F) * rho 79027 + (-1 : F) * rho 79028) = ((1 : F) * rho 79027 + (1 : F) * rho 79028)

def relationRow1702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79029 + (1 : F) * rho 79030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 112⟩, ⟨(1 : F), 77582, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79031)

def relationRow1703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79032)

def relationRow1704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79033)

def relationRow1705 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79032) * ((1 : F) * rho 79033) = ((1 : F) * rho 79034)

def relationRow1706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79035) * ((1 : F) + (1 : F) * rho 79034) = ((1 : F) * rho 79032 + (1 : F) * rho 79033)

def relationRow1707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79036) * ((1 : F) + (-1 : F) * rho 79034) = ((1 : F) * rho 79031 + (-1 : F) * rho 79032 + (-1 : F) * rho 79033)

def relationRow1708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77442) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 112⟩], residual := [((1 : F), 79035)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79037)

def relationRow1709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77442) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 112⟩], residual := [((1 : F), 79036)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79038)

def relationRow1710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79029) * ((1 : F) * rho 79030) = ((1 : F) * rho 79039)

def relationRow1711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79029) * ((1 : F) * rho 79029) = ((1 : F) * rho 79040)

def relationRow1712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79030) * ((1 : F) * rho 79030) = ((1 : F) * rho 79041)

def relationRow1713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79042) * ((-1 : F) * rho 79040 + (1 : F) * rho 79041) = ((2 : F) * rho 79039)

def relationRow1714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79043) * ((2 : F) + (1 : F) * rho 79040 + (-1 : F) * rho 79041) = ((1 : F) * rho 79040 + (1 : F) * rho 79041)

def relationRow1715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79042 + (1 : F) * rho 79043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 113⟩, ⟨(1 : F), 77582, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79044)

def relationRow1716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79045)

def relationRow1717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79046)

def relationRow1718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79045) * ((1 : F) * rho 79046) = ((1 : F) * rho 79047)

def relationRow1719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79048) * ((1 : F) + (1 : F) * rho 79047) = ((1 : F) * rho 79045 + (1 : F) * rho 79046)

def relationRow1720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79049) * ((1 : F) + (-1 : F) * rho 79047) = ((1 : F) * rho 79044 + (-1 : F) * rho 79045 + (-1 : F) * rho 79046)

def relationRow1721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77443) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 113⟩], residual := [((1 : F), 79048)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79050)

def relationRow1722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77443) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 113⟩], residual := [((1 : F), 79049)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79051)

def relationRow1723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79042) * ((1 : F) * rho 79043) = ((1 : F) * rho 79052)

def relationRow1724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79042) * ((1 : F) * rho 79042) = ((1 : F) * rho 79053)

def relationRow1725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79043) * ((1 : F) * rho 79043) = ((1 : F) * rho 79054)

def relationRow1726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79055) * ((-1 : F) * rho 79053 + (1 : F) * rho 79054) = ((2 : F) * rho 79052)

def relationRow1727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79056) * ((2 : F) + (1 : F) * rho 79053 + (-1 : F) * rho 79054) = ((1 : F) * rho 79053 + (1 : F) * rho 79054)

def relationRow1728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79055 + (1 : F) * rho 79056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 114⟩, ⟨(1 : F), 77582, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79057)

def relationRow1729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79058)

def relationRow1730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79059)

def relationRow1731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79058) * ((1 : F) * rho 79059) = ((1 : F) * rho 79060)

def relationRow1732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79061) * ((1 : F) + (1 : F) * rho 79060) = ((1 : F) * rho 79058 + (1 : F) * rho 79059)

def relationRow1733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79062) * ((1 : F) + (-1 : F) * rho 79060) = ((1 : F) * rho 79057 + (-1 : F) * rho 79058 + (-1 : F) * rho 79059)

def relationRow1734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77444) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 114⟩], residual := [((1 : F), 79061)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79063)

def relationRow1735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77444) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 114⟩], residual := [((1 : F), 79062)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79064)

def relationRow1736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79055) * ((1 : F) * rho 79056) = ((1 : F) * rho 79065)

def relationRow1737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79055) * ((1 : F) * rho 79055) = ((1 : F) * rho 79066)

def relationRow1738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79056) * ((1 : F) * rho 79056) = ((1 : F) * rho 79067)

def relationRow1739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79068) * ((-1 : F) * rho 79066 + (1 : F) * rho 79067) = ((2 : F) * rho 79065)

def relationRow1740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79069) * ((2 : F) + (1 : F) * rho 79066 + (-1 : F) * rho 79067) = ((1 : F) * rho 79066 + (1 : F) * rho 79067)

def relationRow1741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79068 + (1 : F) * rho 79069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 115⟩, ⟨(1 : F), 77582, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79070)

def relationRow1742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79071)

def relationRow1743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79072)

def relationRow1744 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79071) * ((1 : F) * rho 79072) = ((1 : F) * rho 79073)

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79074) * ((1 : F) + (1 : F) * rho 79073) = ((1 : F) * rho 79071 + (1 : F) * rho 79072)

def relationRow1746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79075) * ((1 : F) + (-1 : F) * rho 79073) = ((1 : F) * rho 79070 + (-1 : F) * rho 79071 + (-1 : F) * rho 79072)

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77445) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 115⟩], residual := [((1 : F), 79074)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79076)

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77445) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 115⟩], residual := [((1 : F), 79075)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79077)

def relationRow1749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79068) * ((1 : F) * rho 79069) = ((1 : F) * rho 79078)

def relationRow1750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79068) * ((1 : F) * rho 79068) = ((1 : F) * rho 79079)

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79069) * ((1 : F) * rho 79069) = ((1 : F) * rho 79080)

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79081) * ((-1 : F) * rho 79079 + (1 : F) * rho 79080) = ((2 : F) * rho 79078)

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79082) * ((2 : F) + (1 : F) * rho 79079 + (-1 : F) * rho 79080) = ((1 : F) * rho 79079 + (1 : F) * rho 79080)

def relationRow1754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79081 + (1 : F) * rho 79082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 116⟩, ⟨(1 : F), 77582, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79083)

def relationRow1755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79084)

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79085)

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79084) * ((1 : F) * rho 79085) = ((1 : F) * rho 79086)

def relationRow1758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79087) * ((1 : F) + (1 : F) * rho 79086) = ((1 : F) * rho 79084 + (1 : F) * rho 79085)

def relationRow1759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79088) * ((1 : F) + (-1 : F) * rho 79086) = ((1 : F) * rho 79083 + (-1 : F) * rho 79084 + (-1 : F) * rho 79085)

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 116⟩], residual := [((1 : F), 79087)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79089)

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 116⟩], residual := [((1 : F), 79088)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79090)

def relationRow1762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79081) * ((1 : F) * rho 79082) = ((1 : F) * rho 79091)

def relationRow1763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79081) * ((1 : F) * rho 79081) = ((1 : F) * rho 79092)

def relationRow1764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79082) * ((1 : F) * rho 79082) = ((1 : F) * rho 79093)

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79094) * ((-1 : F) * rho 79092 + (1 : F) * rho 79093) = ((2 : F) * rho 79091)

def relationRow1766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79095) * ((2 : F) + (1 : F) * rho 79092 + (-1 : F) * rho 79093) = ((1 : F) * rho 79092 + (1 : F) * rho 79093)

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79094 + (1 : F) * rho 79095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 117⟩, ⟨(1 : F), 77582, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79096)

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79097)

def relationRow1769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79098)

def relationRow1770 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79097) * ((1 : F) * rho 79098) = ((1 : F) * rho 79099)

def relationRow1771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79100) * ((1 : F) + (1 : F) * rho 79099) = ((1 : F) * rho 79097 + (1 : F) * rho 79098)

def relationRow1772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79101) * ((1 : F) + (-1 : F) * rho 79099) = ((1 : F) * rho 79096 + (-1 : F) * rho 79097 + (-1 : F) * rho 79098)

def relationRow1773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77447) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 117⟩], residual := [((1 : F), 79100)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79102)

def relationRow1774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77447) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 117⟩], residual := [((1 : F), 79101)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79103)

def relationRow1775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79094) * ((1 : F) * rho 79095) = ((1 : F) * rho 79104)

def relationRow1776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79094) * ((1 : F) * rho 79094) = ((1 : F) * rho 79105)

def relationRow1777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79095) * ((1 : F) * rho 79095) = ((1 : F) * rho 79106)

def relationRow1778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79107) * ((-1 : F) * rho 79105 + (1 : F) * rho 79106) = ((2 : F) * rho 79104)

def relationRow1779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79108) * ((2 : F) + (1 : F) * rho 79105 + (-1 : F) * rho 79106) = ((1 : F) * rho 79105 + (1 : F) * rho 79106)

def relationRow1780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79107 + (1 : F) * rho 79108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 118⟩, ⟨(1 : F), 77582, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79109)

def relationRow1781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79110)

def relationRow1782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79111)

def relationRow1783 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79110) * ((1 : F) * rho 79111) = ((1 : F) * rho 79112)

def relationRow1784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79113) * ((1 : F) + (1 : F) * rho 79112) = ((1 : F) * rho 79110 + (1 : F) * rho 79111)

def relationRow1785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79114) * ((1 : F) + (-1 : F) * rho 79112) = ((1 : F) * rho 79109 + (-1 : F) * rho 79110 + (-1 : F) * rho 79111)

def relationRow1786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77448) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 118⟩], residual := [((1 : F), 79113)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79115)

def relationRow1787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77448) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 118⟩], residual := [((1 : F), 79114)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79116)

def relationRow1788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79107) * ((1 : F) * rho 79108) = ((1 : F) * rho 79117)

def relationRow1789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79107) * ((1 : F) * rho 79107) = ((1 : F) * rho 79118)

def relationRow1790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79108) * ((1 : F) * rho 79108) = ((1 : F) * rho 79119)

def relationRow1791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79120) * ((-1 : F) * rho 79118 + (1 : F) * rho 79119) = ((2 : F) * rho 79117)

def relationRow1792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79121) * ((2 : F) + (1 : F) * rho 79118 + (-1 : F) * rho 79119) = ((1 : F) * rho 79118 + (1 : F) * rho 79119)

def relationRow1793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79120 + (1 : F) * rho 79121) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 119⟩, ⟨(1 : F), 77582, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79122)

def relationRow1794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79121) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79123)

def relationRow1795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79120) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79124)

def relationRow1796 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79123) * ((1 : F) * rho 79124) = ((1 : F) * rho 79125)

def relationRow1797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79126) * ((1 : F) + (1 : F) * rho 79125) = ((1 : F) * rho 79123 + (1 : F) * rho 79124)

def relationRow1798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79127) * ((1 : F) + (-1 : F) * rho 79125) = ((1 : F) * rho 79122 + (-1 : F) * rho 79123 + (-1 : F) * rho 79124)

def relationRow1799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77449) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 119⟩], residual := [((1 : F), 79126)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79128)

def relationRow1800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77449) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 119⟩], residual := [((1 : F), 79127)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79129)

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79120) * ((1 : F) * rho 79121) = ((1 : F) * rho 79130)

def relationRow1802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79120) * ((1 : F) * rho 79120) = ((1 : F) * rho 79131)

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79121) * ((1 : F) * rho 79121) = ((1 : F) * rho 79132)

def relationRow1804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79133) * ((-1 : F) * rho 79131 + (1 : F) * rho 79132) = ((2 : F) * rho 79130)

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79134) * ((2 : F) + (1 : F) * rho 79131 + (-1 : F) * rho 79132) = ((1 : F) * rho 79131 + (1 : F) * rho 79132)

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79133 + (1 : F) * rho 79134) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 120⟩, ⟨(1 : F), 77582, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79135)

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79134) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79136)

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79133) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79137)

def relationRow1809 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79136) * ((1 : F) * rho 79137) = ((1 : F) * rho 79138)

def relationRow1810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79139) * ((1 : F) + (1 : F) * rho 79138) = ((1 : F) * rho 79136 + (1 : F) * rho 79137)

def relationRow1811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79140) * ((1 : F) + (-1 : F) * rho 79138) = ((1 : F) * rho 79135 + (-1 : F) * rho 79136 + (-1 : F) * rho 79137)

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77450) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 120⟩], residual := [((1 : F), 79139)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79141)

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77450) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 120⟩], residual := [((1 : F), 79140)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79142)

def relationRow1814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79133) * ((1 : F) * rho 79134) = ((1 : F) * rho 79143)

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79133) * ((1 : F) * rho 79133) = ((1 : F) * rho 79144)

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79134) * ((1 : F) * rho 79134) = ((1 : F) * rho 79145)

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79146) * ((-1 : F) * rho 79144 + (1 : F) * rho 79145) = ((2 : F) * rho 79143)

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79147) * ((2 : F) + (1 : F) * rho 79144 + (-1 : F) * rho 79145) = ((1 : F) * rho 79144 + (1 : F) * rho 79145)

def relationRow1819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79146 + (1 : F) * rho 79147) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 121⟩, ⟨(1 : F), 77582, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79148)

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79147) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79149)

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79146) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79150)

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79149) * ((1 : F) * rho 79150) = ((1 : F) * rho 79151)

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79152) * ((1 : F) + (1 : F) * rho 79151) = ((1 : F) * rho 79149 + (1 : F) * rho 79150)

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79153) * ((1 : F) + (-1 : F) * rho 79151) = ((1 : F) * rho 79148 + (-1 : F) * rho 79149 + (-1 : F) * rho 79150)

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77451) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 121⟩], residual := [((1 : F), 79152)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79154)

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77451) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 121⟩], residual := [((1 : F), 79153)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79155)

def relationRow1827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79146) * ((1 : F) * rho 79147) = ((1 : F) * rho 79156)

def relationRow1828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79146) * ((1 : F) * rho 79146) = ((1 : F) * rho 79157)

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79147) * ((1 : F) * rho 79147) = ((1 : F) * rho 79158)

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79159) * ((-1 : F) * rho 79157 + (1 : F) * rho 79158) = ((2 : F) * rho 79156)

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79160) * ((2 : F) + (1 : F) * rho 79157 + (-1 : F) * rho 79158) = ((1 : F) * rho 79157 + (1 : F) * rho 79158)

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79159 + (1 : F) * rho 79160) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 122⟩, ⟨(1 : F), 77582, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79161)

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79160) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79162)

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79159) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79163)

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79162) * ((1 : F) * rho 79163) = ((1 : F) * rho 79164)

def relationRow1836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79165) * ((1 : F) + (1 : F) * rho 79164) = ((1 : F) * rho 79162 + (1 : F) * rho 79163)

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79166) * ((1 : F) + (-1 : F) * rho 79164) = ((1 : F) * rho 79161 + (-1 : F) * rho 79162 + (-1 : F) * rho 79163)

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77452) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 122⟩], residual := [((1 : F), 79165)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79167)

def relationRow1839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77452) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 122⟩], residual := [((1 : F), 79166)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79168)

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79159) * ((1 : F) * rho 79160) = ((1 : F) * rho 79169)

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79159) * ((1 : F) * rho 79159) = ((1 : F) * rho 79170)

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79160) * ((1 : F) * rho 79160) = ((1 : F) * rho 79171)

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79172) * ((-1 : F) * rho 79170 + (1 : F) * rho 79171) = ((2 : F) * rho 79169)

def relationRow1844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79173) * ((2 : F) + (1 : F) * rho 79170 + (-1 : F) * rho 79171) = ((1 : F) * rho 79170 + (1 : F) * rho 79171)

def relationRow1845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79172 + (1 : F) * rho 79173) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 123⟩, ⟨(1 : F), 77582, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79174)

def relationRow1846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79173) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79175)

def relationRow1847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79172) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79176)

def relationRow1848 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79175) * ((1 : F) * rho 79176) = ((1 : F) * rho 79177)

def relationRow1849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79178) * ((1 : F) + (1 : F) * rho 79177) = ((1 : F) * rho 79175 + (1 : F) * rho 79176)

def relationRow1850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79179) * ((1 : F) + (-1 : F) * rho 79177) = ((1 : F) * rho 79174 + (-1 : F) * rho 79175 + (-1 : F) * rho 79176)

def relationRow1851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77453) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 123⟩], residual := [((1 : F), 79178)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79180)

def relationRow1852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77453) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 123⟩], residual := [((1 : F), 79179)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79181)

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79172) * ((1 : F) * rho 79173) = ((1 : F) * rho 79182)

def relationRow1854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79172) * ((1 : F) * rho 79172) = ((1 : F) * rho 79183)

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79173) * ((1 : F) * rho 79173) = ((1 : F) * rho 79184)

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79185) * ((-1 : F) * rho 79183 + (1 : F) * rho 79184) = ((2 : F) * rho 79182)

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79186) * ((2 : F) + (1 : F) * rho 79183 + (-1 : F) * rho 79184) = ((1 : F) * rho 79183 + (1 : F) * rho 79184)

def relationRow1858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79185 + (1 : F) * rho 79186) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 124⟩, ⟨(1 : F), 77582, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79187)

def relationRow1859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79186) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79188)

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79185) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79189)

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79188) * ((1 : F) * rho 79189) = ((1 : F) * rho 79190)

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79191) * ((1 : F) + (1 : F) * rho 79190) = ((1 : F) * rho 79188 + (1 : F) * rho 79189)

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79192) * ((1 : F) + (-1 : F) * rho 79190) = ((1 : F) * rho 79187 + (-1 : F) * rho 79188 + (-1 : F) * rho 79189)

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77454) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 124⟩], residual := [((1 : F), 79191)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79193)

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77454) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 124⟩], residual := [((1 : F), 79192)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79194)

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79185) * ((1 : F) * rho 79186) = ((1 : F) * rho 79195)

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79185) * ((1 : F) * rho 79185) = ((1 : F) * rho 79196)

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79186) * ((1 : F) * rho 79186) = ((1 : F) * rho 79197)

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79198) * ((-1 : F) * rho 79196 + (1 : F) * rho 79197) = ((2 : F) * rho 79195)

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79199) * ((2 : F) + (1 : F) * rho 79196 + (-1 : F) * rho 79197) = ((1 : F) * rho 79196 + (1 : F) * rho 79197)

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79198 + (1 : F) * rho 79199) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 125⟩, ⟨(1 : F), 77582, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79200)

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79199) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79201)

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79198) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79202)

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79201) * ((1 : F) * rho 79202) = ((1 : F) * rho 79203)

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79204) * ((1 : F) + (1 : F) * rho 79203) = ((1 : F) * rho 79201 + (1 : F) * rho 79202)

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79205) * ((1 : F) + (-1 : F) * rho 79203) = ((1 : F) * rho 79200 + (-1 : F) * rho 79201 + (-1 : F) * rho 79202)

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77455) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 125⟩], residual := [((1 : F), 79204)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79206)

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77455) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 125⟩], residual := [((1 : F), 79205)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79207)

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79198) * ((1 : F) * rho 79199) = ((1 : F) * rho 79208)

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79198) * ((1 : F) * rho 79198) = ((1 : F) * rho 79209)

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79199) * ((1 : F) * rho 79199) = ((1 : F) * rho 79210)

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79211) * ((-1 : F) * rho 79209 + (1 : F) * rho 79210) = ((2 : F) * rho 79208)

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79212) * ((2 : F) + (1 : F) * rho 79209 + (-1 : F) * rho 79210) = ((1 : F) * rho 79209 + (1 : F) * rho 79210)

def relationRow1884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79211 + (1 : F) * rho 79212) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 126⟩, ⟨(1 : F), 77582, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79213)

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79212) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79214)

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79211) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79215)

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79214) * ((1 : F) * rho 79215) = ((1 : F) * rho 79216)

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79217) * ((1 : F) + (1 : F) * rho 79216) = ((1 : F) * rho 79214 + (1 : F) * rho 79215)

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79218) * ((1 : F) + (-1 : F) * rho 79216) = ((1 : F) * rho 79213 + (-1 : F) * rho 79214 + (-1 : F) * rho 79215)

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77456) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 126⟩], residual := [((1 : F), 79217)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79219)

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77456) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 126⟩], residual := [((1 : F), 79218)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79220)

def relationRow1892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79211) * ((1 : F) * rho 79212) = ((1 : F) * rho 79221)

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79211) * ((1 : F) * rho 79211) = ((1 : F) * rho 79222)

def relationRow1894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79212) * ((1 : F) * rho 79212) = ((1 : F) * rho 79223)

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79224) * ((-1 : F) * rho 79222 + (1 : F) * rho 79223) = ((2 : F) * rho 79221)

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79225) * ((2 : F) + (1 : F) * rho 79222 + (-1 : F) * rho 79223) = ((1 : F) * rho 79222 + (1 : F) * rho 79223)

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79224 + (1 : F) * rho 79225) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 127⟩, ⟨(1 : F), 77582, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79226)

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79225) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79227)

def relationRow1899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79224) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79228)

def relationRow1900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79227) * ((1 : F) * rho 79228) = ((1 : F) * rho 79229)

def relationRow1901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79230) * ((1 : F) + (1 : F) * rho 79229) = ((1 : F) * rho 79227 + (1 : F) * rho 79228)

def relationRow1902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79231) * ((1 : F) + (-1 : F) * rho 79229) = ((1 : F) * rho 79226 + (-1 : F) * rho 79227 + (-1 : F) * rho 79228)

def relationRow1903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77457) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 127⟩], residual := [((1 : F), 79230)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79232)

def relationRow1904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77457) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 127⟩], residual := [((1 : F), 79231)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79233)

def relationRow1905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79224) * ((1 : F) * rho 79225) = ((1 : F) * rho 79234)

def relationRow1906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79224) * ((1 : F) * rho 79224) = ((1 : F) * rho 79235)

def relationRow1907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79225) * ((1 : F) * rho 79225) = ((1 : F) * rho 79236)

def relationRow1908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79237) * ((-1 : F) * rho 79235 + (1 : F) * rho 79236) = ((2 : F) * rho 79234)

def relationRow1909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79238) * ((2 : F) + (1 : F) * rho 79235 + (-1 : F) * rho 79236) = ((1 : F) * rho 79235 + (1 : F) * rho 79236)

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79237 + (1 : F) * rho 79238) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 128⟩, ⟨(1 : F), 77582, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79239)

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79238) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79240)

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79237) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79241)

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79240) * ((1 : F) * rho 79241) = ((1 : F) * rho 79242)

def relationRow1914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79243) * ((1 : F) + (1 : F) * rho 79242) = ((1 : F) * rho 79240 + (1 : F) * rho 79241)

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79244) * ((1 : F) + (-1 : F) * rho 79242) = ((1 : F) * rho 79239 + (-1 : F) * rho 79240 + (-1 : F) * rho 79241)

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77458) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 128⟩], residual := [((1 : F), 79243)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79245)

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77458) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 128⟩], residual := [((1 : F), 79244)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79246)

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79237) * ((1 : F) * rho 79238) = ((1 : F) * rho 79247)

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79237) * ((1 : F) * rho 79237) = ((1 : F) * rho 79248)

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79238) * ((1 : F) * rho 79238) = ((1 : F) * rho 79249)

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79250) * ((-1 : F) * rho 79248 + (1 : F) * rho 79249) = ((2 : F) * rho 79247)

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79251) * ((2 : F) + (1 : F) * rho 79248 + (-1 : F) * rho 79249) = ((1 : F) * rho 79248 + (1 : F) * rho 79249)

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79250 + (1 : F) * rho 79251) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 129⟩, ⟨(1 : F), 77582, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79252)

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79251) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79253)

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79250) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79254)

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79253) * ((1 : F) * rho 79254) = ((1 : F) * rho 79255)

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79256) * ((1 : F) + (1 : F) * rho 79255) = ((1 : F) * rho 79253 + (1 : F) * rho 79254)

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79257) * ((1 : F) + (-1 : F) * rho 79255) = ((1 : F) * rho 79252 + (-1 : F) * rho 79253 + (-1 : F) * rho 79254)

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 129⟩], residual := [((1 : F), 79256)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79258)

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 129⟩], residual := [((1 : F), 79257)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79259)

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79250) * ((1 : F) * rho 79251) = ((1 : F) * rho 79260)

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79250) * ((1 : F) * rho 79250) = ((1 : F) * rho 79261)

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79251) * ((1 : F) * rho 79251) = ((1 : F) * rho 79262)

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79263) * ((-1 : F) * rho 79261 + (1 : F) * rho 79262) = ((2 : F) * rho 79260)

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79264) * ((2 : F) + (1 : F) * rho 79261 + (-1 : F) * rho 79262) = ((1 : F) * rho 79261 + (1 : F) * rho 79262)

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79263 + (1 : F) * rho 79264) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 130⟩, ⟨(1 : F), 77582, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79265)

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79264) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79266)

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79263) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79267)

def relationRow1939 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79266) * ((1 : F) * rho 79267) = ((1 : F) * rho 79268)

def relationRow1940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79269) * ((1 : F) + (1 : F) * rho 79268) = ((1 : F) * rho 79266 + (1 : F) * rho 79267)

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79270) * ((1 : F) + (-1 : F) * rho 79268) = ((1 : F) * rho 79265 + (-1 : F) * rho 79266 + (-1 : F) * rho 79267)

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77460) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 130⟩], residual := [((1 : F), 79269)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79271)

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77460) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 130⟩], residual := [((1 : F), 79270)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79272)

def relationRow1944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79263) * ((1 : F) * rho 79264) = ((1 : F) * rho 79273)

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79263) * ((1 : F) * rho 79263) = ((1 : F) * rho 79274)

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79264) * ((1 : F) * rho 79264) = ((1 : F) * rho 79275)

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79276) * ((-1 : F) * rho 79274 + (1 : F) * rho 79275) = ((2 : F) * rho 79273)

def relationRow1948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79277) * ((2 : F) + (1 : F) * rho 79274 + (-1 : F) * rho 79275) = ((1 : F) * rho 79274 + (1 : F) * rho 79275)

def relationRow1949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79276 + (1 : F) * rho 79277) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 131⟩, ⟨(1 : F), 77582, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79278)

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79277) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79279)

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79276) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79280)

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79279) * ((1 : F) * rho 79280) = ((1 : F) * rho 79281)

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79282) * ((1 : F) + (1 : F) * rho 79281) = ((1 : F) * rho 79279 + (1 : F) * rho 79280)

def relationRow1954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79283) * ((1 : F) + (-1 : F) * rho 79281) = ((1 : F) * rho 79278 + (-1 : F) * rho 79279 + (-1 : F) * rho 79280)

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77461) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 131⟩], residual := [((1 : F), 79282)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79284)

def relationRow1956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77461) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 131⟩], residual := [((1 : F), 79283)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79285)

def relationRow1957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79276) * ((1 : F) * rho 79277) = ((1 : F) * rho 79286)

def relationRow1958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79276) * ((1 : F) * rho 79276) = ((1 : F) * rho 79287)

def relationRow1959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79277) * ((1 : F) * rho 79277) = ((1 : F) * rho 79288)

def relationRow1960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79289) * ((-1 : F) * rho 79287 + (1 : F) * rho 79288) = ((2 : F) * rho 79286)

def relationRow1961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79290) * ((2 : F) + (1 : F) * rho 79287 + (-1 : F) * rho 79288) = ((1 : F) * rho 79287 + (1 : F) * rho 79288)

def relationRow1962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79289 + (1 : F) * rho 79290) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 132⟩, ⟨(1 : F), 77582, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79291)

def relationRow1963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79290) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79292)

def relationRow1964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79289) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79293)

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79292) * ((1 : F) * rho 79293) = ((1 : F) * rho 79294)

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79295) * ((1 : F) + (1 : F) * rho 79294) = ((1 : F) * rho 79292 + (1 : F) * rho 79293)

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79296) * ((1 : F) + (-1 : F) * rho 79294) = ((1 : F) * rho 79291 + (-1 : F) * rho 79292 + (-1 : F) * rho 79293)

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77462) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 132⟩], residual := [((1 : F), 79295)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79297)

def relationRow1969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77462) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 132⟩], residual := [((1 : F), 79296)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79298)

def relationRow1970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79289) * ((1 : F) * rho 79290) = ((1 : F) * rho 79299)

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79289) * ((1 : F) * rho 79289) = ((1 : F) * rho 79300)

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79290) * ((1 : F) * rho 79290) = ((1 : F) * rho 79301)

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79302) * ((-1 : F) * rho 79300 + (1 : F) * rho 79301) = ((2 : F) * rho 79299)

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79303) * ((2 : F) + (1 : F) * rho 79300 + (-1 : F) * rho 79301) = ((1 : F) * rho 79300 + (1 : F) * rho 79301)

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79302 + (1 : F) * rho 79303) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 133⟩, ⟨(1 : F), 77582, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79304)

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79303) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79305)

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79302) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79306)

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79305) * ((1 : F) * rho 79306) = ((1 : F) * rho 79307)

def relationRow1979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79308) * ((1 : F) + (1 : F) * rho 79307) = ((1 : F) * rho 79305 + (1 : F) * rho 79306)

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79309) * ((1 : F) + (-1 : F) * rho 79307) = ((1 : F) * rho 79304 + (-1 : F) * rho 79305 + (-1 : F) * rho 79306)

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77463) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 133⟩], residual := [((1 : F), 79308)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79310)

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77463) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 133⟩], residual := [((1 : F), 79309)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79311)

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79302) * ((1 : F) * rho 79303) = ((1 : F) * rho 79312)

def relationRow1984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79302) * ((1 : F) * rho 79302) = ((1 : F) * rho 79313)

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79303) * ((1 : F) * rho 79303) = ((1 : F) * rho 79314)

def relationRow1986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79315) * ((-1 : F) * rho 79313 + (1 : F) * rho 79314) = ((2 : F) * rho 79312)

def relationRow1987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79316) * ((2 : F) + (1 : F) * rho 79313 + (-1 : F) * rho 79314) = ((1 : F) * rho 79313 + (1 : F) * rho 79314)

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79315 + (1 : F) * rho 79316) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 134⟩, ⟨(1 : F), 77582, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79317)

def relationRow1989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79316) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79318)

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79315) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79319)

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79318) * ((1 : F) * rho 79319) = ((1 : F) * rho 79320)

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79321) * ((1 : F) + (1 : F) * rho 79320) = ((1 : F) * rho 79318 + (1 : F) * rho 79319)

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79322) * ((1 : F) + (-1 : F) * rho 79320) = ((1 : F) * rho 79317 + (-1 : F) * rho 79318 + (-1 : F) * rho 79319)

def relationRow1994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77464) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 134⟩], residual := [((1 : F), 79321)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79323)

def relationRow1995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77464) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 134⟩], residual := [((1 : F), 79322)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79324)

def relationRow1996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79315) * ((1 : F) * rho 79316) = ((1 : F) * rho 79325)

def relationRow1997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79315) * ((1 : F) * rho 79315) = ((1 : F) * rho 79326)

def relationRow1998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79316) * ((1 : F) * rho 79316) = ((1 : F) * rho 79327)

def relationRow1999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79328) * ((-1 : F) * rho 79326 + (1 : F) * rho 79327) = ((2 : F) * rho 79325)

def relationRow2000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79329) * ((2 : F) + (1 : F) * rho 79326 + (-1 : F) * rho 79327) = ((1 : F) * rho 79326 + (1 : F) * rho 79327)

def relationRow2001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79328 + (1 : F) * rho 79329) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 135⟩, ⟨(1 : F), 77582, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79330)

def relationRow2002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79329) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79331)

def relationRow2003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79328) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79332)

def relationRow2004 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79331) * ((1 : F) * rho 79332) = ((1 : F) * rho 79333)

def relationRow2005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79334) * ((1 : F) + (1 : F) * rho 79333) = ((1 : F) * rho 79331 + (1 : F) * rho 79332)

def relationRow2006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79335) * ((1 : F) + (-1 : F) * rho 79333) = ((1 : F) * rho 79330 + (-1 : F) * rho 79331 + (-1 : F) * rho 79332)

def relationRow2007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77465) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 135⟩], residual := [((1 : F), 79334)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79336)

def relationRow2008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77465) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 135⟩], residual := [((1 : F), 79335)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79337)

def relationRow2009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79328) * ((1 : F) * rho 79329) = ((1 : F) * rho 79338)

def relationRow2010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79328) * ((1 : F) * rho 79328) = ((1 : F) * rho 79339)

def relationRow2011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79329) * ((1 : F) * rho 79329) = ((1 : F) * rho 79340)

def relationRow2012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79341) * ((-1 : F) * rho 79339 + (1 : F) * rho 79340) = ((2 : F) * rho 79338)

def relationRow2013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79342) * ((2 : F) + (1 : F) * rho 79339 + (-1 : F) * rho 79340) = ((1 : F) * rho 79339 + (1 : F) * rho 79340)

def relationRow2014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79341 + (1 : F) * rho 79342) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 136⟩, ⟨(1 : F), 77582, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79343)

def relationRow2015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79342) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79344)

def relationRow2016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79341) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79345)

def relationRow2017 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79344) * ((1 : F) * rho 79345) = ((1 : F) * rho 79346)

def relationRow2018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79347) * ((1 : F) + (1 : F) * rho 79346) = ((1 : F) * rho 79344 + (1 : F) * rho 79345)

def relationRow2019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79348) * ((1 : F) + (-1 : F) * rho 79346) = ((1 : F) * rho 79343 + (-1 : F) * rho 79344 + (-1 : F) * rho 79345)

def relationRow2020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77466) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 136⟩], residual := [((1 : F), 79347)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79349)

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77466) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 136⟩], residual := [((1 : F), 79348)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79350)

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79341) * ((1 : F) * rho 79342) = ((1 : F) * rho 79351)

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79341) * ((1 : F) * rho 79341) = ((1 : F) * rho 79352)

def relationRow2024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79342) * ((1 : F) * rho 79342) = ((1 : F) * rho 79353)

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79354) * ((-1 : F) * rho 79352 + (1 : F) * rho 79353) = ((2 : F) * rho 79351)

def relationRow2026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79355) * ((2 : F) + (1 : F) * rho 79352 + (-1 : F) * rho 79353) = ((1 : F) * rho 79352 + (1 : F) * rho 79353)

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79354 + (1 : F) * rho 79355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 137⟩, ⟨(1 : F), 77582, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79356)

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79357)

def relationRow2029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79354) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79358)

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79357) * ((1 : F) * rho 79358) = ((1 : F) * rho 79359)

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79360) * ((1 : F) + (1 : F) * rho 79359) = ((1 : F) * rho 79357 + (1 : F) * rho 79358)

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79361) * ((1 : F) + (-1 : F) * rho 79359) = ((1 : F) * rho 79356 + (-1 : F) * rho 79357 + (-1 : F) * rho 79358)

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77467) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 137⟩], residual := [((1 : F), 79360)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79362)

def relationRow2034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77467) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 137⟩], residual := [((1 : F), 79361)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79363)

def relationRow2035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79354) * ((1 : F) * rho 79355) = ((1 : F) * rho 79364)

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79354) * ((1 : F) * rho 79354) = ((1 : F) * rho 79365)

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79355) * ((1 : F) * rho 79355) = ((1 : F) * rho 79366)

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79367) * ((-1 : F) * rho 79365 + (1 : F) * rho 79366) = ((2 : F) * rho 79364)

def relationRow2039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79368) * ((2 : F) + (1 : F) * rho 79365 + (-1 : F) * rho 79366) = ((1 : F) * rho 79365 + (1 : F) * rho 79366)

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79367 + (1 : F) * rho 79368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 138⟩, ⟨(1 : F), 77582, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79369)

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79370)

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79367) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79371)

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79370) * ((1 : F) * rho 79371) = ((1 : F) * rho 79372)

def relationRow2044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79373) * ((1 : F) + (1 : F) * rho 79372) = ((1 : F) * rho 79370 + (1 : F) * rho 79371)

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79374) * ((1 : F) + (-1 : F) * rho 79372) = ((1 : F) * rho 79369 + (-1 : F) * rho 79370 + (-1 : F) * rho 79371)

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77468) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 138⟩], residual := [((1 : F), 79373)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79375)

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77468) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 138⟩], residual := [((1 : F), 79374)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79376)

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79367) * ((1 : F) * rho 79368) = ((1 : F) * rho 79377)

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79367) * ((1 : F) * rho 79367) = ((1 : F) * rho 79378)

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79368) * ((1 : F) * rho 79368) = ((1 : F) * rho 79379)

def relationRow2051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79380) * ((-1 : F) * rho 79378 + (1 : F) * rho 79379) = ((2 : F) * rho 79377)

def relationRow2052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79381) * ((2 : F) + (1 : F) * rho 79378 + (-1 : F) * rho 79379) = ((1 : F) * rho 79378 + (1 : F) * rho 79379)

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79380 + (1 : F) * rho 79381) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 139⟩, ⟨(1 : F), 77582, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79382)

def relationRow2054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79381) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79383)

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79380) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79384)

def relationRow2056 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79383) * ((1 : F) * rho 79384) = ((1 : F) * rho 79385)

def relationRow2057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79386) * ((1 : F) + (1 : F) * rho 79385) = ((1 : F) * rho 79383 + (1 : F) * rho 79384)

def relationRow2058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79387) * ((1 : F) + (-1 : F) * rho 79385) = ((1 : F) * rho 79382 + (-1 : F) * rho 79383 + (-1 : F) * rho 79384)

def relationRow2059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77469) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 139⟩], residual := [((1 : F), 79386)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79388)

def relationRow2060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77469) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 139⟩], residual := [((1 : F), 79387)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79389)

def relationRow2061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79380) * ((1 : F) * rho 79381) = ((1 : F) * rho 79390)

def relationRow2062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79380) * ((1 : F) * rho 79380) = ((1 : F) * rho 79391)

def relationRow2063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79381) * ((1 : F) * rho 79381) = ((1 : F) * rho 79392)

def relationRow2064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79393) * ((-1 : F) * rho 79391 + (1 : F) * rho 79392) = ((2 : F) * rho 79390)

def relationRow2065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79394) * ((2 : F) + (1 : F) * rho 79391 + (-1 : F) * rho 79392) = ((1 : F) * rho 79391 + (1 : F) * rho 79392)

def relationRow2066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79393 + (1 : F) * rho 79394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 140⟩, ⟨(1 : F), 77582, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79395)

def relationRow2067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79396)

def relationRow2068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79393) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79397)

def relationRow2069 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79396) * ((1 : F) * rho 79397) = ((1 : F) * rho 79398)

def relationRow2070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79399) * ((1 : F) + (1 : F) * rho 79398) = ((1 : F) * rho 79396 + (1 : F) * rho 79397)

def relationRow2071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79400) * ((1 : F) + (-1 : F) * rho 79398) = ((1 : F) * rho 79395 + (-1 : F) * rho 79396 + (-1 : F) * rho 79397)

def relationRow2072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77470) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 140⟩], residual := [((1 : F), 79399)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79401)

def relationRow2073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77470) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 140⟩], residual := [((1 : F), 79400)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79402)

def relationRow2074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79393) * ((1 : F) * rho 79394) = ((1 : F) * rho 79403)

def relationRow2075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79393) * ((1 : F) * rho 79393) = ((1 : F) * rho 79404)

def relationRow2076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79394) * ((1 : F) * rho 79394) = ((1 : F) * rho 79405)

def relationRow2077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79406) * ((-1 : F) * rho 79404 + (1 : F) * rho 79405) = ((2 : F) * rho 79403)

def relationRow2078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79407) * ((2 : F) + (1 : F) * rho 79404 + (-1 : F) * rho 79405) = ((1 : F) * rho 79404 + (1 : F) * rho 79405)

def relationRow2079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79406 + (1 : F) * rho 79407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 141⟩, ⟨(1 : F), 77582, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79408)

def relationRow2080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79409)

def relationRow2081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79406) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79410)

def relationRow2082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79409) * ((1 : F) * rho 79410) = ((1 : F) * rho 79411)

def relationRow2083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79412) * ((1 : F) + (1 : F) * rho 79411) = ((1 : F) * rho 79409 + (1 : F) * rho 79410)

def relationRow2084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79413) * ((1 : F) + (-1 : F) * rho 79411) = ((1 : F) * rho 79408 + (-1 : F) * rho 79409 + (-1 : F) * rho 79410)

def relationRow2085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77471) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 141⟩], residual := [((1 : F), 79412)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79414)

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77471) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 141⟩], residual := [((1 : F), 79413)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79415)

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79406) * ((1 : F) * rho 79407) = ((1 : F) * rho 79416)

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79406) * ((1 : F) * rho 79406) = ((1 : F) * rho 79417)

def relationRow2089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79407) * ((1 : F) * rho 79407) = ((1 : F) * rho 79418)

def relationRow2090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79419) * ((-1 : F) * rho 79417 + (1 : F) * rho 79418) = ((2 : F) * rho 79416)

def relationRow2091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79420) * ((2 : F) + (1 : F) * rho 79417 + (-1 : F) * rho 79418) = ((1 : F) * rho 79417 + (1 : F) * rho 79418)

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79419 + (1 : F) * rho 79420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 142⟩, ⟨(1 : F), 77582, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79421)

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79422)

def relationRow2094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79419) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79423)

def relationRow2095 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79422) * ((1 : F) * rho 79423) = ((1 : F) * rho 79424)

def relationRow2096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79425) * ((1 : F) + (1 : F) * rho 79424) = ((1 : F) * rho 79422 + (1 : F) * rho 79423)

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79426) * ((1 : F) + (-1 : F) * rho 79424) = ((1 : F) * rho 79421 + (-1 : F) * rho 79422 + (-1 : F) * rho 79423)

def relationRow2098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77472) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 142⟩], residual := [((1 : F), 79425)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79427)

def relationRow2099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77472) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 142⟩], residual := [((1 : F), 79426)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79428)

def relationRow2100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79419) * ((1 : F) * rho 79420) = ((1 : F) * rho 79429)

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79419) * ((1 : F) * rho 79419) = ((1 : F) * rho 79430)

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79420) * ((1 : F) * rho 79420) = ((1 : F) * rho 79431)

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79432) * ((-1 : F) * rho 79430 + (1 : F) * rho 79431) = ((2 : F) * rho 79429)

def relationRow2104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79433) * ((2 : F) + (1 : F) * rho 79430 + (-1 : F) * rho 79431) = ((1 : F) * rho 79430 + (1 : F) * rho 79431)

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79432 + (1 : F) * rho 79433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 143⟩, ⟨(1 : F), 77582, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79434)

def relationRow2106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79435)

def relationRow2107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79432) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79436)

def relationRow2108 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79435) * ((1 : F) * rho 79436) = ((1 : F) * rho 79437)

def relationRow2109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79438) * ((1 : F) + (1 : F) * rho 79437) = ((1 : F) * rho 79435 + (1 : F) * rho 79436)

def relationRow2110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79439) * ((1 : F) + (-1 : F) * rho 79437) = ((1 : F) * rho 79434 + (-1 : F) * rho 79435 + (-1 : F) * rho 79436)

def relationRow2111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77473) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 143⟩], residual := [((1 : F), 79438)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79440)

def relationRow2112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77473) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 143⟩], residual := [((1 : F), 79439)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79441)

def relationRow2113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79432) * ((1 : F) * rho 79433) = ((1 : F) * rho 79442)

def relationRow2114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79432) * ((1 : F) * rho 79432) = ((1 : F) * rho 79443)

def relationRow2115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79433) * ((1 : F) * rho 79433) = ((1 : F) * rho 79444)

def relationRow2116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79445) * ((-1 : F) * rho 79443 + (1 : F) * rho 79444) = ((2 : F) * rho 79442)

def relationRow2117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79446) * ((2 : F) + (1 : F) * rho 79443 + (-1 : F) * rho 79444) = ((1 : F) * rho 79443 + (1 : F) * rho 79444)

def relationRow2118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79445 + (1 : F) * rho 79446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 144⟩, ⟨(1 : F), 77582, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79447)

def relationRow2119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79448)

def relationRow2120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79445) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79449)

def relationRow2121 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79448) * ((1 : F) * rho 79449) = ((1 : F) * rho 79450)

def relationRow2122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79451) * ((1 : F) + (1 : F) * rho 79450) = ((1 : F) * rho 79448 + (1 : F) * rho 79449)

def relationRow2123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79452) * ((1 : F) + (-1 : F) * rho 79450) = ((1 : F) * rho 79447 + (-1 : F) * rho 79448 + (-1 : F) * rho 79449)

def relationRow2124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77474) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 144⟩], residual := [((1 : F), 79451)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79453)

def relationRow2125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77474) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 144⟩], residual := [((1 : F), 79452)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79454)

def relationRow2126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79445) * ((1 : F) * rho 79446) = ((1 : F) * rho 79455)

def relationRow2127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79445) * ((1 : F) * rho 79445) = ((1 : F) * rho 79456)

def relationRow2128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79446) * ((1 : F) * rho 79446) = ((1 : F) * rho 79457)

def relationRow2129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79458) * ((-1 : F) * rho 79456 + (1 : F) * rho 79457) = ((2 : F) * rho 79455)

def relationRow2130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79459) * ((2 : F) + (1 : F) * rho 79456 + (-1 : F) * rho 79457) = ((1 : F) * rho 79456 + (1 : F) * rho 79457)

def relationRow2131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79458 + (1 : F) * rho 79459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 145⟩, ⟨(1 : F), 77582, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79460)

def relationRow2132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79461)

def relationRow2133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79458) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79462)

def relationRow2134 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79461) * ((1 : F) * rho 79462) = ((1 : F) * rho 79463)

def relationRow2135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79464) * ((1 : F) + (1 : F) * rho 79463) = ((1 : F) * rho 79461 + (1 : F) * rho 79462)

def relationRow2136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79465) * ((1 : F) + (-1 : F) * rho 79463) = ((1 : F) * rho 79460 + (-1 : F) * rho 79461 + (-1 : F) * rho 79462)

def relationRow2137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77475) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 145⟩], residual := [((1 : F), 79464)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79466)

def relationRow2138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77475) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 145⟩], residual := [((1 : F), 79465)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79467)

def relationRow2139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79458) * ((1 : F) * rho 79459) = ((1 : F) * rho 79468)

def relationRow2140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79458) * ((1 : F) * rho 79458) = ((1 : F) * rho 79469)

def relationRow2141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79459) * ((1 : F) * rho 79459) = ((1 : F) * rho 79470)

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79471) * ((-1 : F) * rho 79469 + (1 : F) * rho 79470) = ((2 : F) * rho 79468)

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79472) * ((2 : F) + (1 : F) * rho 79469 + (-1 : F) * rho 79470) = ((1 : F) * rho 79469 + (1 : F) * rho 79470)

def relationRow2144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79471 + (1 : F) * rho 79472) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 146⟩, ⟨(1 : F), 77582, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79473)

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79472) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79474)

def relationRow2146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79471) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79475)

def relationRow2147 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79474) * ((1 : F) * rho 79475) = ((1 : F) * rho 79476)

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79477) * ((1 : F) + (1 : F) * rho 79476) = ((1 : F) * rho 79474 + (1 : F) * rho 79475)

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79478) * ((1 : F) + (-1 : F) * rho 79476) = ((1 : F) * rho 79473 + (-1 : F) * rho 79474 + (-1 : F) * rho 79475)

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77476) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 146⟩], residual := [((1 : F), 79477)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79479)

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77476) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 146⟩], residual := [((1 : F), 79478)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79480)

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79471) * ((1 : F) * rho 79472) = ((1 : F) * rho 79481)

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79471) * ((1 : F) * rho 79471) = ((1 : F) * rho 79482)

def relationRow2154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79472) * ((1 : F) * rho 79472) = ((1 : F) * rho 79483)

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79484) * ((-1 : F) * rho 79482 + (1 : F) * rho 79483) = ((2 : F) * rho 79481)

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79485) * ((2 : F) + (1 : F) * rho 79482 + (-1 : F) * rho 79483) = ((1 : F) * rho 79482 + (1 : F) * rho 79483)

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79484 + (1 : F) * rho 79485) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 147⟩, ⟨(1 : F), 77582, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79486)

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79485) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79487)

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79484) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79488)

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79487) * ((1 : F) * rho 79488) = ((1 : F) * rho 79489)

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79490) * ((1 : F) + (1 : F) * rho 79489) = ((1 : F) * rho 79487 + (1 : F) * rho 79488)

def relationRow2162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79491) * ((1 : F) + (-1 : F) * rho 79489) = ((1 : F) * rho 79486 + (-1 : F) * rho 79487 + (-1 : F) * rho 79488)

def relationRow2163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77477) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 147⟩], residual := [((1 : F), 79490)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79492)

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77477) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 147⟩], residual := [((1 : F), 79491)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79493)

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79484) * ((1 : F) * rho 79485) = ((1 : F) * rho 79494)

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79484) * ((1 : F) * rho 79484) = ((1 : F) * rho 79495)

def relationRow2167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79485) * ((1 : F) * rho 79485) = ((1 : F) * rho 79496)

def relationRow2168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79497) * ((-1 : F) * rho 79495 + (1 : F) * rho 79496) = ((2 : F) * rho 79494)

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79498) * ((2 : F) + (1 : F) * rho 79495 + (-1 : F) * rho 79496) = ((1 : F) * rho 79495 + (1 : F) * rho 79496)

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79497 + (1 : F) * rho 79498) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 148⟩, ⟨(1 : F), 77582, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79499)

def relationRow2171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79498) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79500)

def relationRow2172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79497) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79501)

def relationRow2173 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79500) * ((1 : F) * rho 79501) = ((1 : F) * rho 79502)

def relationRow2174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79503) * ((1 : F) + (1 : F) * rho 79502) = ((1 : F) * rho 79500 + (1 : F) * rho 79501)

def relationRow2175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79504) * ((1 : F) + (-1 : F) * rho 79502) = ((1 : F) * rho 79499 + (-1 : F) * rho 79500 + (-1 : F) * rho 79501)

def relationRow2176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77478) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 148⟩], residual := [((1 : F), 79503)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79505)

def relationRow2177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77478) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 148⟩], residual := [((1 : F), 79504)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79506)

def relationRow2178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79497) * ((1 : F) * rho 79498) = ((1 : F) * rho 79507)

def relationRow2179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79497) * ((1 : F) * rho 79497) = ((1 : F) * rho 79508)

def relationRow2180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79498) * ((1 : F) * rho 79498) = ((1 : F) * rho 79509)

def relationRow2181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79510) * ((-1 : F) * rho 79508 + (1 : F) * rho 79509) = ((2 : F) * rho 79507)

def relationRow2182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79511) * ((2 : F) + (1 : F) * rho 79508 + (-1 : F) * rho 79509) = ((1 : F) * rho 79508 + (1 : F) * rho 79509)

def relationRow2183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79510 + (1 : F) * rho 79511) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 149⟩, ⟨(1 : F), 77582, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79512)

def relationRow2184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79511) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79513)

def relationRow2185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79510) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79514)

def relationRow2186 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79513) * ((1 : F) * rho 79514) = ((1 : F) * rho 79515)

def relationRow2187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79516) * ((1 : F) + (1 : F) * rho 79515) = ((1 : F) * rho 79513 + (1 : F) * rho 79514)

def relationRow2188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79517) * ((1 : F) + (-1 : F) * rho 79515) = ((1 : F) * rho 79512 + (-1 : F) * rho 79513 + (-1 : F) * rho 79514)

def relationRow2189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77479) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 149⟩], residual := [((1 : F), 79516)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79518)

def relationRow2190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77479) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 149⟩], residual := [((1 : F), 79517)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79519)

def relationRow2191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79510) * ((1 : F) * rho 79511) = ((1 : F) * rho 79520)

def relationRow2192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79510) * ((1 : F) * rho 79510) = ((1 : F) * rho 79521)

def relationRow2193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79511) * ((1 : F) * rho 79511) = ((1 : F) * rho 79522)

def relationRow2194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79523) * ((-1 : F) * rho 79521 + (1 : F) * rho 79522) = ((2 : F) * rho 79520)

def relationRow2195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79524) * ((2 : F) + (1 : F) * rho 79521 + (-1 : F) * rho 79522) = ((1 : F) * rho 79521 + (1 : F) * rho 79522)

def relationRow2196 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79525)

def relationRow2197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79525) * ((1 : F) * rho 79523 + (1 : F) * rho 79524) = ((1 : F) * rho 79526)

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79524) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79527)

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79523) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79528)

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79527) * ((1 : F) * rho 79528) = ((1 : F) * rho 79529)

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79530) * ((1 : F) + (1 : F) * rho 79529) = ((1 : F) * rho 79527 + (1 : F) * rho 79528)

def relationRow2202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79531) * ((1 : F) + (-1 : F) * rho 79529) = ((1 : F) * rho 79526 + (-1 : F) * rho 79527 + (-1 : F) * rho 79528)

def relationRow2203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77480) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79530)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79532)

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77480) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79531)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79533)

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79523) * ((1 : F) * rho 79524) = ((1 : F) * rho 79534)

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79523) * ((1 : F) * rho 79523) = ((1 : F) * rho 79535)

def relationRow2207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79524) * ((1 : F) * rho 79524) = ((1 : F) * rho 79536)

def relationRow2208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79537) * ((-1 : F) * rho 79535 + (1 : F) * rho 79536) = ((2 : F) * rho 79534)

def relationRow2209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79538) * ((2 : F) + (1 : F) * rho 79535 + (-1 : F) * rho 79536) = ((1 : F) * rho 79535 + (1 : F) * rho 79536)

def relationRow2210 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79539)

def relationRow2211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79539) * ((1 : F) * rho 79537 + (1 : F) * rho 79538) = ((1 : F) * rho 79540)

def relationRow2212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79538) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79541)

def relationRow2213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79537) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79542)

def relationRow2214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79541) * ((1 : F) * rho 79542) = ((1 : F) * rho 79543)

def relationRow2215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79544) * ((1 : F) + (1 : F) * rho 79543) = ((1 : F) * rho 79541 + (1 : F) * rho 79542)

def relationRow2216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79545) * ((1 : F) + (-1 : F) * rho 79543) = ((1 : F) * rho 79540 + (-1 : F) * rho 79541 + (-1 : F) * rho 79542)

def relationRow2217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77481) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((1 : F), 79544)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79546)

def relationRow2218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77481) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((1 : F), 79545)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79547)

def relationRow2219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79537) * ((1 : F) * rho 79538) = ((1 : F) * rho 79548)

def relationRow2220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79537) * ((1 : F) * rho 79537) = ((1 : F) * rho 79549)

def relationRow2221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79538) * ((1 : F) * rho 79538) = ((1 : F) * rho 79550)

def relationRow2222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79551) * ((-1 : F) * rho 79549 + (1 : F) * rho 79550) = ((2 : F) * rho 79548)

def relationRow2223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79552) * ((2 : F) + (1 : F) * rho 79549 + (-1 : F) * rho 79550) = ((1 : F) * rho 79549 + (1 : F) * rho 79550)

def relationRow2224 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79553)

def relationRow2225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79553) * ((1 : F) * rho 79551 + (1 : F) * rho 79552) = ((1 : F) * rho 79554)

def relationRow2226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79552) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79555)

def relationRow2227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79551) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79556)

def relationRow2228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79555) * ((1 : F) * rho 79556) = ((1 : F) * rho 79557)

def relationRow2229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79558) * ((1 : F) + (1 : F) * rho 79557) = ((1 : F) * rho 79555 + (1 : F) * rho 79556)

def relationRow2230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79559) * ((1 : F) + (-1 : F) * rho 79557) = ((1 : F) * rho 79554 + (-1 : F) * rho 79555 + (-1 : F) * rho 79556)

def relationRow2231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77482) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((1 : F), 79558)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79560)

def relationRow2232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77482) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((1 : F), 79559)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79561)

def relationRow2233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79551) * ((1 : F) * rho 79552) = ((1 : F) * rho 79562)

def relationRow2234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79551) * ((1 : F) * rho 79551) = ((1 : F) * rho 79563)

def relationRow2235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79552) * ((1 : F) * rho 79552) = ((1 : F) * rho 79564)

def relationRow2236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79565) * ((-1 : F) * rho 79563 + (1 : F) * rho 79564) = ((2 : F) * rho 79562)

def relationRow2237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79566) * ((2 : F) + (1 : F) * rho 79563 + (-1 : F) * rho 79564) = ((1 : F) * rho 79563 + (1 : F) * rho 79564)

def relationRow2238 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79567)

def relationRow2239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79567) * ((1 : F) * rho 79565 + (1 : F) * rho 79566) = ((1 : F) * rho 79568)

def relationRow2240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79566) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79569)

def relationRow2241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79565) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79570)

def relationRow2242 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79569) * ((1 : F) * rho 79570) = ((1 : F) * rho 79571)

def relationRow2243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79572) * ((1 : F) + (1 : F) * rho 79571) = ((1 : F) * rho 79569 + (1 : F) * rho 79570)

def relationRow2244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79573) * ((1 : F) + (-1 : F) * rho 79571) = ((1 : F) * rho 79568 + (-1 : F) * rho 79569 + (-1 : F) * rho 79570)

def relationRow2245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77483) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((1 : F), 79572)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79574)

def relationRow2246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77483) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((1 : F), 79573)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79575)

def relationRow2247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79565) * ((1 : F) * rho 79566) = ((1 : F) * rho 79576)

def relationRow2248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79565) * ((1 : F) * rho 79565) = ((1 : F) * rho 79577)

def relationRow2249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79566) * ((1 : F) * rho 79566) = ((1 : F) * rho 79578)

def relationRow2250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79579) * ((-1 : F) * rho 79577 + (1 : F) * rho 79578) = ((2 : F) * rho 79576)

def relationRow2251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79580) * ((2 : F) + (1 : F) * rho 79577 + (-1 : F) * rho 79578) = ((1 : F) * rho 79577 + (1 : F) * rho 79578)

def relationRow2252 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79581)

def relationRow2253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79581) * ((1 : F) * rho 79579 + (1 : F) * rho 79580) = ((1 : F) * rho 79582)

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79580) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79583)

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79579) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79584)

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79583) * ((1 : F) * rho 79584) = ((1 : F) * rho 79585)

def relationRow2257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79586) * ((1 : F) + (1 : F) * rho 79585) = ((1 : F) * rho 79583 + (1 : F) * rho 79584)

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79587) * ((1 : F) + (-1 : F) * rho 79585) = ((1 : F) * rho 79582 + (-1 : F) * rho 79583 + (-1 : F) * rho 79584)

def relationRow2259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77484) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((1 : F), 79586)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79588)

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77484) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((1 : F), 79587)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79589)

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79579) * ((1 : F) * rho 79580) = ((1 : F) * rho 79590)

def relationRow2262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79579) * ((1 : F) * rho 79579) = ((1 : F) * rho 79591)

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79580) * ((1 : F) * rho 79580) = ((1 : F) * rho 79592)

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79593) * ((-1 : F) * rho 79591 + (1 : F) * rho 79592) = ((2 : F) * rho 79590)

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79594) * ((2 : F) + (1 : F) * rho 79591 + (-1 : F) * rho 79592) = ((1 : F) * rho 79591 + (1 : F) * rho 79592)

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79595)

def relationRow2267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79595) * ((1 : F) * rho 79593 + (1 : F) * rho 79594) = ((1 : F) * rho 79596)

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79594) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79597)

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79593) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79598)

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79597) * ((1 : F) * rho 79598) = ((1 : F) * rho 79599)

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79600) * ((1 : F) + (1 : F) * rho 79599) = ((1 : F) * rho 79597 + (1 : F) * rho 79598)

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79601) * ((1 : F) + (-1 : F) * rho 79599) = ((1 : F) * rho 79596 + (-1 : F) * rho 79597 + (-1 : F) * rho 79598)

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77485) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((1 : F), 79600)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79602)

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77485) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((1 : F), 79601)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79603)

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79593) * ((1 : F) * rho 79594) = ((1 : F) * rho 79604)

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79593) * ((1 : F) * rho 79593) = ((1 : F) * rho 79605)

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79594) * ((1 : F) * rho 79594) = ((1 : F) * rho 79606)

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79607) * ((-1 : F) * rho 79605 + (1 : F) * rho 79606) = ((2 : F) * rho 79604)

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79608) * ((2 : F) + (1 : F) * rho 79605 + (-1 : F) * rho 79606) = ((1 : F) * rho 79605 + (1 : F) * rho 79606)

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79609)

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79609) * ((1 : F) * rho 79607 + (1 : F) * rho 79608) = ((1 : F) * rho 79610)

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79608) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79611)

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79607) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79612)

def relationRow2284 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79611) * ((1 : F) * rho 79612) = ((1 : F) * rho 79613)

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79614) * ((1 : F) + (1 : F) * rho 79613) = ((1 : F) * rho 79611 + (1 : F) * rho 79612)

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79615) * ((1 : F) + (-1 : F) * rho 79613) = ((1 : F) * rho 79610 + (-1 : F) * rho 79611 + (-1 : F) * rho 79612)

def relationRow2287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77486) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((1 : F), 79614)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79616)

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77486) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((1 : F), 79615)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79617)

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79607) * ((1 : F) * rho 79608) = ((1 : F) * rho 79618)

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79607) * ((1 : F) * rho 79607) = ((1 : F) * rho 79619)

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79608) * ((1 : F) * rho 79608) = ((1 : F) * rho 79620)

def relationRow2292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79621) * ((-1 : F) * rho 79619 + (1 : F) * rho 79620) = ((2 : F) * rho 79618)

def relationRow2293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622) * ((2 : F) + (1 : F) * rho 79619 + (-1 : F) * rho 79620) = ((1 : F) * rho 79619 + (1 : F) * rho 79620)

def relationRow2294 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79623)

def relationRow2295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79623) * ((1 : F) * rho 79621 + (1 : F) * rho 79622) = ((1 : F) * rho 79624)

def relationRow2296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79625)

def relationRow2297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79621) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79626)

def relationRow2298 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79625) * ((1 : F) * rho 79626) = ((1 : F) * rho 79627)

def relationRow2299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79628) * ((1 : F) + (1 : F) * rho 79627) = ((1 : F) * rho 79625 + (1 : F) * rho 79626)

def relationRow2300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79629) * ((1 : F) + (-1 : F) * rho 79627) = ((1 : F) * rho 79624 + (-1 : F) * rho 79625 + (-1 : F) * rho 79626)

def relationRow2301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77487) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((1 : F), 79628)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79630)

def relationRow2302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77487) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((1 : F), 79629)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79631)

def relationRow2303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79621) * ((1 : F) * rho 79622) = ((1 : F) * rho 79632)

def relationRow2304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79621) * ((1 : F) * rho 79621) = ((1 : F) * rho 79633)

def relationRow2305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622) * ((1 : F) * rho 79622) = ((1 : F) * rho 79634)

def relationRow2306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * ((-1 : F) * rho 79633 + (1 : F) * rho 79634) = ((2 : F) * rho 79632)

def relationRow2307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79636) * ((2 : F) + (1 : F) * rho 79633 + (-1 : F) * rho 79634) = ((1 : F) * rho 79633 + (1 : F) * rho 79634)

def relationRow2308 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79637)

def relationRow2309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79637) * ((1 : F) * rho 79635 + (1 : F) * rho 79636) = ((1 : F) * rho 79638)

def relationRow2310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79636) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79639)

def relationRow2311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79640)

def relationRow2312 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79639) * ((1 : F) * rho 79640) = ((1 : F) * rho 79641)

def relationRow2313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79642) * ((1 : F) + (1 : F) * rho 79641) = ((1 : F) * rho 79639 + (1 : F) * rho 79640)

def relationRow2314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79643) * ((1 : F) + (-1 : F) * rho 79641) = ((1 : F) * rho 79638 + (-1 : F) * rho 79639 + (-1 : F) * rho 79640)

def relationRow2315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77488) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((1 : F), 79642)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79644)

def relationRow2316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77488) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((1 : F), 79643)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79645)

def relationRow2317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * ((1 : F) * rho 79636) = ((1 : F) * rho 79646)

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * ((1 : F) * rho 79635) = ((1 : F) * rho 79647)

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79636) * ((1 : F) * rho 79636) = ((1 : F) * rho 79648)

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79649) * ((-1 : F) * rho 79647 + (1 : F) * rho 79648) = ((2 : F) * rho 79646)

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79650) * ((2 : F) + (1 : F) * rho 79647 + (-1 : F) * rho 79648) = ((1 : F) * rho 79647 + (1 : F) * rho 79648)

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631), ((1 : F), 79644), ((1 : F), 79645)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79651)

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79651) * ((1 : F) * rho 79649 + (1 : F) * rho 79650) = ((1 : F) * rho 79652)

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79650) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630), ((1 : F), 79644)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79653)

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79649) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631), ((1 : F), 79645)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79654)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79653) * ((1 : F) * rho 79654) = ((1 : F) * rho 79655)

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79656) * ((1 : F) + (1 : F) * rho 79655) = ((1 : F) * rho 79653 + (1 : F) * rho 79654)

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79657) * ((1 : F) + (-1 : F) * rho 79655) = ((1 : F) * rho 79652 + (-1 : F) * rho 79653 + (-1 : F) * rho 79654)

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77489) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((-1 : F), 79644), ((1 : F), 79656)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79658)

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77489) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((-1 : F), 79645), ((1 : F), 79657)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79659)

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79649) * ((1 : F) * rho 79650) = ((1 : F) * rho 79660)

def relationRow2332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79649) * ((1 : F) * rho 79649) = ((1 : F) * rho 79661)

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79650) * ((1 : F) * rho 79650) = ((1 : F) * rho 79662)

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79663) * ((-1 : F) * rho 79661 + (1 : F) * rho 79662) = ((2 : F) * rho 79660)

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79664) * ((2 : F) + (1 : F) * rho 79661 + (-1 : F) * rho 79662) = ((1 : F) * rho 79661 + (1 : F) * rho 79662)

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631), ((1 : F), 79644), ((1 : F), 79645), ((1 : F), 79658), ((1 : F), 79659)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79665)

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79665) * ((1 : F) * rho 79663 + (1 : F) * rho 79664) = ((1 : F) * rho 79666)

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79664) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630), ((1 : F), 79644), ((1 : F), 79658)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79667)

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79663) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631), ((1 : F), 79645), ((1 : F), 79659)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79668)

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79667) * ((1 : F) * rho 79668) = ((1 : F) * rho 79669)

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79670) * ((1 : F) + (1 : F) * rho 79669) = ((1 : F) * rho 79667 + (1 : F) * rho 79668)

def relationRow2342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79671) * ((1 : F) + (-1 : F) * rho 79669) = ((1 : F) * rho 79666 + (-1 : F) * rho 79667 + (-1 : F) * rho 79668)

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77490) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((-1 : F), 79644), ((-1 : F), 79658), ((1 : F), 79670)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79672)

def relationRow2344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77490) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((-1 : F), 79645), ((-1 : F), 79659), ((1 : F), 79671)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79673)

def relationRow2345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79663) * ((1 : F) * rho 79664) = ((1 : F) * rho 79674)

def relationRow2346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79663) * ((1 : F) * rho 79663) = ((1 : F) * rho 79675)

def relationRow2347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79664) * ((1 : F) * rho 79664) = ((1 : F) * rho 79676)

def relationRow2348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79677) * ((-1 : F) * rho 79675 + (1 : F) * rho 79676) = ((2 : F) * rho 79674)

def relationRow2349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79678) * ((2 : F) + (1 : F) * rho 79675 + (-1 : F) * rho 79676) = ((1 : F) * rho 79675 + (1 : F) * rho 79676)

def relationRow2350 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631), ((1 : F), 79644), ((1 : F), 79645), ((1 : F), 79658), ((1 : F), 79659), ((1 : F), 79672), ((1 : F), 79673)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79679)

def relationRow2351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79679) * ((1 : F) * rho 79677 + (1 : F) * rho 79678) = ((1 : F) * rho 79680)

def relationRow2352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79678) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630), ((1 : F), 79644), ((1 : F), 79658), ((1 : F), 79672)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79681)

def relationRow2353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79677) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631), ((1 : F), 79645), ((1 : F), 79659), ((1 : F), 79673)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79682)

def relationRow2354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79681) * ((1 : F) * rho 79682) = ((1 : F) * rho 79683)

def relationRow2355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79684) * ((1 : F) + (1 : F) * rho 79683) = ((1 : F) * rho 79681 + (1 : F) * rho 79682)

def relationRow2356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79685) * ((1 : F) + (-1 : F) * rho 79683) = ((1 : F) * rho 79680 + (-1 : F) * rho 79681 + (-1 : F) * rho 79682)

def relationRow2357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77491) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((-1 : F), 79644), ((-1 : F), 79658), ((-1 : F), 79672), ((1 : F), 79684)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79686)

def relationRow2358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77491) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((-1 : F), 79645), ((-1 : F), 79659), ((-1 : F), 79673), ((1 : F), 79685)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79687)

def relationRow2359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79677) * ((1 : F) * rho 79678) = ((1 : F) * rho 79688)

def relationRow2360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79677) * ((1 : F) * rho 79677) = ((1 : F) * rho 79689)

def relationRow2361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79678) * ((1 : F) * rho 79678) = ((1 : F) * rho 79690)

def relationRow2362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79691) * ((-1 : F) * rho 79689 + (1 : F) * rho 79690) = ((2 : F) * rho 79688)

def relationRow2363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79692) * ((2 : F) + (1 : F) * rho 79689 + (-1 : F) * rho 79690) = ((1 : F) * rho 79689 + (1 : F) * rho 79690)

def relationRow2364 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631), ((1 : F), 79644), ((1 : F), 79645), ((1 : F), 79658), ((1 : F), 79659), ((1 : F), 79672), ((1 : F), 79673), ((1 : F), 79686), ((1 : F), 79687)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79693)

def relationRow2365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79693) * ((1 : F) * rho 79691 + (1 : F) * rho 79692) = ((1 : F) * rho 79694)

def relationRow2366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79692) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630), ((1 : F), 79644), ((1 : F), 79658), ((1 : F), 79672), ((1 : F), 79686)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79695)

def relationRow2367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79691) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631), ((1 : F), 79645), ((1 : F), 79659), ((1 : F), 79673), ((1 : F), 79687)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79696)

def relationRow2368 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79695) * ((1 : F) * rho 79696) = ((1 : F) * rho 79697)

def relationRow2369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79698) * ((1 : F) + (1 : F) * rho 79697) = ((1 : F) * rho 79695 + (1 : F) * rho 79696)

def relationRow2370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79699) * ((1 : F) + (-1 : F) * rho 79697) = ((1 : F) * rho 79694 + (-1 : F) * rho 79695 + (-1 : F) * rho 79696)

def relationRow2371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77492) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((-1 : F), 79644), ((-1 : F), 79658), ((-1 : F), 79672), ((-1 : F), 79686), ((1 : F), 79698)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79700)

def relationRow2372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77492) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((-1 : F), 79645), ((-1 : F), 79659), ((-1 : F), 79673), ((-1 : F), 79687), ((1 : F), 79699)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79701)

def relationRow2373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79691) * ((1 : F) * rho 79692) = ((1 : F) * rho 79702)

def relationRow2374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79691) * ((1 : F) * rho 79691) = ((1 : F) * rho 79703)

def relationRow2375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79692) * ((1 : F) * rho 79692) = ((1 : F) * rho 79704)

def relationRow2376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79705) * ((-1 : F) * rho 79703 + (1 : F) * rho 79704) = ((2 : F) * rho 79702)

def relationRow2377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79706) * ((2 : F) + (1 : F) * rho 79703 + (-1 : F) * rho 79704) = ((1 : F) * rho 79703 + (1 : F) * rho 79704)

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631), ((1 : F), 79644), ((1 : F), 79645), ((1 : F), 79658), ((1 : F), 79659), ((1 : F), 79672), ((1 : F), 79673), ((1 : F), 79686), ((1 : F), 79687), ((1 : F), 79700), ((1 : F), 79701)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79707)

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79707) * ((1 : F) * rho 79705 + (1 : F) * rho 79706) = ((1 : F) * rho 79708)

def relationRow2380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79706) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630), ((1 : F), 79644), ((1 : F), 79658), ((1 : F), 79672), ((1 : F), 79686), ((1 : F), 79700)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79709)

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79705) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631), ((1 : F), 79645), ((1 : F), 79659), ((1 : F), 79673), ((1 : F), 79687), ((1 : F), 79701)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79710)

def relationRow2382 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79709) * ((1 : F) * rho 79710) = ((1 : F) * rho 79711)

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79712) * ((1 : F) + (1 : F) * rho 79711) = ((1 : F) * rho 79709 + (1 : F) * rho 79710)

def relationRow2384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79713) * ((1 : F) + (-1 : F) * rho 79711) = ((1 : F) * rho 79708 + (-1 : F) * rho 79709 + (-1 : F) * rho 79710)

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77493) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((-1 : F), 79644), ((-1 : F), 79658), ((-1 : F), 79672), ((-1 : F), 79686), ((-1 : F), 79700), ((1 : F), 79712)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79714)

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77493) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((-1 : F), 79645), ((-1 : F), 79659), ((-1 : F), 79673), ((-1 : F), 79687), ((-1 : F), 79701), ((1 : F), 79713)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79715)

def relationRow2387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79705) * ((1 : F) * rho 79706) = ((1 : F) * rho 79716)

def relationRow2388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79705) * ((1 : F) * rho 79705) = ((1 : F) * rho 79717)

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79706) * ((1 : F) * rho 79706) = ((1 : F) * rho 79718)

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79719) * ((-1 : F) * rho 79717 + (1 : F) * rho 79718) = ((2 : F) * rho 79716)

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79720) * ((2 : F) + (1 : F) * rho 79717 + (-1 : F) * rho 79718) = ((1 : F) * rho 79717 + (1 : F) * rho 79718)

def relationRow2392 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631), ((1 : F), 79644), ((1 : F), 79645), ((1 : F), 79658), ((1 : F), 79659), ((1 : F), 79672), ((1 : F), 79673), ((1 : F), 79686), ((1 : F), 79687), ((1 : F), 79700), ((1 : F), 79701), ((1 : F), 79714), ((1 : F), 79715)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79721)

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79721) * ((1 : F) * rho 79719 + (1 : F) * rho 79720) = ((1 : F) * rho 79722)

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79720) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630), ((1 : F), 79644), ((1 : F), 79658), ((1 : F), 79672), ((1 : F), 79686), ((1 : F), 79700), ((1 : F), 79714)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79723)

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79719) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631), ((1 : F), 79645), ((1 : F), 79659), ((1 : F), 79673), ((1 : F), 79687), ((1 : F), 79701), ((1 : F), 79715)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79724)

def relationRow2396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79723) * ((1 : F) * rho 79724) = ((1 : F) * rho 79725)

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79726) * ((1 : F) + (1 : F) * rho 79725) = ((1 : F) * rho 79723 + (1 : F) * rho 79724)

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79727) * ((1 : F) + (-1 : F) * rho 79725) = ((1 : F) * rho 79722 + (-1 : F) * rho 79723 + (-1 : F) * rho 79724)

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77494) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((-1 : F), 79644), ((-1 : F), 79658), ((-1 : F), 79672), ((-1 : F), 79686), ((-1 : F), 79700), ((-1 : F), 79714), ((1 : F), 79726)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79728)

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77494) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((-1 : F), 79645), ((-1 : F), 79659), ((-1 : F), 79673), ((-1 : F), 79687), ((-1 : F), 79701), ((-1 : F), 79715), ((1 : F), 79727)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79729)

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79719) * ((1 : F) * rho 79720) = ((1 : F) * rho 79730)

def relationRow2402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79719) * ((1 : F) * rho 79719) = ((1 : F) * rho 79731)

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79720) * ((1 : F) * rho 79720) = ((1 : F) * rho 79732)

def relationRow2404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79733) * ((-1 : F) * rho 79731 + (1 : F) * rho 79732) = ((2 : F) * rho 79730)

def relationRow2405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79734) * ((2 : F) + (1 : F) * rho 79731 + (-1 : F) * rho 79732) = ((1 : F) * rho 79731 + (1 : F) * rho 79732)

def relationRow2406 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79533), ((1 : F), 79546), ((1 : F), 79547), ((1 : F), 79560), ((1 : F), 79561), ((1 : F), 79574), ((1 : F), 79575), ((1 : F), 79588), ((1 : F), 79589), ((1 : F), 79602), ((1 : F), 79603), ((1 : F), 79616), ((1 : F), 79617), ((1 : F), 79630), ((1 : F), 79631), ((1 : F), 79644), ((1 : F), 79645), ((1 : F), 79658), ((1 : F), 79659), ((1 : F), 79672), ((1 : F), 79673), ((1 : F), 79686), ((1 : F), 79687), ((1 : F), 79700), ((1 : F), 79701), ((1 : F), 79714), ((1 : F), 79715), ((1 : F), 79728), ((1 : F), 79729)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79735)

def relationRow2407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79735) * ((1 : F) * rho 79733 + (1 : F) * rho 79734) = ((1 : F) * rho 79736)

def relationRow2408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79734) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩], residual := [((1 : F), 79532), ((1 : F), 79546), ((1 : F), 79560), ((1 : F), 79574), ((1 : F), 79588), ((1 : F), 79602), ((1 : F), 79616), ((1 : F), 79630), ((1 : F), 79644), ((1 : F), 79658), ((1 : F), 79672), ((1 : F), 79686), ((1 : F), 79700), ((1 : F), 79714), ((1 : F), 79728)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79737)

def relationRow2409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79733) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩], residual := [((1 : F), 79533), ((1 : F), 79547), ((1 : F), 79561), ((1 : F), 79575), ((1 : F), 79589), ((1 : F), 79603), ((1 : F), 79617), ((1 : F), 79631), ((1 : F), 79645), ((1 : F), 79659), ((1 : F), 79673), ((1 : F), 79687), ((1 : F), 79701), ((1 : F), 79715), ((1 : F), 79729)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79738)

def relationRow2410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79737) * ((1 : F) * rho 79738) = ((1 : F) * rho 79739)

def relationRow2411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79740) * ((1 : F) + (1 : F) * rho 79739) = ((1 : F) * rho 79737 + (1 : F) * rho 79738)

def relationRow2412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79741) * ((1 : F) + (-1 : F) * rho 79739) = ((1 : F) * rho 79736 + (-1 : F) * rho 79737 + (-1 : F) * rho 79738)

def relationRow2413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77495) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩], residual := [((-1 : F), 79532), ((-1 : F), 79546), ((-1 : F), 79560), ((-1 : F), 79574), ((-1 : F), 79588), ((-1 : F), 79602), ((-1 : F), 79616), ((-1 : F), 79630), ((-1 : F), 79644), ((-1 : F), 79658), ((-1 : F), 79672), ((-1 : F), 79686), ((-1 : F), 79700), ((-1 : F), 79714), ((-1 : F), 79728), ((1 : F), 79740)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79742)

def relationRow2414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77495) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩], residual := [((-1 : F), 79533), ((-1 : F), 79547), ((-1 : F), 79561), ((-1 : F), 79575), ((-1 : F), 79589), ((-1 : F), 79603), ((-1 : F), 79617), ((-1 : F), 79631), ((-1 : F), 79645), ((-1 : F), 79659), ((-1 : F), 79673), ((-1 : F), 79687), ((-1 : F), 79701), ((-1 : F), 79715), ((-1 : F), 79729), ((1 : F), 79741)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79743)

def relationRow2415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79733) * ((1 : F) * rho 79734) = ((1 : F) * rho 79744)

def relationRow2416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79733) * ((1 : F) * rho 79733) = ((1 : F) * rho 79745)

def relationRow2417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79734) * ((1 : F) * rho 79734) = ((1 : F) * rho 79746)

def relationRow2418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79747) * ((-1 : F) * rho 79745 + (1 : F) * rho 79746) = ((2 : F) * rho 79744)

def relationRow2419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79748) * ((2 : F) + (1 : F) * rho 79745 + (-1 : F) * rho 79746) = ((1 : F) * rho 79745 + (1 : F) * rho 79746)

def relationRow2420 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 16⟩, ⟨(1 : F), 79533, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79749)

def relationRow2421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79749) * ((1 : F) * rho 79747 + (1 : F) * rho 79748) = ((1 : F) * rho 79750)

def relationRow2422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79748) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79751)

def relationRow2423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79747) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79752)

def relationRow2424 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79751) * ((1 : F) * rho 79752) = ((1 : F) * rho 79753)

def relationRow2425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79754) * ((1 : F) + (1 : F) * rho 79753) = ((1 : F) * rho 79751 + (1 : F) * rho 79752)

def relationRow2426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79755) * ((1 : F) + (-1 : F) * rho 79753) = ((1 : F) * rho 79750 + (-1 : F) * rho 79751 + (-1 : F) * rho 79752)

def relationRow2427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77496) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 16⟩], residual := [((1 : F), 79754)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79756)

def relationRow2428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77496) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 16⟩], residual := [((1 : F), 79755)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79757)

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79747) * ((1 : F) * rho 79748) = ((1 : F) * rho 79758)

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79747) * ((1 : F) * rho 79747) = ((1 : F) * rho 79759)

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79748) * ((1 : F) * rho 79748) = ((1 : F) * rho 79760)

def relationRow2432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79761) * ((-1 : F) * rho 79759 + (1 : F) * rho 79760) = ((2 : F) * rho 79758)

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79762) * ((2 : F) + (1 : F) * rho 79759 + (-1 : F) * rho 79760) = ((1 : F) * rho 79759 + (1 : F) * rho 79760)

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 17⟩, ⟨(1 : F), 79533, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79763)

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79763) * ((1 : F) * rho 79761 + (1 : F) * rho 79762) = ((1 : F) * rho 79764)

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79762) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79765)

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79761) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79766)

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79765) * ((1 : F) * rho 79766) = ((1 : F) * rho 79767)

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79768) * ((1 : F) + (1 : F) * rho 79767) = ((1 : F) * rho 79765 + (1 : F) * rho 79766)

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79769) * ((1 : F) + (-1 : F) * rho 79767) = ((1 : F) * rho 79764 + (-1 : F) * rho 79765 + (-1 : F) * rho 79766)

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77497) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 17⟩], residual := [((1 : F), 79768)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79770)

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77497) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 17⟩], residual := [((1 : F), 79769)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79771)

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79761) * ((1 : F) * rho 79762) = ((1 : F) * rho 79772)

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79761) * ((1 : F) * rho 79761) = ((1 : F) * rho 79773)

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79762) * ((1 : F) * rho 79762) = ((1 : F) * rho 79774)

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79775) * ((-1 : F) * rho 79773 + (1 : F) * rho 79774) = ((2 : F) * rho 79772)

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79776) * ((2 : F) + (1 : F) * rho 79773 + (-1 : F) * rho 79774) = ((1 : F) * rho 79773 + (1 : F) * rho 79774)

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 18⟩, ⟨(1 : F), 79533, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79777)

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79777) * ((1 : F) * rho 79775 + (1 : F) * rho 79776) = ((1 : F) * rho 79778)

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79776) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79779)

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79775) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79780)

def relationRow2452 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79779) * ((1 : F) * rho 79780) = ((1 : F) * rho 79781)

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79782) * ((1 : F) + (1 : F) * rho 79781) = ((1 : F) * rho 79779 + (1 : F) * rho 79780)

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79783) * ((1 : F) + (-1 : F) * rho 79781) = ((1 : F) * rho 79778 + (-1 : F) * rho 79779 + (-1 : F) * rho 79780)

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77498) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 18⟩], residual := [((1 : F), 79782)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79784)

def relationRow2456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77498) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 18⟩], residual := [((1 : F), 79783)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79785)

def relationRow2457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79775) * ((1 : F) * rho 79776) = ((1 : F) * rho 79786)

def relationRow2458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79775) * ((1 : F) * rho 79775) = ((1 : F) * rho 79787)

def relationRow2459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79776) * ((1 : F) * rho 79776) = ((1 : F) * rho 79788)

def relationRow2460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79789) * ((-1 : F) * rho 79787 + (1 : F) * rho 79788) = ((2 : F) * rho 79786)

def relationRow2461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79790) * ((2 : F) + (1 : F) * rho 79787 + (-1 : F) * rho 79788) = ((1 : F) * rho 79787 + (1 : F) * rho 79788)

def relationRow2462 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 19⟩, ⟨(1 : F), 79533, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79791)

def relationRow2463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79791) * ((1 : F) * rho 79789 + (1 : F) * rho 79790) = ((1 : F) * rho 79792)

def relationRow2464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79790) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79793)

def relationRow2465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79789) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79794)

def relationRow2466 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79793) * ((1 : F) * rho 79794) = ((1 : F) * rho 79795)

def relationRow2467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79796) * ((1 : F) + (1 : F) * rho 79795) = ((1 : F) * rho 79793 + (1 : F) * rho 79794)

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79797) * ((1 : F) + (-1 : F) * rho 79795) = ((1 : F) * rho 79792 + (-1 : F) * rho 79793 + (-1 : F) * rho 79794)

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77499) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 19⟩], residual := [((1 : F), 79796)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79798)

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77499) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 19⟩], residual := [((1 : F), 79797)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79799)

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79789) * ((1 : F) * rho 79790) = ((1 : F) * rho 79800)

def relationRow2472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79789) * ((1 : F) * rho 79789) = ((1 : F) * rho 79801)

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79790) * ((1 : F) * rho 79790) = ((1 : F) * rho 79802)

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79803) * ((-1 : F) * rho 79801 + (1 : F) * rho 79802) = ((2 : F) * rho 79800)

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804) * ((2 : F) + (1 : F) * rho 79801 + (-1 : F) * rho 79802) = ((1 : F) * rho 79801 + (1 : F) * rho 79802)

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 20⟩, ⟨(1 : F), 79533, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79805)

def relationRow2477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79805) * ((1 : F) * rho 79803 + (1 : F) * rho 79804) = ((1 : F) * rho 79806)

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79807)

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79803) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79808)

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79807) * ((1 : F) * rho 79808) = ((1 : F) * rho 79809)

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79810) * ((1 : F) + (1 : F) * rho 79809) = ((1 : F) * rho 79807 + (1 : F) * rho 79808)

def relationRow2482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79811) * ((1 : F) + (-1 : F) * rho 79809) = ((1 : F) * rho 79806 + (-1 : F) * rho 79807 + (-1 : F) * rho 79808)

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77500) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 20⟩], residual := [((1 : F), 79810)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79812)

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77500) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 20⟩], residual := [((1 : F), 79811)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79813)

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79803) * ((1 : F) * rho 79804) = ((1 : F) * rho 79814)

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79803) * ((1 : F) * rho 79803) = ((1 : F) * rho 79815)

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804) * ((1 : F) * rho 79804) = ((1 : F) * rho 79816)

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * ((-1 : F) * rho 79815 + (1 : F) * rho 79816) = ((2 : F) * rho 79814)

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79818) * ((2 : F) + (1 : F) * rho 79815 + (-1 : F) * rho 79816) = ((1 : F) * rho 79815 + (1 : F) * rho 79816)

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 21⟩, ⟨(1 : F), 79533, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79819)

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79819) * ((1 : F) * rho 79817 + (1 : F) * rho 79818) = ((1 : F) * rho 79820)

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79818) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79821)

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79822)

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79821) * ((1 : F) * rho 79822) = ((1 : F) * rho 79823)

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79824) * ((1 : F) + (1 : F) * rho 79823) = ((1 : F) * rho 79821 + (1 : F) * rho 79822)

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79825) * ((1 : F) + (-1 : F) * rho 79823) = ((1 : F) * rho 79820 + (-1 : F) * rho 79821 + (-1 : F) * rho 79822)

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77501) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 21⟩], residual := [((1 : F), 79824)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79826)

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77501) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 21⟩], residual := [((1 : F), 79825)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79827)

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * ((1 : F) * rho 79818) = ((1 : F) * rho 79828)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * ((1 : F) * rho 79817) = ((1 : F) * rho 79829)

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79818) * ((1 : F) * rho 79818) = ((1 : F) * rho 79830)

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79831) * ((-1 : F) * rho 79829 + (1 : F) * rho 79830) = ((2 : F) * rho 79828)

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79832) * ((2 : F) + (1 : F) * rho 79829 + (-1 : F) * rho 79830) = ((1 : F) * rho 79829 + (1 : F) * rho 79830)

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 22⟩, ⟨(1 : F), 79533, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79833)

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79833) * ((1 : F) * rho 79831 + (1 : F) * rho 79832) = ((1 : F) * rho 79834)

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79832) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79835)

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79831) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79836)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79835) * ((1 : F) * rho 79836) = ((1 : F) * rho 79837)

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79838) * ((1 : F) + (1 : F) * rho 79837) = ((1 : F) * rho 79835 + (1 : F) * rho 79836)

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79839) * ((1 : F) + (-1 : F) * rho 79837) = ((1 : F) * rho 79834 + (-1 : F) * rho 79835 + (-1 : F) * rho 79836)

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77502) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 22⟩], residual := [((1 : F), 79838)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79840)

def relationRow2512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77502) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 22⟩], residual := [((1 : F), 79839)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79841)

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79831) * ((1 : F) * rho 79832) = ((1 : F) * rho 79842)

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79831) * ((1 : F) * rho 79831) = ((1 : F) * rho 79843)

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79832) * ((1 : F) * rho 79832) = ((1 : F) * rho 79844)

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79845) * ((-1 : F) * rho 79843 + (1 : F) * rho 79844) = ((2 : F) * rho 79842)

def relationRow2517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79846) * ((2 : F) + (1 : F) * rho 79843 + (-1 : F) * rho 79844) = ((1 : F) * rho 79843 + (1 : F) * rho 79844)

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 23⟩, ⟨(1 : F), 79533, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79847)

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79847) * ((1 : F) * rho 79845 + (1 : F) * rho 79846) = ((1 : F) * rho 79848)

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79846) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79849)

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79845) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79850)

def relationRow2522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79849) * ((1 : F) * rho 79850) = ((1 : F) * rho 79851)

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79852) * ((1 : F) + (1 : F) * rho 79851) = ((1 : F) * rho 79849 + (1 : F) * rho 79850)

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79853) * ((1 : F) + (-1 : F) * rho 79851) = ((1 : F) * rho 79848 + (-1 : F) * rho 79849 + (-1 : F) * rho 79850)

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77503) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 23⟩], residual := [((1 : F), 79852)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79854)

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77503) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 23⟩], residual := [((1 : F), 79853)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79855)

def relationRow2527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79845) * ((1 : F) * rho 79846) = ((1 : F) * rho 79856)

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79845) * ((1 : F) * rho 79845) = ((1 : F) * rho 79857)

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79846) * ((1 : F) * rho 79846) = ((1 : F) * rho 79858)

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79859) * ((-1 : F) * rho 79857 + (1 : F) * rho 79858) = ((2 : F) * rho 79856)

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79860) * ((2 : F) + (1 : F) * rho 79857 + (-1 : F) * rho 79858) = ((1 : F) * rho 79857 + (1 : F) * rho 79858)

def relationRow2532 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 24⟩, ⟨(1 : F), 79533, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79861)

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79861) * ((1 : F) * rho 79859 + (1 : F) * rho 79860) = ((1 : F) * rho 79862)

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79860) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79863)

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79859) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79864)

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79863) * ((1 : F) * rho 79864) = ((1 : F) * rho 79865)

def relationRow2537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79866) * ((1 : F) + (1 : F) * rho 79865) = ((1 : F) * rho 79863 + (1 : F) * rho 79864)

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79867) * ((1 : F) + (-1 : F) * rho 79865) = ((1 : F) * rho 79862 + (-1 : F) * rho 79863 + (-1 : F) * rho 79864)

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77504) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 24⟩], residual := [((1 : F), 79866)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79868)

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77504) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 24⟩], residual := [((1 : F), 79867)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79869)

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79859) * ((1 : F) * rho 79860) = ((1 : F) * rho 79870)

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79859) * ((1 : F) * rho 79859) = ((1 : F) * rho 79871)

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79860) * ((1 : F) * rho 79860) = ((1 : F) * rho 79872)

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79873) * ((-1 : F) * rho 79871 + (1 : F) * rho 79872) = ((2 : F) * rho 79870)

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79874) * ((2 : F) + (1 : F) * rho 79871 + (-1 : F) * rho 79872) = ((1 : F) * rho 79871 + (1 : F) * rho 79872)

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 25⟩, ⟨(1 : F), 79533, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79875)

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79875) * ((1 : F) * rho 79873 + (1 : F) * rho 79874) = ((1 : F) * rho 79876)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79874) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79877)

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79873) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79878)

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79877) * ((1 : F) * rho 79878) = ((1 : F) * rho 79879)

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79880) * ((1 : F) + (1 : F) * rho 79879) = ((1 : F) * rho 79877 + (1 : F) * rho 79878)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79881) * ((1 : F) + (-1 : F) * rho 79879) = ((1 : F) * rho 79876 + (-1 : F) * rho 79877 + (-1 : F) * rho 79878)

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77505) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 25⟩], residual := [((1 : F), 79880)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79882)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77505) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 25⟩], residual := [((1 : F), 79881)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79883)

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79873) * ((1 : F) * rho 79874) = ((1 : F) * rho 79884)

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79873) * ((1 : F) * rho 79873) = ((1 : F) * rho 79885)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79874) * ((1 : F) * rho 79874) = ((1 : F) * rho 79886)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79887) * ((-1 : F) * rho 79885 + (1 : F) * rho 79886) = ((2 : F) * rho 79884)

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79888) * ((2 : F) + (1 : F) * rho 79885 + (-1 : F) * rho 79886) = ((1 : F) * rho 79885 + (1 : F) * rho 79886)

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 26⟩, ⟨(1 : F), 79533, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79889)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79889) * ((1 : F) * rho 79887 + (1 : F) * rho 79888) = ((1 : F) * rho 79890)

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79891)

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79892)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79891) * ((1 : F) * rho 79892) = ((1 : F) * rho 79893)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79894) * ((1 : F) + (1 : F) * rho 79893) = ((1 : F) * rho 79891 + (1 : F) * rho 79892)

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79895) * ((1 : F) + (-1 : F) * rho 79893) = ((1 : F) * rho 79890 + (-1 : F) * rho 79891 + (-1 : F) * rho 79892)

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77506) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 26⟩], residual := [((1 : F), 79894)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79896)

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77506) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 26⟩], residual := [((1 : F), 79895)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79897)

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79887) * ((1 : F) * rho 79888) = ((1 : F) * rho 79898)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79887) * ((1 : F) * rho 79887) = ((1 : F) * rho 79899)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79888) * ((1 : F) * rho 79888) = ((1 : F) * rho 79900)

def relationRow2572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79901) * ((-1 : F) * rho 79899 + (1 : F) * rho 79900) = ((2 : F) * rho 79898)

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79902) * ((2 : F) + (1 : F) * rho 79899 + (-1 : F) * rho 79900) = ((1 : F) * rho 79899 + (1 : F) * rho 79900)

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 27⟩, ⟨(1 : F), 79533, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79903)

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79903) * ((1 : F) * rho 79901 + (1 : F) * rho 79902) = ((1 : F) * rho 79904)

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79902) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79905)

def relationRow2577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79906)

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79905) * ((1 : F) * rho 79906) = ((1 : F) * rho 79907)

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79908) * ((1 : F) + (1 : F) * rho 79907) = ((1 : F) * rho 79905 + (1 : F) * rho 79906)

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79909) * ((1 : F) + (-1 : F) * rho 79907) = ((1 : F) * rho 79904 + (-1 : F) * rho 79905 + (-1 : F) * rho 79906)

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77507) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 27⟩], residual := [((1 : F), 79908)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79910)

def relationRow2582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77507) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 27⟩], residual := [((1 : F), 79909)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79911)

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79901) * ((1 : F) * rho 79902) = ((1 : F) * rho 79912)

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79901) * ((1 : F) * rho 79901) = ((1 : F) * rho 79913)

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79902) * ((1 : F) * rho 79902) = ((1 : F) * rho 79914)

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79915) * ((-1 : F) * rho 79913 + (1 : F) * rho 79914) = ((2 : F) * rho 79912)

def relationRow2587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79916) * ((2 : F) + (1 : F) * rho 79913 + (-1 : F) * rho 79914) = ((1 : F) * rho 79913 + (1 : F) * rho 79914)

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 28⟩, ⟨(1 : F), 79533, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79917)

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79917) * ((1 : F) * rho 79915 + (1 : F) * rho 79916) = ((1 : F) * rho 79918)

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79919)

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79920)

def relationRow2592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79919) * ((1 : F) * rho 79920) = ((1 : F) * rho 79921)

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79922) * ((1 : F) + (1 : F) * rho 79921) = ((1 : F) * rho 79919 + (1 : F) * rho 79920)

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79923) * ((1 : F) + (-1 : F) * rho 79921) = ((1 : F) * rho 79918 + (-1 : F) * rho 79919 + (-1 : F) * rho 79920)

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77508) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 28⟩], residual := [((1 : F), 79922)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79924)

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77508) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 28⟩], residual := [((1 : F), 79923)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79925)

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79915) * ((1 : F) * rho 79916) = ((1 : F) * rho 79926)

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79915) * ((1 : F) * rho 79915) = ((1 : F) * rho 79927)

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79916) * ((1 : F) * rho 79916) = ((1 : F) * rho 79928)

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79929) * ((-1 : F) * rho 79927 + (1 : F) * rho 79928) = ((2 : F) * rho 79926)

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79930) * ((2 : F) + (1 : F) * rho 79927 + (-1 : F) * rho 79928) = ((1 : F) * rho 79927 + (1 : F) * rho 79928)

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 29⟩, ⟨(1 : F), 79533, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79931)

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79931) * ((1 : F) * rho 79929 + (1 : F) * rho 79930) = ((1 : F) * rho 79932)

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79933)

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79934)

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79933) * ((1 : F) * rho 79934) = ((1 : F) * rho 79935)

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79936) * ((1 : F) + (1 : F) * rho 79935) = ((1 : F) * rho 79933 + (1 : F) * rho 79934)

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79937) * ((1 : F) + (-1 : F) * rho 79935) = ((1 : F) * rho 79932 + (-1 : F) * rho 79933 + (-1 : F) * rho 79934)

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77509) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 29⟩], residual := [((1 : F), 79936)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79938)

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77509) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 29⟩], residual := [((1 : F), 79937)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79939)

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79929) * ((1 : F) * rho 79930) = ((1 : F) * rho 79940)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79929) * ((1 : F) * rho 79929) = ((1 : F) * rho 79941)

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79930) * ((1 : F) * rho 79930) = ((1 : F) * rho 79942)

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79943) * ((-1 : F) * rho 79941 + (1 : F) * rho 79942) = ((2 : F) * rho 79940)

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79944) * ((2 : F) + (1 : F) * rho 79941 + (-1 : F) * rho 79942) = ((1 : F) * rho 79941 + (1 : F) * rho 79942)

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 30⟩, ⟨(1 : F), 79533, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79945)

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79945) * ((1 : F) * rho 79943 + (1 : F) * rho 79944) = ((1 : F) * rho 79946)

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79947)

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79948)

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79947) * ((1 : F) * rho 79948) = ((1 : F) * rho 79949)

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79950) * ((1 : F) + (1 : F) * rho 79949) = ((1 : F) * rho 79947 + (1 : F) * rho 79948)

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79951) * ((1 : F) + (-1 : F) * rho 79949) = ((1 : F) * rho 79946 + (-1 : F) * rho 79947 + (-1 : F) * rho 79948)

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77510) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 30⟩], residual := [((1 : F), 79950)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79952)

def relationRow2624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77510) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 30⟩], residual := [((1 : F), 79951)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79953)

def relationRow2625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79943) * ((1 : F) * rho 79944) = ((1 : F) * rho 79954)

def relationRow2626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79943) * ((1 : F) * rho 79943) = ((1 : F) * rho 79955)

def relationRow2627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79944) * ((1 : F) * rho 79944) = ((1 : F) * rho 79956)

def relationRow2628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79957) * ((-1 : F) * rho 79955 + (1 : F) * rho 79956) = ((2 : F) * rho 79954)

def relationRow2629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79958) * ((2 : F) + (1 : F) * rho 79955 + (-1 : F) * rho 79956) = ((1 : F) * rho 79955 + (1 : F) * rho 79956)

def relationRow2630 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 31⟩, ⟨(1 : F), 79533, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79959)

def relationRow2631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79959) * ((1 : F) * rho 79957 + (1 : F) * rho 79958) = ((1 : F) * rho 79960)

def relationRow2632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79958) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79961)

def relationRow2633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79962)

def relationRow2634 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79961) * ((1 : F) * rho 79962) = ((1 : F) * rho 79963)

def relationRow2635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79964) * ((1 : F) + (1 : F) * rho 79963) = ((1 : F) * rho 79961 + (1 : F) * rho 79962)

def relationRow2636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79965) * ((1 : F) + (-1 : F) * rho 79963) = ((1 : F) * rho 79960 + (-1 : F) * rho 79961 + (-1 : F) * rho 79962)

def relationRow2637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77511) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 31⟩], residual := [((1 : F), 79964)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79966)

def relationRow2638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77511) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 31⟩], residual := [((1 : F), 79965)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79967)

def relationRow2639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79957) * ((1 : F) * rho 79958) = ((1 : F) * rho 79968)

def relationRow2640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79957) * ((1 : F) * rho 79957) = ((1 : F) * rho 79969)

def relationRow2641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79958) * ((1 : F) * rho 79958) = ((1 : F) * rho 79970)

def relationRow2642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79971) * ((-1 : F) * rho 79969 + (1 : F) * rho 79970) = ((2 : F) * rho 79968)

def relationRow2643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79972) * ((2 : F) + (1 : F) * rho 79969 + (-1 : F) * rho 79970) = ((1 : F) * rho 79969 + (1 : F) * rho 79970)

def relationRow2644 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 32⟩, ⟨(1 : F), 79533, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79973)

def relationRow2645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79973) * ((1 : F) * rho 79971 + (1 : F) * rho 79972) = ((1 : F) * rho 79974)

def relationRow2646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79975)

def relationRow2647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79976)

def relationRow2648 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79975) * ((1 : F) * rho 79976) = ((1 : F) * rho 79977)

def relationRow2649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79978) * ((1 : F) + (1 : F) * rho 79977) = ((1 : F) * rho 79975 + (1 : F) * rho 79976)

def relationRow2650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79979) * ((1 : F) + (-1 : F) * rho 79977) = ((1 : F) * rho 79974 + (-1 : F) * rho 79975 + (-1 : F) * rho 79976)

def relationRow2651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77512) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 32⟩], residual := [((1 : F), 79978)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79980)

def relationRow2652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77512) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 32⟩], residual := [((1 : F), 79979)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79981)

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79971) * ((1 : F) * rho 79972) = ((1 : F) * rho 79982)

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79971) * ((1 : F) * rho 79971) = ((1 : F) * rho 79983)

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79972) * ((1 : F) * rho 79972) = ((1 : F) * rho 79984)

def relationRow2656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79985) * ((-1 : F) * rho 79983 + (1 : F) * rho 79984) = ((2 : F) * rho 79982)

def relationRow2657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986) * ((2 : F) + (1 : F) * rho 79983 + (-1 : F) * rho 79984) = ((1 : F) * rho 79983 + (1 : F) * rho 79984)

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 33⟩, ⟨(1 : F), 79533, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79987)

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79987) * ((1 : F) * rho 79985 + (1 : F) * rho 79986) = ((1 : F) * rho 79988)

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79989)

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79990)

def relationRow2662 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79989) * ((1 : F) * rho 79990) = ((1 : F) * rho 79991)

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79992) * ((1 : F) + (1 : F) * rho 79991) = ((1 : F) * rho 79989 + (1 : F) * rho 79990)

def relationRow2664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79993) * ((1 : F) + (-1 : F) * rho 79991) = ((1 : F) * rho 79988 + (-1 : F) * rho 79989 + (-1 : F) * rho 79990)

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77513) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 33⟩], residual := [((1 : F), 79992)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79994)

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77513) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 33⟩], residual := [((1 : F), 79993)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79995)

def relationRow2667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79985) * ((1 : F) * rho 79986) = ((1 : F) * rho 79996)

def relationRow2668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79985) * ((1 : F) * rho 79985) = ((1 : F) * rho 79997)

def relationRow2669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986) * ((1 : F) * rho 79986) = ((1 : F) * rho 79998)

def relationRow2670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * ((-1 : F) * rho 79997 + (1 : F) * rho 79998) = ((2 : F) * rho 79996)

def relationRow2671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80000) * ((2 : F) + (1 : F) * rho 79997 + (-1 : F) * rho 79998) = ((1 : F) * rho 79997 + (1 : F) * rho 79998)

def relationRow2672 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 34⟩, ⟨(1 : F), 79533, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80001)

def relationRow2673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80001) * ((1 : F) * rho 79999 + (1 : F) * rho 80000) = ((1 : F) * rho 80002)

def relationRow2674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80003)

def relationRow2675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80004)

def relationRow2676 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80003) * ((1 : F) * rho 80004) = ((1 : F) * rho 80005)

def relationRow2677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80006) * ((1 : F) + (1 : F) * rho 80005) = ((1 : F) * rho 80003 + (1 : F) * rho 80004)

def relationRow2678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80007) * ((1 : F) + (-1 : F) * rho 80005) = ((1 : F) * rho 80002 + (-1 : F) * rho 80003 + (-1 : F) * rho 80004)

def relationRow2679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77514) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 34⟩], residual := [((1 : F), 80006)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80008)

def relationRow2680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77514) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 34⟩], residual := [((1 : F), 80007)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80009)

def relationRow2681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * ((1 : F) * rho 80000) = ((1 : F) * rho 80010)

def relationRow2682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * ((1 : F) * rho 79999) = ((1 : F) * rho 80011)

def relationRow2683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80000) * ((1 : F) * rho 80000) = ((1 : F) * rho 80012)

def relationRow2684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80013) * ((-1 : F) * rho 80011 + (1 : F) * rho 80012) = ((2 : F) * rho 80010)

def relationRow2685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80014) * ((2 : F) + (1 : F) * rho 80011 + (-1 : F) * rho 80012) = ((1 : F) * rho 80011 + (1 : F) * rho 80012)

def relationRow2686 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 35⟩, ⟨(1 : F), 79533, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80015)

def relationRow2687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80015) * ((1 : F) * rho 80013 + (1 : F) * rho 80014) = ((1 : F) * rho 80016)

def relationRow2688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80014) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80017)

def relationRow2689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80018)

def relationRow2690 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80017) * ((1 : F) * rho 80018) = ((1 : F) * rho 80019)

def relationRow2691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80020) * ((1 : F) + (1 : F) * rho 80019) = ((1 : F) * rho 80017 + (1 : F) * rho 80018)

def relationRow2692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80021) * ((1 : F) + (-1 : F) * rho 80019) = ((1 : F) * rho 80016 + (-1 : F) * rho 80017 + (-1 : F) * rho 80018)

def relationRow2693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77515) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 35⟩], residual := [((1 : F), 80020)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80022)

def relationRow2694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77515) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 35⟩], residual := [((1 : F), 80021)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80023)

def relationRow2695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80013) * ((1 : F) * rho 80014) = ((1 : F) * rho 80024)

def relationRow2696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80013) * ((1 : F) * rho 80013) = ((1 : F) * rho 80025)

def relationRow2697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80014) * ((1 : F) * rho 80014) = ((1 : F) * rho 80026)

def relationRow2698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80027) * ((-1 : F) * rho 80025 + (1 : F) * rho 80026) = ((2 : F) * rho 80024)

def relationRow2699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80028) * ((2 : F) + (1 : F) * rho 80025 + (-1 : F) * rho 80026) = ((1 : F) * rho 80025 + (1 : F) * rho 80026)

def relationRow2700 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 36⟩, ⟨(1 : F), 79533, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80029)

def relationRow2701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80029) * ((1 : F) * rho 80027 + (1 : F) * rho 80028) = ((1 : F) * rho 80030)

def relationRow2702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80031)

def relationRow2703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80032)

def relationRow2704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80031) * ((1 : F) * rho 80032) = ((1 : F) * rho 80033)

def relationRow2705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80034) * ((1 : F) + (1 : F) * rho 80033) = ((1 : F) * rho 80031 + (1 : F) * rho 80032)

def relationRow2706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80035) * ((1 : F) + (-1 : F) * rho 80033) = ((1 : F) * rho 80030 + (-1 : F) * rho 80031 + (-1 : F) * rho 80032)

def relationRow2707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77516) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 36⟩], residual := [((1 : F), 80034)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80036)

def relationRow2708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77516) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 36⟩], residual := [((1 : F), 80035)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80037)

def relationRow2709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80027) * ((1 : F) * rho 80028) = ((1 : F) * rho 80038)

def relationRow2710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80027) * ((1 : F) * rho 80027) = ((1 : F) * rho 80039)

def relationRow2711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80028) * ((1 : F) * rho 80028) = ((1 : F) * rho 80040)

def relationRow2712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80041) * ((-1 : F) * rho 80039 + (1 : F) * rho 80040) = ((2 : F) * rho 80038)

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80042) * ((2 : F) + (1 : F) * rho 80039 + (-1 : F) * rho 80040) = ((1 : F) * rho 80039 + (1 : F) * rho 80040)

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 37⟩, ⟨(1 : F), 79533, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80043)

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80043) * ((1 : F) * rho 80041 + (1 : F) * rho 80042) = ((1 : F) * rho 80044)

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80045)

def relationRow2717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80046)

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80045) * ((1 : F) * rho 80046) = ((1 : F) * rho 80047)

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80048) * ((1 : F) + (1 : F) * rho 80047) = ((1 : F) * rho 80045 + (1 : F) * rho 80046)

def relationRow2720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80049) * ((1 : F) + (-1 : F) * rho 80047) = ((1 : F) * rho 80044 + (-1 : F) * rho 80045 + (-1 : F) * rho 80046)

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77517) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 37⟩], residual := [((1 : F), 80048)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80050)

def relationRow2722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77517) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 37⟩], residual := [((1 : F), 80049)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80051)

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80041) * ((1 : F) * rho 80042) = ((1 : F) * rho 80052)

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80041) * ((1 : F) * rho 80041) = ((1 : F) * rho 80053)

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80042) * ((1 : F) * rho 80042) = ((1 : F) * rho 80054)

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80055) * ((-1 : F) * rho 80053 + (1 : F) * rho 80054) = ((2 : F) * rho 80052)

def relationRow2727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80056) * ((2 : F) + (1 : F) * rho 80053 + (-1 : F) * rho 80054) = ((1 : F) * rho 80053 + (1 : F) * rho 80054)

def relationRow2728 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 38⟩, ⟨(1 : F), 79533, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80057)

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80057) * ((1 : F) * rho 80055 + (1 : F) * rho 80056) = ((1 : F) * rho 80058)

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80059)

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80060)

def relationRow2732 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80059) * ((1 : F) * rho 80060) = ((1 : F) * rho 80061)

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80062) * ((1 : F) + (1 : F) * rho 80061) = ((1 : F) * rho 80059 + (1 : F) * rho 80060)

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80063) * ((1 : F) + (-1 : F) * rho 80061) = ((1 : F) * rho 80058 + (-1 : F) * rho 80059 + (-1 : F) * rho 80060)

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77518) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 38⟩], residual := [((1 : F), 80062)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80064)

def relationRow2736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77518) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 38⟩], residual := [((1 : F), 80063)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80065)

def relationRow2737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80055) * ((1 : F) * rho 80056) = ((1 : F) * rho 80066)

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80055) * ((1 : F) * rho 80055) = ((1 : F) * rho 80067)

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80056) * ((1 : F) * rho 80056) = ((1 : F) * rho 80068)

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80069) * ((-1 : F) * rho 80067 + (1 : F) * rho 80068) = ((2 : F) * rho 80066)

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80070) * ((2 : F) + (1 : F) * rho 80067 + (-1 : F) * rho 80068) = ((1 : F) * rho 80067 + (1 : F) * rho 80068)

def relationRow2742 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 39⟩, ⟨(1 : F), 79533, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80071)

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80071) * ((1 : F) * rho 80069 + (1 : F) * rho 80070) = ((1 : F) * rho 80072)

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80073)

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80074)

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80073) * ((1 : F) * rho 80074) = ((1 : F) * rho 80075)

def relationRow2747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80076) * ((1 : F) + (1 : F) * rho 80075) = ((1 : F) * rho 80073 + (1 : F) * rho 80074)

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80077) * ((1 : F) + (-1 : F) * rho 80075) = ((1 : F) * rho 80072 + (-1 : F) * rho 80073 + (-1 : F) * rho 80074)

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77519) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 39⟩], residual := [((1 : F), 80076)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80078)

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77519) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 39⟩], residual := [((1 : F), 80077)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80079)

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80069) * ((1 : F) * rho 80070) = ((1 : F) * rho 80080)

def relationRow2752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80069) * ((1 : F) * rho 80069) = ((1 : F) * rho 80081)

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80070) * ((1 : F) * rho 80070) = ((1 : F) * rho 80082)

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80083) * ((-1 : F) * rho 80081 + (1 : F) * rho 80082) = ((2 : F) * rho 80080)

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80084) * ((2 : F) + (1 : F) * rho 80081 + (-1 : F) * rho 80082) = ((1 : F) * rho 80081 + (1 : F) * rho 80082)

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 40⟩, ⟨(1 : F), 79533, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80085)

def relationRow2757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80085) * ((1 : F) * rho 80083 + (1 : F) * rho 80084) = ((1 : F) * rho 80086)

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80084) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80087)

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80083) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80088)

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80087) * ((1 : F) * rho 80088) = ((1 : F) * rho 80089)

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80090) * ((1 : F) + (1 : F) * rho 80089) = ((1 : F) * rho 80087 + (1 : F) * rho 80088)

def relationRow2762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80091) * ((1 : F) + (-1 : F) * rho 80089) = ((1 : F) * rho 80086 + (-1 : F) * rho 80087 + (-1 : F) * rho 80088)

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77520) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 40⟩], residual := [((1 : F), 80090)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80092)

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77520) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 40⟩], residual := [((1 : F), 80091)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80093)

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80083) * ((1 : F) * rho 80084) = ((1 : F) * rho 80094)

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80083) * ((1 : F) * rho 80083) = ((1 : F) * rho 80095)

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80084) * ((1 : F) * rho 80084) = ((1 : F) * rho 80096)

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80097) * ((-1 : F) * rho 80095 + (1 : F) * rho 80096) = ((2 : F) * rho 80094)

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80098) * ((2 : F) + (1 : F) * rho 80095 + (-1 : F) * rho 80096) = ((1 : F) * rho 80095 + (1 : F) * rho 80096)

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 41⟩, ⟨(1 : F), 79533, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80099)

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80099) * ((1 : F) * rho 80097 + (1 : F) * rho 80098) = ((1 : F) * rho 80100)

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80098) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80101)

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80097) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80102)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80101) * ((1 : F) * rho 80102) = ((1 : F) * rho 80103)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80104) * ((1 : F) + (1 : F) * rho 80103) = ((1 : F) * rho 80101 + (1 : F) * rho 80102)

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80105) * ((1 : F) + (-1 : F) * rho 80103) = ((1 : F) * rho 80100 + (-1 : F) * rho 80101 + (-1 : F) * rho 80102)

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77521) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 41⟩], residual := [((1 : F), 80104)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80106)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77521) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 41⟩], residual := [((1 : F), 80105)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80107)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80097) * ((1 : F) * rho 80098) = ((1 : F) * rho 80108)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80097) * ((1 : F) * rho 80097) = ((1 : F) * rho 80109)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80098) * ((1 : F) * rho 80098) = ((1 : F) * rho 80110)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80111) * ((-1 : F) * rho 80109 + (1 : F) * rho 80110) = ((2 : F) * rho 80108)

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80112) * ((2 : F) + (1 : F) * rho 80109 + (-1 : F) * rho 80110) = ((1 : F) * rho 80109 + (1 : F) * rho 80110)

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 42⟩, ⟨(1 : F), 79533, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80113)

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80113) * ((1 : F) * rho 80111 + (1 : F) * rho 80112) = ((1 : F) * rho 80114)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80112) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80115)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80111) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80116)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80115) * ((1 : F) * rho 80116) = ((1 : F) * rho 80117)

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80118) * ((1 : F) + (1 : F) * rho 80117) = ((1 : F) * rho 80115 + (1 : F) * rho 80116)

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80119) * ((1 : F) + (-1 : F) * rho 80117) = ((1 : F) * rho 80114 + (-1 : F) * rho 80115 + (-1 : F) * rho 80116)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77522) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 42⟩], residual := [((1 : F), 80118)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80120)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77522) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 42⟩], residual := [((1 : F), 80119)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80121)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80111) * ((1 : F) * rho 80112) = ((1 : F) * rho 80122)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80111) * ((1 : F) * rho 80111) = ((1 : F) * rho 80123)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80112) * ((1 : F) * rho 80112) = ((1 : F) * rho 80124)

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80125) * ((-1 : F) * rho 80123 + (1 : F) * rho 80124) = ((2 : F) * rho 80122)

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80126) * ((2 : F) + (1 : F) * rho 80123 + (-1 : F) * rho 80124) = ((1 : F) * rho 80123 + (1 : F) * rho 80124)

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 43⟩, ⟨(1 : F), 79533, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80127)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80127) * ((1 : F) * rho 80125 + (1 : F) * rho 80126) = ((1 : F) * rho 80128)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80126) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80129)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80125) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80130)

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80129) * ((1 : F) * rho 80130) = ((1 : F) * rho 80131)

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80132) * ((1 : F) + (1 : F) * rho 80131) = ((1 : F) * rho 80129 + (1 : F) * rho 80130)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80133) * ((1 : F) + (-1 : F) * rho 80131) = ((1 : F) * rho 80128 + (-1 : F) * rho 80129 + (-1 : F) * rho 80130)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77523) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 43⟩], residual := [((1 : F), 80132)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80134)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77523) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 43⟩], residual := [((1 : F), 80133)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80135)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80125) * ((1 : F) * rho 80126) = ((1 : F) * rho 80136)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80125) * ((1 : F) * rho 80125) = ((1 : F) * rho 80137)

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80126) * ((1 : F) * rho 80126) = ((1 : F) * rho 80138)

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80139) * ((-1 : F) * rho 80137 + (1 : F) * rho 80138) = ((2 : F) * rho 80136)

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80140) * ((2 : F) + (1 : F) * rho 80137 + (-1 : F) * rho 80138) = ((1 : F) * rho 80137 + (1 : F) * rho 80138)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 44⟩, ⟨(1 : F), 79533, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80141)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80141) * ((1 : F) * rho 80139 + (1 : F) * rho 80140) = ((1 : F) * rho 80142)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80140) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80143)

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80139) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80144)

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80143) * ((1 : F) * rho 80144) = ((1 : F) * rho 80145)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80146) * ((1 : F) + (1 : F) * rho 80145) = ((1 : F) * rho 80143 + (1 : F) * rho 80144)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80147) * ((1 : F) + (-1 : F) * rho 80145) = ((1 : F) * rho 80142 + (-1 : F) * rho 80143 + (-1 : F) * rho 80144)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77524) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 44⟩], residual := [((1 : F), 80146)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80148)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77524) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 44⟩], residual := [((1 : F), 80147)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80149)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80139) * ((1 : F) * rho 80140) = ((1 : F) * rho 80150)

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80139) * ((1 : F) * rho 80139) = ((1 : F) * rho 80151)

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80140) * ((1 : F) * rho 80140) = ((1 : F) * rho 80152)

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80153) * ((-1 : F) * rho 80151 + (1 : F) * rho 80152) = ((2 : F) * rho 80150)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80154) * ((2 : F) + (1 : F) * rho 80151 + (-1 : F) * rho 80152) = ((1 : F) * rho 80151 + (1 : F) * rho 80152)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 45⟩, ⟨(1 : F), 79533, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80155)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80155) * ((1 : F) * rho 80153 + (1 : F) * rho 80154) = ((1 : F) * rho 80156)

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80154) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80157)

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80153) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80158)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80157) * ((1 : F) * rho 80158) = ((1 : F) * rho 80159)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80160) * ((1 : F) + (1 : F) * rho 80159) = ((1 : F) * rho 80157 + (1 : F) * rho 80158)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80161) * ((1 : F) + (-1 : F) * rho 80159) = ((1 : F) * rho 80156 + (-1 : F) * rho 80157 + (-1 : F) * rho 80158)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77525) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 45⟩], residual := [((1 : F), 80160)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80162)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77525) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 45⟩], residual := [((1 : F), 80161)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80163)

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80153) * ((1 : F) * rho 80154) = ((1 : F) * rho 80164)

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80153) * ((1 : F) * rho 80153) = ((1 : F) * rho 80165)

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80154) * ((1 : F) * rho 80154) = ((1 : F) * rho 80166)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80167) * ((-1 : F) * rho 80165 + (1 : F) * rho 80166) = ((2 : F) * rho 80164)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80168) * ((2 : F) + (1 : F) * rho 80165 + (-1 : F) * rho 80166) = ((1 : F) * rho 80165 + (1 : F) * rho 80166)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 46⟩, ⟨(1 : F), 79533, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80169)

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80169) * ((1 : F) * rho 80167 + (1 : F) * rho 80168) = ((1 : F) * rho 80170)

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80168) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80171)

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80167) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80172)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80171) * ((1 : F) * rho 80172) = ((1 : F) * rho 80173)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80174) * ((1 : F) + (1 : F) * rho 80173) = ((1 : F) * rho 80171 + (1 : F) * rho 80172)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80175) * ((1 : F) + (-1 : F) * rho 80173) = ((1 : F) * rho 80170 + (-1 : F) * rho 80171 + (-1 : F) * rho 80172)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77526) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 46⟩], residual := [((1 : F), 80174)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80176)

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77526) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 46⟩], residual := [((1 : F), 80175)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80177)

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80167) * ((1 : F) * rho 80168) = ((1 : F) * rho 80178)

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80167) * ((1 : F) * rho 80167) = ((1 : F) * rho 80179)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80168) * ((1 : F) * rho 80168) = ((1 : F) * rho 80180)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80181) * ((-1 : F) * rho 80179 + (1 : F) * rho 80180) = ((2 : F) * rho 80178)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80182) * ((2 : F) + (1 : F) * rho 80179 + (-1 : F) * rho 80180) = ((1 : F) * rho 80179 + (1 : F) * rho 80180)

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 47⟩, ⟨(1 : F), 79533, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80183)

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80183) * ((1 : F) * rho 80181 + (1 : F) * rho 80182) = ((1 : F) * rho 80184)

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80182) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80185)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80181) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80186)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80185) * ((1 : F) * rho 80186) = ((1 : F) * rho 80187)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80188) * ((1 : F) + (1 : F) * rho 80187) = ((1 : F) * rho 80185 + (1 : F) * rho 80186)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80189) * ((1 : F) + (-1 : F) * rho 80187) = ((1 : F) * rho 80184 + (-1 : F) * rho 80185 + (-1 : F) * rho 80186)

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77527) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 47⟩], residual := [((1 : F), 80188)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80190)

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77527) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 47⟩], residual := [((1 : F), 80189)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80191)

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80181) * ((1 : F) * rho 80182) = ((1 : F) * rho 80192)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80181) * ((1 : F) * rho 80181) = ((1 : F) * rho 80193)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80182) * ((1 : F) * rho 80182) = ((1 : F) * rho 80194)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80195) * ((-1 : F) * rho 80193 + (1 : F) * rho 80194) = ((2 : F) * rho 80192)

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80196) * ((2 : F) + (1 : F) * rho 80193 + (-1 : F) * rho 80194) = ((1 : F) * rho 80193 + (1 : F) * rho 80194)

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 48⟩, ⟨(1 : F), 79533, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80197)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80197) * ((1 : F) * rho 80195 + (1 : F) * rho 80196) = ((1 : F) * rho 80198)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80196) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80199)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80195) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80200)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80199) * ((1 : F) * rho 80200) = ((1 : F) * rho 80201)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80202) * ((1 : F) + (1 : F) * rho 80201) = ((1 : F) * rho 80199 + (1 : F) * rho 80200)

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80203) * ((1 : F) + (-1 : F) * rho 80201) = ((1 : F) * rho 80198 + (-1 : F) * rho 80199 + (-1 : F) * rho 80200)

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77528) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 48⟩], residual := [((1 : F), 80202)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80204)

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77528) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 48⟩], residual := [((1 : F), 80203)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80205)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80195) * ((1 : F) * rho 80196) = ((1 : F) * rho 80206)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80195) * ((1 : F) * rho 80195) = ((1 : F) * rho 80207)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80196) * ((1 : F) * rho 80196) = ((1 : F) * rho 80208)

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80209) * ((-1 : F) * rho 80207 + (1 : F) * rho 80208) = ((2 : F) * rho 80206)

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80210) * ((2 : F) + (1 : F) * rho 80207 + (-1 : F) * rho 80208) = ((1 : F) * rho 80207 + (1 : F) * rho 80208)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 49⟩, ⟨(1 : F), 79533, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80211)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80211) * ((1 : F) * rho 80209 + (1 : F) * rho 80210) = ((1 : F) * rho 80212)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80210) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80213)

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80209) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80214)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80213) * ((1 : F) * rho 80214) = ((1 : F) * rho 80215)

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80216) * ((1 : F) + (1 : F) * rho 80215) = ((1 : F) * rho 80213 + (1 : F) * rho 80214)

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80217) * ((1 : F) + (-1 : F) * rho 80215) = ((1 : F) * rho 80212 + (-1 : F) * rho 80213 + (-1 : F) * rho 80214)

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77529) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 49⟩], residual := [((1 : F), 80216)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80218)

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77529) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 49⟩], residual := [((1 : F), 80217)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80219)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80209) * ((1 : F) * rho 80210) = ((1 : F) * rho 80220)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80209) * ((1 : F) * rho 80209) = ((1 : F) * rho 80221)

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80210) * ((1 : F) * rho 80210) = ((1 : F) * rho 80222)

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80223) * ((-1 : F) * rho 80221 + (1 : F) * rho 80222) = ((2 : F) * rho 80220)

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80224) * ((2 : F) + (1 : F) * rho 80221 + (-1 : F) * rho 80222) = ((1 : F) * rho 80221 + (1 : F) * rho 80222)

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 50⟩, ⟨(1 : F), 79533, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80225)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80225) * ((1 : F) * rho 80223 + (1 : F) * rho 80224) = ((1 : F) * rho 80226)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80224) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80227)

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80223) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80228)

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80227) * ((1 : F) * rho 80228) = ((1 : F) * rho 80229)

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80230) * ((1 : F) + (1 : F) * rho 80229) = ((1 : F) * rho 80227 + (1 : F) * rho 80228)

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80231) * ((1 : F) + (-1 : F) * rho 80229) = ((1 : F) * rho 80226 + (-1 : F) * rho 80227 + (-1 : F) * rho 80228)

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77530) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 50⟩], residual := [((1 : F), 80230)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80232)

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77530) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 50⟩], residual := [((1 : F), 80231)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80233)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80223) * ((1 : F) * rho 80224) = ((1 : F) * rho 80234)

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80223) * ((1 : F) * rho 80223) = ((1 : F) * rho 80235)

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80224) * ((1 : F) * rho 80224) = ((1 : F) * rho 80236)

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80237) * ((-1 : F) * rho 80235 + (1 : F) * rho 80236) = ((2 : F) * rho 80234)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80238) * ((2 : F) + (1 : F) * rho 80235 + (-1 : F) * rho 80236) = ((1 : F) * rho 80235 + (1 : F) * rho 80236)

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 51⟩, ⟨(1 : F), 79533, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80239)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80239) * ((1 : F) * rho 80237 + (1 : F) * rho 80238) = ((1 : F) * rho 80240)

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80238) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80241)

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80237) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80242)

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80241) * ((1 : F) * rho 80242) = ((1 : F) * rho 80243)

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80244) * ((1 : F) + (1 : F) * rho 80243) = ((1 : F) * rho 80241 + (1 : F) * rho 80242)

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80245) * ((1 : F) + (-1 : F) * rho 80243) = ((1 : F) * rho 80240 + (-1 : F) * rho 80241 + (-1 : F) * rho 80242)

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77531) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 51⟩], residual := [((1 : F), 80244)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80246)

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77531) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 51⟩], residual := [((1 : F), 80245)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80247)

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80237) * ((1 : F) * rho 80238) = ((1 : F) * rho 80248)

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80237) * ((1 : F) * rho 80237) = ((1 : F) * rho 80249)

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80238) * ((1 : F) * rho 80238) = ((1 : F) * rho 80250)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80251) * ((-1 : F) * rho 80249 + (1 : F) * rho 80250) = ((2 : F) * rho 80248)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80252) * ((2 : F) + (1 : F) * rho 80249 + (-1 : F) * rho 80250) = ((1 : F) * rho 80249 + (1 : F) * rho 80250)

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 52⟩, ⟨(1 : F), 79533, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80253)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80253) * ((1 : F) * rho 80251 + (1 : F) * rho 80252) = ((1 : F) * rho 80254)

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80252) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80255)

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80251) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80256)

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80255) * ((1 : F) * rho 80256) = ((1 : F) * rho 80257)

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80258) * ((1 : F) + (1 : F) * rho 80257) = ((1 : F) * rho 80255 + (1 : F) * rho 80256)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80259) * ((1 : F) + (-1 : F) * rho 80257) = ((1 : F) * rho 80254 + (-1 : F) * rho 80255 + (-1 : F) * rho 80256)

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77532) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 52⟩], residual := [((1 : F), 80258)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80260)

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77532) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 52⟩], residual := [((1 : F), 80259)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80261)

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80251) * ((1 : F) * rho 80252) = ((1 : F) * rho 80262)

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80251) * ((1 : F) * rho 80251) = ((1 : F) * rho 80263)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80252) * ((1 : F) * rho 80252) = ((1 : F) * rho 80264)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80265) * ((-1 : F) * rho 80263 + (1 : F) * rho 80264) = ((2 : F) * rho 80262)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80266) * ((2 : F) + (1 : F) * rho 80263 + (-1 : F) * rho 80264) = ((1 : F) * rho 80263 + (1 : F) * rho 80264)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 53⟩, ⟨(1 : F), 79533, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80267)

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80267) * ((1 : F) * rho 80265 + (1 : F) * rho 80266) = ((1 : F) * rho 80268)

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80266) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80269)

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80265) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80270)

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80269) * ((1 : F) * rho 80270) = ((1 : F) * rho 80271)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80272) * ((1 : F) + (1 : F) * rho 80271) = ((1 : F) * rho 80269 + (1 : F) * rho 80270)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80273) * ((1 : F) + (-1 : F) * rho 80271) = ((1 : F) * rho 80268 + (-1 : F) * rho 80269 + (-1 : F) * rho 80270)

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77533) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 53⟩], residual := [((1 : F), 80272)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80274)

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77533) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 53⟩], residual := [((1 : F), 80273)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80275)

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80265) * ((1 : F) * rho 80266) = ((1 : F) * rho 80276)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80265) * ((1 : F) * rho 80265) = ((1 : F) * rho 80277)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80266) * ((1 : F) * rho 80266) = ((1 : F) * rho 80278)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80279) * ((-1 : F) * rho 80277 + (1 : F) * rho 80278) = ((2 : F) * rho 80276)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80280) * ((2 : F) + (1 : F) * rho 80277 + (-1 : F) * rho 80278) = ((1 : F) * rho 80277 + (1 : F) * rho 80278)

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 54⟩, ⟨(1 : F), 79533, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80281)

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80281) * ((1 : F) * rho 80279 + (1 : F) * rho 80280) = ((1 : F) * rho 80282)

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80280) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80283)

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80279) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80284)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80283) * ((1 : F) * rho 80284) = ((1 : F) * rho 80285)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80286) * ((1 : F) + (1 : F) * rho 80285) = ((1 : F) * rho 80283 + (1 : F) * rho 80284)

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80287) * ((1 : F) + (-1 : F) * rho 80285) = ((1 : F) * rho 80282 + (-1 : F) * rho 80283 + (-1 : F) * rho 80284)

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77534) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 54⟩], residual := [((1 : F), 80286)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80288)

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77534) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 54⟩], residual := [((1 : F), 80287)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80289)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80279) * ((1 : F) * rho 80280) = ((1 : F) * rho 80290)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80279) * ((1 : F) * rho 80279) = ((1 : F) * rho 80291)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80280) * ((1 : F) * rho 80280) = ((1 : F) * rho 80292)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80293) * ((-1 : F) * rho 80291 + (1 : F) * rho 80292) = ((2 : F) * rho 80290)

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80294) * ((2 : F) + (1 : F) * rho 80291 + (-1 : F) * rho 80292) = ((1 : F) * rho 80291 + (1 : F) * rho 80292)

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 55⟩, ⟨(1 : F), 79533, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80295)

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80295) * ((1 : F) * rho 80293 + (1 : F) * rho 80294) = ((1 : F) * rho 80296)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80294) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80297)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80293) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80298)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80297) * ((1 : F) * rho 80298) = ((1 : F) * rho 80299)

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80300) * ((1 : F) + (1 : F) * rho 80299) = ((1 : F) * rho 80297 + (1 : F) * rho 80298)

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80301) * ((1 : F) + (-1 : F) * rho 80299) = ((1 : F) * rho 80296 + (-1 : F) * rho 80297 + (-1 : F) * rho 80298)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77535) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 55⟩], residual := [((1 : F), 80300)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80302)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77535) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 55⟩], residual := [((1 : F), 80301)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80303)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80293) * ((1 : F) * rho 80294) = ((1 : F) * rho 80304)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80293) * ((1 : F) * rho 80293) = ((1 : F) * rho 80305)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80294) * ((1 : F) * rho 80294) = ((1 : F) * rho 80306)

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80307) * ((-1 : F) * rho 80305 + (1 : F) * rho 80306) = ((2 : F) * rho 80304)

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80308) * ((2 : F) + (1 : F) * rho 80305 + (-1 : F) * rho 80306) = ((1 : F) * rho 80305 + (1 : F) * rho 80306)

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 56⟩, ⟨(1 : F), 79533, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80309)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80309) * ((1 : F) * rho 80307 + (1 : F) * rho 80308) = ((1 : F) * rho 80310)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80308) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80311)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80307) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80312)

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80311) * ((1 : F) * rho 80312) = ((1 : F) * rho 80313)

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80314) * ((1 : F) + (1 : F) * rho 80313) = ((1 : F) * rho 80311 + (1 : F) * rho 80312)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80315) * ((1 : F) + (-1 : F) * rho 80313) = ((1 : F) * rho 80310 + (-1 : F) * rho 80311 + (-1 : F) * rho 80312)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77536) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 56⟩], residual := [((1 : F), 80314)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80316)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77536) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 56⟩], residual := [((1 : F), 80315)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80317)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80307) * ((1 : F) * rho 80308) = ((1 : F) * rho 80318)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80307) * ((1 : F) * rho 80307) = ((1 : F) * rho 80319)

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80308) * ((1 : F) * rho 80308) = ((1 : F) * rho 80320)

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80321) * ((-1 : F) * rho 80319 + (1 : F) * rho 80320) = ((2 : F) * rho 80318)

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80322) * ((2 : F) + (1 : F) * rho 80319 + (-1 : F) * rho 80320) = ((1 : F) * rho 80319 + (1 : F) * rho 80320)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 57⟩, ⟨(1 : F), 79533, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80323)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80323) * ((1 : F) * rho 80321 + (1 : F) * rho 80322) = ((1 : F) * rho 80324)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80322) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80325)

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80321) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80326)

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80325) * ((1 : F) * rho 80326) = ((1 : F) * rho 80327)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80328) * ((1 : F) + (1 : F) * rho 80327) = ((1 : F) * rho 80325 + (1 : F) * rho 80326)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80329) * ((1 : F) + (-1 : F) * rho 80327) = ((1 : F) * rho 80324 + (-1 : F) * rho 80325 + (-1 : F) * rho 80326)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77537) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 57⟩], residual := [((1 : F), 80328)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80330)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77537) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 57⟩], residual := [((1 : F), 80329)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80331)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80321) * ((1 : F) * rho 80322) = ((1 : F) * rho 80332)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80321) * ((1 : F) * rho 80321) = ((1 : F) * rho 80333)

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80322) * ((1 : F) * rho 80322) = ((1 : F) * rho 80334)

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80335) * ((-1 : F) * rho 80333 + (1 : F) * rho 80334) = ((2 : F) * rho 80332)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80336) * ((2 : F) + (1 : F) * rho 80333 + (-1 : F) * rho 80334) = ((1 : F) * rho 80333 + (1 : F) * rho 80334)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 58⟩, ⟨(1 : F), 79533, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80337)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80337) * ((1 : F) * rho 80335 + (1 : F) * rho 80336) = ((1 : F) * rho 80338)

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80336) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80339)

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80335) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80340)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80339) * ((1 : F) * rho 80340) = ((1 : F) * rho 80341)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80342) * ((1 : F) + (1 : F) * rho 80341) = ((1 : F) * rho 80339 + (1 : F) * rho 80340)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80343) * ((1 : F) + (-1 : F) * rho 80341) = ((1 : F) * rho 80338 + (-1 : F) * rho 80339 + (-1 : F) * rho 80340)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77538) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 58⟩], residual := [((1 : F), 80342)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80344)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77538) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 58⟩], residual := [((1 : F), 80343)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80345)

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80335) * ((1 : F) * rho 80336) = ((1 : F) * rho 80346)

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80335) * ((1 : F) * rho 80335) = ((1 : F) * rho 80347)

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80336) * ((1 : F) * rho 80336) = ((1 : F) * rho 80348)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80349) * ((-1 : F) * rho 80347 + (1 : F) * rho 80348) = ((2 : F) * rho 80346)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80350) * ((2 : F) + (1 : F) * rho 80347 + (-1 : F) * rho 80348) = ((1 : F) * rho 80347 + (1 : F) * rho 80348)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 59⟩, ⟨(1 : F), 79533, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80351)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80351) * ((1 : F) * rho 80349 + (1 : F) * rho 80350) = ((1 : F) * rho 80352)

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80350) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80353)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80349) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80354)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80353) * ((1 : F) * rho 80354) = ((1 : F) * rho 80355)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80356) * ((1 : F) + (1 : F) * rho 80355) = ((1 : F) * rho 80353 + (1 : F) * rho 80354)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80357) * ((1 : F) + (-1 : F) * rho 80355) = ((1 : F) * rho 80352 + (-1 : F) * rho 80353 + (-1 : F) * rho 80354)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77539) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 59⟩], residual := [((1 : F), 80356)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80358)

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77539) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 59⟩], residual := [((1 : F), 80357)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80359)

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80349) * ((1 : F) * rho 80350) = ((1 : F) * rho 80360)

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80349) * ((1 : F) * rho 80349) = ((1 : F) * rho 80361)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80350) * ((1 : F) * rho 80350) = ((1 : F) * rho 80362)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80363) * ((-1 : F) * rho 80361 + (1 : F) * rho 80362) = ((2 : F) * rho 80360)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80364) * ((2 : F) + (1 : F) * rho 80361 + (-1 : F) * rho 80362) = ((1 : F) * rho 80361 + (1 : F) * rho 80362)

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 60⟩, ⟨(1 : F), 79533, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80365)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80365) * ((1 : F) * rho 80363 + (1 : F) * rho 80364) = ((1 : F) * rho 80366)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80364) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80367)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80363) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80368)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80367) * ((1 : F) * rho 80368) = ((1 : F) * rho 80369)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80370) * ((1 : F) + (1 : F) * rho 80369) = ((1 : F) * rho 80367 + (1 : F) * rho 80368)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80371) * ((1 : F) + (-1 : F) * rho 80369) = ((1 : F) * rho 80366 + (-1 : F) * rho 80367 + (-1 : F) * rho 80368)

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77540) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 60⟩], residual := [((1 : F), 80370)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80372)

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77540) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 60⟩], residual := [((1 : F), 80371)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80373)

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80363) * ((1 : F) * rho 80364) = ((1 : F) * rho 80374)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80363) * ((1 : F) * rho 80363) = ((1 : F) * rho 80375)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80364) * ((1 : F) * rho 80364) = ((1 : F) * rho 80376)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80377) * ((-1 : F) * rho 80375 + (1 : F) * rho 80376) = ((2 : F) * rho 80374)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80378) * ((2 : F) + (1 : F) * rho 80375 + (-1 : F) * rho 80376) = ((1 : F) * rho 80375 + (1 : F) * rho 80376)

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 61⟩, ⟨(1 : F), 79533, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80379)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80379) * ((1 : F) * rho 80377 + (1 : F) * rho 80378) = ((1 : F) * rho 80380)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80378) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80381)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80377) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80382)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80381) * ((1 : F) * rho 80382) = ((1 : F) * rho 80383)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80384) * ((1 : F) + (1 : F) * rho 80383) = ((1 : F) * rho 80381 + (1 : F) * rho 80382)

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80385) * ((1 : F) + (-1 : F) * rho 80383) = ((1 : F) * rho 80380 + (-1 : F) * rho 80381 + (-1 : F) * rho 80382)

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77541) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 61⟩], residual := [((1 : F), 80384)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80386)

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77541) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 61⟩], residual := [((1 : F), 80385)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80387)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80377) * ((1 : F) * rho 80378) = ((1 : F) * rho 80388)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80377) * ((1 : F) * rho 80377) = ((1 : F) * rho 80389)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80378) * ((1 : F) * rho 80378) = ((1 : F) * rho 80390)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80391) * ((-1 : F) * rho 80389 + (1 : F) * rho 80390) = ((2 : F) * rho 80388)

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80392) * ((2 : F) + (1 : F) * rho 80389 + (-1 : F) * rho 80390) = ((1 : F) * rho 80389 + (1 : F) * rho 80390)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 62⟩, ⟨(1 : F), 79533, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80393)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80393) * ((1 : F) * rho 80391 + (1 : F) * rho 80392) = ((1 : F) * rho 80394)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80392) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80395)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80391) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80396)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80395) * ((1 : F) * rho 80396) = ((1 : F) * rho 80397)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80398) * ((1 : F) + (1 : F) * rho 80397) = ((1 : F) * rho 80395 + (1 : F) * rho 80396)

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80399) * ((1 : F) + (-1 : F) * rho 80397) = ((1 : F) * rho 80394 + (-1 : F) * rho 80395 + (-1 : F) * rho 80396)

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77542) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 62⟩], residual := [((1 : F), 80398)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80400)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77542) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 62⟩], residual := [((1 : F), 80399)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80401)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80391) * ((1 : F) * rho 80392) = ((1 : F) * rho 80402)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80391) * ((1 : F) * rho 80391) = ((1 : F) * rho 80403)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80392) * ((1 : F) * rho 80392) = ((1 : F) * rho 80404)

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80405) * ((-1 : F) * rho 80403 + (1 : F) * rho 80404) = ((2 : F) * rho 80402)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80406) * ((2 : F) + (1 : F) * rho 80403 + (-1 : F) * rho 80404) = ((1 : F) * rho 80403 + (1 : F) * rho 80404)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 63⟩, ⟨(1 : F), 79533, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80407)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80407) * ((1 : F) * rho 80405 + (1 : F) * rho 80406) = ((1 : F) * rho 80408)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80406) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80409)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80405) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80410)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80409) * ((1 : F) * rho 80410) = ((1 : F) * rho 80411)

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80412) * ((1 : F) + (1 : F) * rho 80411) = ((1 : F) * rho 80409 + (1 : F) * rho 80410)

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80413) * ((1 : F) + (-1 : F) * rho 80411) = ((1 : F) * rho 80408 + (-1 : F) * rho 80409 + (-1 : F) * rho 80410)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77543) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 63⟩], residual := [((1 : F), 80412)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80414)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77543) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 63⟩], residual := [((1 : F), 80413)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80415)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80405) * ((1 : F) * rho 80406) = ((1 : F) * rho 80416)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80405) * ((1 : F) * rho 80405) = ((1 : F) * rho 80417)

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80406) * ((1 : F) * rho 80406) = ((1 : F) * rho 80418)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80419) * ((-1 : F) * rho 80417 + (1 : F) * rho 80418) = ((2 : F) * rho 80416)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80420) * ((2 : F) + (1 : F) * rho 80417 + (-1 : F) * rho 80418) = ((1 : F) * rho 80417 + (1 : F) * rho 80418)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 64⟩, ⟨(1 : F), 79533, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80421)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80421) * ((1 : F) * rho 80419 + (1 : F) * rho 80420) = ((1 : F) * rho 80422)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80423)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80419) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80424)

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80423) * ((1 : F) * rho 80424) = ((1 : F) * rho 80425)

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80426) * ((1 : F) + (1 : F) * rho 80425) = ((1 : F) * rho 80423 + (1 : F) * rho 80424)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80427) * ((1 : F) + (-1 : F) * rho 80425) = ((1 : F) * rho 80422 + (-1 : F) * rho 80423 + (-1 : F) * rho 80424)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77544) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 64⟩], residual := [((1 : F), 80426)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80428)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77544) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 64⟩], residual := [((1 : F), 80427)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80429)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80419) * ((1 : F) * rho 80420) = ((1 : F) * rho 80430)

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80419) * ((1 : F) * rho 80419) = ((1 : F) * rho 80431)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80420) * ((1 : F) * rho 80420) = ((1 : F) * rho 80432)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80433) * ((-1 : F) * rho 80431 + (1 : F) * rho 80432) = ((2 : F) * rho 80430)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80434) * ((2 : F) + (1 : F) * rho 80431 + (-1 : F) * rho 80432) = ((1 : F) * rho 80431 + (1 : F) * rho 80432)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 65⟩, ⟨(1 : F), 79533, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80435)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80435) * ((1 : F) * rho 80433 + (1 : F) * rho 80434) = ((1 : F) * rho 80436)

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80434) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80437)

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80438)

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80437) * ((1 : F) * rho 80438) = ((1 : F) * rho 80439)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80440) * ((1 : F) + (1 : F) * rho 80439) = ((1 : F) * rho 80437 + (1 : F) * rho 80438)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80441) * ((1 : F) + (-1 : F) * rho 80439) = ((1 : F) * rho 80436 + (-1 : F) * rho 80437 + (-1 : F) * rho 80438)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77545) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 65⟩], residual := [((1 : F), 80440)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80442)

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77545) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 65⟩], residual := [((1 : F), 80441)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80443)

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80433) * ((1 : F) * rho 80434) = ((1 : F) * rho 80444)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80433) * ((1 : F) * rho 80433) = ((1 : F) * rho 80445)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80434) * ((1 : F) * rho 80434) = ((1 : F) * rho 80446)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80447) * ((-1 : F) * rho 80445 + (1 : F) * rho 80446) = ((2 : F) * rho 80444)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80448) * ((2 : F) + (1 : F) * rho 80445 + (-1 : F) * rho 80446) = ((1 : F) * rho 80445 + (1 : F) * rho 80446)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 66⟩, ⟨(1 : F), 79533, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80449)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80449) * ((1 : F) * rho 80447 + (1 : F) * rho 80448) = ((1 : F) * rho 80450)

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80448) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80451)

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80447) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80452)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80451) * ((1 : F) * rho 80452) = ((1 : F) * rho 80453)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80454) * ((1 : F) + (1 : F) * rho 80453) = ((1 : F) * rho 80451 + (1 : F) * rho 80452)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80455) * ((1 : F) + (-1 : F) * rho 80453) = ((1 : F) * rho 80450 + (-1 : F) * rho 80451 + (-1 : F) * rho 80452)

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77546) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 66⟩], residual := [((1 : F), 80454)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80456)

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77546) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 66⟩], residual := [((1 : F), 80455)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80457)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80447) * ((1 : F) * rho 80448) = ((1 : F) * rho 80458)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80447) * ((1 : F) * rho 80447) = ((1 : F) * rho 80459)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80448) * ((1 : F) * rho 80448) = ((1 : F) * rho 80460)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80461) * ((-1 : F) * rho 80459 + (1 : F) * rho 80460) = ((2 : F) * rho 80458)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80462) * ((2 : F) + (1 : F) * rho 80459 + (-1 : F) * rho 80460) = ((1 : F) * rho 80459 + (1 : F) * rho 80460)

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 67⟩, ⟨(1 : F), 79533, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80463)

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80463) * ((1 : F) * rho 80461 + (1 : F) * rho 80462) = ((1 : F) * rho 80464)

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80462) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80465)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80461) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80466)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80465) * ((1 : F) * rho 80466) = ((1 : F) * rho 80467)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80468) * ((1 : F) + (1 : F) * rho 80467) = ((1 : F) * rho 80465 + (1 : F) * rho 80466)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80469) * ((1 : F) + (-1 : F) * rho 80467) = ((1 : F) * rho 80464 + (-1 : F) * rho 80465 + (-1 : F) * rho 80466)

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77547) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 67⟩], residual := [((1 : F), 80468)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80470)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77547) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 67⟩], residual := [((1 : F), 80469)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80471)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80461) * ((1 : F) * rho 80462) = ((1 : F) * rho 80472)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80461) * ((1 : F) * rho 80461) = ((1 : F) * rho 80473)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80462) * ((1 : F) * rho 80462) = ((1 : F) * rho 80474)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80475) * ((-1 : F) * rho 80473 + (1 : F) * rho 80474) = ((2 : F) * rho 80472)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80476) * ((2 : F) + (1 : F) * rho 80473 + (-1 : F) * rho 80474) = ((1 : F) * rho 80473 + (1 : F) * rho 80474)

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 68⟩, ⟨(1 : F), 79533, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80477)

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80477) * ((1 : F) * rho 80475 + (1 : F) * rho 80476) = ((1 : F) * rho 80478)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80476) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80479)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80475) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80480)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80479) * ((1 : F) * rho 80480) = ((1 : F) * rho 80481)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80482) * ((1 : F) + (1 : F) * rho 80481) = ((1 : F) * rho 80479 + (1 : F) * rho 80480)

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80483) * ((1 : F) + (-1 : F) * rho 80481) = ((1 : F) * rho 80478 + (-1 : F) * rho 80479 + (-1 : F) * rho 80480)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77548) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 68⟩], residual := [((1 : F), 80482)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80484)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77548) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 68⟩], residual := [((1 : F), 80483)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80485)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80475) * ((1 : F) * rho 80476) = ((1 : F) * rho 80486)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80475) * ((1 : F) * rho 80475) = ((1 : F) * rho 80487)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80476) * ((1 : F) * rho 80476) = ((1 : F) * rho 80488)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80489) * ((-1 : F) * rho 80487 + (1 : F) * rho 80488) = ((2 : F) * rho 80486)

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80490) * ((2 : F) + (1 : F) * rho 80487 + (-1 : F) * rho 80488) = ((1 : F) * rho 80487 + (1 : F) * rho 80488)

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 69⟩, ⟨(1 : F), 79533, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80491)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80491) * ((1 : F) * rho 80489 + (1 : F) * rho 80490) = ((1 : F) * rho 80492)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80490) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80493)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80489) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80494)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80493) * ((1 : F) * rho 80494) = ((1 : F) * rho 80495)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80496) * ((1 : F) + (1 : F) * rho 80495) = ((1 : F) * rho 80493 + (1 : F) * rho 80494)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80497) * ((1 : F) + (-1 : F) * rho 80495) = ((1 : F) * rho 80492 + (-1 : F) * rho 80493 + (-1 : F) * rho 80494)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77549) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 69⟩], residual := [((1 : F), 80496)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80498)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77549) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 69⟩], residual := [((1 : F), 80497)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80499)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80489) * ((1 : F) * rho 80490) = ((1 : F) * rho 80500)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80489) * ((1 : F) * rho 80489) = ((1 : F) * rho 80501)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80490) * ((1 : F) * rho 80490) = ((1 : F) * rho 80502)

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80503) * ((-1 : F) * rho 80501 + (1 : F) * rho 80502) = ((2 : F) * rho 80500)

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80504) * ((2 : F) + (1 : F) * rho 80501 + (-1 : F) * rho 80502) = ((1 : F) * rho 80501 + (1 : F) * rho 80502)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 70⟩, ⟨(1 : F), 79533, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80505)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80505) * ((1 : F) * rho 80503 + (1 : F) * rho 80504) = ((1 : F) * rho 80506)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80504) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80507)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80503) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80508)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80507) * ((1 : F) * rho 80508) = ((1 : F) * rho 80509)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80510) * ((1 : F) + (1 : F) * rho 80509) = ((1 : F) * rho 80507 + (1 : F) * rho 80508)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80511) * ((1 : F) + (-1 : F) * rho 80509) = ((1 : F) * rho 80506 + (-1 : F) * rho 80507 + (-1 : F) * rho 80508)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77550) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 70⟩], residual := [((1 : F), 80510)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80512)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77550) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 70⟩], residual := [((1 : F), 80511)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80513)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80503) * ((1 : F) * rho 80504) = ((1 : F) * rho 80514)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80503) * ((1 : F) * rho 80503) = ((1 : F) * rho 80515)

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80504) * ((1 : F) * rho 80504) = ((1 : F) * rho 80516)

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80517) * ((-1 : F) * rho 80515 + (1 : F) * rho 80516) = ((2 : F) * rho 80514)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80518) * ((2 : F) + (1 : F) * rho 80515 + (-1 : F) * rho 80516) = ((1 : F) * rho 80515 + (1 : F) * rho 80516)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 71⟩, ⟨(1 : F), 79533, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80519)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80519) * ((1 : F) * rho 80517 + (1 : F) * rho 80518) = ((1 : F) * rho 80520)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80518) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80521)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80517) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80522)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80521) * ((1 : F) * rho 80522) = ((1 : F) * rho 80523)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80524) * ((1 : F) + (1 : F) * rho 80523) = ((1 : F) * rho 80521 + (1 : F) * rho 80522)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80525) * ((1 : F) + (-1 : F) * rho 80523) = ((1 : F) * rho 80520 + (-1 : F) * rho 80521 + (-1 : F) * rho 80522)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77551) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 71⟩], residual := [((1 : F), 80524)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80526)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77551) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 71⟩], residual := [((1 : F), 80525)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80527)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80517) * ((1 : F) * rho 80518) = ((1 : F) * rho 80528)

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80517) * ((1 : F) * rho 80517) = ((1 : F) * rho 80529)

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80518) * ((1 : F) * rho 80518) = ((1 : F) * rho 80530)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80531) * ((-1 : F) * rho 80529 + (1 : F) * rho 80530) = ((2 : F) * rho 80528)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80532) * ((2 : F) + (1 : F) * rho 80529 + (-1 : F) * rho 80530) = ((1 : F) * rho 80529 + (1 : F) * rho 80530)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 72⟩, ⟨(1 : F), 79533, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80533)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80533) * ((1 : F) * rho 80531 + (1 : F) * rho 80532) = ((1 : F) * rho 80534)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80532) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80535)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80531) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80536)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80535) * ((1 : F) * rho 80536) = ((1 : F) * rho 80537)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80538) * ((1 : F) + (1 : F) * rho 80537) = ((1 : F) * rho 80535 + (1 : F) * rho 80536)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80539) * ((1 : F) + (-1 : F) * rho 80537) = ((1 : F) * rho 80534 + (-1 : F) * rho 80535 + (-1 : F) * rho 80536)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77552) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 72⟩], residual := [((1 : F), 80538)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80540)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77552) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 72⟩], residual := [((1 : F), 80539)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80541)

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80531) * ((1 : F) * rho 80532) = ((1 : F) * rho 80542)

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80531) * ((1 : F) * rho 80531) = ((1 : F) * rho 80543)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80532) * ((1 : F) * rho 80532) = ((1 : F) * rho 80544)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80545) * ((-1 : F) * rho 80543 + (1 : F) * rho 80544) = ((2 : F) * rho 80542)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80546) * ((2 : F) + (1 : F) * rho 80543 + (-1 : F) * rho 80544) = ((1 : F) * rho 80543 + (1 : F) * rho 80544)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 73⟩, ⟨(1 : F), 79533, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80547)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80547) * ((1 : F) * rho 80545 + (1 : F) * rho 80546) = ((1 : F) * rho 80548)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80546) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80549)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80545) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80550)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80549) * ((1 : F) * rho 80550) = ((1 : F) * rho 80551)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80552) * ((1 : F) + (1 : F) * rho 80551) = ((1 : F) * rho 80549 + (1 : F) * rho 80550)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80553) * ((1 : F) + (-1 : F) * rho 80551) = ((1 : F) * rho 80548 + (-1 : F) * rho 80549 + (-1 : F) * rho 80550)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77553) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 73⟩], residual := [((1 : F), 80552)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80554)

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77553) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 73⟩], residual := [((1 : F), 80553)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80555)

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80545) * ((1 : F) * rho 80546) = ((1 : F) * rho 80556)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80545) * ((1 : F) * rho 80545) = ((1 : F) * rho 80557)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80546) * ((1 : F) * rho 80546) = ((1 : F) * rho 80558)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80559) * ((-1 : F) * rho 80557 + (1 : F) * rho 80558) = ((2 : F) * rho 80556)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80560) * ((2 : F) + (1 : F) * rho 80557 + (-1 : F) * rho 80558) = ((1 : F) * rho 80557 + (1 : F) * rho 80558)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 74⟩, ⟨(1 : F), 79533, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80561)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80561) * ((1 : F) * rho 80559 + (1 : F) * rho 80560) = ((1 : F) * rho 80562)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80560) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80563)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80559) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80564)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80563) * ((1 : F) * rho 80564) = ((1 : F) * rho 80565)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80566) * ((1 : F) + (1 : F) * rho 80565) = ((1 : F) * rho 80563 + (1 : F) * rho 80564)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80567) * ((1 : F) + (-1 : F) * rho 80565) = ((1 : F) * rho 80562 + (-1 : F) * rho 80563 + (-1 : F) * rho 80564)

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77554) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 74⟩], residual := [((1 : F), 80566)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80568)

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77554) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 74⟩], residual := [((1 : F), 80567)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80569)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80559) * ((1 : F) * rho 80560) = ((1 : F) * rho 80570)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80559) * ((1 : F) * rho 80559) = ((1 : F) * rho 80571)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80560) * ((1 : F) * rho 80560) = ((1 : F) * rho 80572)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80573) * ((-1 : F) * rho 80571 + (1 : F) * rho 80572) = ((2 : F) * rho 80570)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80574) * ((2 : F) + (1 : F) * rho 80571 + (-1 : F) * rho 80572) = ((1 : F) * rho 80571 + (1 : F) * rho 80572)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 75⟩, ⟨(1 : F), 79533, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80575)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80575) * ((1 : F) * rho 80573 + (1 : F) * rho 80574) = ((1 : F) * rho 80576)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80574) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80577)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80573) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80578)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80577) * ((1 : F) * rho 80578) = ((1 : F) * rho 80579)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80580) * ((1 : F) + (1 : F) * rho 80579) = ((1 : F) * rho 80577 + (1 : F) * rho 80578)

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80581) * ((1 : F) + (-1 : F) * rho 80579) = ((1 : F) * rho 80576 + (-1 : F) * rho 80577 + (-1 : F) * rho 80578)

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77555) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 75⟩], residual := [((1 : F), 80580)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80582)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77555) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 75⟩], residual := [((1 : F), 80581)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80583)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80573) * ((1 : F) * rho 80574) = ((1 : F) * rho 80584)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80573) * ((1 : F) * rho 80573) = ((1 : F) * rho 80585)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80574) * ((1 : F) * rho 80574) = ((1 : F) * rho 80586)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80587) * ((-1 : F) * rho 80585 + (1 : F) * rho 80586) = ((2 : F) * rho 80584)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80588) * ((2 : F) + (1 : F) * rho 80585 + (-1 : F) * rho 80586) = ((1 : F) * rho 80585 + (1 : F) * rho 80586)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 76⟩, ⟨(1 : F), 79533, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80589)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80589) * ((1 : F) * rho 80587 + (1 : F) * rho 80588) = ((1 : F) * rho 80590)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80588) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80591)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80587) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80592)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80591) * ((1 : F) * rho 80592) = ((1 : F) * rho 80593)

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80594) * ((1 : F) + (1 : F) * rho 80593) = ((1 : F) * rho 80591 + (1 : F) * rho 80592)

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80595) * ((1 : F) + (-1 : F) * rho 80593) = ((1 : F) * rho 80590 + (-1 : F) * rho 80591 + (-1 : F) * rho 80592)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77556) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 76⟩], residual := [((1 : F), 80594)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80596)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77556) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 76⟩], residual := [((1 : F), 80595)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80597)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80587) * ((1 : F) * rho 80588) = ((1 : F) * rho 80598)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80587) * ((1 : F) * rho 80587) = ((1 : F) * rho 80599)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80588) * ((1 : F) * rho 80588) = ((1 : F) * rho 80600)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80601) * ((-1 : F) * rho 80599 + (1 : F) * rho 80600) = ((2 : F) * rho 80598)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80602) * ((2 : F) + (1 : F) * rho 80599 + (-1 : F) * rho 80600) = ((1 : F) * rho 80599 + (1 : F) * rho 80600)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 77⟩, ⟨(1 : F), 79533, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80603)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80603) * ((1 : F) * rho 80601 + (1 : F) * rho 80602) = ((1 : F) * rho 80604)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80602) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80605)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80601) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80606)

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80605) * ((1 : F) * rho 80606) = ((1 : F) * rho 80607)

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80608) * ((1 : F) + (1 : F) * rho 80607) = ((1 : F) * rho 80605 + (1 : F) * rho 80606)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80609) * ((1 : F) + (-1 : F) * rho 80607) = ((1 : F) * rho 80604 + (-1 : F) * rho 80605 + (-1 : F) * rho 80606)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77557) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 77⟩], residual := [((1 : F), 80608)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80610)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77557) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 77⟩], residual := [((1 : F), 80609)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80611)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80601) * ((1 : F) * rho 80602) = ((1 : F) * rho 80612)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80601) * ((1 : F) * rho 80601) = ((1 : F) * rho 80613)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80602) * ((1 : F) * rho 80602) = ((1 : F) * rho 80614)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80615) * ((-1 : F) * rho 80613 + (1 : F) * rho 80614) = ((2 : F) * rho 80612)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80616) * ((2 : F) + (1 : F) * rho 80613 + (-1 : F) * rho 80614) = ((1 : F) * rho 80613 + (1 : F) * rho 80614)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 78⟩, ⟨(1 : F), 79533, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80617)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80617) * ((1 : F) * rho 80615 + (1 : F) * rho 80616) = ((1 : F) * rho 80618)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80616) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80619)

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80615) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80620)

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80619) * ((1 : F) * rho 80620) = ((1 : F) * rho 80621)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80622) * ((1 : F) + (1 : F) * rho 80621) = ((1 : F) * rho 80619 + (1 : F) * rho 80620)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80623) * ((1 : F) + (-1 : F) * rho 80621) = ((1 : F) * rho 80618 + (-1 : F) * rho 80619 + (-1 : F) * rho 80620)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77558) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 78⟩], residual := [((1 : F), 80622)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80624)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77558) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 78⟩], residual := [((1 : F), 80623)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80625)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80615) * ((1 : F) * rho 80616) = ((1 : F) * rho 80626)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80615) * ((1 : F) * rho 80615) = ((1 : F) * rho 80627)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80616) * ((1 : F) * rho 80616) = ((1 : F) * rho 80628)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80629) * ((-1 : F) * rho 80627 + (1 : F) * rho 80628) = ((2 : F) * rho 80626)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80630) * ((2 : F) + (1 : F) * rho 80627 + (-1 : F) * rho 80628) = ((1 : F) * rho 80627 + (1 : F) * rho 80628)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 79⟩, ⟨(1 : F), 79533, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80631)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80631) * ((1 : F) * rho 80629 + (1 : F) * rho 80630) = ((1 : F) * rho 80632)

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80630) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80633)

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80629) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80634)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80633) * ((1 : F) * rho 80634) = ((1 : F) * rho 80635)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80636) * ((1 : F) + (1 : F) * rho 80635) = ((1 : F) * rho 80633 + (1 : F) * rho 80634)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80637) * ((1 : F) + (-1 : F) * rho 80635) = ((1 : F) * rho 80632 + (-1 : F) * rho 80633 + (-1 : F) * rho 80634)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77559) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 79⟩], residual := [((1 : F), 80636)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80638)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77559) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 79⟩], residual := [((1 : F), 80637)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80639)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80629) * ((1 : F) * rho 80630) = ((1 : F) * rho 80640)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80629) * ((1 : F) * rho 80629) = ((1 : F) * rho 80641)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80630) * ((1 : F) * rho 80630) = ((1 : F) * rho 80642)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80643) * ((-1 : F) * rho 80641 + (1 : F) * rho 80642) = ((2 : F) * rho 80640)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80644) * ((2 : F) + (1 : F) * rho 80641 + (-1 : F) * rho 80642) = ((1 : F) * rho 80641 + (1 : F) * rho 80642)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 80⟩, ⟨(1 : F), 79533, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80645)

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80645) * ((1 : F) * rho 80643 + (1 : F) * rho 80644) = ((1 : F) * rho 80646)

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80644) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80647)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80643) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80648)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80647) * ((1 : F) * rho 80648) = ((1 : F) * rho 80649)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80650) * ((1 : F) + (1 : F) * rho 80649) = ((1 : F) * rho 80647 + (1 : F) * rho 80648)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80651) * ((1 : F) + (-1 : F) * rho 80649) = ((1 : F) * rho 80646 + (-1 : F) * rho 80647 + (-1 : F) * rho 80648)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77560) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 80⟩], residual := [((1 : F), 80650)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80652)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77560) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 80⟩], residual := [((1 : F), 80651)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80653)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80643) * ((1 : F) * rho 80644) = ((1 : F) * rho 80654)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80643) * ((1 : F) * rho 80643) = ((1 : F) * rho 80655)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80644) * ((1 : F) * rho 80644) = ((1 : F) * rho 80656)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80657) * ((-1 : F) * rho 80655 + (1 : F) * rho 80656) = ((2 : F) * rho 80654)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80658) * ((2 : F) + (1 : F) * rho 80655 + (-1 : F) * rho 80656) = ((1 : F) * rho 80655 + (1 : F) * rho 80656)

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 81⟩, ⟨(1 : F), 79533, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80659)

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80659) * ((1 : F) * rho 80657 + (1 : F) * rho 80658) = ((1 : F) * rho 80660)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80658) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80661)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80657) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80662)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80661) * ((1 : F) * rho 80662) = ((1 : F) * rho 80663)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80664) * ((1 : F) + (1 : F) * rho 80663) = ((1 : F) * rho 80661 + (1 : F) * rho 80662)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80665) * ((1 : F) + (-1 : F) * rho 80663) = ((1 : F) * rho 80660 + (-1 : F) * rho 80661 + (-1 : F) * rho 80662)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77561) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 81⟩], residual := [((1 : F), 80664)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80666)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77561) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 81⟩], residual := [((1 : F), 80665)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80667)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80657) * ((1 : F) * rho 80658) = ((1 : F) * rho 80668)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80657) * ((1 : F) * rho 80657) = ((1 : F) * rho 80669)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80658) * ((1 : F) * rho 80658) = ((1 : F) * rho 80670)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80671) * ((-1 : F) * rho 80669 + (1 : F) * rho 80670) = ((2 : F) * rho 80668)

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80672) * ((2 : F) + (1 : F) * rho 80669 + (-1 : F) * rho 80670) = ((1 : F) * rho 80669 + (1 : F) * rho 80670)

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 82⟩, ⟨(1 : F), 79533, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80673)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80673) * ((1 : F) * rho 80671 + (1 : F) * rho 80672) = ((1 : F) * rho 80674)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80672) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80675)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80671) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80676)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80675) * ((1 : F) * rho 80676) = ((1 : F) * rho 80677)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80678) * ((1 : F) + (1 : F) * rho 80677) = ((1 : F) * rho 80675 + (1 : F) * rho 80676)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80679) * ((1 : F) + (-1 : F) * rho 80677) = ((1 : F) * rho 80674 + (-1 : F) * rho 80675 + (-1 : F) * rho 80676)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77562) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 82⟩], residual := [((1 : F), 80678)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80680)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77562) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 82⟩], residual := [((1 : F), 80679)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80681)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80671) * ((1 : F) * rho 80672) = ((1 : F) * rho 80682)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80671) * ((1 : F) * rho 80671) = ((1 : F) * rho 80683)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80672) * ((1 : F) * rho 80672) = ((1 : F) * rho 80684)

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80685) * ((-1 : F) * rho 80683 + (1 : F) * rho 80684) = ((2 : F) * rho 80682)

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80686) * ((2 : F) + (1 : F) * rho 80683 + (-1 : F) * rho 80684) = ((1 : F) * rho 80683 + (1 : F) * rho 80684)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 83⟩, ⟨(1 : F), 79533, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80687)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80687) * ((1 : F) * rho 80685 + (1 : F) * rho 80686) = ((1 : F) * rho 80688)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80686) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80689)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80685) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80690)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80689) * ((1 : F) * rho 80690) = ((1 : F) * rho 80691)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80692) * ((1 : F) + (1 : F) * rho 80691) = ((1 : F) * rho 80689 + (1 : F) * rho 80690)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80693) * ((1 : F) + (-1 : F) * rho 80691) = ((1 : F) * rho 80688 + (-1 : F) * rho 80689 + (-1 : F) * rho 80690)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77563) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 83⟩], residual := [((1 : F), 80692)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80694)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77563) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 83⟩], residual := [((1 : F), 80693)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80695)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80685) * ((1 : F) * rho 80686) = ((1 : F) * rho 80696)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80685) * ((1 : F) * rho 80685) = ((1 : F) * rho 80697)

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80686) * ((1 : F) * rho 80686) = ((1 : F) * rho 80698)

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80699) * ((-1 : F) * rho 80697 + (1 : F) * rho 80698) = ((2 : F) * rho 80696)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80700) * ((2 : F) + (1 : F) * rho 80697 + (-1 : F) * rho 80698) = ((1 : F) * rho 80697 + (1 : F) * rho 80698)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 84⟩, ⟨(1 : F), 79533, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80701)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80701) * ((1 : F) * rho 80699 + (1 : F) * rho 80700) = ((1 : F) * rho 80702)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80700) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80703)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80699) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80704)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80703) * ((1 : F) * rho 80704) = ((1 : F) * rho 80705)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80706) * ((1 : F) + (1 : F) * rho 80705) = ((1 : F) * rho 80703 + (1 : F) * rho 80704)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80707) * ((1 : F) + (-1 : F) * rho 80705) = ((1 : F) * rho 80702 + (-1 : F) * rho 80703 + (-1 : F) * rho 80704)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77564) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 84⟩], residual := [((1 : F), 80706)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80708)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77564) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 84⟩], residual := [((1 : F), 80707)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80709)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80699) * ((1 : F) * rho 80700) = ((1 : F) * rho 80710)

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80699) * ((1 : F) * rho 80699) = ((1 : F) * rho 80711)

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80700) * ((1 : F) * rho 80700) = ((1 : F) * rho 80712)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80713) * ((-1 : F) * rho 80711 + (1 : F) * rho 80712) = ((2 : F) * rho 80710)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80714) * ((2 : F) + (1 : F) * rho 80711 + (-1 : F) * rho 80712) = ((1 : F) * rho 80711 + (1 : F) * rho 80712)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 85⟩, ⟨(1 : F), 79533, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80715)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80715) * ((1 : F) * rho 80713 + (1 : F) * rho 80714) = ((1 : F) * rho 80716)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80714) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80717)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80713) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80718)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80717) * ((1 : F) * rho 80718) = ((1 : F) * rho 80719)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80720) * ((1 : F) + (1 : F) * rho 80719) = ((1 : F) * rho 80717 + (1 : F) * rho 80718)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80721) * ((1 : F) + (-1 : F) * rho 80719) = ((1 : F) * rho 80716 + (-1 : F) * rho 80717 + (-1 : F) * rho 80718)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77565) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 85⟩], residual := [((1 : F), 80720)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80722)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77565) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 85⟩], residual := [((1 : F), 80721)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80723)

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80713) * ((1 : F) * rho 80714) = ((1 : F) * rho 80724)

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80713) * ((1 : F) * rho 80713) = ((1 : F) * rho 80725)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80714) * ((1 : F) * rho 80714) = ((1 : F) * rho 80726)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80727) * ((-1 : F) * rho 80725 + (1 : F) * rho 80726) = ((2 : F) * rho 80724)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80728) * ((2 : F) + (1 : F) * rho 80725 + (-1 : F) * rho 80726) = ((1 : F) * rho 80725 + (1 : F) * rho 80726)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 86⟩, ⟨(1 : F), 79533, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80729)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80729) * ((1 : F) * rho 80727 + (1 : F) * rho 80728) = ((1 : F) * rho 80730)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80728) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80731)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80727) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80732)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80731) * ((1 : F) * rho 80732) = ((1 : F) * rho 80733)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80734) * ((1 : F) + (1 : F) * rho 80733) = ((1 : F) * rho 80731 + (1 : F) * rho 80732)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80735) * ((1 : F) + (-1 : F) * rho 80733) = ((1 : F) * rho 80730 + (-1 : F) * rho 80731 + (-1 : F) * rho 80732)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77566) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 86⟩], residual := [((1 : F), 80734)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80736)

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77566) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 86⟩], residual := [((1 : F), 80735)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80737)

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80727) * ((1 : F) * rho 80728) = ((1 : F) * rho 80738)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80727) * ((1 : F) * rho 80727) = ((1 : F) * rho 80739)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80728) * ((1 : F) * rho 80728) = ((1 : F) * rho 80740)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80741) * ((-1 : F) * rho 80739 + (1 : F) * rho 80740) = ((2 : F) * rho 80738)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80742) * ((2 : F) + (1 : F) * rho 80739 + (-1 : F) * rho 80740) = ((1 : F) * rho 80739 + (1 : F) * rho 80740)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 87⟩, ⟨(1 : F), 79533, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80743)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80743) * ((1 : F) * rho 80741 + (1 : F) * rho 80742) = ((1 : F) * rho 80744)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80742) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80745)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80741) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80746)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80745) * ((1 : F) * rho 80746) = ((1 : F) * rho 80747)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80748) * ((1 : F) + (1 : F) * rho 80747) = ((1 : F) * rho 80745 + (1 : F) * rho 80746)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80749) * ((1 : F) + (-1 : F) * rho 80747) = ((1 : F) * rho 80744 + (-1 : F) * rho 80745 + (-1 : F) * rho 80746)

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77567) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 87⟩], residual := [((1 : F), 80748)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80750)

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77567) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 87⟩], residual := [((1 : F), 80749)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80751)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80741) * ((1 : F) * rho 80742) = ((1 : F) * rho 80752)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80741) * ((1 : F) * rho 80741) = ((1 : F) * rho 80753)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80742) * ((1 : F) * rho 80742) = ((1 : F) * rho 80754)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80755) * ((-1 : F) * rho 80753 + (1 : F) * rho 80754) = ((2 : F) * rho 80752)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80756) * ((2 : F) + (1 : F) * rho 80753 + (-1 : F) * rho 80754) = ((1 : F) * rho 80753 + (1 : F) * rho 80754)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 88⟩, ⟨(1 : F), 79533, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80757)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80757) * ((1 : F) * rho 80755 + (1 : F) * rho 80756) = ((1 : F) * rho 80758)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80756) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80759)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80755) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80760)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80759) * ((1 : F) * rho 80760) = ((1 : F) * rho 80761)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80762) * ((1 : F) + (1 : F) * rho 80761) = ((1 : F) * rho 80759 + (1 : F) * rho 80760)

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80763) * ((1 : F) + (-1 : F) * rho 80761) = ((1 : F) * rho 80758 + (-1 : F) * rho 80759 + (-1 : F) * rho 80760)

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77568) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 88⟩], residual := [((1 : F), 80762)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80764)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77568) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 88⟩], residual := [((1 : F), 80763)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80765)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80755) * ((1 : F) * rho 80756) = ((1 : F) * rho 80766)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80755) * ((1 : F) * rho 80755) = ((1 : F) * rho 80767)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80756) * ((1 : F) * rho 80756) = ((1 : F) * rho 80768)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80769) * ((-1 : F) * rho 80767 + (1 : F) * rho 80768) = ((2 : F) * rho 80766)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80770) * ((2 : F) + (1 : F) * rho 80767 + (-1 : F) * rho 80768) = ((1 : F) * rho 80767 + (1 : F) * rho 80768)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 89⟩, ⟨(1 : F), 79533, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80771)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80771) * ((1 : F) * rho 80769 + (1 : F) * rho 80770) = ((1 : F) * rho 80772)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80770) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80773)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80769) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80774)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80773) * ((1 : F) * rho 80774) = ((1 : F) * rho 80775)

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80776) * ((1 : F) + (1 : F) * rho 80775) = ((1 : F) * rho 80773 + (1 : F) * rho 80774)

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80777) * ((1 : F) + (-1 : F) * rho 80775) = ((1 : F) * rho 80772 + (-1 : F) * rho 80773 + (-1 : F) * rho 80774)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77569) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 89⟩], residual := [((1 : F), 80776)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80778)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77569) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 89⟩], residual := [((1 : F), 80777)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80779)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80769) * ((1 : F) * rho 80770) = ((1 : F) * rho 80780)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80769) * ((1 : F) * rho 80769) = ((1 : F) * rho 80781)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80770) * ((1 : F) * rho 80770) = ((1 : F) * rho 80782)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80783) * ((-1 : F) * rho 80781 + (1 : F) * rho 80782) = ((2 : F) * rho 80780)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80784) * ((2 : F) + (1 : F) * rho 80781 + (-1 : F) * rho 80782) = ((1 : F) * rho 80781 + (1 : F) * rho 80782)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 90⟩, ⟨(1 : F), 79533, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80785)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80785) * ((1 : F) * rho 80783 + (1 : F) * rho 80784) = ((1 : F) * rho 80786)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80784) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80787)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80783) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80788)

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80787) * ((1 : F) * rho 80788) = ((1 : F) * rho 80789)

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80790) * ((1 : F) + (1 : F) * rho 80789) = ((1 : F) * rho 80787 + (1 : F) * rho 80788)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80791) * ((1 : F) + (-1 : F) * rho 80789) = ((1 : F) * rho 80786 + (-1 : F) * rho 80787 + (-1 : F) * rho 80788)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77570) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 90⟩], residual := [((1 : F), 80790)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80792)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77570) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 90⟩], residual := [((1 : F), 80791)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80793)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80783) * ((1 : F) * rho 80784) = ((1 : F) * rho 80794)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80783) * ((1 : F) * rho 80783) = ((1 : F) * rho 80795)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80784) * ((1 : F) * rho 80784) = ((1 : F) * rho 80796)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80797) * ((-1 : F) * rho 80795 + (1 : F) * rho 80796) = ((2 : F) * rho 80794)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80798) * ((2 : F) + (1 : F) * rho 80795 + (-1 : F) * rho 80796) = ((1 : F) * rho 80795 + (1 : F) * rho 80796)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 91⟩, ⟨(1 : F), 79533, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80799)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80799) * ((1 : F) * rho 80797 + (1 : F) * rho 80798) = ((1 : F) * rho 80800)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80798) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80801)

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80797) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80802)

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80801) * ((1 : F) * rho 80802) = ((1 : F) * rho 80803)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80804) * ((1 : F) + (1 : F) * rho 80803) = ((1 : F) * rho 80801 + (1 : F) * rho 80802)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80805) * ((1 : F) + (-1 : F) * rho 80803) = ((1 : F) * rho 80800 + (-1 : F) * rho 80801 + (-1 : F) * rho 80802)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77571) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 91⟩], residual := [((1 : F), 80804)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80806)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77571) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 91⟩], residual := [((1 : F), 80805)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80807)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80797) * ((1 : F) * rho 80798) = ((1 : F) * rho 80808)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80797) * ((1 : F) * rho 80797) = ((1 : F) * rho 80809)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80798) * ((1 : F) * rho 80798) = ((1 : F) * rho 80810)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80811) * ((-1 : F) * rho 80809 + (1 : F) * rho 80810) = ((2 : F) * rho 80808)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80812) * ((2 : F) + (1 : F) * rho 80809 + (-1 : F) * rho 80810) = ((1 : F) * rho 80809 + (1 : F) * rho 80810)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 92⟩, ⟨(1 : F), 79533, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80813)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80813) * ((1 : F) * rho 80811 + (1 : F) * rho 80812) = ((1 : F) * rho 80814)

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80812) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80815)

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80811) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80816)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80815) * ((1 : F) * rho 80816) = ((1 : F) * rho 80817)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80818) * ((1 : F) + (1 : F) * rho 80817) = ((1 : F) * rho 80815 + (1 : F) * rho 80816)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80819) * ((1 : F) + (-1 : F) * rho 80817) = ((1 : F) * rho 80814 + (-1 : F) * rho 80815 + (-1 : F) * rho 80816)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77572) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 92⟩], residual := [((1 : F), 80818)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80820)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77572) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 92⟩], residual := [((1 : F), 80819)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80821)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80811) * ((1 : F) * rho 80812) = ((1 : F) * rho 80822)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80811) * ((1 : F) * rho 80811) = ((1 : F) * rho 80823)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80812) * ((1 : F) * rho 80812) = ((1 : F) * rho 80824)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80825) * ((-1 : F) * rho 80823 + (1 : F) * rho 80824) = ((2 : F) * rho 80822)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80826) * ((2 : F) + (1 : F) * rho 80823 + (-1 : F) * rho 80824) = ((1 : F) * rho 80823 + (1 : F) * rho 80824)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 93⟩, ⟨(1 : F), 79533, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80827)

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80827) * ((1 : F) * rho 80825 + (1 : F) * rho 80826) = ((1 : F) * rho 80828)

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80826) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80829)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80825) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80830)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80829) * ((1 : F) * rho 80830) = ((1 : F) * rho 80831)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80832) * ((1 : F) + (1 : F) * rho 80831) = ((1 : F) * rho 80829 + (1 : F) * rho 80830)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80833) * ((1 : F) + (-1 : F) * rho 80831) = ((1 : F) * rho 80828 + (-1 : F) * rho 80829 + (-1 : F) * rho 80830)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77573) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 93⟩], residual := [((1 : F), 80832)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80834)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77573) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 93⟩], residual := [((1 : F), 80833)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80835)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80825) * ((1 : F) * rho 80826) = ((1 : F) * rho 80836)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80825) * ((1 : F) * rho 80825) = ((1 : F) * rho 80837)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80826) * ((1 : F) * rho 80826) = ((1 : F) * rho 80838)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80839) * ((-1 : F) * rho 80837 + (1 : F) * rho 80838) = ((2 : F) * rho 80836)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80840) * ((2 : F) + (1 : F) * rho 80837 + (-1 : F) * rho 80838) = ((1 : F) * rho 80837 + (1 : F) * rho 80838)

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 94⟩, ⟨(1 : F), 79533, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80841)

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80841) * ((1 : F) * rho 80839 + (1 : F) * rho 80840) = ((1 : F) * rho 80842)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80840) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80843)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80839) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80844)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80843) * ((1 : F) * rho 80844) = ((1 : F) * rho 80845)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80846) * ((1 : F) + (1 : F) * rho 80845) = ((1 : F) * rho 80843 + (1 : F) * rho 80844)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80847) * ((1 : F) + (-1 : F) * rho 80845) = ((1 : F) * rho 80842 + (-1 : F) * rho 80843 + (-1 : F) * rho 80844)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77574) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 94⟩], residual := [((1 : F), 80846)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80848)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77574) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 94⟩], residual := [((1 : F), 80847)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80849)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80839) * ((1 : F) * rho 80840) = ((1 : F) * rho 80850)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80839) * ((1 : F) * rho 80839) = ((1 : F) * rho 80851)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80840) * ((1 : F) * rho 80840) = ((1 : F) * rho 80852)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80853) * ((-1 : F) * rho 80851 + (1 : F) * rho 80852) = ((2 : F) * rho 80850)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80854) * ((2 : F) + (1 : F) * rho 80851 + (-1 : F) * rho 80852) = ((1 : F) * rho 80851 + (1 : F) * rho 80852)

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 95⟩, ⟨(1 : F), 79533, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80855)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80855) * ((1 : F) * rho 80853 + (1 : F) * rho 80854) = ((1 : F) * rho 80856)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80854) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80857)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80853) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80858)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80857) * ((1 : F) * rho 80858) = ((1 : F) * rho 80859)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80860) * ((1 : F) + (1 : F) * rho 80859) = ((1 : F) * rho 80857 + (1 : F) * rho 80858)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80861) * ((1 : F) + (-1 : F) * rho 80859) = ((1 : F) * rho 80856 + (-1 : F) * rho 80857 + (-1 : F) * rho 80858)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77575) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 95⟩], residual := [((1 : F), 80860)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80862)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77575) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 95⟩], residual := [((1 : F), 80861)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80863)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80853) * ((1 : F) * rho 80854) = ((1 : F) * rho 80864)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80853) * ((1 : F) * rho 80853) = ((1 : F) * rho 80865)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80854) * ((1 : F) * rho 80854) = ((1 : F) * rho 80866)

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80867) * ((-1 : F) * rho 80865 + (1 : F) * rho 80866) = ((2 : F) * rho 80864)

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80868) * ((2 : F) + (1 : F) * rho 80865 + (-1 : F) * rho 80866) = ((1 : F) * rho 80865 + (1 : F) * rho 80866)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 96⟩, ⟨(1 : F), 79533, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80869)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80869) * ((1 : F) * rho 80867 + (1 : F) * rho 80868) = ((1 : F) * rho 80870)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80868) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80871)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80867) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80872)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80871) * ((1 : F) * rho 80872) = ((1 : F) * rho 80873)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80874) * ((1 : F) + (1 : F) * rho 80873) = ((1 : F) * rho 80871 + (1 : F) * rho 80872)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80875) * ((1 : F) + (-1 : F) * rho 80873) = ((1 : F) * rho 80870 + (-1 : F) * rho 80871 + (-1 : F) * rho 80872)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77576) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 96⟩], residual := [((1 : F), 80874)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80876)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77576) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 96⟩], residual := [((1 : F), 80875)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80877)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80867) * ((1 : F) * rho 80868) = ((1 : F) * rho 80878)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80867) * ((1 : F) * rho 80867) = ((1 : F) * rho 80879)

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80868) * ((1 : F) * rho 80868) = ((1 : F) * rho 80880)

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80881) * ((-1 : F) * rho 80879 + (1 : F) * rho 80880) = ((2 : F) * rho 80878)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80882) * ((2 : F) + (1 : F) * rho 80879 + (-1 : F) * rho 80880) = ((1 : F) * rho 80879 + (1 : F) * rho 80880)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 97⟩, ⟨(1 : F), 79533, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80883)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80883) * ((1 : F) * rho 80881 + (1 : F) * rho 80882) = ((1 : F) * rho 80884)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80885)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80881) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80886)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80885) * ((1 : F) * rho 80886) = ((1 : F) * rho 80887)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80888) * ((1 : F) + (1 : F) * rho 80887) = ((1 : F) * rho 80885 + (1 : F) * rho 80886)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80889) * ((1 : F) + (-1 : F) * rho 80887) = ((1 : F) * rho 80884 + (-1 : F) * rho 80885 + (-1 : F) * rho 80886)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77577) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 97⟩], residual := [((1 : F), 80888)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80890)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77577) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 97⟩], residual := [((1 : F), 80889)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80891)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80881) * ((1 : F) * rho 80882) = ((1 : F) * rho 80892)

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80881) * ((1 : F) * rho 80881) = ((1 : F) * rho 80893)

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80882) * ((1 : F) * rho 80882) = ((1 : F) * rho 80894)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80895) * ((-1 : F) * rho 80893 + (1 : F) * rho 80894) = ((2 : F) * rho 80892)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80896) * ((2 : F) + (1 : F) * rho 80893 + (-1 : F) * rho 80894) = ((1 : F) * rho 80893 + (1 : F) * rho 80894)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 98⟩, ⟨(1 : F), 79533, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80897)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80897) * ((1 : F) * rho 80895 + (1 : F) * rho 80896) = ((1 : F) * rho 80898)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80896) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80899)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80900)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80899) * ((1 : F) * rho 80900) = ((1 : F) * rho 80901)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80902) * ((1 : F) + (1 : F) * rho 80901) = ((1 : F) * rho 80899 + (1 : F) * rho 80900)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80903) * ((1 : F) + (-1 : F) * rho 80901) = ((1 : F) * rho 80898 + (-1 : F) * rho 80899 + (-1 : F) * rho 80900)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77578) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 98⟩], residual := [((1 : F), 80902)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80904)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77578) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 98⟩], residual := [((1 : F), 80903)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80905)

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80895) * ((1 : F) * rho 80896) = ((1 : F) * rho 80906)

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80895) * ((1 : F) * rho 80895) = ((1 : F) * rho 80907)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80896) * ((1 : F) * rho 80896) = ((1 : F) * rho 80908)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80909) * ((-1 : F) * rho 80907 + (1 : F) * rho 80908) = ((2 : F) * rho 80906)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80910) * ((2 : F) + (1 : F) * rho 80907 + (-1 : F) * rho 80908) = ((1 : F) * rho 80907 + (1 : F) * rho 80908)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 99⟩, ⟨(1 : F), 79533, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80911)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80911) * ((1 : F) * rho 80909 + (1 : F) * rho 80910) = ((1 : F) * rho 80912)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80910) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80913)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80909) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80914)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80913) * ((1 : F) * rho 80914) = ((1 : F) * rho 80915)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80916) * ((1 : F) + (1 : F) * rho 80915) = ((1 : F) * rho 80913 + (1 : F) * rho 80914)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80917) * ((1 : F) + (-1 : F) * rho 80915) = ((1 : F) * rho 80912 + (-1 : F) * rho 80913 + (-1 : F) * rho 80914)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77579) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 99⟩], residual := [((1 : F), 80916)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80918)

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77579) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 99⟩], residual := [((1 : F), 80917)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80919)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80909) * ((1 : F) * rho 80910) = ((1 : F) * rho 80920)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80909) * ((1 : F) * rho 80909) = ((1 : F) * rho 80921)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80910) * ((1 : F) * rho 80910) = ((1 : F) * rho 80922)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80923) * ((-1 : F) * rho 80921 + (1 : F) * rho 80922) = ((2 : F) * rho 80920)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80924) * ((2 : F) + (1 : F) * rho 80921 + (-1 : F) * rho 80922) = ((1 : F) * rho 80921 + (1 : F) * rho 80922)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79532, 14, 100⟩, ⟨(1 : F), 79533, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80925)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80925) * ((1 : F) * rho 80923 + (1 : F) * rho 80924) = ((1 : F) * rho 80926)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 77581, 13, 150⟩, ⟨(1 : F), 79532, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80927)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80923) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 77582, 13, 150⟩, ⟨(1 : F), 79533, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80928)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80927) * ((1 : F) * rho 80928) = ((1 : F) * rho 80929)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80930) * ((1 : F) + (1 : F) * rho 80929) = ((1 : F) * rho 80927 + (1 : F) * rho 80928)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80931) * ((1 : F) + (-1 : F) * rho 80929) = ((1 : F) * rho 80926 + (-1 : F) * rho 80927 + (-1 : F) * rho 80928)

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77580) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 77581, 13, 150⟩, ⟨(-1 : F), 79532, 14, 100⟩], residual := [((1 : F), 80930)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80932)

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77580) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 77582, 13, 150⟩, ⟨(-1 : F), 79533, 14, 100⟩], residual := [((1 : F), 80931)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80933)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80923) * ((1 : F) * rho 80924) = ((1 : F) * rho 80934)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80923) * ((1 : F) * rho 80923) = ((1 : F) * rho 80935)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80924) * ((1 : F) * rho 80924) = ((1 : F) * rho 80936)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80937) * ((-1 : F) * rho 80935 + (1 : F) * rho 80936) = ((2 : F) * rho 80934)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80938) * ((2 : F) + (1 : F) * rho 80935 + (-1 : F) * rho 80936) = ((1 : F) * rho 80935 + (1 : F) * rho 80936)

def relationPart0 (rho : Nat -> F) : Prop :=
    relationRow0 rho ∧
    relationRow1 rho ∧
    relationRow2 rho ∧
    relationRow3 rho ∧
    relationRow4 rho ∧
    relationRow5 rho ∧
    relationRow6 rho ∧
    relationRow7 rho ∧
    relationRow8 rho ∧
    relationRow9 rho ∧
    relationRow10 rho ∧
    relationRow11 rho ∧
    relationRow12 rho ∧
    relationRow13 rho ∧
    relationRow14 rho ∧
    relationRow15 rho ∧
    relationRow16 rho ∧
    relationRow17 rho ∧
    relationRow18 rho ∧
    relationRow19 rho ∧
    relationRow20 rho ∧
    relationRow21 rho ∧
    relationRow22 rho ∧
    relationRow23 rho ∧
    relationRow24 rho ∧
    relationRow25 rho ∧
    relationRow26 rho ∧
    relationRow27 rho ∧
    relationRow28 rho ∧
    relationRow29 rho ∧
    relationRow30 rho ∧
    relationRow31 rho ∧
    relationRow32 rho ∧
    relationRow33 rho ∧
    relationRow34 rho ∧
    relationRow35 rho ∧
    relationRow36 rho ∧
    relationRow37 rho ∧
    relationRow38 rho ∧
    relationRow39 rho ∧
    relationRow40 rho ∧
    relationRow41 rho ∧
    relationRow42 rho ∧
    relationRow43 rho ∧
    relationRow44 rho ∧
    relationRow45 rho ∧
    relationRow46 rho ∧
    relationRow47 rho ∧
    relationRow48 rho ∧
    relationRow49 rho ∧
    relationRow50 rho ∧
    relationRow51 rho ∧
    relationRow52 rho ∧
    relationRow53 rho ∧
    relationRow54 rho ∧
    relationRow55 rho ∧
    relationRow56 rho ∧
    relationRow57 rho ∧
    relationRow58 rho ∧
    relationRow59 rho ∧
    relationRow60 rho ∧
    relationRow61 rho ∧
    relationRow62 rho ∧
    relationRow63 rho ∧
    relationRow64 rho ∧
    relationRow65 rho ∧
    relationRow66 rho ∧
    relationRow67 rho ∧
    relationRow68 rho ∧
    relationRow69 rho ∧
    relationRow70 rho ∧
    relationRow71 rho ∧
    relationRow72 rho ∧
    relationRow73 rho ∧
    relationRow74 rho ∧
    relationRow75 rho ∧
    relationRow76 rho ∧
    relationRow77 rho ∧
    relationRow78 rho ∧
    relationRow79 rho

def relationPart1 (rho : Nat -> F) : Prop :=
    relationRow80 rho ∧
    relationRow81 rho ∧
    relationRow82 rho ∧
    relationRow83 rho ∧
    relationRow84 rho ∧
    relationRow85 rho ∧
    relationRow86 rho ∧
    relationRow87 rho ∧
    relationRow88 rho ∧
    relationRow89 rho ∧
    relationRow90 rho ∧
    relationRow91 rho ∧
    relationRow92 rho ∧
    relationRow93 rho ∧
    relationRow94 rho ∧
    relationRow95 rho ∧
    relationRow96 rho ∧
    relationRow97 rho ∧
    relationRow98 rho ∧
    relationRow99 rho ∧
    relationRow100 rho ∧
    relationRow101 rho ∧
    relationRow102 rho ∧
    relationRow103 rho ∧
    relationRow104 rho ∧
    relationRow105 rho ∧
    relationRow106 rho ∧
    relationRow107 rho ∧
    relationRow108 rho ∧
    relationRow109 rho ∧
    relationRow110 rho ∧
    relationRow111 rho ∧
    relationRow112 rho ∧
    relationRow113 rho ∧
    relationRow114 rho ∧
    relationRow115 rho ∧
    relationRow116 rho ∧
    relationRow117 rho ∧
    relationRow118 rho ∧
    relationRow119 rho ∧
    relationRow120 rho ∧
    relationRow121 rho ∧
    relationRow122 rho ∧
    relationRow123 rho ∧
    relationRow124 rho ∧
    relationRow125 rho ∧
    relationRow126 rho ∧
    relationRow127 rho ∧
    relationRow128 rho ∧
    relationRow129 rho ∧
    relationRow130 rho ∧
    relationRow131 rho ∧
    relationRow132 rho ∧
    relationRow133 rho ∧
    relationRow134 rho ∧
    relationRow135 rho ∧
    relationRow136 rho ∧
    relationRow137 rho ∧
    relationRow138 rho ∧
    relationRow139 rho ∧
    relationRow140 rho ∧
    relationRow141 rho ∧
    relationRow142 rho ∧
    relationRow143 rho ∧
    relationRow144 rho ∧
    relationRow145 rho ∧
    relationRow146 rho ∧
    relationRow147 rho ∧
    relationRow148 rho ∧
    relationRow149 rho ∧
    relationRow150 rho ∧
    relationRow151 rho ∧
    relationRow152 rho ∧
    relationRow153 rho ∧
    relationRow154 rho ∧
    relationRow155 rho ∧
    relationRow156 rho ∧
    relationRow157 rho ∧
    relationRow158 rho ∧
    relationRow159 rho

def relationPart2 (rho : Nat -> F) : Prop :=
    relationRow160 rho ∧
    relationRow161 rho ∧
    relationRow162 rho ∧
    relationRow163 rho ∧
    relationRow164 rho ∧
    relationRow165 rho ∧
    relationRow166 rho ∧
    relationRow167 rho ∧
    relationRow168 rho ∧
    relationRow169 rho ∧
    relationRow170 rho ∧
    relationRow171 rho ∧
    relationRow172 rho ∧
    relationRow173 rho ∧
    relationRow174 rho ∧
    relationRow175 rho ∧
    relationRow176 rho ∧
    relationRow177 rho ∧
    relationRow178 rho ∧
    relationRow179 rho ∧
    relationRow180 rho ∧
    relationRow181 rho ∧
    relationRow182 rho ∧
    relationRow183 rho ∧
    relationRow184 rho ∧
    relationRow185 rho ∧
    relationRow186 rho ∧
    relationRow187 rho ∧
    relationRow188 rho ∧
    relationRow189 rho ∧
    relationRow190 rho ∧
    relationRow191 rho ∧
    relationRow192 rho ∧
    relationRow193 rho ∧
    relationRow194 rho ∧
    relationRow195 rho ∧
    relationRow196 rho ∧
    relationRow197 rho ∧
    relationRow198 rho ∧
    relationRow199 rho ∧
    relationRow200 rho ∧
    relationRow201 rho ∧
    relationRow202 rho ∧
    relationRow203 rho ∧
    relationRow204 rho ∧
    relationRow205 rho ∧
    relationRow206 rho ∧
    relationRow207 rho ∧
    relationRow208 rho ∧
    relationRow209 rho ∧
    relationRow210 rho ∧
    relationRow211 rho ∧
    relationRow212 rho ∧
    relationRow213 rho ∧
    relationRow214 rho ∧
    relationRow215 rho ∧
    relationRow216 rho ∧
    relationRow217 rho ∧
    relationRow218 rho ∧
    relationRow219 rho ∧
    relationRow220 rho ∧
    relationRow221 rho ∧
    relationRow222 rho ∧
    relationRow223 rho ∧
    relationRow224 rho ∧
    relationRow225 rho ∧
    relationRow226 rho ∧
    relationRow227 rho ∧
    relationRow228 rho ∧
    relationRow229 rho ∧
    relationRow230 rho ∧
    relationRow231 rho ∧
    relationRow232 rho ∧
    relationRow233 rho ∧
    relationRow234 rho ∧
    relationRow235 rho ∧
    relationRow236 rho ∧
    relationRow237 rho ∧
    relationRow238 rho ∧
    relationRow239 rho

def relationPart3 (rho : Nat -> F) : Prop :=
    relationRow240 rho ∧
    relationRow241 rho ∧
    relationRow242 rho ∧
    relationRow243 rho ∧
    relationRow244 rho ∧
    relationRow245 rho ∧
    relationRow246 rho ∧
    relationRow247 rho ∧
    relationRow248 rho ∧
    relationRow249 rho ∧
    relationRow250 rho ∧
    relationRow251 rho ∧
    relationRow252 rho ∧
    relationRow253 rho ∧
    relationRow254 rho ∧
    relationRow255 rho ∧
    relationRow256 rho ∧
    relationRow257 rho ∧
    relationRow258 rho ∧
    relationRow259 rho ∧
    relationRow260 rho ∧
    relationRow261 rho ∧
    relationRow262 rho ∧
    relationRow263 rho ∧
    relationRow264 rho ∧
    relationRow265 rho ∧
    relationRow266 rho ∧
    relationRow267 rho ∧
    relationRow268 rho ∧
    relationRow269 rho ∧
    relationRow270 rho ∧
    relationRow271 rho ∧
    relationRow272 rho ∧
    relationRow273 rho ∧
    relationRow274 rho ∧
    relationRow275 rho ∧
    relationRow276 rho ∧
    relationRow277 rho ∧
    relationRow278 rho ∧
    relationRow279 rho ∧
    relationRow280 rho ∧
    relationRow281 rho ∧
    relationRow282 rho ∧
    relationRow283 rho ∧
    relationRow284 rho ∧
    relationRow285 rho ∧
    relationRow286 rho ∧
    relationRow287 rho ∧
    relationRow288 rho ∧
    relationRow289 rho ∧
    relationRow290 rho ∧
    relationRow291 rho ∧
    relationRow292 rho ∧
    relationRow293 rho ∧
    relationRow294 rho ∧
    relationRow295 rho ∧
    relationRow296 rho ∧
    relationRow297 rho ∧
    relationRow298 rho ∧
    relationRow299 rho ∧
    relationRow300 rho ∧
    relationRow301 rho ∧
    relationRow302 rho ∧
    relationRow303 rho ∧
    relationRow304 rho ∧
    relationRow305 rho ∧
    relationRow306 rho ∧
    relationRow307 rho ∧
    relationRow308 rho ∧
    relationRow309 rho ∧
    relationRow310 rho ∧
    relationRow311 rho ∧
    relationRow312 rho ∧
    relationRow313 rho ∧
    relationRow314 rho ∧
    relationRow315 rho ∧
    relationRow316 rho ∧
    relationRow317 rho ∧
    relationRow318 rho ∧
    relationRow319 rho

def relationPart4 (rho : Nat -> F) : Prop :=
    relationRow320 rho ∧
    relationRow321 rho ∧
    relationRow322 rho ∧
    relationRow323 rho ∧
    relationRow324 rho ∧
    relationRow325 rho ∧
    relationRow326 rho ∧
    relationRow327 rho ∧
    relationRow328 rho ∧
    relationRow329 rho ∧
    relationRow330 rho ∧
    relationRow331 rho ∧
    relationRow332 rho ∧
    relationRow333 rho ∧
    relationRow334 rho ∧
    relationRow335 rho ∧
    relationRow336 rho ∧
    relationRow337 rho ∧
    relationRow338 rho ∧
    relationRow339 rho ∧
    relationRow340 rho ∧
    relationRow341 rho ∧
    relationRow342 rho ∧
    relationRow343 rho ∧
    relationRow344 rho ∧
    relationRow345 rho ∧
    relationRow346 rho ∧
    relationRow347 rho ∧
    relationRow348 rho ∧
    relationRow349 rho ∧
    relationRow350 rho ∧
    relationRow351 rho ∧
    relationRow352 rho ∧
    relationRow353 rho ∧
    relationRow354 rho ∧
    relationRow355 rho ∧
    relationRow356 rho ∧
    relationRow357 rho ∧
    relationRow358 rho ∧
    relationRow359 rho ∧
    relationRow360 rho ∧
    relationRow361 rho ∧
    relationRow362 rho ∧
    relationRow363 rho ∧
    relationRow364 rho ∧
    relationRow365 rho ∧
    relationRow366 rho ∧
    relationRow367 rho ∧
    relationRow368 rho ∧
    relationRow369 rho ∧
    relationRow370 rho ∧
    relationRow371 rho ∧
    relationRow372 rho ∧
    relationRow373 rho ∧
    relationRow374 rho ∧
    relationRow375 rho ∧
    relationRow376 rho ∧
    relationRow377 rho ∧
    relationRow378 rho ∧
    relationRow379 rho ∧
    relationRow380 rho ∧
    relationRow381 rho ∧
    relationRow382 rho ∧
    relationRow383 rho ∧
    relationRow384 rho ∧
    relationRow385 rho ∧
    relationRow386 rho ∧
    relationRow387 rho ∧
    relationRow388 rho ∧
    relationRow389 rho ∧
    relationRow390 rho ∧
    relationRow391 rho ∧
    relationRow392 rho ∧
    relationRow393 rho ∧
    relationRow394 rho ∧
    relationRow395 rho ∧
    relationRow396 rho ∧
    relationRow397 rho ∧
    relationRow398 rho ∧
    relationRow399 rho

def relationPart5 (rho : Nat -> F) : Prop :=
    relationRow400 rho ∧
    relationRow401 rho ∧
    relationRow402 rho ∧
    relationRow403 rho ∧
    relationRow404 rho ∧
    relationRow405 rho ∧
    relationRow406 rho ∧
    relationRow407 rho ∧
    relationRow408 rho ∧
    relationRow409 rho ∧
    relationRow410 rho ∧
    relationRow411 rho ∧
    relationRow412 rho ∧
    relationRow413 rho ∧
    relationRow414 rho ∧
    relationRow415 rho ∧
    relationRow416 rho ∧
    relationRow417 rho ∧
    relationRow418 rho ∧
    relationRow419 rho ∧
    relationRow420 rho ∧
    relationRow421 rho ∧
    relationRow422 rho ∧
    relationRow423 rho ∧
    relationRow424 rho ∧
    relationRow425 rho ∧
    relationRow426 rho ∧
    relationRow427 rho ∧
    relationRow428 rho ∧
    relationRow429 rho ∧
    relationRow430 rho ∧
    relationRow431 rho ∧
    relationRow432 rho ∧
    relationRow433 rho ∧
    relationRow434 rho ∧
    relationRow435 rho ∧
    relationRow436 rho ∧
    relationRow437 rho ∧
    relationRow438 rho ∧
    relationRow439 rho ∧
    relationRow440 rho ∧
    relationRow441 rho ∧
    relationRow442 rho ∧
    relationRow443 rho ∧
    relationRow444 rho ∧
    relationRow445 rho ∧
    relationRow446 rho ∧
    relationRow447 rho ∧
    relationRow448 rho ∧
    relationRow449 rho ∧
    relationRow450 rho ∧
    relationRow451 rho ∧
    relationRow452 rho ∧
    relationRow453 rho ∧
    relationRow454 rho ∧
    relationRow455 rho ∧
    relationRow456 rho ∧
    relationRow457 rho ∧
    relationRow458 rho ∧
    relationRow459 rho ∧
    relationRow460 rho ∧
    relationRow461 rho ∧
    relationRow462 rho ∧
    relationRow463 rho ∧
    relationRow464 rho ∧
    relationRow465 rho ∧
    relationRow466 rho ∧
    relationRow467 rho ∧
    relationRow468 rho ∧
    relationRow469 rho ∧
    relationRow470 rho ∧
    relationRow471 rho ∧
    relationRow472 rho ∧
    relationRow473 rho ∧
    relationRow474 rho ∧
    relationRow475 rho ∧
    relationRow476 rho ∧
    relationRow477 rho ∧
    relationRow478 rho ∧
    relationRow479 rho

def relationPart6 (rho : Nat -> F) : Prop :=
    relationRow480 rho ∧
    relationRow481 rho ∧
    relationRow482 rho ∧
    relationRow483 rho ∧
    relationRow484 rho ∧
    relationRow485 rho ∧
    relationRow486 rho ∧
    relationRow487 rho ∧
    relationRow488 rho ∧
    relationRow489 rho ∧
    relationRow490 rho ∧
    relationRow491 rho ∧
    relationRow492 rho ∧
    relationRow493 rho ∧
    relationRow494 rho ∧
    relationRow495 rho ∧
    relationRow496 rho ∧
    relationRow497 rho ∧
    relationRow498 rho ∧
    relationRow499 rho ∧
    relationRow500 rho ∧
    relationRow501 rho ∧
    relationRow502 rho ∧
    relationRow503 rho ∧
    relationRow504 rho ∧
    relationRow505 rho ∧
    relationRow506 rho ∧
    relationRow507 rho ∧
    relationRow508 rho ∧
    relationRow509 rho ∧
    relationRow510 rho ∧
    relationRow511 rho ∧
    relationRow512 rho ∧
    relationRow513 rho ∧
    relationRow514 rho ∧
    relationRow515 rho ∧
    relationRow516 rho ∧
    relationRow517 rho ∧
    relationRow518 rho ∧
    relationRow519 rho ∧
    relationRow520 rho ∧
    relationRow521 rho ∧
    relationRow522 rho ∧
    relationRow523 rho ∧
    relationRow524 rho ∧
    relationRow525 rho ∧
    relationRow526 rho ∧
    relationRow527 rho ∧
    relationRow528 rho ∧
    relationRow529 rho ∧
    relationRow530 rho ∧
    relationRow531 rho ∧
    relationRow532 rho ∧
    relationRow533 rho ∧
    relationRow534 rho ∧
    relationRow535 rho ∧
    relationRow536 rho ∧
    relationRow537 rho ∧
    relationRow538 rho ∧
    relationRow539 rho ∧
    relationRow540 rho ∧
    relationRow541 rho ∧
    relationRow542 rho ∧
    relationRow543 rho ∧
    relationRow544 rho ∧
    relationRow545 rho ∧
    relationRow546 rho ∧
    relationRow547 rho ∧
    relationRow548 rho ∧
    relationRow549 rho ∧
    relationRow550 rho ∧
    relationRow551 rho ∧
    relationRow552 rho ∧
    relationRow553 rho ∧
    relationRow554 rho ∧
    relationRow555 rho ∧
    relationRow556 rho ∧
    relationRow557 rho ∧
    relationRow558 rho ∧
    relationRow559 rho

def relationPart7 (rho : Nat -> F) : Prop :=
    relationRow560 rho ∧
    relationRow561 rho ∧
    relationRow562 rho ∧
    relationRow563 rho ∧
    relationRow564 rho ∧
    relationRow565 rho ∧
    relationRow566 rho ∧
    relationRow567 rho ∧
    relationRow568 rho ∧
    relationRow569 rho ∧
    relationRow570 rho ∧
    relationRow571 rho ∧
    relationRow572 rho ∧
    relationRow573 rho ∧
    relationRow574 rho ∧
    relationRow575 rho ∧
    relationRow576 rho ∧
    relationRow577 rho ∧
    relationRow578 rho ∧
    relationRow579 rho ∧
    relationRow580 rho ∧
    relationRow581 rho ∧
    relationRow582 rho ∧
    relationRow583 rho ∧
    relationRow584 rho ∧
    relationRow585 rho ∧
    relationRow586 rho ∧
    relationRow587 rho ∧
    relationRow588 rho ∧
    relationRow589 rho ∧
    relationRow590 rho ∧
    relationRow591 rho ∧
    relationRow592 rho ∧
    relationRow593 rho ∧
    relationRow594 rho ∧
    relationRow595 rho ∧
    relationRow596 rho ∧
    relationRow597 rho ∧
    relationRow598 rho ∧
    relationRow599 rho ∧
    relationRow600 rho ∧
    relationRow601 rho ∧
    relationRow602 rho ∧
    relationRow603 rho ∧
    relationRow604 rho ∧
    relationRow605 rho ∧
    relationRow606 rho ∧
    relationRow607 rho ∧
    relationRow608 rho ∧
    relationRow609 rho ∧
    relationRow610 rho ∧
    relationRow611 rho ∧
    relationRow612 rho ∧
    relationRow613 rho ∧
    relationRow614 rho ∧
    relationRow615 rho ∧
    relationRow616 rho ∧
    relationRow617 rho ∧
    relationRow618 rho ∧
    relationRow619 rho ∧
    relationRow620 rho ∧
    relationRow621 rho ∧
    relationRow622 rho ∧
    relationRow623 rho ∧
    relationRow624 rho ∧
    relationRow625 rho ∧
    relationRow626 rho ∧
    relationRow627 rho ∧
    relationRow628 rho ∧
    relationRow629 rho ∧
    relationRow630 rho ∧
    relationRow631 rho ∧
    relationRow632 rho ∧
    relationRow633 rho ∧
    relationRow634 rho ∧
    relationRow635 rho ∧
    relationRow636 rho ∧
    relationRow637 rho ∧
    relationRow638 rho ∧
    relationRow639 rho

def relationPart8 (rho : Nat -> F) : Prop :=
    relationRow640 rho ∧
    relationRow641 rho ∧
    relationRow642 rho ∧
    relationRow643 rho ∧
    relationRow644 rho ∧
    relationRow645 rho ∧
    relationRow646 rho ∧
    relationRow647 rho ∧
    relationRow648 rho ∧
    relationRow649 rho ∧
    relationRow650 rho ∧
    relationRow651 rho ∧
    relationRow652 rho ∧
    relationRow653 rho ∧
    relationRow654 rho ∧
    relationRow655 rho ∧
    relationRow656 rho ∧
    relationRow657 rho ∧
    relationRow658 rho ∧
    relationRow659 rho ∧
    relationRow660 rho ∧
    relationRow661 rho ∧
    relationRow662 rho ∧
    relationRow663 rho ∧
    relationRow664 rho ∧
    relationRow665 rho ∧
    relationRow666 rho ∧
    relationRow667 rho ∧
    relationRow668 rho ∧
    relationRow669 rho ∧
    relationRow670 rho ∧
    relationRow671 rho ∧
    relationRow672 rho ∧
    relationRow673 rho ∧
    relationRow674 rho ∧
    relationRow675 rho ∧
    relationRow676 rho ∧
    relationRow677 rho ∧
    relationRow678 rho ∧
    relationRow679 rho ∧
    relationRow680 rho ∧
    relationRow681 rho ∧
    relationRow682 rho ∧
    relationRow683 rho ∧
    relationRow684 rho ∧
    relationRow685 rho ∧
    relationRow686 rho ∧
    relationRow687 rho ∧
    relationRow688 rho ∧
    relationRow689 rho ∧
    relationRow690 rho ∧
    relationRow691 rho ∧
    relationRow692 rho ∧
    relationRow693 rho ∧
    relationRow694 rho ∧
    relationRow695 rho ∧
    relationRow696 rho ∧
    relationRow697 rho ∧
    relationRow698 rho ∧
    relationRow699 rho ∧
    relationRow700 rho ∧
    relationRow701 rho ∧
    relationRow702 rho ∧
    relationRow703 rho ∧
    relationRow704 rho ∧
    relationRow705 rho ∧
    relationRow706 rho ∧
    relationRow707 rho ∧
    relationRow708 rho ∧
    relationRow709 rho ∧
    relationRow710 rho ∧
    relationRow711 rho ∧
    relationRow712 rho ∧
    relationRow713 rho ∧
    relationRow714 rho ∧
    relationRow715 rho ∧
    relationRow716 rho ∧
    relationRow717 rho ∧
    relationRow718 rho ∧
    relationRow719 rho

def relationPart9 (rho : Nat -> F) : Prop :=
    relationRow720 rho ∧
    relationRow721 rho ∧
    relationRow722 rho ∧
    relationRow723 rho ∧
    relationRow724 rho ∧
    relationRow725 rho ∧
    relationRow726 rho ∧
    relationRow727 rho ∧
    relationRow728 rho ∧
    relationRow729 rho ∧
    relationRow730 rho ∧
    relationRow731 rho ∧
    relationRow732 rho ∧
    relationRow733 rho ∧
    relationRow734 rho ∧
    relationRow735 rho ∧
    relationRow736 rho ∧
    relationRow737 rho ∧
    relationRow738 rho ∧
    relationRow739 rho ∧
    relationRow740 rho ∧
    relationRow741 rho ∧
    relationRow742 rho ∧
    relationRow743 rho ∧
    relationRow744 rho ∧
    relationRow745 rho ∧
    relationRow746 rho ∧
    relationRow747 rho ∧
    relationRow748 rho ∧
    relationRow749 rho ∧
    relationRow750 rho ∧
    relationRow751 rho ∧
    relationRow752 rho ∧
    relationRow753 rho ∧
    relationRow754 rho ∧
    relationRow755 rho ∧
    relationRow756 rho ∧
    relationRow757 rho ∧
    relationRow758 rho ∧
    relationRow759 rho ∧
    relationRow760 rho ∧
    relationRow761 rho ∧
    relationRow762 rho ∧
    relationRow763 rho ∧
    relationRow764 rho ∧
    relationRow765 rho ∧
    relationRow766 rho ∧
    relationRow767 rho ∧
    relationRow768 rho ∧
    relationRow769 rho ∧
    relationRow770 rho ∧
    relationRow771 rho ∧
    relationRow772 rho ∧
    relationRow773 rho ∧
    relationRow774 rho ∧
    relationRow775 rho ∧
    relationRow776 rho ∧
    relationRow777 rho ∧
    relationRow778 rho ∧
    relationRow779 rho ∧
    relationRow780 rho ∧
    relationRow781 rho ∧
    relationRow782 rho ∧
    relationRow783 rho ∧
    relationRow784 rho ∧
    relationRow785 rho ∧
    relationRow786 rho ∧
    relationRow787 rho ∧
    relationRow788 rho ∧
    relationRow789 rho ∧
    relationRow790 rho ∧
    relationRow791 rho ∧
    relationRow792 rho ∧
    relationRow793 rho ∧
    relationRow794 rho ∧
    relationRow795 rho ∧
    relationRow796 rho ∧
    relationRow797 rho ∧
    relationRow798 rho ∧
    relationRow799 rho

def relationPart10 (rho : Nat -> F) : Prop :=
    relationRow800 rho ∧
    relationRow801 rho ∧
    relationRow802 rho ∧
    relationRow803 rho ∧
    relationRow804 rho ∧
    relationRow805 rho ∧
    relationRow806 rho ∧
    relationRow807 rho ∧
    relationRow808 rho ∧
    relationRow809 rho ∧
    relationRow810 rho ∧
    relationRow811 rho ∧
    relationRow812 rho ∧
    relationRow813 rho ∧
    relationRow814 rho ∧
    relationRow815 rho ∧
    relationRow816 rho ∧
    relationRow817 rho ∧
    relationRow818 rho ∧
    relationRow819 rho ∧
    relationRow820 rho ∧
    relationRow821 rho ∧
    relationRow822 rho ∧
    relationRow823 rho ∧
    relationRow824 rho ∧
    relationRow825 rho ∧
    relationRow826 rho ∧
    relationRow827 rho ∧
    relationRow828 rho ∧
    relationRow829 rho ∧
    relationRow830 rho ∧
    relationRow831 rho ∧
    relationRow832 rho ∧
    relationRow833 rho ∧
    relationRow834 rho ∧
    relationRow835 rho ∧
    relationRow836 rho ∧
    relationRow837 rho ∧
    relationRow838 rho ∧
    relationRow839 rho ∧
    relationRow840 rho ∧
    relationRow841 rho ∧
    relationRow842 rho ∧
    relationRow843 rho ∧
    relationRow844 rho ∧
    relationRow845 rho ∧
    relationRow846 rho ∧
    relationRow847 rho ∧
    relationRow848 rho ∧
    relationRow849 rho ∧
    relationRow850 rho ∧
    relationRow851 rho ∧
    relationRow852 rho ∧
    relationRow853 rho ∧
    relationRow854 rho ∧
    relationRow855 rho ∧
    relationRow856 rho ∧
    relationRow857 rho ∧
    relationRow858 rho ∧
    relationRow859 rho ∧
    relationRow860 rho ∧
    relationRow861 rho ∧
    relationRow862 rho ∧
    relationRow863 rho ∧
    relationRow864 rho ∧
    relationRow865 rho ∧
    relationRow866 rho ∧
    relationRow867 rho ∧
    relationRow868 rho ∧
    relationRow869 rho ∧
    relationRow870 rho ∧
    relationRow871 rho ∧
    relationRow872 rho ∧
    relationRow873 rho ∧
    relationRow874 rho ∧
    relationRow875 rho ∧
    relationRow876 rho ∧
    relationRow877 rho ∧
    relationRow878 rho ∧
    relationRow879 rho

def relationPart11 (rho : Nat -> F) : Prop :=
    relationRow880 rho ∧
    relationRow881 rho ∧
    relationRow882 rho ∧
    relationRow883 rho ∧
    relationRow884 rho ∧
    relationRow885 rho ∧
    relationRow886 rho ∧
    relationRow887 rho ∧
    relationRow888 rho ∧
    relationRow889 rho ∧
    relationRow890 rho ∧
    relationRow891 rho ∧
    relationRow892 rho ∧
    relationRow893 rho ∧
    relationRow894 rho ∧
    relationRow895 rho ∧
    relationRow896 rho ∧
    relationRow897 rho ∧
    relationRow898 rho ∧
    relationRow899 rho ∧
    relationRow900 rho ∧
    relationRow901 rho ∧
    relationRow902 rho ∧
    relationRow903 rho ∧
    relationRow904 rho ∧
    relationRow905 rho ∧
    relationRow906 rho ∧
    relationRow907 rho ∧
    relationRow908 rho ∧
    relationRow909 rho ∧
    relationRow910 rho ∧
    relationRow911 rho ∧
    relationRow912 rho ∧
    relationRow913 rho ∧
    relationRow914 rho ∧
    relationRow915 rho ∧
    relationRow916 rho ∧
    relationRow917 rho ∧
    relationRow918 rho ∧
    relationRow919 rho ∧
    relationRow920 rho ∧
    relationRow921 rho ∧
    relationRow922 rho ∧
    relationRow923 rho ∧
    relationRow924 rho ∧
    relationRow925 rho ∧
    relationRow926 rho ∧
    relationRow927 rho ∧
    relationRow928 rho ∧
    relationRow929 rho ∧
    relationRow930 rho ∧
    relationRow931 rho ∧
    relationRow932 rho ∧
    relationRow933 rho ∧
    relationRow934 rho ∧
    relationRow935 rho ∧
    relationRow936 rho ∧
    relationRow937 rho ∧
    relationRow938 rho ∧
    relationRow939 rho ∧
    relationRow940 rho ∧
    relationRow941 rho ∧
    relationRow942 rho ∧
    relationRow943 rho ∧
    relationRow944 rho ∧
    relationRow945 rho ∧
    relationRow946 rho ∧
    relationRow947 rho ∧
    relationRow948 rho ∧
    relationRow949 rho ∧
    relationRow950 rho ∧
    relationRow951 rho ∧
    relationRow952 rho ∧
    relationRow953 rho ∧
    relationRow954 rho ∧
    relationRow955 rho ∧
    relationRow956 rho ∧
    relationRow957 rho ∧
    relationRow958 rho ∧
    relationRow959 rho

def relationPart12 (rho : Nat -> F) : Prop :=
    relationRow960 rho ∧
    relationRow961 rho ∧
    relationRow962 rho ∧
    relationRow963 rho ∧
    relationRow964 rho ∧
    relationRow965 rho ∧
    relationRow966 rho ∧
    relationRow967 rho ∧
    relationRow968 rho ∧
    relationRow969 rho ∧
    relationRow970 rho ∧
    relationRow971 rho ∧
    relationRow972 rho ∧
    relationRow973 rho ∧
    relationRow974 rho ∧
    relationRow975 rho ∧
    relationRow976 rho ∧
    relationRow977 rho ∧
    relationRow978 rho ∧
    relationRow979 rho ∧
    relationRow980 rho ∧
    relationRow981 rho ∧
    relationRow982 rho ∧
    relationRow983 rho ∧
    relationRow984 rho ∧
    relationRow985 rho ∧
    relationRow986 rho ∧
    relationRow987 rho ∧
    relationRow988 rho ∧
    relationRow989 rho ∧
    relationRow990 rho ∧
    relationRow991 rho ∧
    relationRow992 rho ∧
    relationRow993 rho ∧
    relationRow994 rho ∧
    relationRow995 rho ∧
    relationRow996 rho ∧
    relationRow997 rho ∧
    relationRow998 rho ∧
    relationRow999 rho ∧
    relationRow1000 rho ∧
    relationRow1001 rho ∧
    relationRow1002 rho ∧
    relationRow1003 rho ∧
    relationRow1004 rho ∧
    relationRow1005 rho ∧
    relationRow1006 rho ∧
    relationRow1007 rho ∧
    relationRow1008 rho ∧
    relationRow1009 rho ∧
    relationRow1010 rho ∧
    relationRow1011 rho ∧
    relationRow1012 rho ∧
    relationRow1013 rho ∧
    relationRow1014 rho ∧
    relationRow1015 rho ∧
    relationRow1016 rho ∧
    relationRow1017 rho ∧
    relationRow1018 rho ∧
    relationRow1019 rho ∧
    relationRow1020 rho ∧
    relationRow1021 rho ∧
    relationRow1022 rho ∧
    relationRow1023 rho ∧
    relationRow1024 rho ∧
    relationRow1025 rho ∧
    relationRow1026 rho ∧
    relationRow1027 rho ∧
    relationRow1028 rho ∧
    relationRow1029 rho ∧
    relationRow1030 rho ∧
    relationRow1031 rho ∧
    relationRow1032 rho ∧
    relationRow1033 rho ∧
    relationRow1034 rho ∧
    relationRow1035 rho ∧
    relationRow1036 rho ∧
    relationRow1037 rho ∧
    relationRow1038 rho ∧
    relationRow1039 rho

def relationPart13 (rho : Nat -> F) : Prop :=
    relationRow1040 rho ∧
    relationRow1041 rho ∧
    relationRow1042 rho ∧
    relationRow1043 rho ∧
    relationRow1044 rho ∧
    relationRow1045 rho ∧
    relationRow1046 rho ∧
    relationRow1047 rho ∧
    relationRow1048 rho ∧
    relationRow1049 rho ∧
    relationRow1050 rho ∧
    relationRow1051 rho ∧
    relationRow1052 rho ∧
    relationRow1053 rho ∧
    relationRow1054 rho ∧
    relationRow1055 rho ∧
    relationRow1056 rho ∧
    relationRow1057 rho ∧
    relationRow1058 rho ∧
    relationRow1059 rho ∧
    relationRow1060 rho ∧
    relationRow1061 rho ∧
    relationRow1062 rho ∧
    relationRow1063 rho ∧
    relationRow1064 rho ∧
    relationRow1065 rho ∧
    relationRow1066 rho ∧
    relationRow1067 rho ∧
    relationRow1068 rho ∧
    relationRow1069 rho ∧
    relationRow1070 rho ∧
    relationRow1071 rho ∧
    relationRow1072 rho ∧
    relationRow1073 rho ∧
    relationRow1074 rho ∧
    relationRow1075 rho ∧
    relationRow1076 rho ∧
    relationRow1077 rho ∧
    relationRow1078 rho ∧
    relationRow1079 rho ∧
    relationRow1080 rho ∧
    relationRow1081 rho ∧
    relationRow1082 rho ∧
    relationRow1083 rho ∧
    relationRow1084 rho ∧
    relationRow1085 rho ∧
    relationRow1086 rho ∧
    relationRow1087 rho ∧
    relationRow1088 rho ∧
    relationRow1089 rho ∧
    relationRow1090 rho ∧
    relationRow1091 rho ∧
    relationRow1092 rho ∧
    relationRow1093 rho ∧
    relationRow1094 rho ∧
    relationRow1095 rho ∧
    relationRow1096 rho ∧
    relationRow1097 rho ∧
    relationRow1098 rho ∧
    relationRow1099 rho ∧
    relationRow1100 rho ∧
    relationRow1101 rho ∧
    relationRow1102 rho ∧
    relationRow1103 rho ∧
    relationRow1104 rho ∧
    relationRow1105 rho ∧
    relationRow1106 rho ∧
    relationRow1107 rho ∧
    relationRow1108 rho ∧
    relationRow1109 rho ∧
    relationRow1110 rho ∧
    relationRow1111 rho ∧
    relationRow1112 rho ∧
    relationRow1113 rho ∧
    relationRow1114 rho ∧
    relationRow1115 rho ∧
    relationRow1116 rho ∧
    relationRow1117 rho ∧
    relationRow1118 rho ∧
    relationRow1119 rho

def relationPart14 (rho : Nat -> F) : Prop :=
    relationRow1120 rho ∧
    relationRow1121 rho ∧
    relationRow1122 rho ∧
    relationRow1123 rho ∧
    relationRow1124 rho ∧
    relationRow1125 rho ∧
    relationRow1126 rho ∧
    relationRow1127 rho ∧
    relationRow1128 rho ∧
    relationRow1129 rho ∧
    relationRow1130 rho ∧
    relationRow1131 rho ∧
    relationRow1132 rho ∧
    relationRow1133 rho ∧
    relationRow1134 rho ∧
    relationRow1135 rho ∧
    relationRow1136 rho ∧
    relationRow1137 rho ∧
    relationRow1138 rho ∧
    relationRow1139 rho ∧
    relationRow1140 rho ∧
    relationRow1141 rho ∧
    relationRow1142 rho ∧
    relationRow1143 rho ∧
    relationRow1144 rho ∧
    relationRow1145 rho ∧
    relationRow1146 rho ∧
    relationRow1147 rho ∧
    relationRow1148 rho ∧
    relationRow1149 rho ∧
    relationRow1150 rho ∧
    relationRow1151 rho ∧
    relationRow1152 rho ∧
    relationRow1153 rho ∧
    relationRow1154 rho ∧
    relationRow1155 rho ∧
    relationRow1156 rho ∧
    relationRow1157 rho ∧
    relationRow1158 rho ∧
    relationRow1159 rho ∧
    relationRow1160 rho ∧
    relationRow1161 rho ∧
    relationRow1162 rho ∧
    relationRow1163 rho ∧
    relationRow1164 rho ∧
    relationRow1165 rho ∧
    relationRow1166 rho ∧
    relationRow1167 rho ∧
    relationRow1168 rho ∧
    relationRow1169 rho ∧
    relationRow1170 rho ∧
    relationRow1171 rho ∧
    relationRow1172 rho ∧
    relationRow1173 rho ∧
    relationRow1174 rho ∧
    relationRow1175 rho ∧
    relationRow1176 rho ∧
    relationRow1177 rho ∧
    relationRow1178 rho ∧
    relationRow1179 rho ∧
    relationRow1180 rho ∧
    relationRow1181 rho ∧
    relationRow1182 rho ∧
    relationRow1183 rho ∧
    relationRow1184 rho ∧
    relationRow1185 rho ∧
    relationRow1186 rho ∧
    relationRow1187 rho ∧
    relationRow1188 rho ∧
    relationRow1189 rho ∧
    relationRow1190 rho ∧
    relationRow1191 rho ∧
    relationRow1192 rho ∧
    relationRow1193 rho ∧
    relationRow1194 rho ∧
    relationRow1195 rho ∧
    relationRow1196 rho ∧
    relationRow1197 rho ∧
    relationRow1198 rho ∧
    relationRow1199 rho

def relationPart15 (rho : Nat -> F) : Prop :=
    relationRow1200 rho ∧
    relationRow1201 rho ∧
    relationRow1202 rho ∧
    relationRow1203 rho ∧
    relationRow1204 rho ∧
    relationRow1205 rho ∧
    relationRow1206 rho ∧
    relationRow1207 rho ∧
    relationRow1208 rho ∧
    relationRow1209 rho ∧
    relationRow1210 rho ∧
    relationRow1211 rho ∧
    relationRow1212 rho ∧
    relationRow1213 rho ∧
    relationRow1214 rho ∧
    relationRow1215 rho ∧
    relationRow1216 rho ∧
    relationRow1217 rho ∧
    relationRow1218 rho ∧
    relationRow1219 rho ∧
    relationRow1220 rho ∧
    relationRow1221 rho ∧
    relationRow1222 rho ∧
    relationRow1223 rho ∧
    relationRow1224 rho ∧
    relationRow1225 rho ∧
    relationRow1226 rho ∧
    relationRow1227 rho ∧
    relationRow1228 rho ∧
    relationRow1229 rho ∧
    relationRow1230 rho ∧
    relationRow1231 rho ∧
    relationRow1232 rho ∧
    relationRow1233 rho ∧
    relationRow1234 rho ∧
    relationRow1235 rho ∧
    relationRow1236 rho ∧
    relationRow1237 rho ∧
    relationRow1238 rho ∧
    relationRow1239 rho ∧
    relationRow1240 rho ∧
    relationRow1241 rho ∧
    relationRow1242 rho ∧
    relationRow1243 rho ∧
    relationRow1244 rho ∧
    relationRow1245 rho ∧
    relationRow1246 rho ∧
    relationRow1247 rho ∧
    relationRow1248 rho ∧
    relationRow1249 rho ∧
    relationRow1250 rho ∧
    relationRow1251 rho ∧
    relationRow1252 rho ∧
    relationRow1253 rho ∧
    relationRow1254 rho ∧
    relationRow1255 rho ∧
    relationRow1256 rho ∧
    relationRow1257 rho ∧
    relationRow1258 rho ∧
    relationRow1259 rho ∧
    relationRow1260 rho ∧
    relationRow1261 rho ∧
    relationRow1262 rho ∧
    relationRow1263 rho ∧
    relationRow1264 rho ∧
    relationRow1265 rho ∧
    relationRow1266 rho ∧
    relationRow1267 rho ∧
    relationRow1268 rho ∧
    relationRow1269 rho ∧
    relationRow1270 rho ∧
    relationRow1271 rho ∧
    relationRow1272 rho ∧
    relationRow1273 rho ∧
    relationRow1274 rho ∧
    relationRow1275 rho ∧
    relationRow1276 rho ∧
    relationRow1277 rho ∧
    relationRow1278 rho ∧
    relationRow1279 rho

def relationPart16 (rho : Nat -> F) : Prop :=
    relationRow1280 rho ∧
    relationRow1281 rho ∧
    relationRow1282 rho ∧
    relationRow1283 rho ∧
    relationRow1284 rho ∧
    relationRow1285 rho ∧
    relationRow1286 rho ∧
    relationRow1287 rho ∧
    relationRow1288 rho ∧
    relationRow1289 rho ∧
    relationRow1290 rho ∧
    relationRow1291 rho ∧
    relationRow1292 rho ∧
    relationRow1293 rho ∧
    relationRow1294 rho ∧
    relationRow1295 rho ∧
    relationRow1296 rho ∧
    relationRow1297 rho ∧
    relationRow1298 rho ∧
    relationRow1299 rho ∧
    relationRow1300 rho ∧
    relationRow1301 rho ∧
    relationRow1302 rho ∧
    relationRow1303 rho ∧
    relationRow1304 rho ∧
    relationRow1305 rho ∧
    relationRow1306 rho ∧
    relationRow1307 rho ∧
    relationRow1308 rho ∧
    relationRow1309 rho ∧
    relationRow1310 rho ∧
    relationRow1311 rho ∧
    relationRow1312 rho ∧
    relationRow1313 rho ∧
    relationRow1314 rho ∧
    relationRow1315 rho ∧
    relationRow1316 rho ∧
    relationRow1317 rho ∧
    relationRow1318 rho ∧
    relationRow1319 rho ∧
    relationRow1320 rho ∧
    relationRow1321 rho ∧
    relationRow1322 rho ∧
    relationRow1323 rho ∧
    relationRow1324 rho ∧
    relationRow1325 rho ∧
    relationRow1326 rho ∧
    relationRow1327 rho ∧
    relationRow1328 rho ∧
    relationRow1329 rho ∧
    relationRow1330 rho ∧
    relationRow1331 rho ∧
    relationRow1332 rho ∧
    relationRow1333 rho ∧
    relationRow1334 rho ∧
    relationRow1335 rho ∧
    relationRow1336 rho ∧
    relationRow1337 rho ∧
    relationRow1338 rho ∧
    relationRow1339 rho ∧
    relationRow1340 rho ∧
    relationRow1341 rho ∧
    relationRow1342 rho ∧
    relationRow1343 rho ∧
    relationRow1344 rho ∧
    relationRow1345 rho ∧
    relationRow1346 rho ∧
    relationRow1347 rho ∧
    relationRow1348 rho ∧
    relationRow1349 rho ∧
    relationRow1350 rho ∧
    relationRow1351 rho ∧
    relationRow1352 rho ∧
    relationRow1353 rho ∧
    relationRow1354 rho ∧
    relationRow1355 rho ∧
    relationRow1356 rho ∧
    relationRow1357 rho ∧
    relationRow1358 rho ∧
    relationRow1359 rho

def relationPart17 (rho : Nat -> F) : Prop :=
    relationRow1360 rho ∧
    relationRow1361 rho ∧
    relationRow1362 rho ∧
    relationRow1363 rho ∧
    relationRow1364 rho ∧
    relationRow1365 rho ∧
    relationRow1366 rho ∧
    relationRow1367 rho ∧
    relationRow1368 rho ∧
    relationRow1369 rho ∧
    relationRow1370 rho ∧
    relationRow1371 rho ∧
    relationRow1372 rho ∧
    relationRow1373 rho ∧
    relationRow1374 rho ∧
    relationRow1375 rho ∧
    relationRow1376 rho ∧
    relationRow1377 rho ∧
    relationRow1378 rho ∧
    relationRow1379 rho ∧
    relationRow1380 rho ∧
    relationRow1381 rho ∧
    relationRow1382 rho ∧
    relationRow1383 rho ∧
    relationRow1384 rho ∧
    relationRow1385 rho ∧
    relationRow1386 rho ∧
    relationRow1387 rho ∧
    relationRow1388 rho ∧
    relationRow1389 rho ∧
    relationRow1390 rho ∧
    relationRow1391 rho ∧
    relationRow1392 rho ∧
    relationRow1393 rho ∧
    relationRow1394 rho ∧
    relationRow1395 rho ∧
    relationRow1396 rho ∧
    relationRow1397 rho ∧
    relationRow1398 rho ∧
    relationRow1399 rho ∧
    relationRow1400 rho ∧
    relationRow1401 rho ∧
    relationRow1402 rho ∧
    relationRow1403 rho ∧
    relationRow1404 rho ∧
    relationRow1405 rho ∧
    relationRow1406 rho ∧
    relationRow1407 rho ∧
    relationRow1408 rho ∧
    relationRow1409 rho ∧
    relationRow1410 rho ∧
    relationRow1411 rho ∧
    relationRow1412 rho ∧
    relationRow1413 rho ∧
    relationRow1414 rho ∧
    relationRow1415 rho ∧
    relationRow1416 rho ∧
    relationRow1417 rho ∧
    relationRow1418 rho ∧
    relationRow1419 rho ∧
    relationRow1420 rho ∧
    relationRow1421 rho ∧
    relationRow1422 rho ∧
    relationRow1423 rho ∧
    relationRow1424 rho ∧
    relationRow1425 rho ∧
    relationRow1426 rho ∧
    relationRow1427 rho ∧
    relationRow1428 rho ∧
    relationRow1429 rho ∧
    relationRow1430 rho ∧
    relationRow1431 rho ∧
    relationRow1432 rho ∧
    relationRow1433 rho ∧
    relationRow1434 rho ∧
    relationRow1435 rho ∧
    relationRow1436 rho ∧
    relationRow1437 rho ∧
    relationRow1438 rho ∧
    relationRow1439 rho

def relationPart18 (rho : Nat -> F) : Prop :=
    relationRow1440 rho ∧
    relationRow1441 rho ∧
    relationRow1442 rho ∧
    relationRow1443 rho ∧
    relationRow1444 rho ∧
    relationRow1445 rho ∧
    relationRow1446 rho ∧
    relationRow1447 rho ∧
    relationRow1448 rho ∧
    relationRow1449 rho ∧
    relationRow1450 rho ∧
    relationRow1451 rho ∧
    relationRow1452 rho ∧
    relationRow1453 rho ∧
    relationRow1454 rho ∧
    relationRow1455 rho ∧
    relationRow1456 rho ∧
    relationRow1457 rho ∧
    relationRow1458 rho ∧
    relationRow1459 rho ∧
    relationRow1460 rho ∧
    relationRow1461 rho ∧
    relationRow1462 rho ∧
    relationRow1463 rho ∧
    relationRow1464 rho ∧
    relationRow1465 rho ∧
    relationRow1466 rho ∧
    relationRow1467 rho ∧
    relationRow1468 rho ∧
    relationRow1469 rho ∧
    relationRow1470 rho ∧
    relationRow1471 rho ∧
    relationRow1472 rho ∧
    relationRow1473 rho ∧
    relationRow1474 rho ∧
    relationRow1475 rho ∧
    relationRow1476 rho ∧
    relationRow1477 rho ∧
    relationRow1478 rho ∧
    relationRow1479 rho ∧
    relationRow1480 rho ∧
    relationRow1481 rho ∧
    relationRow1482 rho ∧
    relationRow1483 rho ∧
    relationRow1484 rho ∧
    relationRow1485 rho ∧
    relationRow1486 rho ∧
    relationRow1487 rho ∧
    relationRow1488 rho ∧
    relationRow1489 rho ∧
    relationRow1490 rho ∧
    relationRow1491 rho ∧
    relationRow1492 rho ∧
    relationRow1493 rho ∧
    relationRow1494 rho ∧
    relationRow1495 rho ∧
    relationRow1496 rho ∧
    relationRow1497 rho ∧
    relationRow1498 rho ∧
    relationRow1499 rho ∧
    relationRow1500 rho ∧
    relationRow1501 rho ∧
    relationRow1502 rho ∧
    relationRow1503 rho ∧
    relationRow1504 rho ∧
    relationRow1505 rho ∧
    relationRow1506 rho ∧
    relationRow1507 rho ∧
    relationRow1508 rho ∧
    relationRow1509 rho ∧
    relationRow1510 rho ∧
    relationRow1511 rho ∧
    relationRow1512 rho ∧
    relationRow1513 rho ∧
    relationRow1514 rho ∧
    relationRow1515 rho ∧
    relationRow1516 rho ∧
    relationRow1517 rho ∧
    relationRow1518 rho ∧
    relationRow1519 rho

def relationPart19 (rho : Nat -> F) : Prop :=
    relationRow1520 rho ∧
    relationRow1521 rho ∧
    relationRow1522 rho ∧
    relationRow1523 rho ∧
    relationRow1524 rho ∧
    relationRow1525 rho ∧
    relationRow1526 rho ∧
    relationRow1527 rho ∧
    relationRow1528 rho ∧
    relationRow1529 rho ∧
    relationRow1530 rho ∧
    relationRow1531 rho ∧
    relationRow1532 rho ∧
    relationRow1533 rho ∧
    relationRow1534 rho ∧
    relationRow1535 rho ∧
    relationRow1536 rho ∧
    relationRow1537 rho ∧
    relationRow1538 rho ∧
    relationRow1539 rho ∧
    relationRow1540 rho ∧
    relationRow1541 rho ∧
    relationRow1542 rho ∧
    relationRow1543 rho ∧
    relationRow1544 rho ∧
    relationRow1545 rho ∧
    relationRow1546 rho ∧
    relationRow1547 rho ∧
    relationRow1548 rho ∧
    relationRow1549 rho ∧
    relationRow1550 rho ∧
    relationRow1551 rho ∧
    relationRow1552 rho ∧
    relationRow1553 rho ∧
    relationRow1554 rho ∧
    relationRow1555 rho ∧
    relationRow1556 rho ∧
    relationRow1557 rho ∧
    relationRow1558 rho ∧
    relationRow1559 rho ∧
    relationRow1560 rho ∧
    relationRow1561 rho ∧
    relationRow1562 rho ∧
    relationRow1563 rho ∧
    relationRow1564 rho ∧
    relationRow1565 rho ∧
    relationRow1566 rho ∧
    relationRow1567 rho ∧
    relationRow1568 rho ∧
    relationRow1569 rho ∧
    relationRow1570 rho ∧
    relationRow1571 rho ∧
    relationRow1572 rho ∧
    relationRow1573 rho ∧
    relationRow1574 rho ∧
    relationRow1575 rho ∧
    relationRow1576 rho ∧
    relationRow1577 rho ∧
    relationRow1578 rho ∧
    relationRow1579 rho ∧
    relationRow1580 rho ∧
    relationRow1581 rho ∧
    relationRow1582 rho ∧
    relationRow1583 rho ∧
    relationRow1584 rho ∧
    relationRow1585 rho ∧
    relationRow1586 rho ∧
    relationRow1587 rho ∧
    relationRow1588 rho ∧
    relationRow1589 rho ∧
    relationRow1590 rho ∧
    relationRow1591 rho ∧
    relationRow1592 rho ∧
    relationRow1593 rho ∧
    relationRow1594 rho ∧
    relationRow1595 rho ∧
    relationRow1596 rho ∧
    relationRow1597 rho ∧
    relationRow1598 rho ∧
    relationRow1599 rho

def relationPart20 (rho : Nat -> F) : Prop :=
    relationRow1600 rho ∧
    relationRow1601 rho ∧
    relationRow1602 rho ∧
    relationRow1603 rho ∧
    relationRow1604 rho ∧
    relationRow1605 rho ∧
    relationRow1606 rho ∧
    relationRow1607 rho ∧
    relationRow1608 rho ∧
    relationRow1609 rho ∧
    relationRow1610 rho ∧
    relationRow1611 rho ∧
    relationRow1612 rho ∧
    relationRow1613 rho ∧
    relationRow1614 rho ∧
    relationRow1615 rho ∧
    relationRow1616 rho ∧
    relationRow1617 rho ∧
    relationRow1618 rho ∧
    relationRow1619 rho ∧
    relationRow1620 rho ∧
    relationRow1621 rho ∧
    relationRow1622 rho ∧
    relationRow1623 rho ∧
    relationRow1624 rho ∧
    relationRow1625 rho ∧
    relationRow1626 rho ∧
    relationRow1627 rho ∧
    relationRow1628 rho ∧
    relationRow1629 rho ∧
    relationRow1630 rho ∧
    relationRow1631 rho ∧
    relationRow1632 rho ∧
    relationRow1633 rho ∧
    relationRow1634 rho ∧
    relationRow1635 rho ∧
    relationRow1636 rho ∧
    relationRow1637 rho ∧
    relationRow1638 rho ∧
    relationRow1639 rho ∧
    relationRow1640 rho ∧
    relationRow1641 rho ∧
    relationRow1642 rho ∧
    relationRow1643 rho ∧
    relationRow1644 rho ∧
    relationRow1645 rho ∧
    relationRow1646 rho ∧
    relationRow1647 rho ∧
    relationRow1648 rho ∧
    relationRow1649 rho ∧
    relationRow1650 rho ∧
    relationRow1651 rho ∧
    relationRow1652 rho ∧
    relationRow1653 rho ∧
    relationRow1654 rho ∧
    relationRow1655 rho ∧
    relationRow1656 rho ∧
    relationRow1657 rho ∧
    relationRow1658 rho ∧
    relationRow1659 rho ∧
    relationRow1660 rho ∧
    relationRow1661 rho ∧
    relationRow1662 rho ∧
    relationRow1663 rho ∧
    relationRow1664 rho ∧
    relationRow1665 rho ∧
    relationRow1666 rho ∧
    relationRow1667 rho ∧
    relationRow1668 rho ∧
    relationRow1669 rho ∧
    relationRow1670 rho ∧
    relationRow1671 rho ∧
    relationRow1672 rho ∧
    relationRow1673 rho ∧
    relationRow1674 rho ∧
    relationRow1675 rho ∧
    relationRow1676 rho ∧
    relationRow1677 rho ∧
    relationRow1678 rho ∧
    relationRow1679 rho

def relationPart21 (rho : Nat -> F) : Prop :=
    relationRow1680 rho ∧
    relationRow1681 rho ∧
    relationRow1682 rho ∧
    relationRow1683 rho ∧
    relationRow1684 rho ∧
    relationRow1685 rho ∧
    relationRow1686 rho ∧
    relationRow1687 rho ∧
    relationRow1688 rho ∧
    relationRow1689 rho ∧
    relationRow1690 rho ∧
    relationRow1691 rho ∧
    relationRow1692 rho ∧
    relationRow1693 rho ∧
    relationRow1694 rho ∧
    relationRow1695 rho ∧
    relationRow1696 rho ∧
    relationRow1697 rho ∧
    relationRow1698 rho ∧
    relationRow1699 rho ∧
    relationRow1700 rho ∧
    relationRow1701 rho ∧
    relationRow1702 rho ∧
    relationRow1703 rho ∧
    relationRow1704 rho ∧
    relationRow1705 rho ∧
    relationRow1706 rho ∧
    relationRow1707 rho ∧
    relationRow1708 rho ∧
    relationRow1709 rho ∧
    relationRow1710 rho ∧
    relationRow1711 rho ∧
    relationRow1712 rho ∧
    relationRow1713 rho ∧
    relationRow1714 rho ∧
    relationRow1715 rho ∧
    relationRow1716 rho ∧
    relationRow1717 rho ∧
    relationRow1718 rho ∧
    relationRow1719 rho ∧
    relationRow1720 rho ∧
    relationRow1721 rho ∧
    relationRow1722 rho ∧
    relationRow1723 rho ∧
    relationRow1724 rho ∧
    relationRow1725 rho ∧
    relationRow1726 rho ∧
    relationRow1727 rho ∧
    relationRow1728 rho ∧
    relationRow1729 rho ∧
    relationRow1730 rho ∧
    relationRow1731 rho ∧
    relationRow1732 rho ∧
    relationRow1733 rho ∧
    relationRow1734 rho ∧
    relationRow1735 rho ∧
    relationRow1736 rho ∧
    relationRow1737 rho ∧
    relationRow1738 rho ∧
    relationRow1739 rho ∧
    relationRow1740 rho ∧
    relationRow1741 rho ∧
    relationRow1742 rho ∧
    relationRow1743 rho ∧
    relationRow1744 rho ∧
    relationRow1745 rho ∧
    relationRow1746 rho ∧
    relationRow1747 rho ∧
    relationRow1748 rho ∧
    relationRow1749 rho ∧
    relationRow1750 rho ∧
    relationRow1751 rho ∧
    relationRow1752 rho ∧
    relationRow1753 rho ∧
    relationRow1754 rho ∧
    relationRow1755 rho ∧
    relationRow1756 rho ∧
    relationRow1757 rho ∧
    relationRow1758 rho ∧
    relationRow1759 rho

def relationPart22 (rho : Nat -> F) : Prop :=
    relationRow1760 rho ∧
    relationRow1761 rho ∧
    relationRow1762 rho ∧
    relationRow1763 rho ∧
    relationRow1764 rho ∧
    relationRow1765 rho ∧
    relationRow1766 rho ∧
    relationRow1767 rho ∧
    relationRow1768 rho ∧
    relationRow1769 rho ∧
    relationRow1770 rho ∧
    relationRow1771 rho ∧
    relationRow1772 rho ∧
    relationRow1773 rho ∧
    relationRow1774 rho ∧
    relationRow1775 rho ∧
    relationRow1776 rho ∧
    relationRow1777 rho ∧
    relationRow1778 rho ∧
    relationRow1779 rho ∧
    relationRow1780 rho ∧
    relationRow1781 rho ∧
    relationRow1782 rho ∧
    relationRow1783 rho ∧
    relationRow1784 rho ∧
    relationRow1785 rho ∧
    relationRow1786 rho ∧
    relationRow1787 rho ∧
    relationRow1788 rho ∧
    relationRow1789 rho ∧
    relationRow1790 rho ∧
    relationRow1791 rho ∧
    relationRow1792 rho ∧
    relationRow1793 rho ∧
    relationRow1794 rho ∧
    relationRow1795 rho ∧
    relationRow1796 rho ∧
    relationRow1797 rho ∧
    relationRow1798 rho ∧
    relationRow1799 rho ∧
    relationRow1800 rho ∧
    relationRow1801 rho ∧
    relationRow1802 rho ∧
    relationRow1803 rho ∧
    relationRow1804 rho ∧
    relationRow1805 rho ∧
    relationRow1806 rho ∧
    relationRow1807 rho ∧
    relationRow1808 rho ∧
    relationRow1809 rho ∧
    relationRow1810 rho ∧
    relationRow1811 rho ∧
    relationRow1812 rho ∧
    relationRow1813 rho ∧
    relationRow1814 rho ∧
    relationRow1815 rho ∧
    relationRow1816 rho ∧
    relationRow1817 rho ∧
    relationRow1818 rho ∧
    relationRow1819 rho ∧
    relationRow1820 rho ∧
    relationRow1821 rho ∧
    relationRow1822 rho ∧
    relationRow1823 rho ∧
    relationRow1824 rho ∧
    relationRow1825 rho ∧
    relationRow1826 rho ∧
    relationRow1827 rho ∧
    relationRow1828 rho ∧
    relationRow1829 rho ∧
    relationRow1830 rho ∧
    relationRow1831 rho ∧
    relationRow1832 rho ∧
    relationRow1833 rho ∧
    relationRow1834 rho ∧
    relationRow1835 rho ∧
    relationRow1836 rho ∧
    relationRow1837 rho ∧
    relationRow1838 rho ∧
    relationRow1839 rho

def relationPart23 (rho : Nat -> F) : Prop :=
    relationRow1840 rho ∧
    relationRow1841 rho ∧
    relationRow1842 rho ∧
    relationRow1843 rho ∧
    relationRow1844 rho ∧
    relationRow1845 rho ∧
    relationRow1846 rho ∧
    relationRow1847 rho ∧
    relationRow1848 rho ∧
    relationRow1849 rho ∧
    relationRow1850 rho ∧
    relationRow1851 rho ∧
    relationRow1852 rho ∧
    relationRow1853 rho ∧
    relationRow1854 rho ∧
    relationRow1855 rho ∧
    relationRow1856 rho ∧
    relationRow1857 rho ∧
    relationRow1858 rho ∧
    relationRow1859 rho ∧
    relationRow1860 rho ∧
    relationRow1861 rho ∧
    relationRow1862 rho ∧
    relationRow1863 rho ∧
    relationRow1864 rho ∧
    relationRow1865 rho ∧
    relationRow1866 rho ∧
    relationRow1867 rho ∧
    relationRow1868 rho ∧
    relationRow1869 rho ∧
    relationRow1870 rho ∧
    relationRow1871 rho ∧
    relationRow1872 rho ∧
    relationRow1873 rho ∧
    relationRow1874 rho ∧
    relationRow1875 rho ∧
    relationRow1876 rho ∧
    relationRow1877 rho ∧
    relationRow1878 rho ∧
    relationRow1879 rho ∧
    relationRow1880 rho ∧
    relationRow1881 rho ∧
    relationRow1882 rho ∧
    relationRow1883 rho ∧
    relationRow1884 rho ∧
    relationRow1885 rho ∧
    relationRow1886 rho ∧
    relationRow1887 rho ∧
    relationRow1888 rho ∧
    relationRow1889 rho ∧
    relationRow1890 rho ∧
    relationRow1891 rho ∧
    relationRow1892 rho ∧
    relationRow1893 rho ∧
    relationRow1894 rho ∧
    relationRow1895 rho ∧
    relationRow1896 rho ∧
    relationRow1897 rho ∧
    relationRow1898 rho ∧
    relationRow1899 rho ∧
    relationRow1900 rho ∧
    relationRow1901 rho ∧
    relationRow1902 rho ∧
    relationRow1903 rho ∧
    relationRow1904 rho ∧
    relationRow1905 rho ∧
    relationRow1906 rho ∧
    relationRow1907 rho ∧
    relationRow1908 rho ∧
    relationRow1909 rho ∧
    relationRow1910 rho ∧
    relationRow1911 rho ∧
    relationRow1912 rho ∧
    relationRow1913 rho ∧
    relationRow1914 rho ∧
    relationRow1915 rho ∧
    relationRow1916 rho ∧
    relationRow1917 rho ∧
    relationRow1918 rho ∧
    relationRow1919 rho

def relationPart24 (rho : Nat -> F) : Prop :=
    relationRow1920 rho ∧
    relationRow1921 rho ∧
    relationRow1922 rho ∧
    relationRow1923 rho ∧
    relationRow1924 rho ∧
    relationRow1925 rho ∧
    relationRow1926 rho ∧
    relationRow1927 rho ∧
    relationRow1928 rho ∧
    relationRow1929 rho ∧
    relationRow1930 rho ∧
    relationRow1931 rho ∧
    relationRow1932 rho ∧
    relationRow1933 rho ∧
    relationRow1934 rho ∧
    relationRow1935 rho ∧
    relationRow1936 rho ∧
    relationRow1937 rho ∧
    relationRow1938 rho ∧
    relationRow1939 rho ∧
    relationRow1940 rho ∧
    relationRow1941 rho ∧
    relationRow1942 rho ∧
    relationRow1943 rho ∧
    relationRow1944 rho ∧
    relationRow1945 rho ∧
    relationRow1946 rho ∧
    relationRow1947 rho ∧
    relationRow1948 rho ∧
    relationRow1949 rho ∧
    relationRow1950 rho ∧
    relationRow1951 rho ∧
    relationRow1952 rho ∧
    relationRow1953 rho ∧
    relationRow1954 rho ∧
    relationRow1955 rho ∧
    relationRow1956 rho ∧
    relationRow1957 rho ∧
    relationRow1958 rho ∧
    relationRow1959 rho ∧
    relationRow1960 rho ∧
    relationRow1961 rho ∧
    relationRow1962 rho ∧
    relationRow1963 rho ∧
    relationRow1964 rho ∧
    relationRow1965 rho ∧
    relationRow1966 rho ∧
    relationRow1967 rho ∧
    relationRow1968 rho ∧
    relationRow1969 rho ∧
    relationRow1970 rho ∧
    relationRow1971 rho ∧
    relationRow1972 rho ∧
    relationRow1973 rho ∧
    relationRow1974 rho ∧
    relationRow1975 rho ∧
    relationRow1976 rho ∧
    relationRow1977 rho ∧
    relationRow1978 rho ∧
    relationRow1979 rho ∧
    relationRow1980 rho ∧
    relationRow1981 rho ∧
    relationRow1982 rho ∧
    relationRow1983 rho ∧
    relationRow1984 rho ∧
    relationRow1985 rho ∧
    relationRow1986 rho ∧
    relationRow1987 rho ∧
    relationRow1988 rho ∧
    relationRow1989 rho ∧
    relationRow1990 rho ∧
    relationRow1991 rho ∧
    relationRow1992 rho ∧
    relationRow1993 rho ∧
    relationRow1994 rho ∧
    relationRow1995 rho ∧
    relationRow1996 rho ∧
    relationRow1997 rho ∧
    relationRow1998 rho ∧
    relationRow1999 rho

def relationPart25 (rho : Nat -> F) : Prop :=
    relationRow2000 rho ∧
    relationRow2001 rho ∧
    relationRow2002 rho ∧
    relationRow2003 rho ∧
    relationRow2004 rho ∧
    relationRow2005 rho ∧
    relationRow2006 rho ∧
    relationRow2007 rho ∧
    relationRow2008 rho ∧
    relationRow2009 rho ∧
    relationRow2010 rho ∧
    relationRow2011 rho ∧
    relationRow2012 rho ∧
    relationRow2013 rho ∧
    relationRow2014 rho ∧
    relationRow2015 rho ∧
    relationRow2016 rho ∧
    relationRow2017 rho ∧
    relationRow2018 rho ∧
    relationRow2019 rho ∧
    relationRow2020 rho ∧
    relationRow2021 rho ∧
    relationRow2022 rho ∧
    relationRow2023 rho ∧
    relationRow2024 rho ∧
    relationRow2025 rho ∧
    relationRow2026 rho ∧
    relationRow2027 rho ∧
    relationRow2028 rho ∧
    relationRow2029 rho ∧
    relationRow2030 rho ∧
    relationRow2031 rho ∧
    relationRow2032 rho ∧
    relationRow2033 rho ∧
    relationRow2034 rho ∧
    relationRow2035 rho ∧
    relationRow2036 rho ∧
    relationRow2037 rho ∧
    relationRow2038 rho ∧
    relationRow2039 rho ∧
    relationRow2040 rho ∧
    relationRow2041 rho ∧
    relationRow2042 rho ∧
    relationRow2043 rho ∧
    relationRow2044 rho ∧
    relationRow2045 rho ∧
    relationRow2046 rho ∧
    relationRow2047 rho ∧
    relationRow2048 rho ∧
    relationRow2049 rho ∧
    relationRow2050 rho ∧
    relationRow2051 rho ∧
    relationRow2052 rho ∧
    relationRow2053 rho ∧
    relationRow2054 rho ∧
    relationRow2055 rho ∧
    relationRow2056 rho ∧
    relationRow2057 rho ∧
    relationRow2058 rho ∧
    relationRow2059 rho ∧
    relationRow2060 rho ∧
    relationRow2061 rho ∧
    relationRow2062 rho ∧
    relationRow2063 rho ∧
    relationRow2064 rho ∧
    relationRow2065 rho ∧
    relationRow2066 rho ∧
    relationRow2067 rho ∧
    relationRow2068 rho ∧
    relationRow2069 rho ∧
    relationRow2070 rho ∧
    relationRow2071 rho ∧
    relationRow2072 rho ∧
    relationRow2073 rho ∧
    relationRow2074 rho ∧
    relationRow2075 rho ∧
    relationRow2076 rho ∧
    relationRow2077 rho ∧
    relationRow2078 rho ∧
    relationRow2079 rho

def relationPart26 (rho : Nat -> F) : Prop :=
    relationRow2080 rho ∧
    relationRow2081 rho ∧
    relationRow2082 rho ∧
    relationRow2083 rho ∧
    relationRow2084 rho ∧
    relationRow2085 rho ∧
    relationRow2086 rho ∧
    relationRow2087 rho ∧
    relationRow2088 rho ∧
    relationRow2089 rho ∧
    relationRow2090 rho ∧
    relationRow2091 rho ∧
    relationRow2092 rho ∧
    relationRow2093 rho ∧
    relationRow2094 rho ∧
    relationRow2095 rho ∧
    relationRow2096 rho ∧
    relationRow2097 rho ∧
    relationRow2098 rho ∧
    relationRow2099 rho ∧
    relationRow2100 rho ∧
    relationRow2101 rho ∧
    relationRow2102 rho ∧
    relationRow2103 rho ∧
    relationRow2104 rho ∧
    relationRow2105 rho ∧
    relationRow2106 rho ∧
    relationRow2107 rho ∧
    relationRow2108 rho ∧
    relationRow2109 rho ∧
    relationRow2110 rho ∧
    relationRow2111 rho ∧
    relationRow2112 rho ∧
    relationRow2113 rho ∧
    relationRow2114 rho ∧
    relationRow2115 rho ∧
    relationRow2116 rho ∧
    relationRow2117 rho ∧
    relationRow2118 rho ∧
    relationRow2119 rho ∧
    relationRow2120 rho ∧
    relationRow2121 rho ∧
    relationRow2122 rho ∧
    relationRow2123 rho ∧
    relationRow2124 rho ∧
    relationRow2125 rho ∧
    relationRow2126 rho ∧
    relationRow2127 rho ∧
    relationRow2128 rho ∧
    relationRow2129 rho ∧
    relationRow2130 rho ∧
    relationRow2131 rho ∧
    relationRow2132 rho ∧
    relationRow2133 rho ∧
    relationRow2134 rho ∧
    relationRow2135 rho ∧
    relationRow2136 rho ∧
    relationRow2137 rho ∧
    relationRow2138 rho ∧
    relationRow2139 rho ∧
    relationRow2140 rho ∧
    relationRow2141 rho ∧
    relationRow2142 rho ∧
    relationRow2143 rho ∧
    relationRow2144 rho ∧
    relationRow2145 rho ∧
    relationRow2146 rho ∧
    relationRow2147 rho ∧
    relationRow2148 rho ∧
    relationRow2149 rho ∧
    relationRow2150 rho ∧
    relationRow2151 rho ∧
    relationRow2152 rho ∧
    relationRow2153 rho ∧
    relationRow2154 rho ∧
    relationRow2155 rho ∧
    relationRow2156 rho ∧
    relationRow2157 rho ∧
    relationRow2158 rho ∧
    relationRow2159 rho

def relationPart27 (rho : Nat -> F) : Prop :=
    relationRow2160 rho ∧
    relationRow2161 rho ∧
    relationRow2162 rho ∧
    relationRow2163 rho ∧
    relationRow2164 rho ∧
    relationRow2165 rho ∧
    relationRow2166 rho ∧
    relationRow2167 rho ∧
    relationRow2168 rho ∧
    relationRow2169 rho ∧
    relationRow2170 rho ∧
    relationRow2171 rho ∧
    relationRow2172 rho ∧
    relationRow2173 rho ∧
    relationRow2174 rho ∧
    relationRow2175 rho ∧
    relationRow2176 rho ∧
    relationRow2177 rho ∧
    relationRow2178 rho ∧
    relationRow2179 rho ∧
    relationRow2180 rho ∧
    relationRow2181 rho ∧
    relationRow2182 rho ∧
    relationRow2183 rho ∧
    relationRow2184 rho ∧
    relationRow2185 rho ∧
    relationRow2186 rho ∧
    relationRow2187 rho ∧
    relationRow2188 rho ∧
    relationRow2189 rho ∧
    relationRow2190 rho ∧
    relationRow2191 rho ∧
    relationRow2192 rho ∧
    relationRow2193 rho ∧
    relationRow2194 rho ∧
    relationRow2195 rho ∧
    relationRow2196 rho ∧
    relationRow2197 rho ∧
    relationRow2198 rho ∧
    relationRow2199 rho ∧
    relationRow2200 rho ∧
    relationRow2201 rho ∧
    relationRow2202 rho ∧
    relationRow2203 rho ∧
    relationRow2204 rho ∧
    relationRow2205 rho ∧
    relationRow2206 rho ∧
    relationRow2207 rho ∧
    relationRow2208 rho ∧
    relationRow2209 rho ∧
    relationRow2210 rho ∧
    relationRow2211 rho ∧
    relationRow2212 rho ∧
    relationRow2213 rho ∧
    relationRow2214 rho ∧
    relationRow2215 rho ∧
    relationRow2216 rho ∧
    relationRow2217 rho ∧
    relationRow2218 rho ∧
    relationRow2219 rho ∧
    relationRow2220 rho ∧
    relationRow2221 rho ∧
    relationRow2222 rho ∧
    relationRow2223 rho ∧
    relationRow2224 rho ∧
    relationRow2225 rho ∧
    relationRow2226 rho ∧
    relationRow2227 rho ∧
    relationRow2228 rho ∧
    relationRow2229 rho ∧
    relationRow2230 rho ∧
    relationRow2231 rho ∧
    relationRow2232 rho ∧
    relationRow2233 rho ∧
    relationRow2234 rho ∧
    relationRow2235 rho ∧
    relationRow2236 rho ∧
    relationRow2237 rho ∧
    relationRow2238 rho ∧
    relationRow2239 rho

def relationPart28 (rho : Nat -> F) : Prop :=
    relationRow2240 rho ∧
    relationRow2241 rho ∧
    relationRow2242 rho ∧
    relationRow2243 rho ∧
    relationRow2244 rho ∧
    relationRow2245 rho ∧
    relationRow2246 rho ∧
    relationRow2247 rho ∧
    relationRow2248 rho ∧
    relationRow2249 rho ∧
    relationRow2250 rho ∧
    relationRow2251 rho ∧
    relationRow2252 rho ∧
    relationRow2253 rho ∧
    relationRow2254 rho ∧
    relationRow2255 rho ∧
    relationRow2256 rho ∧
    relationRow2257 rho ∧
    relationRow2258 rho ∧
    relationRow2259 rho ∧
    relationRow2260 rho ∧
    relationRow2261 rho ∧
    relationRow2262 rho ∧
    relationRow2263 rho ∧
    relationRow2264 rho ∧
    relationRow2265 rho ∧
    relationRow2266 rho ∧
    relationRow2267 rho ∧
    relationRow2268 rho ∧
    relationRow2269 rho ∧
    relationRow2270 rho ∧
    relationRow2271 rho ∧
    relationRow2272 rho ∧
    relationRow2273 rho ∧
    relationRow2274 rho ∧
    relationRow2275 rho ∧
    relationRow2276 rho ∧
    relationRow2277 rho ∧
    relationRow2278 rho ∧
    relationRow2279 rho ∧
    relationRow2280 rho ∧
    relationRow2281 rho ∧
    relationRow2282 rho ∧
    relationRow2283 rho ∧
    relationRow2284 rho ∧
    relationRow2285 rho ∧
    relationRow2286 rho ∧
    relationRow2287 rho ∧
    relationRow2288 rho ∧
    relationRow2289 rho ∧
    relationRow2290 rho ∧
    relationRow2291 rho ∧
    relationRow2292 rho ∧
    relationRow2293 rho ∧
    relationRow2294 rho ∧
    relationRow2295 rho ∧
    relationRow2296 rho ∧
    relationRow2297 rho ∧
    relationRow2298 rho ∧
    relationRow2299 rho ∧
    relationRow2300 rho ∧
    relationRow2301 rho ∧
    relationRow2302 rho ∧
    relationRow2303 rho ∧
    relationRow2304 rho ∧
    relationRow2305 rho ∧
    relationRow2306 rho ∧
    relationRow2307 rho ∧
    relationRow2308 rho ∧
    relationRow2309 rho ∧
    relationRow2310 rho ∧
    relationRow2311 rho ∧
    relationRow2312 rho ∧
    relationRow2313 rho ∧
    relationRow2314 rho ∧
    relationRow2315 rho ∧
    relationRow2316 rho ∧
    relationRow2317 rho ∧
    relationRow2318 rho ∧
    relationRow2319 rho

def relationPart29 (rho : Nat -> F) : Prop :=
    relationRow2320 rho ∧
    relationRow2321 rho ∧
    relationRow2322 rho ∧
    relationRow2323 rho ∧
    relationRow2324 rho ∧
    relationRow2325 rho ∧
    relationRow2326 rho ∧
    relationRow2327 rho ∧
    relationRow2328 rho ∧
    relationRow2329 rho ∧
    relationRow2330 rho ∧
    relationRow2331 rho ∧
    relationRow2332 rho ∧
    relationRow2333 rho ∧
    relationRow2334 rho ∧
    relationRow2335 rho ∧
    relationRow2336 rho ∧
    relationRow2337 rho ∧
    relationRow2338 rho ∧
    relationRow2339 rho ∧
    relationRow2340 rho ∧
    relationRow2341 rho ∧
    relationRow2342 rho ∧
    relationRow2343 rho ∧
    relationRow2344 rho ∧
    relationRow2345 rho ∧
    relationRow2346 rho ∧
    relationRow2347 rho ∧
    relationRow2348 rho ∧
    relationRow2349 rho ∧
    relationRow2350 rho ∧
    relationRow2351 rho ∧
    relationRow2352 rho ∧
    relationRow2353 rho ∧
    relationRow2354 rho ∧
    relationRow2355 rho ∧
    relationRow2356 rho ∧
    relationRow2357 rho ∧
    relationRow2358 rho ∧
    relationRow2359 rho ∧
    relationRow2360 rho ∧
    relationRow2361 rho ∧
    relationRow2362 rho ∧
    relationRow2363 rho ∧
    relationRow2364 rho ∧
    relationRow2365 rho ∧
    relationRow2366 rho ∧
    relationRow2367 rho ∧
    relationRow2368 rho ∧
    relationRow2369 rho ∧
    relationRow2370 rho ∧
    relationRow2371 rho ∧
    relationRow2372 rho ∧
    relationRow2373 rho ∧
    relationRow2374 rho ∧
    relationRow2375 rho ∧
    relationRow2376 rho ∧
    relationRow2377 rho ∧
    relationRow2378 rho ∧
    relationRow2379 rho ∧
    relationRow2380 rho ∧
    relationRow2381 rho ∧
    relationRow2382 rho ∧
    relationRow2383 rho ∧
    relationRow2384 rho ∧
    relationRow2385 rho ∧
    relationRow2386 rho ∧
    relationRow2387 rho ∧
    relationRow2388 rho ∧
    relationRow2389 rho ∧
    relationRow2390 rho ∧
    relationRow2391 rho ∧
    relationRow2392 rho ∧
    relationRow2393 rho ∧
    relationRow2394 rho ∧
    relationRow2395 rho ∧
    relationRow2396 rho ∧
    relationRow2397 rho ∧
    relationRow2398 rho ∧
    relationRow2399 rho

def relationPart30 (rho : Nat -> F) : Prop :=
    relationRow2400 rho ∧
    relationRow2401 rho ∧
    relationRow2402 rho ∧
    relationRow2403 rho ∧
    relationRow2404 rho ∧
    relationRow2405 rho ∧
    relationRow2406 rho ∧
    relationRow2407 rho ∧
    relationRow2408 rho ∧
    relationRow2409 rho ∧
    relationRow2410 rho ∧
    relationRow2411 rho ∧
    relationRow2412 rho ∧
    relationRow2413 rho ∧
    relationRow2414 rho ∧
    relationRow2415 rho ∧
    relationRow2416 rho ∧
    relationRow2417 rho ∧
    relationRow2418 rho ∧
    relationRow2419 rho ∧
    relationRow2420 rho ∧
    relationRow2421 rho ∧
    relationRow2422 rho ∧
    relationRow2423 rho ∧
    relationRow2424 rho ∧
    relationRow2425 rho ∧
    relationRow2426 rho ∧
    relationRow2427 rho ∧
    relationRow2428 rho ∧
    relationRow2429 rho ∧
    relationRow2430 rho ∧
    relationRow2431 rho ∧
    relationRow2432 rho ∧
    relationRow2433 rho ∧
    relationRow2434 rho ∧
    relationRow2435 rho ∧
    relationRow2436 rho ∧
    relationRow2437 rho ∧
    relationRow2438 rho ∧
    relationRow2439 rho ∧
    relationRow2440 rho ∧
    relationRow2441 rho ∧
    relationRow2442 rho ∧
    relationRow2443 rho ∧
    relationRow2444 rho ∧
    relationRow2445 rho ∧
    relationRow2446 rho ∧
    relationRow2447 rho ∧
    relationRow2448 rho ∧
    relationRow2449 rho ∧
    relationRow2450 rho ∧
    relationRow2451 rho ∧
    relationRow2452 rho ∧
    relationRow2453 rho ∧
    relationRow2454 rho ∧
    relationRow2455 rho ∧
    relationRow2456 rho ∧
    relationRow2457 rho ∧
    relationRow2458 rho ∧
    relationRow2459 rho ∧
    relationRow2460 rho ∧
    relationRow2461 rho ∧
    relationRow2462 rho ∧
    relationRow2463 rho ∧
    relationRow2464 rho ∧
    relationRow2465 rho ∧
    relationRow2466 rho ∧
    relationRow2467 rho ∧
    relationRow2468 rho ∧
    relationRow2469 rho ∧
    relationRow2470 rho ∧
    relationRow2471 rho ∧
    relationRow2472 rho ∧
    relationRow2473 rho ∧
    relationRow2474 rho ∧
    relationRow2475 rho ∧
    relationRow2476 rho ∧
    relationRow2477 rho ∧
    relationRow2478 rho ∧
    relationRow2479 rho

def relationPart31 (rho : Nat -> F) : Prop :=
    relationRow2480 rho ∧
    relationRow2481 rho ∧
    relationRow2482 rho ∧
    relationRow2483 rho ∧
    relationRow2484 rho ∧
    relationRow2485 rho ∧
    relationRow2486 rho ∧
    relationRow2487 rho ∧
    relationRow2488 rho ∧
    relationRow2489 rho ∧
    relationRow2490 rho ∧
    relationRow2491 rho ∧
    relationRow2492 rho ∧
    relationRow2493 rho ∧
    relationRow2494 rho ∧
    relationRow2495 rho ∧
    relationRow2496 rho ∧
    relationRow2497 rho ∧
    relationRow2498 rho ∧
    relationRow2499 rho ∧
    relationRow2500 rho ∧
    relationRow2501 rho ∧
    relationRow2502 rho ∧
    relationRow2503 rho ∧
    relationRow2504 rho ∧
    relationRow2505 rho ∧
    relationRow2506 rho ∧
    relationRow2507 rho ∧
    relationRow2508 rho ∧
    relationRow2509 rho ∧
    relationRow2510 rho ∧
    relationRow2511 rho ∧
    relationRow2512 rho ∧
    relationRow2513 rho ∧
    relationRow2514 rho ∧
    relationRow2515 rho ∧
    relationRow2516 rho ∧
    relationRow2517 rho ∧
    relationRow2518 rho ∧
    relationRow2519 rho ∧
    relationRow2520 rho ∧
    relationRow2521 rho ∧
    relationRow2522 rho ∧
    relationRow2523 rho ∧
    relationRow2524 rho ∧
    relationRow2525 rho ∧
    relationRow2526 rho ∧
    relationRow2527 rho ∧
    relationRow2528 rho ∧
    relationRow2529 rho ∧
    relationRow2530 rho ∧
    relationRow2531 rho ∧
    relationRow2532 rho ∧
    relationRow2533 rho ∧
    relationRow2534 rho ∧
    relationRow2535 rho ∧
    relationRow2536 rho ∧
    relationRow2537 rho ∧
    relationRow2538 rho ∧
    relationRow2539 rho ∧
    relationRow2540 rho ∧
    relationRow2541 rho ∧
    relationRow2542 rho ∧
    relationRow2543 rho ∧
    relationRow2544 rho ∧
    relationRow2545 rho ∧
    relationRow2546 rho ∧
    relationRow2547 rho ∧
    relationRow2548 rho ∧
    relationRow2549 rho ∧
    relationRow2550 rho ∧
    relationRow2551 rho ∧
    relationRow2552 rho ∧
    relationRow2553 rho ∧
    relationRow2554 rho ∧
    relationRow2555 rho ∧
    relationRow2556 rho ∧
    relationRow2557 rho ∧
    relationRow2558 rho ∧
    relationRow2559 rho

def relationPart32 (rho : Nat -> F) : Prop :=
    relationRow2560 rho ∧
    relationRow2561 rho ∧
    relationRow2562 rho ∧
    relationRow2563 rho ∧
    relationRow2564 rho ∧
    relationRow2565 rho ∧
    relationRow2566 rho ∧
    relationRow2567 rho ∧
    relationRow2568 rho ∧
    relationRow2569 rho ∧
    relationRow2570 rho ∧
    relationRow2571 rho ∧
    relationRow2572 rho ∧
    relationRow2573 rho ∧
    relationRow2574 rho ∧
    relationRow2575 rho ∧
    relationRow2576 rho ∧
    relationRow2577 rho ∧
    relationRow2578 rho ∧
    relationRow2579 rho ∧
    relationRow2580 rho ∧
    relationRow2581 rho ∧
    relationRow2582 rho ∧
    relationRow2583 rho ∧
    relationRow2584 rho ∧
    relationRow2585 rho ∧
    relationRow2586 rho ∧
    relationRow2587 rho ∧
    relationRow2588 rho ∧
    relationRow2589 rho ∧
    relationRow2590 rho ∧
    relationRow2591 rho ∧
    relationRow2592 rho ∧
    relationRow2593 rho ∧
    relationRow2594 rho ∧
    relationRow2595 rho ∧
    relationRow2596 rho ∧
    relationRow2597 rho ∧
    relationRow2598 rho ∧
    relationRow2599 rho ∧
    relationRow2600 rho ∧
    relationRow2601 rho ∧
    relationRow2602 rho ∧
    relationRow2603 rho ∧
    relationRow2604 rho ∧
    relationRow2605 rho ∧
    relationRow2606 rho ∧
    relationRow2607 rho ∧
    relationRow2608 rho ∧
    relationRow2609 rho ∧
    relationRow2610 rho ∧
    relationRow2611 rho ∧
    relationRow2612 rho ∧
    relationRow2613 rho ∧
    relationRow2614 rho ∧
    relationRow2615 rho ∧
    relationRow2616 rho ∧
    relationRow2617 rho ∧
    relationRow2618 rho ∧
    relationRow2619 rho ∧
    relationRow2620 rho ∧
    relationRow2621 rho ∧
    relationRow2622 rho ∧
    relationRow2623 rho ∧
    relationRow2624 rho ∧
    relationRow2625 rho ∧
    relationRow2626 rho ∧
    relationRow2627 rho ∧
    relationRow2628 rho ∧
    relationRow2629 rho ∧
    relationRow2630 rho ∧
    relationRow2631 rho ∧
    relationRow2632 rho ∧
    relationRow2633 rho ∧
    relationRow2634 rho ∧
    relationRow2635 rho ∧
    relationRow2636 rho ∧
    relationRow2637 rho ∧
    relationRow2638 rho ∧
    relationRow2639 rho

def relationPart33 (rho : Nat -> F) : Prop :=
    relationRow2640 rho ∧
    relationRow2641 rho ∧
    relationRow2642 rho ∧
    relationRow2643 rho ∧
    relationRow2644 rho ∧
    relationRow2645 rho ∧
    relationRow2646 rho ∧
    relationRow2647 rho ∧
    relationRow2648 rho ∧
    relationRow2649 rho ∧
    relationRow2650 rho ∧
    relationRow2651 rho ∧
    relationRow2652 rho ∧
    relationRow2653 rho ∧
    relationRow2654 rho ∧
    relationRow2655 rho ∧
    relationRow2656 rho ∧
    relationRow2657 rho ∧
    relationRow2658 rho ∧
    relationRow2659 rho ∧
    relationRow2660 rho ∧
    relationRow2661 rho ∧
    relationRow2662 rho ∧
    relationRow2663 rho ∧
    relationRow2664 rho ∧
    relationRow2665 rho ∧
    relationRow2666 rho ∧
    relationRow2667 rho ∧
    relationRow2668 rho ∧
    relationRow2669 rho ∧
    relationRow2670 rho ∧
    relationRow2671 rho ∧
    relationRow2672 rho ∧
    relationRow2673 rho ∧
    relationRow2674 rho ∧
    relationRow2675 rho ∧
    relationRow2676 rho ∧
    relationRow2677 rho ∧
    relationRow2678 rho ∧
    relationRow2679 rho ∧
    relationRow2680 rho ∧
    relationRow2681 rho ∧
    relationRow2682 rho ∧
    relationRow2683 rho ∧
    relationRow2684 rho ∧
    relationRow2685 rho ∧
    relationRow2686 rho ∧
    relationRow2687 rho ∧
    relationRow2688 rho ∧
    relationRow2689 rho ∧
    relationRow2690 rho ∧
    relationRow2691 rho ∧
    relationRow2692 rho ∧
    relationRow2693 rho ∧
    relationRow2694 rho ∧
    relationRow2695 rho ∧
    relationRow2696 rho ∧
    relationRow2697 rho ∧
    relationRow2698 rho ∧
    relationRow2699 rho ∧
    relationRow2700 rho ∧
    relationRow2701 rho ∧
    relationRow2702 rho ∧
    relationRow2703 rho ∧
    relationRow2704 rho ∧
    relationRow2705 rho ∧
    relationRow2706 rho ∧
    relationRow2707 rho ∧
    relationRow2708 rho ∧
    relationRow2709 rho ∧
    relationRow2710 rho ∧
    relationRow2711 rho ∧
    relationRow2712 rho ∧
    relationRow2713 rho ∧
    relationRow2714 rho ∧
    relationRow2715 rho ∧
    relationRow2716 rho ∧
    relationRow2717 rho ∧
    relationRow2718 rho ∧
    relationRow2719 rho

def relationPart34 (rho : Nat -> F) : Prop :=
    relationRow2720 rho ∧
    relationRow2721 rho ∧
    relationRow2722 rho ∧
    relationRow2723 rho ∧
    relationRow2724 rho ∧
    relationRow2725 rho ∧
    relationRow2726 rho ∧
    relationRow2727 rho ∧
    relationRow2728 rho ∧
    relationRow2729 rho ∧
    relationRow2730 rho ∧
    relationRow2731 rho ∧
    relationRow2732 rho ∧
    relationRow2733 rho ∧
    relationRow2734 rho ∧
    relationRow2735 rho ∧
    relationRow2736 rho ∧
    relationRow2737 rho ∧
    relationRow2738 rho ∧
    relationRow2739 rho ∧
    relationRow2740 rho ∧
    relationRow2741 rho ∧
    relationRow2742 rho ∧
    relationRow2743 rho ∧
    relationRow2744 rho ∧
    relationRow2745 rho ∧
    relationRow2746 rho ∧
    relationRow2747 rho ∧
    relationRow2748 rho ∧
    relationRow2749 rho ∧
    relationRow2750 rho ∧
    relationRow2751 rho ∧
    relationRow2752 rho ∧
    relationRow2753 rho ∧
    relationRow2754 rho ∧
    relationRow2755 rho ∧
    relationRow2756 rho ∧
    relationRow2757 rho ∧
    relationRow2758 rho ∧
    relationRow2759 rho ∧
    relationRow2760 rho ∧
    relationRow2761 rho ∧
    relationRow2762 rho ∧
    relationRow2763 rho ∧
    relationRow2764 rho ∧
    relationRow2765 rho ∧
    relationRow2766 rho ∧
    relationRow2767 rho ∧
    relationRow2768 rho ∧
    relationRow2769 rho ∧
    relationRow2770 rho ∧
    relationRow2771 rho ∧
    relationRow2772 rho ∧
    relationRow2773 rho ∧
    relationRow2774 rho ∧
    relationRow2775 rho ∧
    relationRow2776 rho ∧
    relationRow2777 rho ∧
    relationRow2778 rho ∧
    relationRow2779 rho ∧
    relationRow2780 rho ∧
    relationRow2781 rho ∧
    relationRow2782 rho ∧
    relationRow2783 rho ∧
    relationRow2784 rho ∧
    relationRow2785 rho ∧
    relationRow2786 rho ∧
    relationRow2787 rho ∧
    relationRow2788 rho ∧
    relationRow2789 rho ∧
    relationRow2790 rho ∧
    relationRow2791 rho ∧
    relationRow2792 rho ∧
    relationRow2793 rho ∧
    relationRow2794 rho ∧
    relationRow2795 rho ∧
    relationRow2796 rho ∧
    relationRow2797 rho ∧
    relationRow2798 rho ∧
    relationRow2799 rho

def relationPart35 (rho : Nat -> F) : Prop :=
    relationRow2800 rho ∧
    relationRow2801 rho ∧
    relationRow2802 rho ∧
    relationRow2803 rho ∧
    relationRow2804 rho ∧
    relationRow2805 rho ∧
    relationRow2806 rho ∧
    relationRow2807 rho ∧
    relationRow2808 rho ∧
    relationRow2809 rho ∧
    relationRow2810 rho ∧
    relationRow2811 rho ∧
    relationRow2812 rho ∧
    relationRow2813 rho ∧
    relationRow2814 rho ∧
    relationRow2815 rho ∧
    relationRow2816 rho ∧
    relationRow2817 rho ∧
    relationRow2818 rho ∧
    relationRow2819 rho ∧
    relationRow2820 rho ∧
    relationRow2821 rho ∧
    relationRow2822 rho ∧
    relationRow2823 rho ∧
    relationRow2824 rho ∧
    relationRow2825 rho ∧
    relationRow2826 rho ∧
    relationRow2827 rho ∧
    relationRow2828 rho ∧
    relationRow2829 rho ∧
    relationRow2830 rho ∧
    relationRow2831 rho ∧
    relationRow2832 rho ∧
    relationRow2833 rho ∧
    relationRow2834 rho ∧
    relationRow2835 rho ∧
    relationRow2836 rho ∧
    relationRow2837 rho ∧
    relationRow2838 rho ∧
    relationRow2839 rho ∧
    relationRow2840 rho ∧
    relationRow2841 rho ∧
    relationRow2842 rho ∧
    relationRow2843 rho ∧
    relationRow2844 rho ∧
    relationRow2845 rho ∧
    relationRow2846 rho ∧
    relationRow2847 rho ∧
    relationRow2848 rho ∧
    relationRow2849 rho ∧
    relationRow2850 rho ∧
    relationRow2851 rho ∧
    relationRow2852 rho ∧
    relationRow2853 rho ∧
    relationRow2854 rho ∧
    relationRow2855 rho ∧
    relationRow2856 rho ∧
    relationRow2857 rho ∧
    relationRow2858 rho ∧
    relationRow2859 rho ∧
    relationRow2860 rho ∧
    relationRow2861 rho ∧
    relationRow2862 rho ∧
    relationRow2863 rho ∧
    relationRow2864 rho ∧
    relationRow2865 rho ∧
    relationRow2866 rho ∧
    relationRow2867 rho ∧
    relationRow2868 rho ∧
    relationRow2869 rho ∧
    relationRow2870 rho ∧
    relationRow2871 rho ∧
    relationRow2872 rho ∧
    relationRow2873 rho ∧
    relationRow2874 rho ∧
    relationRow2875 rho ∧
    relationRow2876 rho ∧
    relationRow2877 rho ∧
    relationRow2878 rho ∧
    relationRow2879 rho

def relationPart36 (rho : Nat -> F) : Prop :=
    relationRow2880 rho ∧
    relationRow2881 rho ∧
    relationRow2882 rho ∧
    relationRow2883 rho ∧
    relationRow2884 rho ∧
    relationRow2885 rho ∧
    relationRow2886 rho ∧
    relationRow2887 rho ∧
    relationRow2888 rho ∧
    relationRow2889 rho ∧
    relationRow2890 rho ∧
    relationRow2891 rho ∧
    relationRow2892 rho ∧
    relationRow2893 rho ∧
    relationRow2894 rho ∧
    relationRow2895 rho ∧
    relationRow2896 rho ∧
    relationRow2897 rho ∧
    relationRow2898 rho ∧
    relationRow2899 rho ∧
    relationRow2900 rho ∧
    relationRow2901 rho ∧
    relationRow2902 rho ∧
    relationRow2903 rho ∧
    relationRow2904 rho ∧
    relationRow2905 rho ∧
    relationRow2906 rho ∧
    relationRow2907 rho ∧
    relationRow2908 rho ∧
    relationRow2909 rho ∧
    relationRow2910 rho ∧
    relationRow2911 rho ∧
    relationRow2912 rho ∧
    relationRow2913 rho ∧
    relationRow2914 rho ∧
    relationRow2915 rho ∧
    relationRow2916 rho ∧
    relationRow2917 rho ∧
    relationRow2918 rho ∧
    relationRow2919 rho ∧
    relationRow2920 rho ∧
    relationRow2921 rho ∧
    relationRow2922 rho ∧
    relationRow2923 rho ∧
    relationRow2924 rho ∧
    relationRow2925 rho ∧
    relationRow2926 rho ∧
    relationRow2927 rho ∧
    relationRow2928 rho ∧
    relationRow2929 rho ∧
    relationRow2930 rho ∧
    relationRow2931 rho ∧
    relationRow2932 rho ∧
    relationRow2933 rho ∧
    relationRow2934 rho ∧
    relationRow2935 rho ∧
    relationRow2936 rho ∧
    relationRow2937 rho ∧
    relationRow2938 rho ∧
    relationRow2939 rho ∧
    relationRow2940 rho ∧
    relationRow2941 rho ∧
    relationRow2942 rho ∧
    relationRow2943 rho ∧
    relationRow2944 rho ∧
    relationRow2945 rho ∧
    relationRow2946 rho ∧
    relationRow2947 rho ∧
    relationRow2948 rho ∧
    relationRow2949 rho ∧
    relationRow2950 rho ∧
    relationRow2951 rho ∧
    relationRow2952 rho ∧
    relationRow2953 rho ∧
    relationRow2954 rho ∧
    relationRow2955 rho ∧
    relationRow2956 rho ∧
    relationRow2957 rho ∧
    relationRow2958 rho ∧
    relationRow2959 rho

def relationPart37 (rho : Nat -> F) : Prop :=
    relationRow2960 rho ∧
    relationRow2961 rho ∧
    relationRow2962 rho ∧
    relationRow2963 rho ∧
    relationRow2964 rho ∧
    relationRow2965 rho ∧
    relationRow2966 rho ∧
    relationRow2967 rho ∧
    relationRow2968 rho ∧
    relationRow2969 rho ∧
    relationRow2970 rho ∧
    relationRow2971 rho ∧
    relationRow2972 rho ∧
    relationRow2973 rho ∧
    relationRow2974 rho ∧
    relationRow2975 rho ∧
    relationRow2976 rho ∧
    relationRow2977 rho ∧
    relationRow2978 rho ∧
    relationRow2979 rho ∧
    relationRow2980 rho ∧
    relationRow2981 rho ∧
    relationRow2982 rho ∧
    relationRow2983 rho ∧
    relationRow2984 rho ∧
    relationRow2985 rho ∧
    relationRow2986 rho ∧
    relationRow2987 rho ∧
    relationRow2988 rho ∧
    relationRow2989 rho ∧
    relationRow2990 rho ∧
    relationRow2991 rho ∧
    relationRow2992 rho ∧
    relationRow2993 rho ∧
    relationRow2994 rho ∧
    relationRow2995 rho ∧
    relationRow2996 rho ∧
    relationRow2997 rho ∧
    relationRow2998 rho ∧
    relationRow2999 rho ∧
    relationRow3000 rho ∧
    relationRow3001 rho ∧
    relationRow3002 rho ∧
    relationRow3003 rho ∧
    relationRow3004 rho ∧
    relationRow3005 rho ∧
    relationRow3006 rho ∧
    relationRow3007 rho ∧
    relationRow3008 rho ∧
    relationRow3009 rho ∧
    relationRow3010 rho ∧
    relationRow3011 rho ∧
    relationRow3012 rho ∧
    relationRow3013 rho ∧
    relationRow3014 rho ∧
    relationRow3015 rho ∧
    relationRow3016 rho ∧
    relationRow3017 rho ∧
    relationRow3018 rho ∧
    relationRow3019 rho ∧
    relationRow3020 rho ∧
    relationRow3021 rho ∧
    relationRow3022 rho ∧
    relationRow3023 rho ∧
    relationRow3024 rho ∧
    relationRow3025 rho ∧
    relationRow3026 rho ∧
    relationRow3027 rho ∧
    relationRow3028 rho ∧
    relationRow3029 rho ∧
    relationRow3030 rho ∧
    relationRow3031 rho ∧
    relationRow3032 rho ∧
    relationRow3033 rho ∧
    relationRow3034 rho ∧
    relationRow3035 rho ∧
    relationRow3036 rho ∧
    relationRow3037 rho ∧
    relationRow3038 rho ∧
    relationRow3039 rho

def relationPart38 (rho : Nat -> F) : Prop :=
    relationRow3040 rho ∧
    relationRow3041 rho ∧
    relationRow3042 rho ∧
    relationRow3043 rho ∧
    relationRow3044 rho ∧
    relationRow3045 rho ∧
    relationRow3046 rho ∧
    relationRow3047 rho ∧
    relationRow3048 rho ∧
    relationRow3049 rho ∧
    relationRow3050 rho ∧
    relationRow3051 rho ∧
    relationRow3052 rho ∧
    relationRow3053 rho ∧
    relationRow3054 rho ∧
    relationRow3055 rho ∧
    relationRow3056 rho ∧
    relationRow3057 rho ∧
    relationRow3058 rho ∧
    relationRow3059 rho ∧
    relationRow3060 rho ∧
    relationRow3061 rho ∧
    relationRow3062 rho ∧
    relationRow3063 rho ∧
    relationRow3064 rho ∧
    relationRow3065 rho ∧
    relationRow3066 rho ∧
    relationRow3067 rho ∧
    relationRow3068 rho ∧
    relationRow3069 rho ∧
    relationRow3070 rho ∧
    relationRow3071 rho ∧
    relationRow3072 rho ∧
    relationRow3073 rho ∧
    relationRow3074 rho ∧
    relationRow3075 rho ∧
    relationRow3076 rho ∧
    relationRow3077 rho ∧
    relationRow3078 rho ∧
    relationRow3079 rho ∧
    relationRow3080 rho ∧
    relationRow3081 rho ∧
    relationRow3082 rho ∧
    relationRow3083 rho ∧
    relationRow3084 rho ∧
    relationRow3085 rho ∧
    relationRow3086 rho ∧
    relationRow3087 rho ∧
    relationRow3088 rho ∧
    relationRow3089 rho ∧
    relationRow3090 rho ∧
    relationRow3091 rho ∧
    relationRow3092 rho ∧
    relationRow3093 rho ∧
    relationRow3094 rho ∧
    relationRow3095 rho ∧
    relationRow3096 rho ∧
    relationRow3097 rho ∧
    relationRow3098 rho ∧
    relationRow3099 rho ∧
    relationRow3100 rho ∧
    relationRow3101 rho ∧
    relationRow3102 rho ∧
    relationRow3103 rho ∧
    relationRow3104 rho ∧
    relationRow3105 rho ∧
    relationRow3106 rho ∧
    relationRow3107 rho ∧
    relationRow3108 rho ∧
    relationRow3109 rho ∧
    relationRow3110 rho ∧
    relationRow3111 rho ∧
    relationRow3112 rho ∧
    relationRow3113 rho ∧
    relationRow3114 rho ∧
    relationRow3115 rho ∧
    relationRow3116 rho ∧
    relationRow3117 rho ∧
    relationRow3118 rho ∧
    relationRow3119 rho

def relationPart39 (rho : Nat -> F) : Prop :=
    relationRow3120 rho ∧
    relationRow3121 rho ∧
    relationRow3122 rho ∧
    relationRow3123 rho ∧
    relationRow3124 rho ∧
    relationRow3125 rho ∧
    relationRow3126 rho ∧
    relationRow3127 rho ∧
    relationRow3128 rho ∧
    relationRow3129 rho ∧
    relationRow3130 rho ∧
    relationRow3131 rho ∧
    relationRow3132 rho ∧
    relationRow3133 rho ∧
    relationRow3134 rho ∧
    relationRow3135 rho ∧
    relationRow3136 rho ∧
    relationRow3137 rho ∧
    relationRow3138 rho ∧
    relationRow3139 rho ∧
    relationRow3140 rho ∧
    relationRow3141 rho ∧
    relationRow3142 rho ∧
    relationRow3143 rho ∧
    relationRow3144 rho ∧
    relationRow3145 rho ∧
    relationRow3146 rho ∧
    relationRow3147 rho ∧
    relationRow3148 rho ∧
    relationRow3149 rho ∧
    relationRow3150 rho ∧
    relationRow3151 rho ∧
    relationRow3152 rho ∧
    relationRow3153 rho ∧
    relationRow3154 rho ∧
    relationRow3155 rho ∧
    relationRow3156 rho ∧
    relationRow3157 rho ∧
    relationRow3158 rho ∧
    relationRow3159 rho ∧
    relationRow3160 rho ∧
    relationRow3161 rho ∧
    relationRow3162 rho ∧
    relationRow3163 rho ∧
    relationRow3164 rho ∧
    relationRow3165 rho ∧
    relationRow3166 rho ∧
    relationRow3167 rho ∧
    relationRow3168 rho ∧
    relationRow3169 rho ∧
    relationRow3170 rho ∧
    relationRow3171 rho ∧
    relationRow3172 rho ∧
    relationRow3173 rho ∧
    relationRow3174 rho ∧
    relationRow3175 rho ∧
    relationRow3176 rho ∧
    relationRow3177 rho ∧
    relationRow3178 rho ∧
    relationRow3179 rho ∧
    relationRow3180 rho ∧
    relationRow3181 rho ∧
    relationRow3182 rho ∧
    relationRow3183 rho ∧
    relationRow3184 rho ∧
    relationRow3185 rho ∧
    relationRow3186 rho ∧
    relationRow3187 rho ∧
    relationRow3188 rho ∧
    relationRow3189 rho ∧
    relationRow3190 rho ∧
    relationRow3191 rho ∧
    relationRow3192 rho ∧
    relationRow3193 rho ∧
    relationRow3194 rho ∧
    relationRow3195 rho ∧
    relationRow3196 rho ∧
    relationRow3197 rho ∧
    relationRow3198 rho ∧
    relationRow3199 rho

def relationPart40 (rho : Nat -> F) : Prop :=
    relationRow3200 rho ∧
    relationRow3201 rho ∧
    relationRow3202 rho ∧
    relationRow3203 rho ∧
    relationRow3204 rho ∧
    relationRow3205 rho ∧
    relationRow3206 rho ∧
    relationRow3207 rho ∧
    relationRow3208 rho ∧
    relationRow3209 rho ∧
    relationRow3210 rho ∧
    relationRow3211 rho ∧
    relationRow3212 rho ∧
    relationRow3213 rho ∧
    relationRow3214 rho ∧
    relationRow3215 rho ∧
    relationRow3216 rho ∧
    relationRow3217 rho ∧
    relationRow3218 rho ∧
    relationRow3219 rho ∧
    relationRow3220 rho ∧
    relationRow3221 rho ∧
    relationRow3222 rho ∧
    relationRow3223 rho ∧
    relationRow3224 rho ∧
    relationRow3225 rho ∧
    relationRow3226 rho ∧
    relationRow3227 rho ∧
    relationRow3228 rho ∧
    relationRow3229 rho ∧
    relationRow3230 rho ∧
    relationRow3231 rho ∧
    relationRow3232 rho ∧
    relationRow3233 rho ∧
    relationRow3234 rho ∧
    relationRow3235 rho ∧
    relationRow3236 rho ∧
    relationRow3237 rho ∧
    relationRow3238 rho ∧
    relationRow3239 rho ∧
    relationRow3240 rho ∧
    relationRow3241 rho ∧
    relationRow3242 rho ∧
    relationRow3243 rho ∧
    relationRow3244 rho ∧
    relationRow3245 rho ∧
    relationRow3246 rho ∧
    relationRow3247 rho ∧
    relationRow3248 rho ∧
    relationRow3249 rho ∧
    relationRow3250 rho ∧
    relationRow3251 rho ∧
    relationRow3252 rho ∧
    relationRow3253 rho ∧
    relationRow3254 rho ∧
    relationRow3255 rho ∧
    relationRow3256 rho ∧
    relationRow3257 rho ∧
    relationRow3258 rho ∧
    relationRow3259 rho ∧
    relationRow3260 rho ∧
    relationRow3261 rho ∧
    relationRow3262 rho ∧
    relationRow3263 rho ∧
    relationRow3264 rho ∧
    relationRow3265 rho ∧
    relationRow3266 rho ∧
    relationRow3267 rho ∧
    relationRow3268 rho ∧
    relationRow3269 rho ∧
    relationRow3270 rho ∧
    relationRow3271 rho ∧
    relationRow3272 rho ∧
    relationRow3273 rho ∧
    relationRow3274 rho ∧
    relationRow3275 rho ∧
    relationRow3276 rho ∧
    relationRow3277 rho ∧
    relationRow3278 rho ∧
    relationRow3279 rho

def relationPart41 (rho : Nat -> F) : Prop :=
    relationRow3280 rho ∧
    relationRow3281 rho ∧
    relationRow3282 rho ∧
    relationRow3283 rho ∧
    relationRow3284 rho ∧
    relationRow3285 rho ∧
    relationRow3286 rho ∧
    relationRow3287 rho ∧
    relationRow3288 rho ∧
    relationRow3289 rho ∧
    relationRow3290 rho ∧
    relationRow3291 rho ∧
    relationRow3292 rho ∧
    relationRow3293 rho ∧
    relationRow3294 rho ∧
    relationRow3295 rho ∧
    relationRow3296 rho ∧
    relationRow3297 rho ∧
    relationRow3298 rho ∧
    relationRow3299 rho ∧
    relationRow3300 rho ∧
    relationRow3301 rho ∧
    relationRow3302 rho ∧
    relationRow3303 rho ∧
    relationRow3304 rho ∧
    relationRow3305 rho ∧
    relationRow3306 rho ∧
    relationRow3307 rho ∧
    relationRow3308 rho ∧
    relationRow3309 rho ∧
    relationRow3310 rho ∧
    relationRow3311 rho ∧
    relationRow3312 rho ∧
    relationRow3313 rho ∧
    relationRow3314 rho ∧
    relationRow3315 rho ∧
    relationRow3316 rho ∧
    relationRow3317 rho ∧
    relationRow3318 rho ∧
    relationRow3319 rho ∧
    relationRow3320 rho ∧
    relationRow3321 rho ∧
    relationRow3322 rho ∧
    relationRow3323 rho ∧
    relationRow3324 rho ∧
    relationRow3325 rho ∧
    relationRow3326 rho ∧
    relationRow3327 rho ∧
    relationRow3328 rho ∧
    relationRow3329 rho ∧
    relationRow3330 rho ∧
    relationRow3331 rho ∧
    relationRow3332 rho ∧
    relationRow3333 rho ∧
    relationRow3334 rho ∧
    relationRow3335 rho ∧
    relationRow3336 rho ∧
    relationRow3337 rho ∧
    relationRow3338 rho ∧
    relationRow3339 rho ∧
    relationRow3340 rho ∧
    relationRow3341 rho ∧
    relationRow3342 rho ∧
    relationRow3343 rho ∧
    relationRow3344 rho ∧
    relationRow3345 rho ∧
    relationRow3346 rho ∧
    relationRow3347 rho ∧
    relationRow3348 rho ∧
    relationRow3349 rho ∧
    relationRow3350 rho ∧
    relationRow3351 rho ∧
    relationRow3352 rho ∧
    relationRow3353 rho ∧
    relationRow3354 rho ∧
    relationRow3355 rho ∧
    relationRow3356 rho ∧
    relationRow3357 rho ∧
    relationRow3358 rho ∧
    relationRow3359 rho

def relationPart42 (rho : Nat -> F) : Prop :=
    relationRow3360 rho ∧
    relationRow3361 rho ∧
    relationRow3362 rho ∧
    relationRow3363 rho ∧
    relationRow3364 rho ∧
    relationRow3365 rho ∧
    relationRow3366 rho ∧
    relationRow3367 rho ∧
    relationRow3368 rho ∧
    relationRow3369 rho ∧
    relationRow3370 rho ∧
    relationRow3371 rho ∧
    relationRow3372 rho ∧
    relationRow3373 rho ∧
    relationRow3374 rho ∧
    relationRow3375 rho ∧
    relationRow3376 rho ∧
    relationRow3377 rho ∧
    relationRow3378 rho ∧
    relationRow3379 rho ∧
    relationRow3380 rho ∧
    relationRow3381 rho ∧
    relationRow3382 rho ∧
    relationRow3383 rho ∧
    relationRow3384 rho ∧
    relationRow3385 rho ∧
    relationRow3386 rho ∧
    relationRow3387 rho ∧
    relationRow3388 rho ∧
    relationRow3389 rho ∧
    relationRow3390 rho ∧
    relationRow3391 rho ∧
    relationRow3392 rho ∧
    relationRow3393 rho ∧
    relationRow3394 rho ∧
    relationRow3395 rho ∧
    relationRow3396 rho ∧
    relationRow3397 rho ∧
    relationRow3398 rho ∧
    relationRow3399 rho ∧
    relationRow3400 rho ∧
    relationRow3401 rho ∧
    relationRow3402 rho ∧
    relationRow3403 rho ∧
    relationRow3404 rho ∧
    relationRow3405 rho ∧
    relationRow3406 rho ∧
    relationRow3407 rho ∧
    relationRow3408 rho ∧
    relationRow3409 rho ∧
    relationRow3410 rho ∧
    relationRow3411 rho ∧
    relationRow3412 rho ∧
    relationRow3413 rho ∧
    relationRow3414 rho ∧
    relationRow3415 rho ∧
    relationRow3416 rho ∧
    relationRow3417 rho ∧
    relationRow3418 rho ∧
    relationRow3419 rho ∧
    relationRow3420 rho ∧
    relationRow3421 rho ∧
    relationRow3422 rho ∧
    relationRow3423 rho ∧
    relationRow3424 rho ∧
    relationRow3425 rho ∧
    relationRow3426 rho ∧
    relationRow3427 rho ∧
    relationRow3428 rho ∧
    relationRow3429 rho ∧
    relationRow3430 rho ∧
    relationRow3431 rho ∧
    relationRow3432 rho ∧
    relationRow3433 rho ∧
    relationRow3434 rho ∧
    relationRow3435 rho ∧
    relationRow3436 rho ∧
    relationRow3437 rho ∧
    relationRow3438 rho ∧
    relationRow3439 rho

def relationPart43 (rho : Nat -> F) : Prop :=
    relationRow3440 rho ∧
    relationRow3441 rho ∧
    relationRow3442 rho ∧
    relationRow3443 rho ∧
    relationRow3444 rho ∧
    relationRow3445 rho ∧
    relationRow3446 rho ∧
    relationRow3447 rho ∧
    relationRow3448 rho ∧
    relationRow3449 rho ∧
    relationRow3450 rho ∧
    relationRow3451 rho ∧
    relationRow3452 rho ∧
    relationRow3453 rho ∧
    relationRow3454 rho ∧
    relationRow3455 rho ∧
    relationRow3456 rho ∧
    relationRow3457 rho ∧
    relationRow3458 rho ∧
    relationRow3459 rho ∧
    relationRow3460 rho ∧
    relationRow3461 rho ∧
    relationRow3462 rho ∧
    relationRow3463 rho ∧
    relationRow3464 rho ∧
    relationRow3465 rho ∧
    relationRow3466 rho ∧
    relationRow3467 rho ∧
    relationRow3468 rho ∧
    relationRow3469 rho ∧
    relationRow3470 rho ∧
    relationRow3471 rho ∧
    relationRow3472 rho ∧
    relationRow3473 rho ∧
    relationRow3474 rho ∧
    relationRow3475 rho ∧
    relationRow3476 rho ∧
    relationRow3477 rho ∧
    relationRow3478 rho ∧
    relationRow3479 rho ∧
    relationRow3480 rho ∧
    relationRow3481 rho ∧
    relationRow3482 rho ∧
    relationRow3483 rho ∧
    relationRow3484 rho ∧
    relationRow3485 rho ∧
    relationRow3486 rho ∧
    relationRow3487 rho ∧
    relationRow3488 rho ∧
    relationRow3489 rho ∧
    relationRow3490 rho ∧
    relationRow3491 rho ∧
    relationRow3492 rho ∧
    relationRow3493 rho ∧
    relationRow3494 rho ∧
    relationRow3495 rho ∧
    relationRow3496 rho ∧
    relationRow3497 rho ∧
    relationRow3498 rho ∧
    relationRow3499 rho ∧
    relationRow3500 rho ∧
    relationRow3501 rho ∧
    relationRow3502 rho ∧
    relationRow3503 rho ∧
    relationRow3504 rho ∧
    relationRow3505 rho ∧
    relationRow3506 rho ∧
    relationRow3507 rho ∧
    relationRow3508 rho ∧
    relationRow3509 rho ∧
    relationRow3510 rho ∧
    relationRow3511 rho ∧
    relationRow3512 rho ∧
    relationRow3513 rho ∧
    relationRow3514 rho ∧
    relationRow3515 rho ∧
    relationRow3516 rho ∧
    relationRow3517 rho ∧
    relationRow3518 rho ∧
    relationRow3519 rho

def relationPart44 (rho : Nat -> F) : Prop :=
    relationRow3520 rho ∧
    relationRow3521 rho ∧
    relationRow3522 rho ∧
    relationRow3523 rho ∧
    relationRow3524 rho ∧
    relationRow3525 rho ∧
    relationRow3526 rho ∧
    relationRow3527 rho ∧
    relationRow3528 rho ∧
    relationRow3529 rho ∧
    relationRow3530 rho ∧
    relationRow3531 rho ∧
    relationRow3532 rho ∧
    relationRow3533 rho ∧
    relationRow3534 rho ∧
    relationRow3535 rho ∧
    relationRow3536 rho ∧
    relationRow3537 rho ∧
    relationRow3538 rho ∧
    relationRow3539 rho ∧
    relationRow3540 rho ∧
    relationRow3541 rho ∧
    relationRow3542 rho ∧
    relationRow3543 rho ∧
    relationRow3544 rho ∧
    relationRow3545 rho ∧
    relationRow3546 rho ∧
    relationRow3547 rho ∧
    relationRow3548 rho ∧
    relationRow3549 rho ∧
    relationRow3550 rho ∧
    relationRow3551 rho ∧
    relationRow3552 rho ∧
    relationRow3553 rho ∧
    relationRow3554 rho ∧
    relationRow3555 rho ∧
    relationRow3556 rho ∧
    relationRow3557 rho ∧
    relationRow3558 rho ∧
    relationRow3559 rho ∧
    relationRow3560 rho ∧
    relationRow3561 rho ∧
    relationRow3562 rho ∧
    relationRow3563 rho ∧
    relationRow3564 rho ∧
    relationRow3565 rho ∧
    relationRow3566 rho ∧
    relationRow3567 rho ∧
    relationRow3568 rho ∧
    relationRow3569 rho ∧
    relationRow3570 rho ∧
    relationRow3571 rho ∧
    relationRow3572 rho ∧
    relationRow3573 rho ∧
    relationRow3574 rho ∧
    relationRow3575 rho ∧
    relationRow3576 rho ∧
    relationRow3577 rho ∧
    relationRow3578 rho ∧
    relationRow3579 rho ∧
    relationRow3580 rho ∧
    relationRow3581 rho ∧
    relationRow3582 rho ∧
    relationRow3583 rho ∧
    relationRow3584 rho ∧
    relationRow3585 rho ∧
    relationRow3586 rho ∧
    relationRow3587 rho ∧
    relationRow3588 rho ∧
    relationRow3589 rho ∧
    relationRow3590 rho ∧
    relationRow3591 rho ∧
    relationRow3592 rho ∧
    relationRow3593 rho ∧
    relationRow3594 rho ∧
    relationRow3595 rho ∧
    relationRow3596 rho ∧
    relationRow3597 rho ∧
    relationRow3598 rho ∧
    relationRow3599 rho

def relationPart45 (rho : Nat -> F) : Prop :=
    relationRow3600 rho ∧
    relationRow3601 rho ∧
    relationRow3602 rho ∧
    relationRow3603 rho ∧
    relationRow3604 rho ∧
    relationRow3605 rho ∧
    relationRow3606 rho ∧
    relationRow3607 rho ∧
    relationRow3608 rho ∧
    relationRow3609 rho

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
    relationPart45 rho

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec72 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 72,
relationSha256Hex := "f964b23463b3c41bdb157028046b74cff6b3bec29d9c360bf66fbee4de9c2c18",
wireRoleSha256Hex := "98183636e0472a04f479c871df78a92e0c87ef832776597330922812bc73c41a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg72
