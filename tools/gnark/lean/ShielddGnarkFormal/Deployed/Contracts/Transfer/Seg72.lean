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
    ((1 : F) * rho 77832) * ((1 : F) + (-1 : F) * rho 77832) = ((0 : F))

def relationRow1 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833) * ((1 : F) + (-1 : F) * rho 77833) = ((0 : F))

def relationRow2 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77834) * ((1 : F) + (-1 : F) * rho 77834) = ((0 : F))

def relationRow3 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77835) * ((1 : F) + (-1 : F) * rho 77835) = ((0 : F))

def relationRow4 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77836) * ((1 : F) + (-1 : F) * rho 77836) = ((0 : F))

def relationRow5 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77837) * ((1 : F) + (-1 : F) * rho 77837) = ((0 : F))

def relationRow6 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77838) * ((1 : F) + (-1 : F) * rho 77838) = ((0 : F))

def relationRow7 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77839) * ((1 : F) + (-1 : F) * rho 77839) = ((0 : F))

def relationRow8 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77840) * ((1 : F) + (-1 : F) * rho 77840) = ((0 : F))

def relationRow9 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77841) * ((1 : F) + (-1 : F) * rho 77841) = ((0 : F))

def relationRow10 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77842) * ((1 : F) + (-1 : F) * rho 77842) = ((0 : F))

def relationRow11 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77843) * ((1 : F) + (-1 : F) * rho 77843) = ((0 : F))

def relationRow12 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77844) * ((1 : F) + (-1 : F) * rho 77844) = ((0 : F))

def relationRow13 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77845) * ((1 : F) + (-1 : F) * rho 77845) = ((0 : F))

def relationRow14 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846) * ((1 : F) + (-1 : F) * rho 77846) = ((0 : F))

def relationRow15 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77847) * ((1 : F) + (-1 : F) * rho 77847) = ((0 : F))

def relationRow16 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77848) * ((1 : F) + (-1 : F) * rho 77848) = ((0 : F))

def relationRow17 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77849) * ((1 : F) + (-1 : F) * rho 77849) = ((0 : F))

def relationRow18 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77850) * ((1 : F) + (-1 : F) * rho 77850) = ((0 : F))

def relationRow19 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77851) * ((1 : F) + (-1 : F) * rho 77851) = ((0 : F))

def relationRow20 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77852) * ((1 : F) + (-1 : F) * rho 77852) = ((0 : F))

def relationRow21 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77853) * ((1 : F) + (-1 : F) * rho 77853) = ((0 : F))

def relationRow22 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77854) * ((1 : F) + (-1 : F) * rho 77854) = ((0 : F))

def relationRow23 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77855) * ((1 : F) + (-1 : F) * rho 77855) = ((0 : F))

def relationRow24 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77856) * ((1 : F) + (-1 : F) * rho 77856) = ((0 : F))

def relationRow25 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77857) * ((1 : F) + (-1 : F) * rho 77857) = ((0 : F))

def relationRow26 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77858) * ((1 : F) + (-1 : F) * rho 77858) = ((0 : F))

def relationRow27 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859) * ((1 : F) + (-1 : F) * rho 77859) = ((0 : F))

def relationRow28 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77860) * ((1 : F) + (-1 : F) * rho 77860) = ((0 : F))

def relationRow29 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77861) * ((1 : F) + (-1 : F) * rho 77861) = ((0 : F))

def relationRow30 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77862) * ((1 : F) + (-1 : F) * rho 77862) = ((0 : F))

def relationRow31 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77863) * ((1 : F) + (-1 : F) * rho 77863) = ((0 : F))

def relationRow32 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77864) * ((1 : F) + (-1 : F) * rho 77864) = ((0 : F))

def relationRow33 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77865) * ((1 : F) + (-1 : F) * rho 77865) = ((0 : F))

def relationRow34 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77866) * ((1 : F) + (-1 : F) * rho 77866) = ((0 : F))

def relationRow35 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77867) * ((1 : F) + (-1 : F) * rho 77867) = ((0 : F))

def relationRow36 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77868) * ((1 : F) + (-1 : F) * rho 77868) = ((0 : F))

def relationRow37 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77869) * ((1 : F) + (-1 : F) * rho 77869) = ((0 : F))

def relationRow38 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77870) * ((1 : F) + (-1 : F) * rho 77870) = ((0 : F))

def relationRow39 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77871) * ((1 : F) + (-1 : F) * rho 77871) = ((0 : F))

def relationRow40 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872) * ((1 : F) + (-1 : F) * rho 77872) = ((0 : F))

def relationRow41 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77873) * ((1 : F) + (-1 : F) * rho 77873) = ((0 : F))

def relationRow42 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77874) * ((1 : F) + (-1 : F) * rho 77874) = ((0 : F))

def relationRow43 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77875) * ((1 : F) + (-1 : F) * rho 77875) = ((0 : F))

def relationRow44 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77876) * ((1 : F) + (-1 : F) * rho 77876) = ((0 : F))

def relationRow45 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77877) * ((1 : F) + (-1 : F) * rho 77877) = ((0 : F))

def relationRow46 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77878) * ((1 : F) + (-1 : F) * rho 77878) = ((0 : F))

def relationRow47 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77879) * ((1 : F) + (-1 : F) * rho 77879) = ((0 : F))

def relationRow48 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77880) * ((1 : F) + (-1 : F) * rho 77880) = ((0 : F))

def relationRow49 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77881) * ((1 : F) + (-1 : F) * rho 77881) = ((0 : F))

def relationRow50 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77882) * ((1 : F) + (-1 : F) * rho 77882) = ((0 : F))

def relationRow51 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77883) * ((1 : F) + (-1 : F) * rho 77883) = ((0 : F))

def relationRow52 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77884) * ((1 : F) + (-1 : F) * rho 77884) = ((0 : F))

def relationRow53 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885) * ((1 : F) + (-1 : F) * rho 77885) = ((0 : F))

def relationRow54 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77886) * ((1 : F) + (-1 : F) * rho 77886) = ((0 : F))

def relationRow55 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77887) * ((1 : F) + (-1 : F) * rho 77887) = ((0 : F))

def relationRow56 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77888) * ((1 : F) + (-1 : F) * rho 77888) = ((0 : F))

def relationRow57 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77889) * ((1 : F) + (-1 : F) * rho 77889) = ((0 : F))

def relationRow58 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77890) * ((1 : F) + (-1 : F) * rho 77890) = ((0 : F))

def relationRow59 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77891) * ((1 : F) + (-1 : F) * rho 77891) = ((0 : F))

def relationRow60 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77892) * ((1 : F) + (-1 : F) * rho 77892) = ((0 : F))

def relationRow61 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77893) * ((1 : F) + (-1 : F) * rho 77893) = ((0 : F))

def relationRow62 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77894) * ((1 : F) + (-1 : F) * rho 77894) = ((0 : F))

def relationRow63 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77895) * ((1 : F) + (-1 : F) * rho 77895) = ((0 : F))

def relationRow64 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77896) * ((1 : F) + (-1 : F) * rho 77896) = ((0 : F))

def relationRow65 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77897) * ((1 : F) + (-1 : F) * rho 77897) = ((0 : F))

def relationRow66 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898) * ((1 : F) + (-1 : F) * rho 77898) = ((0 : F))

def relationRow67 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77899) * ((1 : F) + (-1 : F) * rho 77899) = ((0 : F))

def relationRow68 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77900) * ((1 : F) + (-1 : F) * rho 77900) = ((0 : F))

def relationRow69 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77901) * ((1 : F) + (-1 : F) * rho 77901) = ((0 : F))

def relationRow70 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77902) * ((1 : F) + (-1 : F) * rho 77902) = ((0 : F))

def relationRow71 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77903) * ((1 : F) + (-1 : F) * rho 77903) = ((0 : F))

def relationRow72 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77904) * ((1 : F) + (-1 : F) * rho 77904) = ((0 : F))

def relationRow73 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77905) * ((1 : F) + (-1 : F) * rho 77905) = ((0 : F))

def relationRow74 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77906) * ((1 : F) + (-1 : F) * rho 77906) = ((0 : F))

def relationRow75 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77907) * ((1 : F) + (-1 : F) * rho 77907) = ((0 : F))

def relationRow76 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77908) * ((1 : F) + (-1 : F) * rho 77908) = ((0 : F))

def relationRow77 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77909) * ((1 : F) + (-1 : F) * rho 77909) = ((0 : F))

def relationRow78 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77910) * ((1 : F) + (-1 : F) * rho 77910) = ((0 : F))

def relationRow79 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911) * ((1 : F) + (-1 : F) * rho 77911) = ((0 : F))

def relationRow80 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77912) * ((1 : F) + (-1 : F) * rho 77912) = ((0 : F))

def relationRow81 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77913) * ((1 : F) + (-1 : F) * rho 77913) = ((0 : F))

def relationRow82 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77914) * ((1 : F) + (-1 : F) * rho 77914) = ((0 : F))

def relationRow83 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77915) * ((1 : F) + (-1 : F) * rho 77915) = ((0 : F))

def relationRow84 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77916) * ((1 : F) + (-1 : F) * rho 77916) = ((0 : F))

def relationRow85 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77917) * ((1 : F) + (-1 : F) * rho 77917) = ((0 : F))

def relationRow86 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77918) * ((1 : F) + (-1 : F) * rho 77918) = ((0 : F))

def relationRow87 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77919) * ((1 : F) + (-1 : F) * rho 77919) = ((0 : F))

def relationRow88 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77920) * ((1 : F) + (-1 : F) * rho 77920) = ((0 : F))

def relationRow89 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77921) * ((1 : F) + (-1 : F) * rho 77921) = ((0 : F))

def relationRow90 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77922) * ((1 : F) + (-1 : F) * rho 77922) = ((0 : F))

def relationRow91 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77923) * ((1 : F) + (-1 : F) * rho 77923) = ((0 : F))

def relationRow92 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924) * ((1 : F) + (-1 : F) * rho 77924) = ((0 : F))

def relationRow93 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77925) * ((1 : F) + (-1 : F) * rho 77925) = ((0 : F))

def relationRow94 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77926) * ((1 : F) + (-1 : F) * rho 77926) = ((0 : F))

def relationRow95 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77927) * ((1 : F) + (-1 : F) * rho 77927) = ((0 : F))

def relationRow96 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77928) * ((1 : F) + (-1 : F) * rho 77928) = ((0 : F))

def relationRow97 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77929) * ((1 : F) + (-1 : F) * rho 77929) = ((0 : F))

def relationRow98 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77930) * ((1 : F) + (-1 : F) * rho 77930) = ((0 : F))

def relationRow99 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77931) * ((1 : F) + (-1 : F) * rho 77931) = ((0 : F))

def relationRow100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77932) * ((1 : F) + (-1 : F) * rho 77932) = ((0 : F))

def relationRow101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77933) * ((1 : F) + (-1 : F) * rho 77933) = ((0 : F))

def relationRow102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77934) * ((1 : F) + (-1 : F) * rho 77934) = ((0 : F))

def relationRow103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77935) * ((1 : F) + (-1 : F) * rho 77935) = ((0 : F))

def relationRow104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77936) * ((1 : F) + (-1 : F) * rho 77936) = ((0 : F))

def relationRow105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937) * ((1 : F) + (-1 : F) * rho 77937) = ((0 : F))

def relationRow106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77938) * ((1 : F) + (-1 : F) * rho 77938) = ((0 : F))

def relationRow107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77939) * ((1 : F) + (-1 : F) * rho 77939) = ((0 : F))

def relationRow108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77940) * ((1 : F) + (-1 : F) * rho 77940) = ((0 : F))

def relationRow109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77941) * ((1 : F) + (-1 : F) * rho 77941) = ((0 : F))

def relationRow110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77942) * ((1 : F) + (-1 : F) * rho 77942) = ((0 : F))

def relationRow111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77943) * ((1 : F) + (-1 : F) * rho 77943) = ((0 : F))

def relationRow112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77944) * ((1 : F) + (-1 : F) * rho 77944) = ((0 : F))

def relationRow113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77945) * ((1 : F) + (-1 : F) * rho 77945) = ((0 : F))

def relationRow114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77946) * ((1 : F) + (-1 : F) * rho 77946) = ((0 : F))

def relationRow115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77947) * ((1 : F) + (-1 : F) * rho 77947) = ((0 : F))

def relationRow116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77948) * ((1 : F) + (-1 : F) * rho 77948) = ((0 : F))

def relationRow117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77949) * ((1 : F) + (-1 : F) * rho 77949) = ((0 : F))

def relationRow118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950) * ((1 : F) + (-1 : F) * rho 77950) = ((0 : F))

def relationRow119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77951) * ((1 : F) + (-1 : F) * rho 77951) = ((0 : F))

def relationRow120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77952) * ((1 : F) + (-1 : F) * rho 77952) = ((0 : F))

def relationRow121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77953) * ((1 : F) + (-1 : F) * rho 77953) = ((0 : F))

def relationRow122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77954) * ((1 : F) + (-1 : F) * rho 77954) = ((0 : F))

def relationRow123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77955) * ((1 : F) + (-1 : F) * rho 77955) = ((0 : F))

def relationRow124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77956) * ((1 : F) + (-1 : F) * rho 77956) = ((0 : F))

def relationRow125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77957) * ((1 : F) + (-1 : F) * rho 77957) = ((0 : F))

def relationRow126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77958) * ((1 : F) + (-1 : F) * rho 77958) = ((0 : F))

def relationRow127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77959) * ((1 : F) + (-1 : F) * rho 77959) = ((0 : F))

def relationRow128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77960) * ((1 : F) + (-1 : F) * rho 77960) = ((0 : F))

def relationRow129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77961) * ((1 : F) + (-1 : F) * rho 77961) = ((0 : F))

def relationRow130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77962) * ((1 : F) + (-1 : F) * rho 77962) = ((0 : F))

def relationRow131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963) * ((1 : F) + (-1 : F) * rho 77963) = ((0 : F))

def relationRow132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77964) * ((1 : F) + (-1 : F) * rho 77964) = ((0 : F))

def relationRow133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77965) * ((1 : F) + (-1 : F) * rho 77965) = ((0 : F))

def relationRow134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77966) * ((1 : F) + (-1 : F) * rho 77966) = ((0 : F))

def relationRow135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77967) * ((1 : F) + (-1 : F) * rho 77967) = ((0 : F))

def relationRow136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77968) * ((1 : F) + (-1 : F) * rho 77968) = ((0 : F))

def relationRow137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77969) * ((1 : F) + (-1 : F) * rho 77969) = ((0 : F))

def relationRow138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77970) * ((1 : F) + (-1 : F) * rho 77970) = ((0 : F))

def relationRow139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77971) * ((1 : F) + (-1 : F) * rho 77971) = ((0 : F))

def relationRow140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77972) * ((1 : F) + (-1 : F) * rho 77972) = ((0 : F))

def relationRow141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77973) * ((1 : F) + (-1 : F) * rho 77973) = ((0 : F))

def relationRow142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77974) * ((1 : F) + (-1 : F) * rho 77974) = ((0 : F))

def relationRow143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77975) * ((1 : F) + (-1 : F) * rho 77975) = ((0 : F))

def relationRow144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976) * ((1 : F) + (-1 : F) * rho 77976) = ((0 : F))

def relationRow145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77977) * ((1 : F) + (-1 : F) * rho 77977) = ((0 : F))

def relationRow146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77978) * ((1 : F) + (-1 : F) * rho 77978) = ((0 : F))

def relationRow147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77979) * ((1 : F) + (-1 : F) * rho 77979) = ((0 : F))

def relationRow148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77980) * ((1 : F) + (-1 : F) * rho 77980) = ((0 : F))

def relationRow149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77981) * ((1 : F) + (-1 : F) * rho 77981) = ((0 : F))

def relationRow150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77982) * ((1 : F) + (-1 : F) * rho 77982) = ((0 : F))

def relationRow151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77983) * ((1 : F) + (-1 : F) * rho 77983) = ((0 : F))

def relationRow152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77984) * ((1 : F) + (-1 : F) * rho 77984) = ((0 : F))

def relationRow153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77985) * ((1 : F) + (-1 : F) * rho 77985) = ((0 : F))

def relationRow154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77986) * ((1 : F) + (-1 : F) * rho 77986) = ((0 : F))

def relationRow155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77987) * ((1 : F) + (-1 : F) * rho 77987) = ((0 : F))

def relationRow156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77988) * ((1 : F) + (-1 : F) * rho 77988) = ((0 : F))

def relationRow157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989) * ((1 : F) + (-1 : F) * rho 77989) = ((0 : F))

def relationRow158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77990) * ((1 : F) + (-1 : F) * rho 77990) = ((0 : F))

def relationRow159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77991) * ((1 : F) + (-1 : F) * rho 77991) = ((0 : F))

def relationRow160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77992) * ((1 : F) + (-1 : F) * rho 77992) = ((0 : F))

def relationRow161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77993) * ((1 : F) + (-1 : F) * rho 77993) = ((0 : F))

def relationRow162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77994) * ((1 : F) + (-1 : F) * rho 77994) = ((0 : F))

def relationRow163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77995) * ((1 : F) + (-1 : F) * rho 77995) = ((0 : F))

def relationRow164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77996) * ((1 : F) + (-1 : F) * rho 77996) = ((0 : F))

def relationRow165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77997) * ((1 : F) + (-1 : F) * rho 77997) = ((0 : F))

def relationRow166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77998) * ((1 : F) + (-1 : F) * rho 77998) = ((0 : F))

def relationRow167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77999) * ((1 : F) + (-1 : F) * rho 77999) = ((0 : F))

def relationRow168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78000) * ((1 : F) + (-1 : F) * rho 78000) = ((0 : F))

def relationRow169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78001) * ((1 : F) + (-1 : F) * rho 78001) = ((0 : F))

def relationRow170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002) * ((1 : F) + (-1 : F) * rho 78002) = ((0 : F))

def relationRow171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78003) * ((1 : F) + (-1 : F) * rho 78003) = ((0 : F))

def relationRow172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78004) * ((1 : F) + (-1 : F) * rho 78004) = ((0 : F))

def relationRow173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78005) * ((1 : F) + (-1 : F) * rho 78005) = ((0 : F))

def relationRow174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78006) * ((1 : F) + (-1 : F) * rho 78006) = ((0 : F))

def relationRow175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78007) * ((1 : F) + (-1 : F) * rho 78007) = ((0 : F))

def relationRow176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78008) * ((1 : F) + (-1 : F) * rho 78008) = ((0 : F))

def relationRow177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78009) * ((1 : F) + (-1 : F) * rho 78009) = ((0 : F))

def relationRow178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78010) * ((1 : F) + (-1 : F) * rho 78010) = ((0 : F))

def relationRow179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78011) * ((1 : F) + (-1 : F) * rho 78011) = ((0 : F))

def relationRow180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78012) * ((1 : F) + (-1 : F) * rho 78012) = ((0 : F))

def relationRow181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78013) * ((1 : F) + (-1 : F) * rho 78013) = ((0 : F))

def relationRow182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78014) * ((1 : F) + (-1 : F) * rho 78014) = ((0 : F))

def relationRow183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015) * ((1 : F) + (-1 : F) * rho 78015) = ((0 : F))

def relationRow184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78016) * ((1 : F) + (-1 : F) * rho 78016) = ((0 : F))

def relationRow185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78017) * ((1 : F) + (-1 : F) * rho 78017) = ((0 : F))

def relationRow186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78018) * ((1 : F) + (-1 : F) * rho 78018) = ((0 : F))

def relationRow187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78019) * ((1 : F) + (-1 : F) * rho 78019) = ((0 : F))

def relationRow188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78020) * ((1 : F) + (-1 : F) * rho 78020) = ((0 : F))

def relationRow189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78021) * ((1 : F) + (-1 : F) * rho 78021) = ((0 : F))

def relationRow190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78022) * ((1 : F) + (-1 : F) * rho 78022) = ((0 : F))

def relationRow191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78023) * ((1 : F) + (-1 : F) * rho 78023) = ((0 : F))

def relationRow192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78024) * ((1 : F) + (-1 : F) * rho 78024) = ((0 : F))

def relationRow193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78025) * ((1 : F) + (-1 : F) * rho 78025) = ((0 : F))

def relationRow194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78026) * ((1 : F) + (-1 : F) * rho 78026) = ((0 : F))

def relationRow195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78027) * ((1 : F) + (-1 : F) * rho 78027) = ((0 : F))

def relationRow196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028) * ((1 : F) + (-1 : F) * rho 78028) = ((0 : F))

def relationRow197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78029) * ((1 : F) + (-1 : F) * rho 78029) = ((0 : F))

def relationRow198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78030) * ((1 : F) + (-1 : F) * rho 78030) = ((0 : F))

def relationRow199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78031) * ((1 : F) + (-1 : F) * rho 78031) = ((0 : F))

def relationRow200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78032) * ((1 : F) + (-1 : F) * rho 78032) = ((0 : F))

def relationRow201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78033) * ((1 : F) + (-1 : F) * rho 78033) = ((0 : F))

def relationRow202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78034) * ((1 : F) + (-1 : F) * rho 78034) = ((0 : F))

def relationRow203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78035) * ((1 : F) + (-1 : F) * rho 78035) = ((0 : F))

def relationRow204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78036) * ((1 : F) + (-1 : F) * rho 78036) = ((0 : F))

def relationRow205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78037) * ((1 : F) + (-1 : F) * rho 78037) = ((0 : F))

def relationRow206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78038) * ((1 : F) + (-1 : F) * rho 78038) = ((0 : F))

def relationRow207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78039) * ((1 : F) + (-1 : F) * rho 78039) = ((0 : F))

def relationRow208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78040) * ((1 : F) + (-1 : F) * rho 78040) = ((0 : F))

def relationRow209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041) * ((1 : F) + (-1 : F) * rho 78041) = ((0 : F))

def relationRow210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78042) * ((1 : F) + (-1 : F) * rho 78042) = ((0 : F))

def relationRow211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78043) * ((1 : F) + (-1 : F) * rho 78043) = ((0 : F))

def relationRow212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78044) * ((1 : F) + (-1 : F) * rho 78044) = ((0 : F))

def relationRow213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78045) * ((1 : F) + (-1 : F) * rho 78045) = ((0 : F))

def relationRow214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78046) * ((1 : F) + (-1 : F) * rho 78046) = ((0 : F))

def relationRow215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78047) * ((1 : F) + (-1 : F) * rho 78047) = ((0 : F))

def relationRow216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78048) * ((1 : F) + (-1 : F) * rho 78048) = ((0 : F))

def relationRow217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78049) * ((1 : F) + (-1 : F) * rho 78049) = ((0 : F))

def relationRow218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78050) * ((1 : F) + (-1 : F) * rho 78050) = ((0 : F))

def relationRow219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78051) * ((1 : F) + (-1 : F) * rho 78051) = ((0 : F))

def relationRow220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78052) * ((1 : F) + (-1 : F) * rho 78052) = ((0 : F))

def relationRow221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78053) * ((1 : F) + (-1 : F) * rho 78053) = ((0 : F))

def relationRow222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054) * ((1 : F) + (-1 : F) * rho 78054) = ((0 : F))

def relationRow223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78055) * ((1 : F) + (-1 : F) * rho 78055) = ((0 : F))

def relationRow224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78056) * ((1 : F) + (-1 : F) * rho 78056) = ((0 : F))

def relationRow225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78057) * ((1 : F) + (-1 : F) * rho 78057) = ((0 : F))

def relationRow226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78058) * ((1 : F) + (-1 : F) * rho 78058) = ((0 : F))

def relationRow227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78059) * ((1 : F) + (-1 : F) * rho 78059) = ((0 : F))

def relationRow228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78060) * ((1 : F) + (-1 : F) * rho 78060) = ((0 : F))

def relationRow229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78061) * ((1 : F) + (-1 : F) * rho 78061) = ((0 : F))

def relationRow230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78062) * ((1 : F) + (-1 : F) * rho 78062) = ((0 : F))

def relationRow231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78063) * ((1 : F) + (-1 : F) * rho 78063) = ((0 : F))

def relationRow232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78064) * ((1 : F) + (-1 : F) * rho 78064) = ((0 : F))

def relationRow233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78065) * ((1 : F) + (-1 : F) * rho 78065) = ((0 : F))

def relationRow234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78066) * ((1 : F) + (-1 : F) * rho 78066) = ((0 : F))

def relationRow235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067) * ((1 : F) + (-1 : F) * rho 78067) = ((0 : F))

def relationRow236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78068) * ((1 : F) + (-1 : F) * rho 78068) = ((0 : F))

def relationRow237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78069) * ((1 : F) + (-1 : F) * rho 78069) = ((0 : F))

def relationRow238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78070) * ((1 : F) + (-1 : F) * rho 78070) = ((0 : F))

def relationRow239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78071) * ((1 : F) + (-1 : F) * rho 78071) = ((0 : F))

def relationRow240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78072) * ((1 : F) + (-1 : F) * rho 78072) = ((0 : F))

def relationRow241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78073) * ((1 : F) + (-1 : F) * rho 78073) = ((0 : F))

def relationRow242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78074) * ((1 : F) + (-1 : F) * rho 78074) = ((0 : F))

def relationRow243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78075) * ((1 : F) + (-1 : F) * rho 78075) = ((0 : F))

def relationRow244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78076) * ((1 : F) + (-1 : F) * rho 78076) = ((0 : F))

def relationRow245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78077) * ((1 : F) + (-1 : F) * rho 78077) = ((0 : F))

def relationRow246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78078) * ((1 : F) + (-1 : F) * rho 78078) = ((0 : F))

def relationRow247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78079) * ((1 : F) + (-1 : F) * rho 78079) = ((0 : F))

def relationRow248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080) * ((1 : F) + (-1 : F) * rho 78080) = ((0 : F))

def relationRow249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78081) * ((1 : F) + (-1 : F) * rho 78081) = ((0 : F))

def relationRow250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78082) * ((1 : F) + (-1 : F) * rho 78082) = ((0 : F))

def relationLc0Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 77832 + (2 : F) * rho 77833 + (4 : F) * rho 77834 + (8 : F) * rho 77835 + (16 : F) * rho 77836 + (32 : F) * rho 77837 + (64 : F) * rho 77838 + (128 : F) * rho 77839 + (256 : F) * rho 77840 + (512 : F) * rho 77841 + (1024 : F) * rho 77842 + (2048 : F) * rho 77843 + (4096 : F) * rho 77844 + (8192 : F) * rho 77845 + (16384 : F) * rho 77846 + (32768 : F) * rho 77847 + (65536 : F) * rho 77848 + (131072 : F) * rho 77849 + (262144 : F) * rho 77850 + (524288 : F) * rho 77851 + (1048576 : F) * rho 77852 + (2097152 : F) * rho 77853 + (4194304 : F) * rho 77854 + (8388608 : F) * rho 77855 + (16777216 : F) * rho 77856 + (33554432 : F) * rho 77857 + (67108864 : F) * rho 77858 + (134217728 : F) * rho 77859 + (268435456 : F) * rho 77860 + (536870912 : F) * rho 77861 + (1073741824 : F) * rho 77862 + (2147483648 : F) * rho 77863

def relationLc0Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 77864 + (8589934592 : F) * rho 77865 + (17179869184 : F) * rho 77866 + (34359738368 : F) * rho 77867 + (68719476736 : F) * rho 77868 + (137438953472 : F) * rho 77869 + (274877906944 : F) * rho 77870 + (549755813888 : F) * rho 77871 + (1099511627776 : F) * rho 77872 + (2199023255552 : F) * rho 77873 + (4398046511104 : F) * rho 77874 + (8796093022208 : F) * rho 77875 + (17592186044416 : F) * rho 77876 + (35184372088832 : F) * rho 77877 + (70368744177664 : F) * rho 77878 + (140737488355328 : F) * rho 77879 + (281474976710656 : F) * rho 77880 + (562949953421312 : F) * rho 77881 + (1125899906842624 : F) * rho 77882 + (2251799813685248 : F) * rho 77883 + (4503599627370496 : F) * rho 77884 + (9007199254740992 : F) * rho 77885 + (18014398509481984 : F) * rho 77886 + (36028797018963968 : F) * rho 77887 + (72057594037927936 : F) * rho 77888 + (144115188075855872 : F) * rho 77889 + (288230376151711744 : F) * rho 77890 + (576460752303423488 : F) * rho 77891 + (1152921504606846976 : F) * rho 77892 + (2305843009213693952 : F) * rho 77893 + (4611686018427387904 : F) * rho 77894 + (9223372036854775808 : F) * rho 77895

def relationLc0Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 77896 + (36893488147419103232 : F) * rho 77897 + (73786976294838206464 : F) * rho 77898 + (147573952589676412928 : F) * rho 77899 + (295147905179352825856 : F) * rho 77900 + (590295810358705651712 : F) * rho 77901 + (1180591620717411303424 : F) * rho 77902 + (2361183241434822606848 : F) * rho 77903 + (4722366482869645213696 : F) * rho 77904 + (9444732965739290427392 : F) * rho 77905 + (18889465931478580854784 : F) * rho 77906 + (37778931862957161709568 : F) * rho 77907 + (75557863725914323419136 : F) * rho 77908 + (151115727451828646838272 : F) * rho 77909 + (302231454903657293676544 : F) * rho 77910 + (604462909807314587353088 : F) * rho 77911 + (1208925819614629174706176 : F) * rho 77912 + (2417851639229258349412352 : F) * rho 77913 + (4835703278458516698824704 : F) * rho 77914 + (9671406556917033397649408 : F) * rho 77915 + (19342813113834066795298816 : F) * rho 77916 + (38685626227668133590597632 : F) * rho 77917 + (77371252455336267181195264 : F) * rho 77918 + (154742504910672534362390528 : F) * rho 77919 + (309485009821345068724781056 : F) * rho 77920 + (618970019642690137449562112 : F) * rho 77921 + (1237940039285380274899124224 : F) * rho 77922 + (2475880078570760549798248448 : F) * rho 77923 + (4951760157141521099596496896 : F) * rho 77924 + (9903520314283042199192993792 : F) * rho 77925 + (19807040628566084398385987584 : F) * rho 77926 + (39614081257132168796771975168 : F) * rho 77927

def relationLc0Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 77928 + (158456325028528675187087900672 : F) * rho 77929 + (316912650057057350374175801344 : F) * rho 77930 + (633825300114114700748351602688 : F) * rho 77931 + (1267650600228229401496703205376 : F) * rho 77932 + (2535301200456458802993406410752 : F) * rho 77933 + (5070602400912917605986812821504 : F) * rho 77934 + (10141204801825835211973625643008 : F) * rho 77935 + (20282409603651670423947251286016 : F) * rho 77936 + (40564819207303340847894502572032 : F) * rho 77937 + (81129638414606681695789005144064 : F) * rho 77938 + (162259276829213363391578010288128 : F) * rho 77939 + (324518553658426726783156020576256 : F) * rho 77940 + (649037107316853453566312041152512 : F) * rho 77941 + (1298074214633706907132624082305024 : F) * rho 77942 + (2596148429267413814265248164610048 : F) * rho 77943 + (5192296858534827628530496329220096 : F) * rho 77944 + (10384593717069655257060992658440192 : F) * rho 77945 + (20769187434139310514121985316880384 : F) * rho 77946 + (41538374868278621028243970633760768 : F) * rho 77947 + (83076749736557242056487941267521536 : F) * rho 77948 + (166153499473114484112975882535043072 : F) * rho 77949 + (332306998946228968225951765070086144 : F) * rho 77950 + (664613997892457936451903530140172288 : F) * rho 77951 + (1329227995784915872903807060280344576 : F) * rho 77952 + (2658455991569831745807614120560689152 : F) * rho 77953 + (5316911983139663491615228241121378304 : F) * rho 77954 + (10633823966279326983230456482242756608 : F) * rho 77955 + (21267647932558653966460912964485513216 : F) * rho 77956 + (42535295865117307932921825928971026432 : F) * rho 77957 + (85070591730234615865843651857942052864 : F) * rho 77958 + (170141183460469231731687303715884105728 : F) * rho 77959

def relationLc0Part4 (rho : Nat -> F) : F :=
    (340282366920938463463374607431768211456 : F) * rho 77960 + (680564733841876926926749214863536422912 : F) * rho 77961 + (1361129467683753853853498429727072845824 : F) * rho 77962 + (2722258935367507707706996859454145691648 : F) * rho 77963 + (5444517870735015415413993718908291383296 : F) * rho 77964 + (10889035741470030830827987437816582766592 : F) * rho 77965 + (21778071482940061661655974875633165533184 : F) * rho 77966 + (43556142965880123323311949751266331066368 : F) * rho 77967 + (87112285931760246646623899502532662132736 : F) * rho 77968 + (174224571863520493293247799005065324265472 : F) * rho 77969 + (348449143727040986586495598010130648530944 : F) * rho 77970 + (696898287454081973172991196020261297061888 : F) * rho 77971 + (1393796574908163946345982392040522594123776 : F) * rho 77972 + (2787593149816327892691964784081045188247552 : F) * rho 77973 + (5575186299632655785383929568162090376495104 : F) * rho 77974 + (11150372599265311570767859136324180752990208 : F) * rho 77975 + (22300745198530623141535718272648361505980416 : F) * rho 77976 + (44601490397061246283071436545296723011960832 : F) * rho 77977 + (89202980794122492566142873090593446023921664 : F) * rho 77978 + (178405961588244985132285746181186892047843328 : F) * rho 77979 + (356811923176489970264571492362373784095686656 : F) * rho 77980 + (713623846352979940529142984724747568191373312 : F) * rho 77981 + (1427247692705959881058285969449495136382746624 : F) * rho 77982 + (2854495385411919762116571938898990272765493248 : F) * rho 77983 + (5708990770823839524233143877797980545530986496 : F) * rho 77984 + (11417981541647679048466287755595961091061972992 : F) * rho 77985 + (22835963083295358096932575511191922182123945984 : F) * rho 77986 + (45671926166590716193865151022383844364247891968 : F) * rho 77987 + (91343852333181432387730302044767688728495783936 : F) * rho 77988 + (182687704666362864775460604089535377456991567872 : F) * rho 77989 + (365375409332725729550921208179070754913983135744 : F) * rho 77990 + (730750818665451459101842416358141509827966271488 : F) * rho 77991

def relationLc0Part5 (rho : Nat -> F) : F :=
    (1461501637330902918203684832716283019655932542976 : F) * rho 77992 + (2923003274661805836407369665432566039311865085952 : F) * rho 77993 + (5846006549323611672814739330865132078623730171904 : F) * rho 77994 + (11692013098647223345629478661730264157247460343808 : F) * rho 77995 + (23384026197294446691258957323460528314494920687616 : F) * rho 77996 + (46768052394588893382517914646921056628989841375232 : F) * rho 77997 + (93536104789177786765035829293842113257979682750464 : F) * rho 77998 + (187072209578355573530071658587684226515959365500928 : F) * rho 77999 + (374144419156711147060143317175368453031918731001856 : F) * rho 78000 + (748288838313422294120286634350736906063837462003712 : F) * rho 78001 + (1496577676626844588240573268701473812127674924007424 : F) * rho 78002 + (2993155353253689176481146537402947624255349848014848 : F) * rho 78003 + (5986310706507378352962293074805895248510699696029696 : F) * rho 78004 + (11972621413014756705924586149611790497021399392059392 : F) * rho 78005 + (23945242826029513411849172299223580994042798784118784 : F) * rho 78006 + (47890485652059026823698344598447161988085597568237568 : F) * rho 78007 + (95780971304118053647396689196894323976171195136475136 : F) * rho 78008 + (191561942608236107294793378393788647952342390272950272 : F) * rho 78009 + (383123885216472214589586756787577295904684780545900544 : F) * rho 78010 + (766247770432944429179173513575154591809369561091801088 : F) * rho 78011 + (1532495540865888858358347027150309183618739122183602176 : F) * rho 78012 + (3064991081731777716716694054300618367237478244367204352 : F) * rho 78013 + (6129982163463555433433388108601236734474956488734408704 : F) * rho 78014 + (12259964326927110866866776217202473468949912977468817408 : F) * rho 78015 + (24519928653854221733733552434404946937899825954937634816 : F) * rho 78016 + (49039857307708443467467104868809893875799651909875269632 : F) * rho 78017 + (98079714615416886934934209737619787751599303819750539264 : F) * rho 78018 + (196159429230833773869868419475239575503198607639501078528 : F) * rho 78019 + (392318858461667547739736838950479151006397215279002157056 : F) * rho 78020 + (784637716923335095479473677900958302012794430558004314112 : F) * rho 78021 + (1569275433846670190958947355801916604025588861116008628224 : F) * rho 78022 + (3138550867693340381917894711603833208051177722232017256448 : F) * rho 78023

def relationLc0Part6 (rho : Nat -> F) : F :=
    (6277101735386680763835789423207666416102355444464034512896 : F) * rho 78024 + (12554203470773361527671578846415332832204710888928069025792 : F) * rho 78025 + (25108406941546723055343157692830665664409421777856138051584 : F) * rho 78026 + (50216813883093446110686315385661331328818843555712276103168 : F) * rho 78027 + (100433627766186892221372630771322662657637687111424552206336 : F) * rho 78028 + (200867255532373784442745261542645325315275374222849104412672 : F) * rho 78029 + (401734511064747568885490523085290650630550748445698208825344 : F) * rho 78030 + (803469022129495137770981046170581301261101496891396417650688 : F) * rho 78031 + (1606938044258990275541962092341162602522202993782792835301376 : F) * rho 78032 + (3213876088517980551083924184682325205044405987565585670602752 : F) * rho 78033 + (6427752177035961102167848369364650410088811975131171341205504 : F) * rho 78034 + (12855504354071922204335696738729300820177623950262342682411008 : F) * rho 78035 + (25711008708143844408671393477458601640355247900524685364822016 : F) * rho 78036 + (51422017416287688817342786954917203280710495801049370729644032 : F) * rho 78037 + (102844034832575377634685573909834406561420991602098741459288064 : F) * rho 78038 + (205688069665150755269371147819668813122841983204197482918576128 : F) * rho 78039 + (411376139330301510538742295639337626245683966408394965837152256 : F) * rho 78040 + (822752278660603021077484591278675252491367932816789931674304512 : F) * rho 78041 + (1645504557321206042154969182557350504982735865633579863348609024 : F) * rho 78042 + (3291009114642412084309938365114701009965471731267159726697218048 : F) * rho 78043 + (6582018229284824168619876730229402019930943462534319453394436096 : F) * rho 78044 + (13164036458569648337239753460458804039861886925068638906788872192 : F) * rho 78045 + (26328072917139296674479506920917608079723773850137277813577744384 : F) * rho 78046 + (52656145834278593348959013841835216159447547700274555627155488768 : F) * rho 78047 + (105312291668557186697918027683670432318895095400549111254310977536 : F) * rho 78048 + (210624583337114373395836055367340864637790190801098222508621955072 : F) * rho 78049 + (421249166674228746791672110734681729275580381602196445017243910144 : F) * rho 78050 + (842498333348457493583344221469363458551160763204392890034487820288 : F) * rho 78051 + (1684996666696914987166688442938726917102321526408785780068975640576 : F) * rho 78052 + (3369993333393829974333376885877453834204643052817571560137951281152 : F) * rho 78053 + (6739986666787659948666753771754907668409286105635143120275902562304 : F) * rho 78054 + (13479973333575319897333507543509815336818572211270286240551805124608 : F) * rho 78055

def relationLc0Part7 (rho : Nat -> F) : F :=
    (26959946667150639794667015087019630673637144422540572481103610249216 : F) * rho 78056 + (53919893334301279589334030174039261347274288845081144962207220498432 : F) * rho 78057 + (107839786668602559178668060348078522694548577690162289924414440996864 : F) * rho 78058 + (215679573337205118357336120696157045389097155380324579848828881993728 : F) * rho 78059 + (431359146674410236714672241392314090778194310760649159697657763987456 : F) * rho 78060 + (862718293348820473429344482784628181556388621521298319395315527974912 : F) * rho 78061 + (1725436586697640946858688965569256363112777243042596638790631055949824 : F) * rho 78062 + (3450873173395281893717377931138512726225554486085193277581262111899648 : F) * rho 78063 + (6901746346790563787434755862277025452451108972170386555162524223799296 : F) * rho 78064 + (13803492693581127574869511724554050904902217944340773110325048447598592 : F) * rho 78065 + (27606985387162255149739023449108101809804435888681546220650096895197184 : F) * rho 78066 + (55213970774324510299478046898216203619608871777363092441300193790394368 : F) * rho 78067 + (110427941548649020598956093796432407239217743554726184882600387580788736 : F) * rho 78068 + (220855883097298041197912187592864814478435487109452369765200775161577472 : F) * rho 78069 + (441711766194596082395824375185729628956870974218904739530401550323154944 : F) * rho 78070 + (883423532389192164791648750371459257913741948437809479060803100646309888 : F) * rho 78071 + (1766847064778384329583297500742918515827483896875618958121606201292619776 : F) * rho 78072 + (3533694129556768659166595001485837031654967793751237916243212402585239552 : F) * rho 78073 + (7067388259113537318333190002971674063309935587502475832486424805170479104 : F) * rho 78074 + (14134776518227074636666380005943348126619871175004951664972849610340958208 : F) * rho 78075 + (28269553036454149273332760011886696253239742350009903329945699220681916416 : F) * rho 78076 + (56539106072908298546665520023773392506479484700019806659891398441363832832 : F) * rho 78077 + (113078212145816597093331040047546785012958969400039613319782796882727665664 : F) * rho 78078 + (226156424291633194186662080095093570025917938800079226639565593765455331328 : F) * rho 78079 + (452312848583266388373324160190187140051835877600158453279131187530910662656 : F) * rho 78080 + (904625697166532776746648320380374280103671755200316906558262375061821325312 : F) * rho 78081 + (1809251394333065553493296640760748560207343510400633813116524750123642650624 : F) * rho 78082

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
    ((1 : F) * rho 77832) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 78083)

def relationRow253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77832) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 545) = ((1 : F) * rho 78084)

def relationRow254 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 78085)

def relationRow255 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 78086)

def relationRow256 (rho : Nat -> F) : Prop :=
    ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 78087)

def relationRow257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78088) * ((-1 : F) * rho 78086 + (1 : F) * rho 78087) = ((2 : F) * rho 78085)

def relationRow258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78089) * ((2 : F) + (1 : F) * rho 78086 + (-1 : F) * rho 78087) = ((1 : F) * rho 78086 + (1 : F) * rho 78087)

def relationRow259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78088 + (1 : F) * rho 78089) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084) = ((1 : F) * rho 78090)

def relationRow260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78089) * ((1 : F) * rho 78083) = ((1 : F) * rho 78091)

def relationRow261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78088) * ((1 : F) + (1 : F) * rho 78084) = ((1 : F) * rho 78092)

def relationRow262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78091) * ((1 : F) * rho 78092) = ((1 : F) * rho 78093)

def relationRow263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78094) * ((1 : F) + (1 : F) * rho 78093) = ((1 : F) * rho 78091 + (1 : F) * rho 78092)

def relationRow264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78095) * ((1 : F) + (-1 : F) * rho 78093) = ((1 : F) * rho 78090 + (-1 : F) * rho 78091 + (-1 : F) * rho 78092)

def relationRow265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833) * ((-1 : F) * rho 78083 + (1 : F) * rho 78094) = ((1 : F) * rho 78096)

def relationRow266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77833) * ((-1 : F) + (-1 : F) * rho 78084 + (1 : F) * rho 78095) = ((1 : F) * rho 78097)

def relationRow267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78088) * ((1 : F) * rho 78089) = ((1 : F) * rho 78098)

def relationRow268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78088) * ((1 : F) * rho 78088) = ((1 : F) * rho 78099)

def relationRow269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78089) * ((1 : F) * rho 78089) = ((1 : F) * rho 78100)

def relationRow270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78101) * ((-1 : F) * rho 78099 + (1 : F) * rho 78100) = ((2 : F) * rho 78098)

def relationRow271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78102) * ((2 : F) + (1 : F) * rho 78099 + (-1 : F) * rho 78100) = ((1 : F) * rho 78099 + (1 : F) * rho 78100)

def relationRow272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78101 + (1 : F) * rho 78102) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097) = ((1 : F) * rho 78103)

def relationRow273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78102) * ((1 : F) * rho 78083 + (1 : F) * rho 78096) = ((1 : F) * rho 78104)

def relationRow274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78101) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097) = ((1 : F) * rho 78105)

def relationRow275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78104) * ((1 : F) * rho 78105) = ((1 : F) * rho 78106)

def relationRow276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78107) * ((1 : F) + (1 : F) * rho 78106) = ((1 : F) * rho 78104 + (1 : F) * rho 78105)

def relationRow277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78108) * ((1 : F) + (-1 : F) * rho 78106) = ((1 : F) * rho 78103 + (-1 : F) * rho 78104 + (-1 : F) * rho 78105)

def relationRow278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77834) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (1 : F) * rho 78107) = ((1 : F) * rho 78109)

def relationRow279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77834) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (1 : F) * rho 78108) = ((1 : F) * rho 78110)

def relationRow280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78101) * ((1 : F) * rho 78102) = ((1 : F) * rho 78111)

def relationRow281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78101) * ((1 : F) * rho 78101) = ((1 : F) * rho 78112)

def relationRow282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78102) * ((1 : F) * rho 78102) = ((1 : F) * rho 78113)

def relationRow283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78114) * ((-1 : F) * rho 78112 + (1 : F) * rho 78113) = ((2 : F) * rho 78111)

def relationRow284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78115) * ((2 : F) + (1 : F) * rho 78112 + (-1 : F) * rho 78113) = ((1 : F) * rho 78112 + (1 : F) * rho 78113)

def relationRow285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78114 + (1 : F) * rho 78115) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110) = ((1 : F) * rho 78116)

def relationRow286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78115) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109) = ((1 : F) * rho 78117)

def relationRow287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78114) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110) = ((1 : F) * rho 78118)

def relationRow288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78117) * ((1 : F) * rho 78118) = ((1 : F) * rho 78119)

def relationRow289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78120) * ((1 : F) + (1 : F) * rho 78119) = ((1 : F) * rho 78117 + (1 : F) * rho 78118)

def relationRow290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78121) * ((1 : F) + (-1 : F) * rho 78119) = ((1 : F) * rho 78116 + (-1 : F) * rho 78117 + (-1 : F) * rho 78118)

def relationRow291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77835) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (1 : F) * rho 78120) = ((1 : F) * rho 78122)

def relationRow292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77835) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (1 : F) * rho 78121) = ((1 : F) * rho 78123)

def relationRow293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78114) * ((1 : F) * rho 78115) = ((1 : F) * rho 78124)

def relationRow294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78114) * ((1 : F) * rho 78114) = ((1 : F) * rho 78125)

def relationRow295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78115) * ((1 : F) * rho 78115) = ((1 : F) * rho 78126)

def relationRow296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78127) * ((-1 : F) * rho 78125 + (1 : F) * rho 78126) = ((2 : F) * rho 78124)

def relationRow297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78128) * ((2 : F) + (1 : F) * rho 78125 + (-1 : F) * rho 78126) = ((1 : F) * rho 78125 + (1 : F) * rho 78126)

def relationRow298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78127 + (1 : F) * rho 78128) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123) = ((1 : F) * rho 78129)

def relationRow299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78128) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122) = ((1 : F) * rho 78130)

def relationRow300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78127) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123) = ((1 : F) * rho 78131)

def relationRow301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78130) * ((1 : F) * rho 78131) = ((1 : F) * rho 78132)

def relationRow302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78133) * ((1 : F) + (1 : F) * rho 78132) = ((1 : F) * rho 78130 + (1 : F) * rho 78131)

def relationRow303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78134) * ((1 : F) + (-1 : F) * rho 78132) = ((1 : F) * rho 78129 + (-1 : F) * rho 78130 + (-1 : F) * rho 78131)

def relationRow304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77836) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (1 : F) * rho 78133) = ((1 : F) * rho 78135)

def relationRow305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77836) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (1 : F) * rho 78134) = ((1 : F) * rho 78136)

def relationRow306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78127) * ((1 : F) * rho 78128) = ((1 : F) * rho 78137)

def relationRow307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78127) * ((1 : F) * rho 78127) = ((1 : F) * rho 78138)

def relationRow308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78128) * ((1 : F) * rho 78128) = ((1 : F) * rho 78139)

def relationRow309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78140) * ((-1 : F) * rho 78138 + (1 : F) * rho 78139) = ((2 : F) * rho 78137)

def relationRow310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78141) * ((2 : F) + (1 : F) * rho 78138 + (-1 : F) * rho 78139) = ((1 : F) * rho 78138 + (1 : F) * rho 78139)

def relationRow311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78140 + (1 : F) * rho 78141) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136) = ((1 : F) * rho 78142)

def relationRow312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78141) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135) = ((1 : F) * rho 78143)

def relationRow313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78140) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136) = ((1 : F) * rho 78144)

def relationRow314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78143) * ((1 : F) * rho 78144) = ((1 : F) * rho 78145)

def relationRow315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78146) * ((1 : F) + (1 : F) * rho 78145) = ((1 : F) * rho 78143 + (1 : F) * rho 78144)

def relationRow316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78147) * ((1 : F) + (-1 : F) * rho 78145) = ((1 : F) * rho 78142 + (-1 : F) * rho 78143 + (-1 : F) * rho 78144)

def relationRow317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77837) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (1 : F) * rho 78146) = ((1 : F) * rho 78148)

def relationRow318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77837) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (1 : F) * rho 78147) = ((1 : F) * rho 78149)

def relationRow319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78140) * ((1 : F) * rho 78141) = ((1 : F) * rho 78150)

def relationRow320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78140) * ((1 : F) * rho 78140) = ((1 : F) * rho 78151)

def relationRow321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78141) * ((1 : F) * rho 78141) = ((1 : F) * rho 78152)

def relationRow322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78153) * ((-1 : F) * rho 78151 + (1 : F) * rho 78152) = ((2 : F) * rho 78150)

def relationRow323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78154) * ((2 : F) + (1 : F) * rho 78151 + (-1 : F) * rho 78152) = ((1 : F) * rho 78151 + (1 : F) * rho 78152)

def relationRow324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78153 + (1 : F) * rho 78154) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149) = ((1 : F) * rho 78155)

def relationRow325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78154) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148) = ((1 : F) * rho 78156)

def relationRow326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78153) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149) = ((1 : F) * rho 78157)

def relationRow327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78156) * ((1 : F) * rho 78157) = ((1 : F) * rho 78158)

def relationRow328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78159) * ((1 : F) + (1 : F) * rho 78158) = ((1 : F) * rho 78156 + (1 : F) * rho 78157)

def relationRow329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78160) * ((1 : F) + (-1 : F) * rho 78158) = ((1 : F) * rho 78155 + (-1 : F) * rho 78156 + (-1 : F) * rho 78157)

def relationRow330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77838) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (1 : F) * rho 78159) = ((1 : F) * rho 78161)

def relationRow331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77838) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (1 : F) * rho 78160) = ((1 : F) * rho 78162)

def relationRow332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78153) * ((1 : F) * rho 78154) = ((1 : F) * rho 78163)

def relationRow333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78153) * ((1 : F) * rho 78153) = ((1 : F) * rho 78164)

def relationRow334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78154) * ((1 : F) * rho 78154) = ((1 : F) * rho 78165)

def relationRow335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78166) * ((-1 : F) * rho 78164 + (1 : F) * rho 78165) = ((2 : F) * rho 78163)

def relationRow336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78167) * ((2 : F) + (1 : F) * rho 78164 + (-1 : F) * rho 78165) = ((1 : F) * rho 78164 + (1 : F) * rho 78165)

def relationRow337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78166 + (1 : F) * rho 78167) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162) = ((1 : F) * rho 78168)

def relationRow338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78167) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161) = ((1 : F) * rho 78169)

def relationRow339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78166) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162) = ((1 : F) * rho 78170)

def relationRow340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78169) * ((1 : F) * rho 78170) = ((1 : F) * rho 78171)

def relationRow341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78172) * ((1 : F) + (1 : F) * rho 78171) = ((1 : F) * rho 78169 + (1 : F) * rho 78170)

def relationRow342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78173) * ((1 : F) + (-1 : F) * rho 78171) = ((1 : F) * rho 78168 + (-1 : F) * rho 78169 + (-1 : F) * rho 78170)

def relationRow343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77839) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (1 : F) * rho 78172) = ((1 : F) * rho 78174)

def relationRow344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77839) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (1 : F) * rho 78173) = ((1 : F) * rho 78175)

def relationRow345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78166) * ((1 : F) * rho 78167) = ((1 : F) * rho 78176)

def relationRow346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78166) * ((1 : F) * rho 78166) = ((1 : F) * rho 78177)

def relationRow347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78167) * ((1 : F) * rho 78167) = ((1 : F) * rho 78178)

def relationRow348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78179) * ((-1 : F) * rho 78177 + (1 : F) * rho 78178) = ((2 : F) * rho 78176)

def relationRow349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78180) * ((2 : F) + (1 : F) * rho 78177 + (-1 : F) * rho 78178) = ((1 : F) * rho 78177 + (1 : F) * rho 78178)

def relationRow350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78179 + (1 : F) * rho 78180) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175) = ((1 : F) * rho 78181)

def relationRow351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78180) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174) = ((1 : F) * rho 78182)

def relationRow352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78179) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175) = ((1 : F) * rho 78183)

def relationRow353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78182) * ((1 : F) * rho 78183) = ((1 : F) * rho 78184)

def relationRow354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78185) * ((1 : F) + (1 : F) * rho 78184) = ((1 : F) * rho 78182 + (1 : F) * rho 78183)

def relationRow355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78186) * ((1 : F) + (-1 : F) * rho 78184) = ((1 : F) * rho 78181 + (-1 : F) * rho 78182 + (-1 : F) * rho 78183)

def relationRow356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77840) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (1 : F) * rho 78185) = ((1 : F) * rho 78187)

def relationRow357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77840) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (1 : F) * rho 78186) = ((1 : F) * rho 78188)

def relationRow358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78179) * ((1 : F) * rho 78180) = ((1 : F) * rho 78189)

def relationRow359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78179) * ((1 : F) * rho 78179) = ((1 : F) * rho 78190)

def relationRow360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78180) * ((1 : F) * rho 78180) = ((1 : F) * rho 78191)

def relationRow361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78192) * ((-1 : F) * rho 78190 + (1 : F) * rho 78191) = ((2 : F) * rho 78189)

def relationRow362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78193) * ((2 : F) + (1 : F) * rho 78190 + (-1 : F) * rho 78191) = ((1 : F) * rho 78190 + (1 : F) * rho 78191)

def relationRow363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78192 + (1 : F) * rho 78193) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175 + (1 : F) * rho 78187 + (1 : F) * rho 78188) = ((1 : F) * rho 78194)

def relationRow364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78193) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174 + (1 : F) * rho 78187) = ((1 : F) * rho 78195)

def relationRow365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78192) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175 + (1 : F) * rho 78188) = ((1 : F) * rho 78196)

def relationRow366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78195) * ((1 : F) * rho 78196) = ((1 : F) * rho 78197)

def relationRow367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78198) * ((1 : F) + (1 : F) * rho 78197) = ((1 : F) * rho 78195 + (1 : F) * rho 78196)

def relationRow368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78199) * ((1 : F) + (-1 : F) * rho 78197) = ((1 : F) * rho 78194 + (-1 : F) * rho 78195 + (-1 : F) * rho 78196)

def relationRow369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77841) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (-1 : F) * rho 78187 + (1 : F) * rho 78198) = ((1 : F) * rho 78200)

def relationRow370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77841) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (-1 : F) * rho 78188 + (1 : F) * rho 78199) = ((1 : F) * rho 78201)

def relationRow371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78192) * ((1 : F) * rho 78193) = ((1 : F) * rho 78202)

def relationRow372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78192) * ((1 : F) * rho 78192) = ((1 : F) * rho 78203)

def relationRow373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78193) * ((1 : F) * rho 78193) = ((1 : F) * rho 78204)

def relationRow374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78205) * ((-1 : F) * rho 78203 + (1 : F) * rho 78204) = ((2 : F) * rho 78202)

def relationRow375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78206) * ((2 : F) + (1 : F) * rho 78203 + (-1 : F) * rho 78204) = ((1 : F) * rho 78203 + (1 : F) * rho 78204)

def relationRow376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78205 + (1 : F) * rho 78206) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175 + (1 : F) * rho 78187 + (1 : F) * rho 78188 + (1 : F) * rho 78200 + (1 : F) * rho 78201) = ((1 : F) * rho 78207)

def relationRow377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78206) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174 + (1 : F) * rho 78187 + (1 : F) * rho 78200) = ((1 : F) * rho 78208)

def relationRow378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78205) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175 + (1 : F) * rho 78188 + (1 : F) * rho 78201) = ((1 : F) * rho 78209)

def relationRow379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78208) * ((1 : F) * rho 78209) = ((1 : F) * rho 78210)

def relationRow380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78211) * ((1 : F) + (1 : F) * rho 78210) = ((1 : F) * rho 78208 + (1 : F) * rho 78209)

def relationRow381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78212) * ((1 : F) + (-1 : F) * rho 78210) = ((1 : F) * rho 78207 + (-1 : F) * rho 78208 + (-1 : F) * rho 78209)

def relationRow382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77842) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (-1 : F) * rho 78187 + (-1 : F) * rho 78200 + (1 : F) * rho 78211) = ((1 : F) * rho 78213)

def relationRow383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77842) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (-1 : F) * rho 78188 + (-1 : F) * rho 78201 + (1 : F) * rho 78212) = ((1 : F) * rho 78214)

def relationRow384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78205) * ((1 : F) * rho 78206) = ((1 : F) * rho 78215)

def relationRow385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78205) * ((1 : F) * rho 78205) = ((1 : F) * rho 78216)

def relationRow386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78206) * ((1 : F) * rho 78206) = ((1 : F) * rho 78217)

def relationRow387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78218) * ((-1 : F) * rho 78216 + (1 : F) * rho 78217) = ((2 : F) * rho 78215)

def relationRow388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78219) * ((2 : F) + (1 : F) * rho 78216 + (-1 : F) * rho 78217) = ((1 : F) * rho 78216 + (1 : F) * rho 78217)

def relationRow389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78218 + (1 : F) * rho 78219) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175 + (1 : F) * rho 78187 + (1 : F) * rho 78188 + (1 : F) * rho 78200 + (1 : F) * rho 78201 + (1 : F) * rho 78213 + (1 : F) * rho 78214) = ((1 : F) * rho 78220)

def relationRow390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78219) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174 + (1 : F) * rho 78187 + (1 : F) * rho 78200 + (1 : F) * rho 78213) = ((1 : F) * rho 78221)

def relationRow391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78218) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175 + (1 : F) * rho 78188 + (1 : F) * rho 78201 + (1 : F) * rho 78214) = ((1 : F) * rho 78222)

def relationRow392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78221) * ((1 : F) * rho 78222) = ((1 : F) * rho 78223)

def relationRow393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78224) * ((1 : F) + (1 : F) * rho 78223) = ((1 : F) * rho 78221 + (1 : F) * rho 78222)

def relationRow394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78225) * ((1 : F) + (-1 : F) * rho 78223) = ((1 : F) * rho 78220 + (-1 : F) * rho 78221 + (-1 : F) * rho 78222)

def relationRow395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77843) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (-1 : F) * rho 78187 + (-1 : F) * rho 78200 + (-1 : F) * rho 78213 + (1 : F) * rho 78224) = ((1 : F) * rho 78226)

def relationRow396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77843) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (-1 : F) * rho 78188 + (-1 : F) * rho 78201 + (-1 : F) * rho 78214 + (1 : F) * rho 78225) = ((1 : F) * rho 78227)

def relationRow397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78218) * ((1 : F) * rho 78219) = ((1 : F) * rho 78228)

def relationRow398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78218) * ((1 : F) * rho 78218) = ((1 : F) * rho 78229)

def relationRow399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78219) * ((1 : F) * rho 78219) = ((1 : F) * rho 78230)

def relationRow400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78231) * ((-1 : F) * rho 78229 + (1 : F) * rho 78230) = ((2 : F) * rho 78228)

def relationRow401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78232) * ((2 : F) + (1 : F) * rho 78229 + (-1 : F) * rho 78230) = ((1 : F) * rho 78229 + (1 : F) * rho 78230)

def relationRow402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78231 + (1 : F) * rho 78232) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175 + (1 : F) * rho 78187 + (1 : F) * rho 78188 + (1 : F) * rho 78200 + (1 : F) * rho 78201 + (1 : F) * rho 78213 + (1 : F) * rho 78214 + (1 : F) * rho 78226 + (1 : F) * rho 78227) = ((1 : F) * rho 78233)

def relationRow403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78232) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174 + (1 : F) * rho 78187 + (1 : F) * rho 78200 + (1 : F) * rho 78213 + (1 : F) * rho 78226) = ((1 : F) * rho 78234)

def relationRow404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78231) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175 + (1 : F) * rho 78188 + (1 : F) * rho 78201 + (1 : F) * rho 78214 + (1 : F) * rho 78227) = ((1 : F) * rho 78235)

def relationRow405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78234) * ((1 : F) * rho 78235) = ((1 : F) * rho 78236)

def relationRow406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78237) * ((1 : F) + (1 : F) * rho 78236) = ((1 : F) * rho 78234 + (1 : F) * rho 78235)

def relationRow407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78238) * ((1 : F) + (-1 : F) * rho 78236) = ((1 : F) * rho 78233 + (-1 : F) * rho 78234 + (-1 : F) * rho 78235)

def relationRow408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77844) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (-1 : F) * rho 78187 + (-1 : F) * rho 78200 + (-1 : F) * rho 78213 + (-1 : F) * rho 78226 + (1 : F) * rho 78237) = ((1 : F) * rho 78239)

def relationRow409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77844) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (-1 : F) * rho 78188 + (-1 : F) * rho 78201 + (-1 : F) * rho 78214 + (-1 : F) * rho 78227 + (1 : F) * rho 78238) = ((1 : F) * rho 78240)

def relationRow410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78231) * ((1 : F) * rho 78232) = ((1 : F) * rho 78241)

def relationRow411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78231) * ((1 : F) * rho 78231) = ((1 : F) * rho 78242)

def relationRow412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78232) * ((1 : F) * rho 78232) = ((1 : F) * rho 78243)

def relationRow413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78244) * ((-1 : F) * rho 78242 + (1 : F) * rho 78243) = ((2 : F) * rho 78241)

def relationRow414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78245) * ((2 : F) + (1 : F) * rho 78242 + (-1 : F) * rho 78243) = ((1 : F) * rho 78242 + (1 : F) * rho 78243)

def relationRow415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78244 + (1 : F) * rho 78245) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175 + (1 : F) * rho 78187 + (1 : F) * rho 78188 + (1 : F) * rho 78200 + (1 : F) * rho 78201 + (1 : F) * rho 78213 + (1 : F) * rho 78214 + (1 : F) * rho 78226 + (1 : F) * rho 78227 + (1 : F) * rho 78239 + (1 : F) * rho 78240) = ((1 : F) * rho 78246)

def relationRow416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78245) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174 + (1 : F) * rho 78187 + (1 : F) * rho 78200 + (1 : F) * rho 78213 + (1 : F) * rho 78226 + (1 : F) * rho 78239) = ((1 : F) * rho 78247)

def relationRow417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78244) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175 + (1 : F) * rho 78188 + (1 : F) * rho 78201 + (1 : F) * rho 78214 + (1 : F) * rho 78227 + (1 : F) * rho 78240) = ((1 : F) * rho 78248)

def relationRow418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78247) * ((1 : F) * rho 78248) = ((1 : F) * rho 78249)

def relationRow419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78250) * ((1 : F) + (1 : F) * rho 78249) = ((1 : F) * rho 78247 + (1 : F) * rho 78248)

def relationRow420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78251) * ((1 : F) + (-1 : F) * rho 78249) = ((1 : F) * rho 78246 + (-1 : F) * rho 78247 + (-1 : F) * rho 78248)

def relationRow421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77845) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (-1 : F) * rho 78187 + (-1 : F) * rho 78200 + (-1 : F) * rho 78213 + (-1 : F) * rho 78226 + (-1 : F) * rho 78239 + (1 : F) * rho 78250) = ((1 : F) * rho 78252)

def relationRow422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77845) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (-1 : F) * rho 78188 + (-1 : F) * rho 78201 + (-1 : F) * rho 78214 + (-1 : F) * rho 78227 + (-1 : F) * rho 78240 + (1 : F) * rho 78251) = ((1 : F) * rho 78253)

def relationRow423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78244) * ((1 : F) * rho 78245) = ((1 : F) * rho 78254)

def relationRow424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78244) * ((1 : F) * rho 78244) = ((1 : F) * rho 78255)

def relationRow425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78245) * ((1 : F) * rho 78245) = ((1 : F) * rho 78256)

def relationRow426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78257) * ((-1 : F) * rho 78255 + (1 : F) * rho 78256) = ((2 : F) * rho 78254)

def relationRow427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78258) * ((2 : F) + (1 : F) * rho 78255 + (-1 : F) * rho 78256) = ((1 : F) * rho 78255 + (1 : F) * rho 78256)

def relationRow428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78257 + (1 : F) * rho 78258) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175 + (1 : F) * rho 78187 + (1 : F) * rho 78188 + (1 : F) * rho 78200 + (1 : F) * rho 78201 + (1 : F) * rho 78213 + (1 : F) * rho 78214 + (1 : F) * rho 78226 + (1 : F) * rho 78227 + (1 : F) * rho 78239 + (1 : F) * rho 78240 + (1 : F) * rho 78252 + (1 : F) * rho 78253) = ((1 : F) * rho 78259)

def relationRow429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78258) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174 + (1 : F) * rho 78187 + (1 : F) * rho 78200 + (1 : F) * rho 78213 + (1 : F) * rho 78226 + (1 : F) * rho 78239 + (1 : F) * rho 78252) = ((1 : F) * rho 78260)

def relationRow430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78257) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175 + (1 : F) * rho 78188 + (1 : F) * rho 78201 + (1 : F) * rho 78214 + (1 : F) * rho 78227 + (1 : F) * rho 78240 + (1 : F) * rho 78253) = ((1 : F) * rho 78261)

def relationRow431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78260) * ((1 : F) * rho 78261) = ((1 : F) * rho 78262)

def relationRow432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78263) * ((1 : F) + (1 : F) * rho 78262) = ((1 : F) * rho 78260 + (1 : F) * rho 78261)

def relationRow433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78264) * ((1 : F) + (-1 : F) * rho 78262) = ((1 : F) * rho 78259 + (-1 : F) * rho 78260 + (-1 : F) * rho 78261)

def relationRow434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (-1 : F) * rho 78187 + (-1 : F) * rho 78200 + (-1 : F) * rho 78213 + (-1 : F) * rho 78226 + (-1 : F) * rho 78239 + (-1 : F) * rho 78252 + (1 : F) * rho 78263) = ((1 : F) * rho 78265)

def relationRow435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77846) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (-1 : F) * rho 78188 + (-1 : F) * rho 78201 + (-1 : F) * rho 78214 + (-1 : F) * rho 78227 + (-1 : F) * rho 78240 + (-1 : F) * rho 78253 + (1 : F) * rho 78264) = ((1 : F) * rho 78266)

def relationRow436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78257) * ((1 : F) * rho 78258) = ((1 : F) * rho 78267)

def relationRow437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78257) * ((1 : F) * rho 78257) = ((1 : F) * rho 78268)

def relationRow438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78258) * ((1 : F) * rho 78258) = ((1 : F) * rho 78269)

def relationRow439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78270) * ((-1 : F) * rho 78268 + (1 : F) * rho 78269) = ((2 : F) * rho 78267)

def relationRow440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78271) * ((2 : F) + (1 : F) * rho 78268 + (-1 : F) * rho 78269) = ((1 : F) * rho 78268 + (1 : F) * rho 78269)

def relationRow441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78270 + (1 : F) * rho 78271) * ((1 : F) + (1 : F) * rho 78083 + (1 : F) * rho 78084 + (1 : F) * rho 78096 + (1 : F) * rho 78097 + (1 : F) * rho 78109 + (1 : F) * rho 78110 + (1 : F) * rho 78122 + (1 : F) * rho 78123 + (1 : F) * rho 78135 + (1 : F) * rho 78136 + (1 : F) * rho 78148 + (1 : F) * rho 78149 + (1 : F) * rho 78161 + (1 : F) * rho 78162 + (1 : F) * rho 78174 + (1 : F) * rho 78175 + (1 : F) * rho 78187 + (1 : F) * rho 78188 + (1 : F) * rho 78200 + (1 : F) * rho 78201 + (1 : F) * rho 78213 + (1 : F) * rho 78214 + (1 : F) * rho 78226 + (1 : F) * rho 78227 + (1 : F) * rho 78239 + (1 : F) * rho 78240 + (1 : F) * rho 78252 + (1 : F) * rho 78253 + (1 : F) * rho 78265 + (1 : F) * rho 78266) = ((1 : F) * rho 78272)

def relationRow442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78271) * ((1 : F) * rho 78083 + (1 : F) * rho 78096 + (1 : F) * rho 78109 + (1 : F) * rho 78122 + (1 : F) * rho 78135 + (1 : F) * rho 78148 + (1 : F) * rho 78161 + (1 : F) * rho 78174 + (1 : F) * rho 78187 + (1 : F) * rho 78200 + (1 : F) * rho 78213 + (1 : F) * rho 78226 + (1 : F) * rho 78239 + (1 : F) * rho 78252 + (1 : F) * rho 78265) = ((1 : F) * rho 78273)

def relationRow443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78270) * ((1 : F) + (1 : F) * rho 78084 + (1 : F) * rho 78097 + (1 : F) * rho 78110 + (1 : F) * rho 78123 + (1 : F) * rho 78136 + (1 : F) * rho 78149 + (1 : F) * rho 78162 + (1 : F) * rho 78175 + (1 : F) * rho 78188 + (1 : F) * rho 78201 + (1 : F) * rho 78214 + (1 : F) * rho 78227 + (1 : F) * rho 78240 + (1 : F) * rho 78253 + (1 : F) * rho 78266) = ((1 : F) * rho 78274)

def relationRow444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78273) * ((1 : F) * rho 78274) = ((1 : F) * rho 78275)

def relationRow445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78276) * ((1 : F) + (1 : F) * rho 78275) = ((1 : F) * rho 78273 + (1 : F) * rho 78274)

def relationRow446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78277) * ((1 : F) + (-1 : F) * rho 78275) = ((1 : F) * rho 78272 + (-1 : F) * rho 78273 + (-1 : F) * rho 78274)

def relationRow447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77847) * ((-1 : F) * rho 78083 + (-1 : F) * rho 78096 + (-1 : F) * rho 78109 + (-1 : F) * rho 78122 + (-1 : F) * rho 78135 + (-1 : F) * rho 78148 + (-1 : F) * rho 78161 + (-1 : F) * rho 78174 + (-1 : F) * rho 78187 + (-1 : F) * rho 78200 + (-1 : F) * rho 78213 + (-1 : F) * rho 78226 + (-1 : F) * rho 78239 + (-1 : F) * rho 78252 + (-1 : F) * rho 78265 + (1 : F) * rho 78276) = ((1 : F) * rho 78278)

def relationRow448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77847) * ((-1 : F) + (-1 : F) * rho 78084 + (-1 : F) * rho 78097 + (-1 : F) * rho 78110 + (-1 : F) * rho 78123 + (-1 : F) * rho 78136 + (-1 : F) * rho 78149 + (-1 : F) * rho 78162 + (-1 : F) * rho 78175 + (-1 : F) * rho 78188 + (-1 : F) * rho 78201 + (-1 : F) * rho 78214 + (-1 : F) * rho 78227 + (-1 : F) * rho 78240 + (-1 : F) * rho 78253 + (-1 : F) * rho 78266 + (1 : F) * rho 78277) = ((1 : F) * rho 78279)

def relationRow449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78270) * ((1 : F) * rho 78271) = ((1 : F) * rho 78280)

def relationRow450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78270) * ((1 : F) * rho 78270) = ((1 : F) * rho 78281)

def relationRow451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78271) * ((1 : F) * rho 78271) = ((1 : F) * rho 78282)

def relationRow452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78283) * ((-1 : F) * rho 78281 + (1 : F) * rho 78282) = ((2 : F) * rho 78280)

def relationRow453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78284) * ((2 : F) + (1 : F) * rho 78281 + (-1 : F) * rho 78282) = ((1 : F) * rho 78281 + (1 : F) * rho 78282)

def relationRow454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78283 + (1 : F) * rho 78284) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 16⟩, ⟨(1 : F), 78084, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78285)

def relationRow455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78284) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78286)

def relationRow456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78283) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78287)

def relationRow457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78286) * ((1 : F) * rho 78287) = ((1 : F) * rho 78288)

def relationRow458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78289) * ((1 : F) + (1 : F) * rho 78288) = ((1 : F) * rho 78286 + (1 : F) * rho 78287)

def relationRow459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78290) * ((1 : F) + (-1 : F) * rho 78288) = ((1 : F) * rho 78285 + (-1 : F) * rho 78286 + (-1 : F) * rho 78287)

def relationRow460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77848) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 16⟩], residual := [((1 : F), 78289)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78291)

def relationRow461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77848) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 16⟩], residual := [((1 : F), 78290)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78292)

def relationRow462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78283) * ((1 : F) * rho 78284) = ((1 : F) * rho 78293)

def relationRow463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78283) * ((1 : F) * rho 78283) = ((1 : F) * rho 78294)

def relationRow464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78284) * ((1 : F) * rho 78284) = ((1 : F) * rho 78295)

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78296) * ((-1 : F) * rho 78294 + (1 : F) * rho 78295) = ((2 : F) * rho 78293)

def relationRow466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78297) * ((2 : F) + (1 : F) * rho 78294 + (-1 : F) * rho 78295) = ((1 : F) * rho 78294 + (1 : F) * rho 78295)

def relationRow467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78296 + (1 : F) * rho 78297) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 17⟩, ⟨(1 : F), 78084, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78298)

def relationRow468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78297) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78299)

def relationRow469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78296) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78300)

def relationRow470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78299) * ((1 : F) * rho 78300) = ((1 : F) * rho 78301)

def relationRow471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78302) * ((1 : F) + (1 : F) * rho 78301) = ((1 : F) * rho 78299 + (1 : F) * rho 78300)

def relationRow472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78303) * ((1 : F) + (-1 : F) * rho 78301) = ((1 : F) * rho 78298 + (-1 : F) * rho 78299 + (-1 : F) * rho 78300)

def relationRow473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77849) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 17⟩], residual := [((1 : F), 78302)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78304)

def relationRow474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77849) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 17⟩], residual := [((1 : F), 78303)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78305)

def relationRow475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78296) * ((1 : F) * rho 78297) = ((1 : F) * rho 78306)

def relationRow476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78296) * ((1 : F) * rho 78296) = ((1 : F) * rho 78307)

def relationRow477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78297) * ((1 : F) * rho 78297) = ((1 : F) * rho 78308)

def relationRow478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78309) * ((-1 : F) * rho 78307 + (1 : F) * rho 78308) = ((2 : F) * rho 78306)

def relationRow479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78310) * ((2 : F) + (1 : F) * rho 78307 + (-1 : F) * rho 78308) = ((1 : F) * rho 78307 + (1 : F) * rho 78308)

def relationRow480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78309 + (1 : F) * rho 78310) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 18⟩, ⟨(1 : F), 78084, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78311)

def relationRow481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78310) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78312)

def relationRow482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78309) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78313)

def relationRow483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78312) * ((1 : F) * rho 78313) = ((1 : F) * rho 78314)

def relationRow484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78315) * ((1 : F) + (1 : F) * rho 78314) = ((1 : F) * rho 78312 + (1 : F) * rho 78313)

def relationRow485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78316) * ((1 : F) + (-1 : F) * rho 78314) = ((1 : F) * rho 78311 + (-1 : F) * rho 78312 + (-1 : F) * rho 78313)

def relationRow486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77850) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 18⟩], residual := [((1 : F), 78315)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78317)

def relationRow487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77850) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 18⟩], residual := [((1 : F), 78316)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78318)

def relationRow488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78309) * ((1 : F) * rho 78310) = ((1 : F) * rho 78319)

def relationRow489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78309) * ((1 : F) * rho 78309) = ((1 : F) * rho 78320)

def relationRow490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78310) * ((1 : F) * rho 78310) = ((1 : F) * rho 78321)

def relationRow491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78322) * ((-1 : F) * rho 78320 + (1 : F) * rho 78321) = ((2 : F) * rho 78319)

def relationRow492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78323) * ((2 : F) + (1 : F) * rho 78320 + (-1 : F) * rho 78321) = ((1 : F) * rho 78320 + (1 : F) * rho 78321)

def relationRow493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78322 + (1 : F) * rho 78323) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 19⟩, ⟨(1 : F), 78084, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78324)

def relationRow494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78323) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78325)

def relationRow495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78322) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78326)

def relationRow496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78325) * ((1 : F) * rho 78326) = ((1 : F) * rho 78327)

def relationRow497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78328) * ((1 : F) + (1 : F) * rho 78327) = ((1 : F) * rho 78325 + (1 : F) * rho 78326)

def relationRow498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78329) * ((1 : F) + (-1 : F) * rho 78327) = ((1 : F) * rho 78324 + (-1 : F) * rho 78325 + (-1 : F) * rho 78326)

def relationRow499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77851) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 19⟩], residual := [((1 : F), 78328)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78330)

def relationRow500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77851) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 19⟩], residual := [((1 : F), 78329)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78331)

def relationRow501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78322) * ((1 : F) * rho 78323) = ((1 : F) * rho 78332)

def relationRow502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78322) * ((1 : F) * rho 78322) = ((1 : F) * rho 78333)

def relationRow503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78323) * ((1 : F) * rho 78323) = ((1 : F) * rho 78334)

def relationRow504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78335) * ((-1 : F) * rho 78333 + (1 : F) * rho 78334) = ((2 : F) * rho 78332)

def relationRow505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78336) * ((2 : F) + (1 : F) * rho 78333 + (-1 : F) * rho 78334) = ((1 : F) * rho 78333 + (1 : F) * rho 78334)

def relationRow506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78335 + (1 : F) * rho 78336) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 20⟩, ⟨(1 : F), 78084, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78337)

def relationRow507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78336) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78338)

def relationRow508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78335) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78339)

def relationRow509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78338) * ((1 : F) * rho 78339) = ((1 : F) * rho 78340)

def relationRow510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78341) * ((1 : F) + (1 : F) * rho 78340) = ((1 : F) * rho 78338 + (1 : F) * rho 78339)

def relationRow511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78342) * ((1 : F) + (-1 : F) * rho 78340) = ((1 : F) * rho 78337 + (-1 : F) * rho 78338 + (-1 : F) * rho 78339)

def relationRow512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77852) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 20⟩], residual := [((1 : F), 78341)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78343)

def relationRow513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77852) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 20⟩], residual := [((1 : F), 78342)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78344)

def relationRow514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78335) * ((1 : F) * rho 78336) = ((1 : F) * rho 78345)

def relationRow515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78335) * ((1 : F) * rho 78335) = ((1 : F) * rho 78346)

def relationRow516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78336) * ((1 : F) * rho 78336) = ((1 : F) * rho 78347)

def relationRow517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78348) * ((-1 : F) * rho 78346 + (1 : F) * rho 78347) = ((2 : F) * rho 78345)

def relationRow518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78349) * ((2 : F) + (1 : F) * rho 78346 + (-1 : F) * rho 78347) = ((1 : F) * rho 78346 + (1 : F) * rho 78347)

def relationRow519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78348 + (1 : F) * rho 78349) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 21⟩, ⟨(1 : F), 78084, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78350)

def relationRow520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78349) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78351)

def relationRow521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78348) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78352)

def relationRow522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78351) * ((1 : F) * rho 78352) = ((1 : F) * rho 78353)

def relationRow523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78354) * ((1 : F) + (1 : F) * rho 78353) = ((1 : F) * rho 78351 + (1 : F) * rho 78352)

def relationRow524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78355) * ((1 : F) + (-1 : F) * rho 78353) = ((1 : F) * rho 78350 + (-1 : F) * rho 78351 + (-1 : F) * rho 78352)

def relationRow525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77853) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 21⟩], residual := [((1 : F), 78354)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78356)

def relationRow526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77853) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 21⟩], residual := [((1 : F), 78355)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78357)

def relationRow527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78348) * ((1 : F) * rho 78349) = ((1 : F) * rho 78358)

def relationRow528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78348) * ((1 : F) * rho 78348) = ((1 : F) * rho 78359)

def relationRow529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78349) * ((1 : F) * rho 78349) = ((1 : F) * rho 78360)

def relationRow530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78361) * ((-1 : F) * rho 78359 + (1 : F) * rho 78360) = ((2 : F) * rho 78358)

def relationRow531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78362) * ((2 : F) + (1 : F) * rho 78359 + (-1 : F) * rho 78360) = ((1 : F) * rho 78359 + (1 : F) * rho 78360)

def relationRow532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78361 + (1 : F) * rho 78362) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 22⟩, ⟨(1 : F), 78084, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78363)

def relationRow533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78362) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78364)

def relationRow534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78361) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78365)

def relationRow535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78364) * ((1 : F) * rho 78365) = ((1 : F) * rho 78366)

def relationRow536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78367) * ((1 : F) + (1 : F) * rho 78366) = ((1 : F) * rho 78364 + (1 : F) * rho 78365)

def relationRow537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78368) * ((1 : F) + (-1 : F) * rho 78366) = ((1 : F) * rho 78363 + (-1 : F) * rho 78364 + (-1 : F) * rho 78365)

def relationRow538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77854) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 22⟩], residual := [((1 : F), 78367)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78369)

def relationRow539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77854) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 22⟩], residual := [((1 : F), 78368)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78370)

def relationRow540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78361) * ((1 : F) * rho 78362) = ((1 : F) * rho 78371)

def relationRow541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78361) * ((1 : F) * rho 78361) = ((1 : F) * rho 78372)

def relationRow542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78362) * ((1 : F) * rho 78362) = ((1 : F) * rho 78373)

def relationRow543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78374) * ((-1 : F) * rho 78372 + (1 : F) * rho 78373) = ((2 : F) * rho 78371)

def relationRow544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78375) * ((2 : F) + (1 : F) * rho 78372 + (-1 : F) * rho 78373) = ((1 : F) * rho 78372 + (1 : F) * rho 78373)

def relationRow545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78374 + (1 : F) * rho 78375) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 23⟩, ⟨(1 : F), 78084, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78376)

def relationRow546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78375) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78377)

def relationRow547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78374) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78378)

def relationRow548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78377) * ((1 : F) * rho 78378) = ((1 : F) * rho 78379)

def relationRow549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78380) * ((1 : F) + (1 : F) * rho 78379) = ((1 : F) * rho 78377 + (1 : F) * rho 78378)

def relationRow550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78381) * ((1 : F) + (-1 : F) * rho 78379) = ((1 : F) * rho 78376 + (-1 : F) * rho 78377 + (-1 : F) * rho 78378)

def relationRow551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77855) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 23⟩], residual := [((1 : F), 78380)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78382)

def relationRow552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77855) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 23⟩], residual := [((1 : F), 78381)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78383)

def relationRow553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78374) * ((1 : F) * rho 78375) = ((1 : F) * rho 78384)

def relationRow554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78374) * ((1 : F) * rho 78374) = ((1 : F) * rho 78385)

def relationRow555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78375) * ((1 : F) * rho 78375) = ((1 : F) * rho 78386)

def relationRow556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78387) * ((-1 : F) * rho 78385 + (1 : F) * rho 78386) = ((2 : F) * rho 78384)

def relationRow557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78388) * ((2 : F) + (1 : F) * rho 78385 + (-1 : F) * rho 78386) = ((1 : F) * rho 78385 + (1 : F) * rho 78386)

def relationRow558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78387 + (1 : F) * rho 78388) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 24⟩, ⟨(1 : F), 78084, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78389)

def relationRow559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78388) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78390)

def relationRow560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78387) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78391)

def relationRow561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78390) * ((1 : F) * rho 78391) = ((1 : F) * rho 78392)

def relationRow562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78393) * ((1 : F) + (1 : F) * rho 78392) = ((1 : F) * rho 78390 + (1 : F) * rho 78391)

def relationRow563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78394) * ((1 : F) + (-1 : F) * rho 78392) = ((1 : F) * rho 78389 + (-1 : F) * rho 78390 + (-1 : F) * rho 78391)

def relationRow564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77856) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 24⟩], residual := [((1 : F), 78393)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78395)

def relationRow565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77856) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 24⟩], residual := [((1 : F), 78394)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78396)

def relationRow566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78387) * ((1 : F) * rho 78388) = ((1 : F) * rho 78397)

def relationRow567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78387) * ((1 : F) * rho 78387) = ((1 : F) * rho 78398)

def relationRow568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78388) * ((1 : F) * rho 78388) = ((1 : F) * rho 78399)

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78400) * ((-1 : F) * rho 78398 + (1 : F) * rho 78399) = ((2 : F) * rho 78397)

def relationRow570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78401) * ((2 : F) + (1 : F) * rho 78398 + (-1 : F) * rho 78399) = ((1 : F) * rho 78398 + (1 : F) * rho 78399)

def relationRow571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78400 + (1 : F) * rho 78401) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 25⟩, ⟨(1 : F), 78084, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78402)

def relationRow572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78401) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78403)

def relationRow573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78400) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78404)

def relationRow574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78403) * ((1 : F) * rho 78404) = ((1 : F) * rho 78405)

def relationRow575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78406) * ((1 : F) + (1 : F) * rho 78405) = ((1 : F) * rho 78403 + (1 : F) * rho 78404)

def relationRow576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78407) * ((1 : F) + (-1 : F) * rho 78405) = ((1 : F) * rho 78402 + (-1 : F) * rho 78403 + (-1 : F) * rho 78404)

def relationRow577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77857) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 25⟩], residual := [((1 : F), 78406)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78408)

def relationRow578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77857) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 25⟩], residual := [((1 : F), 78407)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78409)

def relationRow579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78400) * ((1 : F) * rho 78401) = ((1 : F) * rho 78410)

def relationRow580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78400) * ((1 : F) * rho 78400) = ((1 : F) * rho 78411)

def relationRow581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78401) * ((1 : F) * rho 78401) = ((1 : F) * rho 78412)

def relationRow582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78413) * ((-1 : F) * rho 78411 + (1 : F) * rho 78412) = ((2 : F) * rho 78410)

def relationRow583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78414) * ((2 : F) + (1 : F) * rho 78411 + (-1 : F) * rho 78412) = ((1 : F) * rho 78411 + (1 : F) * rho 78412)

def relationRow584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78413 + (1 : F) * rho 78414) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 26⟩, ⟨(1 : F), 78084, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78415)

def relationRow585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78414) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78416)

def relationRow586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78413) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78417)

def relationRow587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78416) * ((1 : F) * rho 78417) = ((1 : F) * rho 78418)

def relationRow588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78419) * ((1 : F) + (1 : F) * rho 78418) = ((1 : F) * rho 78416 + (1 : F) * rho 78417)

def relationRow589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78420) * ((1 : F) + (-1 : F) * rho 78418) = ((1 : F) * rho 78415 + (-1 : F) * rho 78416 + (-1 : F) * rho 78417)

def relationRow590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77858) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 26⟩], residual := [((1 : F), 78419)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78421)

def relationRow591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77858) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 26⟩], residual := [((1 : F), 78420)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78422)

def relationRow592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78413) * ((1 : F) * rho 78414) = ((1 : F) * rho 78423)

def relationRow593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78413) * ((1 : F) * rho 78413) = ((1 : F) * rho 78424)

def relationRow594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78414) * ((1 : F) * rho 78414) = ((1 : F) * rho 78425)

def relationRow595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78426) * ((-1 : F) * rho 78424 + (1 : F) * rho 78425) = ((2 : F) * rho 78423)

def relationRow596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78427) * ((2 : F) + (1 : F) * rho 78424 + (-1 : F) * rho 78425) = ((1 : F) * rho 78424 + (1 : F) * rho 78425)

def relationRow597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78426 + (1 : F) * rho 78427) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 27⟩, ⟨(1 : F), 78084, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78428)

def relationRow598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78427) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78429)

def relationRow599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78426) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78430)

def relationRow600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78429) * ((1 : F) * rho 78430) = ((1 : F) * rho 78431)

def relationRow601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78432) * ((1 : F) + (1 : F) * rho 78431) = ((1 : F) * rho 78429 + (1 : F) * rho 78430)

def relationRow602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78433) * ((1 : F) + (-1 : F) * rho 78431) = ((1 : F) * rho 78428 + (-1 : F) * rho 78429 + (-1 : F) * rho 78430)

def relationRow603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 27⟩], residual := [((1 : F), 78432)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78434)

def relationRow604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77859) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 27⟩], residual := [((1 : F), 78433)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78435)

def relationRow605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78426) * ((1 : F) * rho 78427) = ((1 : F) * rho 78436)

def relationRow606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78426) * ((1 : F) * rho 78426) = ((1 : F) * rho 78437)

def relationRow607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78427) * ((1 : F) * rho 78427) = ((1 : F) * rho 78438)

def relationRow608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78439) * ((-1 : F) * rho 78437 + (1 : F) * rho 78438) = ((2 : F) * rho 78436)

def relationRow609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78440) * ((2 : F) + (1 : F) * rho 78437 + (-1 : F) * rho 78438) = ((1 : F) * rho 78437 + (1 : F) * rho 78438)

def relationRow610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78439 + (1 : F) * rho 78440) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 28⟩, ⟨(1 : F), 78084, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78441)

def relationRow611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78440) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78442)

def relationRow612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78439) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78443)

def relationRow613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78442) * ((1 : F) * rho 78443) = ((1 : F) * rho 78444)

def relationRow614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78445) * ((1 : F) + (1 : F) * rho 78444) = ((1 : F) * rho 78442 + (1 : F) * rho 78443)

def relationRow615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78446) * ((1 : F) + (-1 : F) * rho 78444) = ((1 : F) * rho 78441 + (-1 : F) * rho 78442 + (-1 : F) * rho 78443)

def relationRow616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77860) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 28⟩], residual := [((1 : F), 78445)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78447)

def relationRow617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77860) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 28⟩], residual := [((1 : F), 78446)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78448)

def relationRow618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78439) * ((1 : F) * rho 78440) = ((1 : F) * rho 78449)

def relationRow619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78439) * ((1 : F) * rho 78439) = ((1 : F) * rho 78450)

def relationRow620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78440) * ((1 : F) * rho 78440) = ((1 : F) * rho 78451)

def relationRow621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78452) * ((-1 : F) * rho 78450 + (1 : F) * rho 78451) = ((2 : F) * rho 78449)

def relationRow622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78453) * ((2 : F) + (1 : F) * rho 78450 + (-1 : F) * rho 78451) = ((1 : F) * rho 78450 + (1 : F) * rho 78451)

def relationRow623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78452 + (1 : F) * rho 78453) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 29⟩, ⟨(1 : F), 78084, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78454)

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78453) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78455)

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78452) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78456)

def relationRow626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78455) * ((1 : F) * rho 78456) = ((1 : F) * rho 78457)

def relationRow627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78458) * ((1 : F) + (1 : F) * rho 78457) = ((1 : F) * rho 78455 + (1 : F) * rho 78456)

def relationRow628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78459) * ((1 : F) + (-1 : F) * rho 78457) = ((1 : F) * rho 78454 + (-1 : F) * rho 78455 + (-1 : F) * rho 78456)

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77861) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 29⟩], residual := [((1 : F), 78458)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78460)

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77861) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 29⟩], residual := [((1 : F), 78459)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78461)

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78452) * ((1 : F) * rho 78453) = ((1 : F) * rho 78462)

def relationRow632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78452) * ((1 : F) * rho 78452) = ((1 : F) * rho 78463)

def relationRow633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78453) * ((1 : F) * rho 78453) = ((1 : F) * rho 78464)

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78465) * ((-1 : F) * rho 78463 + (1 : F) * rho 78464) = ((2 : F) * rho 78462)

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78466) * ((2 : F) + (1 : F) * rho 78463 + (-1 : F) * rho 78464) = ((1 : F) * rho 78463 + (1 : F) * rho 78464)

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78465 + (1 : F) * rho 78466) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 30⟩, ⟨(1 : F), 78084, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78467)

def relationRow637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78466) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78468)

def relationRow638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78465) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78469)

def relationRow639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78468) * ((1 : F) * rho 78469) = ((1 : F) * rho 78470)

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78471) * ((1 : F) + (1 : F) * rho 78470) = ((1 : F) * rho 78468 + (1 : F) * rho 78469)

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78472) * ((1 : F) + (-1 : F) * rho 78470) = ((1 : F) * rho 78467 + (-1 : F) * rho 78468 + (-1 : F) * rho 78469)

def relationRow642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77862) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 30⟩], residual := [((1 : F), 78471)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78473)

def relationRow643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77862) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 30⟩], residual := [((1 : F), 78472)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78474)

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78465) * ((1 : F) * rho 78466) = ((1 : F) * rho 78475)

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78465) * ((1 : F) * rho 78465) = ((1 : F) * rho 78476)

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78466) * ((1 : F) * rho 78466) = ((1 : F) * rho 78477)

def relationRow647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78478) * ((-1 : F) * rho 78476 + (1 : F) * rho 78477) = ((2 : F) * rho 78475)

def relationRow648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78479) * ((2 : F) + (1 : F) * rho 78476 + (-1 : F) * rho 78477) = ((1 : F) * rho 78476 + (1 : F) * rho 78477)

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78478 + (1 : F) * rho 78479) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 31⟩, ⟨(1 : F), 78084, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78480)

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78479) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78481)

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78478) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78482)

def relationRow652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78481) * ((1 : F) * rho 78482) = ((1 : F) * rho 78483)

def relationRow653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78484) * ((1 : F) + (1 : F) * rho 78483) = ((1 : F) * rho 78481 + (1 : F) * rho 78482)

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78485) * ((1 : F) + (-1 : F) * rho 78483) = ((1 : F) * rho 78480 + (-1 : F) * rho 78481 + (-1 : F) * rho 78482)

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77863) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 31⟩], residual := [((1 : F), 78484)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78486)

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77863) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 31⟩], residual := [((1 : F), 78485)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78487)

def relationRow657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78478) * ((1 : F) * rho 78479) = ((1 : F) * rho 78488)

def relationRow658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78478) * ((1 : F) * rho 78478) = ((1 : F) * rho 78489)

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78479) * ((1 : F) * rho 78479) = ((1 : F) * rho 78490)

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78491) * ((-1 : F) * rho 78489 + (1 : F) * rho 78490) = ((2 : F) * rho 78488)

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78492) * ((2 : F) + (1 : F) * rho 78489 + (-1 : F) * rho 78490) = ((1 : F) * rho 78489 + (1 : F) * rho 78490)

def relationRow662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78491 + (1 : F) * rho 78492) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 32⟩, ⟨(1 : F), 78084, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78493)

def relationRow663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78492) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78494)

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78491) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78495)

def relationRow665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78494) * ((1 : F) * rho 78495) = ((1 : F) * rho 78496)

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78497) * ((1 : F) + (1 : F) * rho 78496) = ((1 : F) * rho 78494 + (1 : F) * rho 78495)

def relationRow667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78498) * ((1 : F) + (-1 : F) * rho 78496) = ((1 : F) * rho 78493 + (-1 : F) * rho 78494 + (-1 : F) * rho 78495)

def relationRow668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77864) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 32⟩], residual := [((1 : F), 78497)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78499)

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77864) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 32⟩], residual := [((1 : F), 78498)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78500)

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78491) * ((1 : F) * rho 78492) = ((1 : F) * rho 78501)

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78491) * ((1 : F) * rho 78491) = ((1 : F) * rho 78502)

def relationRow672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78492) * ((1 : F) * rho 78492) = ((1 : F) * rho 78503)

def relationRow673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78504) * ((-1 : F) * rho 78502 + (1 : F) * rho 78503) = ((2 : F) * rho 78501)

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78505) * ((2 : F) + (1 : F) * rho 78502 + (-1 : F) * rho 78503) = ((1 : F) * rho 78502 + (1 : F) * rho 78503)

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78504 + (1 : F) * rho 78505) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 33⟩, ⟨(1 : F), 78084, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78506)

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78505) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78507)

def relationRow677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78504) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78508)

def relationRow678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78507) * ((1 : F) * rho 78508) = ((1 : F) * rho 78509)

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78510) * ((1 : F) + (1 : F) * rho 78509) = ((1 : F) * rho 78507 + (1 : F) * rho 78508)

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78511) * ((1 : F) + (-1 : F) * rho 78509) = ((1 : F) * rho 78506 + (-1 : F) * rho 78507 + (-1 : F) * rho 78508)

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77865) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 33⟩], residual := [((1 : F), 78510)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78512)

def relationRow682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77865) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 33⟩], residual := [((1 : F), 78511)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78513)

def relationRow683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78504) * ((1 : F) * rho 78505) = ((1 : F) * rho 78514)

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78504) * ((1 : F) * rho 78504) = ((1 : F) * rho 78515)

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78505) * ((1 : F) * rho 78505) = ((1 : F) * rho 78516)

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78517) * ((-1 : F) * rho 78515 + (1 : F) * rho 78516) = ((2 : F) * rho 78514)

def relationRow687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78518) * ((2 : F) + (1 : F) * rho 78515 + (-1 : F) * rho 78516) = ((1 : F) * rho 78515 + (1 : F) * rho 78516)

def relationRow688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78517 + (1 : F) * rho 78518) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 34⟩, ⟨(1 : F), 78084, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78519)

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78518) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78520)

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78517) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78521)

def relationRow691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78520) * ((1 : F) * rho 78521) = ((1 : F) * rho 78522)

def relationRow692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78523) * ((1 : F) + (1 : F) * rho 78522) = ((1 : F) * rho 78520 + (1 : F) * rho 78521)

def relationRow693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78524) * ((1 : F) + (-1 : F) * rho 78522) = ((1 : F) * rho 78519 + (-1 : F) * rho 78520 + (-1 : F) * rho 78521)

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77866) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 34⟩], residual := [((1 : F), 78523)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78525)

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77866) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 34⟩], residual := [((1 : F), 78524)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78526)

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78517) * ((1 : F) * rho 78518) = ((1 : F) * rho 78527)

def relationRow697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78517) * ((1 : F) * rho 78517) = ((1 : F) * rho 78528)

def relationRow698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78518) * ((1 : F) * rho 78518) = ((1 : F) * rho 78529)

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78530) * ((-1 : F) * rho 78528 + (1 : F) * rho 78529) = ((2 : F) * rho 78527)

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78531) * ((2 : F) + (1 : F) * rho 78528 + (-1 : F) * rho 78529) = ((1 : F) * rho 78528 + (1 : F) * rho 78529)

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78530 + (1 : F) * rho 78531) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 35⟩, ⟨(1 : F), 78084, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78532)

def relationRow702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78531) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78533)

def relationRow703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78530) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78534)

def relationRow704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78533) * ((1 : F) * rho 78534) = ((1 : F) * rho 78535)

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78536) * ((1 : F) + (1 : F) * rho 78535) = ((1 : F) * rho 78533 + (1 : F) * rho 78534)

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78537) * ((1 : F) + (-1 : F) * rho 78535) = ((1 : F) * rho 78532 + (-1 : F) * rho 78533 + (-1 : F) * rho 78534)

def relationRow707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77867) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 35⟩], residual := [((1 : F), 78536)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78538)

def relationRow708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77867) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 35⟩], residual := [((1 : F), 78537)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78539)

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78530) * ((1 : F) * rho 78531) = ((1 : F) * rho 78540)

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78530) * ((1 : F) * rho 78530) = ((1 : F) * rho 78541)

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78531) * ((1 : F) * rho 78531) = ((1 : F) * rho 78542)

def relationRow712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78543) * ((-1 : F) * rho 78541 + (1 : F) * rho 78542) = ((2 : F) * rho 78540)

def relationRow713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78544) * ((2 : F) + (1 : F) * rho 78541 + (-1 : F) * rho 78542) = ((1 : F) * rho 78541 + (1 : F) * rho 78542)

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78543 + (1 : F) * rho 78544) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 36⟩, ⟨(1 : F), 78084, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78545)

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78544) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78546)

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78543) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78547)

def relationRow717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78546) * ((1 : F) * rho 78547) = ((1 : F) * rho 78548)

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78549) * ((1 : F) + (1 : F) * rho 78548) = ((1 : F) * rho 78546 + (1 : F) * rho 78547)

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78550) * ((1 : F) + (-1 : F) * rho 78548) = ((1 : F) * rho 78545 + (-1 : F) * rho 78546 + (-1 : F) * rho 78547)

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77868) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 36⟩], residual := [((1 : F), 78549)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78551)

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77868) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 36⟩], residual := [((1 : F), 78550)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78552)

def relationRow722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78543) * ((1 : F) * rho 78544) = ((1 : F) * rho 78553)

def relationRow723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78543) * ((1 : F) * rho 78543) = ((1 : F) * rho 78554)

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78544) * ((1 : F) * rho 78544) = ((1 : F) * rho 78555)

def relationRow725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78556) * ((-1 : F) * rho 78554 + (1 : F) * rho 78555) = ((2 : F) * rho 78553)

def relationRow726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78557) * ((2 : F) + (1 : F) * rho 78554 + (-1 : F) * rho 78555) = ((1 : F) * rho 78554 + (1 : F) * rho 78555)

def relationRow727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78556 + (1 : F) * rho 78557) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 37⟩, ⟨(1 : F), 78084, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78558)

def relationRow728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78557) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78559)

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78556) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78560)

def relationRow730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78559) * ((1 : F) * rho 78560) = ((1 : F) * rho 78561)

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78562) * ((1 : F) + (1 : F) * rho 78561) = ((1 : F) * rho 78559 + (1 : F) * rho 78560)

def relationRow732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78563) * ((1 : F) + (-1 : F) * rho 78561) = ((1 : F) * rho 78558 + (-1 : F) * rho 78559 + (-1 : F) * rho 78560)

def relationRow733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77869) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 37⟩], residual := [((1 : F), 78562)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78564)

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77869) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 37⟩], residual := [((1 : F), 78563)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78565)

def relationRow735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78556) * ((1 : F) * rho 78557) = ((1 : F) * rho 78566)

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78556) * ((1 : F) * rho 78556) = ((1 : F) * rho 78567)

def relationRow737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78557) * ((1 : F) * rho 78557) = ((1 : F) * rho 78568)

def relationRow738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78569) * ((-1 : F) * rho 78567 + (1 : F) * rho 78568) = ((2 : F) * rho 78566)

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78570) * ((2 : F) + (1 : F) * rho 78567 + (-1 : F) * rho 78568) = ((1 : F) * rho 78567 + (1 : F) * rho 78568)

def relationRow740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78569 + (1 : F) * rho 78570) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 38⟩, ⟨(1 : F), 78084, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78571)

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78570) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78572)

def relationRow742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78569) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78573)

def relationRow743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78572) * ((1 : F) * rho 78573) = ((1 : F) * rho 78574)

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78575) * ((1 : F) + (1 : F) * rho 78574) = ((1 : F) * rho 78572 + (1 : F) * rho 78573)

def relationRow745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78576) * ((1 : F) + (-1 : F) * rho 78574) = ((1 : F) * rho 78571 + (-1 : F) * rho 78572 + (-1 : F) * rho 78573)

def relationRow746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77870) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 38⟩], residual := [((1 : F), 78575)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78577)

def relationRow747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77870) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 38⟩], residual := [((1 : F), 78576)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78578)

def relationRow748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78569) * ((1 : F) * rho 78570) = ((1 : F) * rho 78579)

def relationRow749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78569) * ((1 : F) * rho 78569) = ((1 : F) * rho 78580)

def relationRow750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78570) * ((1 : F) * rho 78570) = ((1 : F) * rho 78581)

def relationRow751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78582) * ((-1 : F) * rho 78580 + (1 : F) * rho 78581) = ((2 : F) * rho 78579)

def relationRow752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78583) * ((2 : F) + (1 : F) * rho 78580 + (-1 : F) * rho 78581) = ((1 : F) * rho 78580 + (1 : F) * rho 78581)

def relationRow753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78582 + (1 : F) * rho 78583) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 39⟩, ⟨(1 : F), 78084, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78584)

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78583) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78585)

def relationRow755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78582) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78586)

def relationRow756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78585) * ((1 : F) * rho 78586) = ((1 : F) * rho 78587)

def relationRow757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78588) * ((1 : F) + (1 : F) * rho 78587) = ((1 : F) * rho 78585 + (1 : F) * rho 78586)

def relationRow758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78589) * ((1 : F) + (-1 : F) * rho 78587) = ((1 : F) * rho 78584 + (-1 : F) * rho 78585 + (-1 : F) * rho 78586)

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77871) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 39⟩], residual := [((1 : F), 78588)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78590)

def relationRow760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77871) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 39⟩], residual := [((1 : F), 78589)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78591)

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78582) * ((1 : F) * rho 78583) = ((1 : F) * rho 78592)

def relationRow762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78582) * ((1 : F) * rho 78582) = ((1 : F) * rho 78593)

def relationRow763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78583) * ((1 : F) * rho 78583) = ((1 : F) * rho 78594)

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78595) * ((-1 : F) * rho 78593 + (1 : F) * rho 78594) = ((2 : F) * rho 78592)

def relationRow765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78596) * ((2 : F) + (1 : F) * rho 78593 + (-1 : F) * rho 78594) = ((1 : F) * rho 78593 + (1 : F) * rho 78594)

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78595 + (1 : F) * rho 78596) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 40⟩, ⟨(1 : F), 78084, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78597)

def relationRow767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78596) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78598)

def relationRow768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78595) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78599)

def relationRow769 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78598) * ((1 : F) * rho 78599) = ((1 : F) * rho 78600)

def relationRow770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78601) * ((1 : F) + (1 : F) * rho 78600) = ((1 : F) * rho 78598 + (1 : F) * rho 78599)

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78602) * ((1 : F) + (-1 : F) * rho 78600) = ((1 : F) * rho 78597 + (-1 : F) * rho 78598 + (-1 : F) * rho 78599)

def relationRow772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 40⟩], residual := [((1 : F), 78601)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78603)

def relationRow773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77872) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 40⟩], residual := [((1 : F), 78602)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78604)

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78595) * ((1 : F) * rho 78596) = ((1 : F) * rho 78605)

def relationRow775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78595) * ((1 : F) * rho 78595) = ((1 : F) * rho 78606)

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78596) * ((1 : F) * rho 78596) = ((1 : F) * rho 78607)

def relationRow777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78608) * ((-1 : F) * rho 78606 + (1 : F) * rho 78607) = ((2 : F) * rho 78605)

def relationRow778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78609) * ((2 : F) + (1 : F) * rho 78606 + (-1 : F) * rho 78607) = ((1 : F) * rho 78606 + (1 : F) * rho 78607)

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78608 + (1 : F) * rho 78609) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 41⟩, ⟨(1 : F), 78084, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78610)

def relationRow780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78609) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78611)

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78608) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78612)

def relationRow782 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78611) * ((1 : F) * rho 78612) = ((1 : F) * rho 78613)

def relationRow783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78614) * ((1 : F) + (1 : F) * rho 78613) = ((1 : F) * rho 78611 + (1 : F) * rho 78612)

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78615) * ((1 : F) + (-1 : F) * rho 78613) = ((1 : F) * rho 78610 + (-1 : F) * rho 78611 + (-1 : F) * rho 78612)

def relationRow785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77873) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 41⟩], residual := [((1 : F), 78614)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78616)

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77873) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 41⟩], residual := [((1 : F), 78615)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78617)

def relationRow787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78608) * ((1 : F) * rho 78609) = ((1 : F) * rho 78618)

def relationRow788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78608) * ((1 : F) * rho 78608) = ((1 : F) * rho 78619)

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78609) * ((1 : F) * rho 78609) = ((1 : F) * rho 78620)

def relationRow790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78621) * ((-1 : F) * rho 78619 + (1 : F) * rho 78620) = ((2 : F) * rho 78618)

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78622) * ((2 : F) + (1 : F) * rho 78619 + (-1 : F) * rho 78620) = ((1 : F) * rho 78619 + (1 : F) * rho 78620)

def relationRow792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78621 + (1 : F) * rho 78622) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 42⟩, ⟨(1 : F), 78084, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78623)

def relationRow793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78622) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78624)

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78621) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78625)

def relationRow795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78624) * ((1 : F) * rho 78625) = ((1 : F) * rho 78626)

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78627) * ((1 : F) + (1 : F) * rho 78626) = ((1 : F) * rho 78624 + (1 : F) * rho 78625)

def relationRow797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78628) * ((1 : F) + (-1 : F) * rho 78626) = ((1 : F) * rho 78623 + (-1 : F) * rho 78624 + (-1 : F) * rho 78625)

def relationRow798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77874) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 42⟩], residual := [((1 : F), 78627)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78629)

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77874) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 42⟩], residual := [((1 : F), 78628)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78630)

def relationRow800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78621) * ((1 : F) * rho 78622) = ((1 : F) * rho 78631)

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78621) * ((1 : F) * rho 78621) = ((1 : F) * rho 78632)

def relationRow802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78622) * ((1 : F) * rho 78622) = ((1 : F) * rho 78633)

def relationRow803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78634) * ((-1 : F) * rho 78632 + (1 : F) * rho 78633) = ((2 : F) * rho 78631)

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78635) * ((2 : F) + (1 : F) * rho 78632 + (-1 : F) * rho 78633) = ((1 : F) * rho 78632 + (1 : F) * rho 78633)

def relationRow805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78634 + (1 : F) * rho 78635) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 43⟩, ⟨(1 : F), 78084, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78636)

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78635) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78637)

def relationRow807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78634) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78638)

def relationRow808 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78637) * ((1 : F) * rho 78638) = ((1 : F) * rho 78639)

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78640) * ((1 : F) + (1 : F) * rho 78639) = ((1 : F) * rho 78637 + (1 : F) * rho 78638)

def relationRow810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78641) * ((1 : F) + (-1 : F) * rho 78639) = ((1 : F) * rho 78636 + (-1 : F) * rho 78637 + (-1 : F) * rho 78638)

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77875) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 43⟩], residual := [((1 : F), 78640)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78642)

def relationRow812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77875) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 43⟩], residual := [((1 : F), 78641)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78643)

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78634) * ((1 : F) * rho 78635) = ((1 : F) * rho 78644)

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78634) * ((1 : F) * rho 78634) = ((1 : F) * rho 78645)

def relationRow815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78635) * ((1 : F) * rho 78635) = ((1 : F) * rho 78646)

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78647) * ((-1 : F) * rho 78645 + (1 : F) * rho 78646) = ((2 : F) * rho 78644)

def relationRow817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78648) * ((2 : F) + (1 : F) * rho 78645 + (-1 : F) * rho 78646) = ((1 : F) * rho 78645 + (1 : F) * rho 78646)

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78647 + (1 : F) * rho 78648) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 44⟩, ⟨(1 : F), 78084, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78649)

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78648) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78650)

def relationRow820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78647) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78651)

def relationRow821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78650) * ((1 : F) * rho 78651) = ((1 : F) * rho 78652)

def relationRow822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78653) * ((1 : F) + (1 : F) * rho 78652) = ((1 : F) * rho 78650 + (1 : F) * rho 78651)

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78654) * ((1 : F) + (-1 : F) * rho 78652) = ((1 : F) * rho 78649 + (-1 : F) * rho 78650 + (-1 : F) * rho 78651)

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77876) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 44⟩], residual := [((1 : F), 78653)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78655)

def relationRow825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77876) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 44⟩], residual := [((1 : F), 78654)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78656)

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78647) * ((1 : F) * rho 78648) = ((1 : F) * rho 78657)

def relationRow827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78647) * ((1 : F) * rho 78647) = ((1 : F) * rho 78658)

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78648) * ((1 : F) * rho 78648) = ((1 : F) * rho 78659)

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78660) * ((-1 : F) * rho 78658 + (1 : F) * rho 78659) = ((2 : F) * rho 78657)

def relationRow830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78661) * ((2 : F) + (1 : F) * rho 78658 + (-1 : F) * rho 78659) = ((1 : F) * rho 78658 + (1 : F) * rho 78659)

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78660 + (1 : F) * rho 78661) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 45⟩, ⟨(1 : F), 78084, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78662)

def relationRow832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78661) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78663)

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78660) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78664)

def relationRow834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78663) * ((1 : F) * rho 78664) = ((1 : F) * rho 78665)

def relationRow835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78666) * ((1 : F) + (1 : F) * rho 78665) = ((1 : F) * rho 78663 + (1 : F) * rho 78664)

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78667) * ((1 : F) + (-1 : F) * rho 78665) = ((1 : F) * rho 78662 + (-1 : F) * rho 78663 + (-1 : F) * rho 78664)

def relationRow837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77877) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 45⟩], residual := [((1 : F), 78666)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78668)

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77877) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 45⟩], residual := [((1 : F), 78667)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78669)

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78660) * ((1 : F) * rho 78661) = ((1 : F) * rho 78670)

def relationRow840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78660) * ((1 : F) * rho 78660) = ((1 : F) * rho 78671)

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78661) * ((1 : F) * rho 78661) = ((1 : F) * rho 78672)

def relationRow842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78673) * ((-1 : F) * rho 78671 + (1 : F) * rho 78672) = ((2 : F) * rho 78670)

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78674) * ((2 : F) + (1 : F) * rho 78671 + (-1 : F) * rho 78672) = ((1 : F) * rho 78671 + (1 : F) * rho 78672)

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78673 + (1 : F) * rho 78674) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 46⟩, ⟨(1 : F), 78084, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78675)

def relationRow845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78674) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78676)

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78673) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78677)

def relationRow847 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78676) * ((1 : F) * rho 78677) = ((1 : F) * rho 78678)

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78679) * ((1 : F) + (1 : F) * rho 78678) = ((1 : F) * rho 78676 + (1 : F) * rho 78677)

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78680) * ((1 : F) + (-1 : F) * rho 78678) = ((1 : F) * rho 78675 + (-1 : F) * rho 78676 + (-1 : F) * rho 78677)

def relationRow850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77878) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 46⟩], residual := [((1 : F), 78679)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78681)

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77878) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 46⟩], residual := [((1 : F), 78680)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78682)

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78673) * ((1 : F) * rho 78674) = ((1 : F) * rho 78683)

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78673) * ((1 : F) * rho 78673) = ((1 : F) * rho 78684)

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78674) * ((1 : F) * rho 78674) = ((1 : F) * rho 78685)

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78686) * ((-1 : F) * rho 78684 + (1 : F) * rho 78685) = ((2 : F) * rho 78683)

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78687) * ((2 : F) + (1 : F) * rho 78684 + (-1 : F) * rho 78685) = ((1 : F) * rho 78684 + (1 : F) * rho 78685)

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78686 + (1 : F) * rho 78687) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 47⟩, ⟨(1 : F), 78084, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78688)

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78687) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78689)

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78686) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78690)

def relationRow860 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78689) * ((1 : F) * rho 78690) = ((1 : F) * rho 78691)

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78692) * ((1 : F) + (1 : F) * rho 78691) = ((1 : F) * rho 78689 + (1 : F) * rho 78690)

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78693) * ((1 : F) + (-1 : F) * rho 78691) = ((1 : F) * rho 78688 + (-1 : F) * rho 78689 + (-1 : F) * rho 78690)

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77879) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 47⟩], residual := [((1 : F), 78692)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78694)

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77879) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 47⟩], residual := [((1 : F), 78693)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78695)

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78686) * ((1 : F) * rho 78687) = ((1 : F) * rho 78696)

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78686) * ((1 : F) * rho 78686) = ((1 : F) * rho 78697)

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78687) * ((1 : F) * rho 78687) = ((1 : F) * rho 78698)

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78699) * ((-1 : F) * rho 78697 + (1 : F) * rho 78698) = ((2 : F) * rho 78696)

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78700) * ((2 : F) + (1 : F) * rho 78697 + (-1 : F) * rho 78698) = ((1 : F) * rho 78697 + (1 : F) * rho 78698)

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78699 + (1 : F) * rho 78700) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 48⟩, ⟨(1 : F), 78084, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78701)

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78700) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78702)

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78699) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78703)

def relationRow873 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78702) * ((1 : F) * rho 78703) = ((1 : F) * rho 78704)

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78705) * ((1 : F) + (1 : F) * rho 78704) = ((1 : F) * rho 78702 + (1 : F) * rho 78703)

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78706) * ((1 : F) + (-1 : F) * rho 78704) = ((1 : F) * rho 78701 + (-1 : F) * rho 78702 + (-1 : F) * rho 78703)

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77880) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 48⟩], residual := [((1 : F), 78705)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78707)

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77880) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 48⟩], residual := [((1 : F), 78706)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78708)

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78699) * ((1 : F) * rho 78700) = ((1 : F) * rho 78709)

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78699) * ((1 : F) * rho 78699) = ((1 : F) * rho 78710)

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78700) * ((1 : F) * rho 78700) = ((1 : F) * rho 78711)

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78712) * ((-1 : F) * rho 78710 + (1 : F) * rho 78711) = ((2 : F) * rho 78709)

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78713) * ((2 : F) + (1 : F) * rho 78710 + (-1 : F) * rho 78711) = ((1 : F) * rho 78710 + (1 : F) * rho 78711)

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78712 + (1 : F) * rho 78713) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 49⟩, ⟨(1 : F), 78084, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78714)

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78713) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78715)

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78712) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78716)

def relationRow886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78715) * ((1 : F) * rho 78716) = ((1 : F) * rho 78717)

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78718) * ((1 : F) + (1 : F) * rho 78717) = ((1 : F) * rho 78715 + (1 : F) * rho 78716)

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78719) * ((1 : F) + (-1 : F) * rho 78717) = ((1 : F) * rho 78714 + (-1 : F) * rho 78715 + (-1 : F) * rho 78716)

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77881) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 49⟩], residual := [((1 : F), 78718)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78720)

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77881) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 49⟩], residual := [((1 : F), 78719)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78721)

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78712) * ((1 : F) * rho 78713) = ((1 : F) * rho 78722)

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78712) * ((1 : F) * rho 78712) = ((1 : F) * rho 78723)

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78713) * ((1 : F) * rho 78713) = ((1 : F) * rho 78724)

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78725) * ((-1 : F) * rho 78723 + (1 : F) * rho 78724) = ((2 : F) * rho 78722)

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78726) * ((2 : F) + (1 : F) * rho 78723 + (-1 : F) * rho 78724) = ((1 : F) * rho 78723 + (1 : F) * rho 78724)

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78725 + (1 : F) * rho 78726) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 50⟩, ⟨(1 : F), 78084, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78727)

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78726) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78728)

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78725) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78729)

def relationRow899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78728) * ((1 : F) * rho 78729) = ((1 : F) * rho 78730)

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78731) * ((1 : F) + (1 : F) * rho 78730) = ((1 : F) * rho 78728 + (1 : F) * rho 78729)

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78732) * ((1 : F) + (-1 : F) * rho 78730) = ((1 : F) * rho 78727 + (-1 : F) * rho 78728 + (-1 : F) * rho 78729)

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 50⟩], residual := [((1 : F), 78731)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78733)

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 50⟩], residual := [((1 : F), 78732)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78734)

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78725) * ((1 : F) * rho 78726) = ((1 : F) * rho 78735)

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78725) * ((1 : F) * rho 78725) = ((1 : F) * rho 78736)

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78726) * ((1 : F) * rho 78726) = ((1 : F) * rho 78737)

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78738) * ((-1 : F) * rho 78736 + (1 : F) * rho 78737) = ((2 : F) * rho 78735)

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78739) * ((2 : F) + (1 : F) * rho 78736 + (-1 : F) * rho 78737) = ((1 : F) * rho 78736 + (1 : F) * rho 78737)

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78738 + (1 : F) * rho 78739) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 51⟩, ⟨(1 : F), 78084, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78740)

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78739) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78741)

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78738) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78742)

def relationRow912 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78741) * ((1 : F) * rho 78742) = ((1 : F) * rho 78743)

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78744) * ((1 : F) + (1 : F) * rho 78743) = ((1 : F) * rho 78741 + (1 : F) * rho 78742)

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78745) * ((1 : F) + (-1 : F) * rho 78743) = ((1 : F) * rho 78740 + (-1 : F) * rho 78741 + (-1 : F) * rho 78742)

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77883) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 51⟩], residual := [((1 : F), 78744)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78746)

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77883) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 51⟩], residual := [((1 : F), 78745)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78747)

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78738) * ((1 : F) * rho 78739) = ((1 : F) * rho 78748)

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78738) * ((1 : F) * rho 78738) = ((1 : F) * rho 78749)

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78739) * ((1 : F) * rho 78739) = ((1 : F) * rho 78750)

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78751) * ((-1 : F) * rho 78749 + (1 : F) * rho 78750) = ((2 : F) * rho 78748)

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78752) * ((2 : F) + (1 : F) * rho 78749 + (-1 : F) * rho 78750) = ((1 : F) * rho 78749 + (1 : F) * rho 78750)

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78751 + (1 : F) * rho 78752) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 52⟩, ⟨(1 : F), 78084, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78753)

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78752) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78754)

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78751) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78755)

def relationRow925 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78754) * ((1 : F) * rho 78755) = ((1 : F) * rho 78756)

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78757) * ((1 : F) + (1 : F) * rho 78756) = ((1 : F) * rho 78754 + (1 : F) * rho 78755)

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78758) * ((1 : F) + (-1 : F) * rho 78756) = ((1 : F) * rho 78753 + (-1 : F) * rho 78754 + (-1 : F) * rho 78755)

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77884) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 52⟩], residual := [((1 : F), 78757)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78759)

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77884) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 52⟩], residual := [((1 : F), 78758)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78760)

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78751) * ((1 : F) * rho 78752) = ((1 : F) * rho 78761)

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78751) * ((1 : F) * rho 78751) = ((1 : F) * rho 78762)

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78752) * ((1 : F) * rho 78752) = ((1 : F) * rho 78763)

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78764) * ((-1 : F) * rho 78762 + (1 : F) * rho 78763) = ((2 : F) * rho 78761)

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78765) * ((2 : F) + (1 : F) * rho 78762 + (-1 : F) * rho 78763) = ((1 : F) * rho 78762 + (1 : F) * rho 78763)

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78764 + (1 : F) * rho 78765) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 53⟩, ⟨(1 : F), 78084, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78766)

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78765) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78767)

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78764) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78768)

def relationRow938 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78767) * ((1 : F) * rho 78768) = ((1 : F) * rho 78769)

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78770) * ((1 : F) + (1 : F) * rho 78769) = ((1 : F) * rho 78767 + (1 : F) * rho 78768)

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78771) * ((1 : F) + (-1 : F) * rho 78769) = ((1 : F) * rho 78766 + (-1 : F) * rho 78767 + (-1 : F) * rho 78768)

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 53⟩], residual := [((1 : F), 78770)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78772)

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77885) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 53⟩], residual := [((1 : F), 78771)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78773)

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78764) * ((1 : F) * rho 78765) = ((1 : F) * rho 78774)

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78764) * ((1 : F) * rho 78764) = ((1 : F) * rho 78775)

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78765) * ((1 : F) * rho 78765) = ((1 : F) * rho 78776)

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78777) * ((-1 : F) * rho 78775 + (1 : F) * rho 78776) = ((2 : F) * rho 78774)

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78778) * ((2 : F) + (1 : F) * rho 78775 + (-1 : F) * rho 78776) = ((1 : F) * rho 78775 + (1 : F) * rho 78776)

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78777 + (1 : F) * rho 78778) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 54⟩, ⟨(1 : F), 78084, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78779)

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78778) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78780)

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78777) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78781)

def relationRow951 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78780) * ((1 : F) * rho 78781) = ((1 : F) * rho 78782)

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78783) * ((1 : F) + (1 : F) * rho 78782) = ((1 : F) * rho 78780 + (1 : F) * rho 78781)

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78784) * ((1 : F) + (-1 : F) * rho 78782) = ((1 : F) * rho 78779 + (-1 : F) * rho 78780 + (-1 : F) * rho 78781)

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 54⟩], residual := [((1 : F), 78783)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78785)

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 54⟩], residual := [((1 : F), 78784)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78786)

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78777) * ((1 : F) * rho 78778) = ((1 : F) * rho 78787)

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78777) * ((1 : F) * rho 78777) = ((1 : F) * rho 78788)

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78778) * ((1 : F) * rho 78778) = ((1 : F) * rho 78789)

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78790) * ((-1 : F) * rho 78788 + (1 : F) * rho 78789) = ((2 : F) * rho 78787)

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78791) * ((2 : F) + (1 : F) * rho 78788 + (-1 : F) * rho 78789) = ((1 : F) * rho 78788 + (1 : F) * rho 78789)

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78790 + (1 : F) * rho 78791) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 55⟩, ⟨(1 : F), 78084, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78792)

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78791) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78793)

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78790) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78794)

def relationRow964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78793) * ((1 : F) * rho 78794) = ((1 : F) * rho 78795)

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78796) * ((1 : F) + (1 : F) * rho 78795) = ((1 : F) * rho 78793 + (1 : F) * rho 78794)

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78797) * ((1 : F) + (-1 : F) * rho 78795) = ((1 : F) * rho 78792 + (-1 : F) * rho 78793 + (-1 : F) * rho 78794)

def relationRow967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 55⟩], residual := [((1 : F), 78796)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78798)

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 55⟩], residual := [((1 : F), 78797)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78799)

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78790) * ((1 : F) * rho 78791) = ((1 : F) * rho 78800)

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78790) * ((1 : F) * rho 78790) = ((1 : F) * rho 78801)

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78791) * ((1 : F) * rho 78791) = ((1 : F) * rho 78802)

def relationRow972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78803) * ((-1 : F) * rho 78801 + (1 : F) * rho 78802) = ((2 : F) * rho 78800)

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78804) * ((2 : F) + (1 : F) * rho 78801 + (-1 : F) * rho 78802) = ((1 : F) * rho 78801 + (1 : F) * rho 78802)

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78803 + (1 : F) * rho 78804) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 56⟩, ⟨(1 : F), 78084, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78805)

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78804) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78806)

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78803) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78807)

def relationRow977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78806) * ((1 : F) * rho 78807) = ((1 : F) * rho 78808)

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78809) * ((1 : F) + (1 : F) * rho 78808) = ((1 : F) * rho 78806 + (1 : F) * rho 78807)

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78810) * ((1 : F) + (-1 : F) * rho 78808) = ((1 : F) * rho 78805 + (-1 : F) * rho 78806 + (-1 : F) * rho 78807)

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 56⟩], residual := [((1 : F), 78809)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78811)

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 56⟩], residual := [((1 : F), 78810)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78812)

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78803) * ((1 : F) * rho 78804) = ((1 : F) * rho 78813)

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78803) * ((1 : F) * rho 78803) = ((1 : F) * rho 78814)

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78804) * ((1 : F) * rho 78804) = ((1 : F) * rho 78815)

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78816) * ((-1 : F) * rho 78814 + (1 : F) * rho 78815) = ((2 : F) * rho 78813)

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78817) * ((2 : F) + (1 : F) * rho 78814 + (-1 : F) * rho 78815) = ((1 : F) * rho 78814 + (1 : F) * rho 78815)

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78816 + (1 : F) * rho 78817) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 57⟩, ⟨(1 : F), 78084, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78818)

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78817) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78819)

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78816) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78820)

def relationRow990 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78819) * ((1 : F) * rho 78820) = ((1 : F) * rho 78821)

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78822) * ((1 : F) + (1 : F) * rho 78821) = ((1 : F) * rho 78819 + (1 : F) * rho 78820)

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78823) * ((1 : F) + (-1 : F) * rho 78821) = ((1 : F) * rho 78818 + (-1 : F) * rho 78819 + (-1 : F) * rho 78820)

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77889) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 57⟩], residual := [((1 : F), 78822)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78824)

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77889) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 57⟩], residual := [((1 : F), 78823)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78825)

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78816) * ((1 : F) * rho 78817) = ((1 : F) * rho 78826)

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78816) * ((1 : F) * rho 78816) = ((1 : F) * rho 78827)

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78817) * ((1 : F) * rho 78817) = ((1 : F) * rho 78828)

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78829) * ((-1 : F) * rho 78827 + (1 : F) * rho 78828) = ((2 : F) * rho 78826)

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78830) * ((2 : F) + (1 : F) * rho 78827 + (-1 : F) * rho 78828) = ((1 : F) * rho 78827 + (1 : F) * rho 78828)

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78829 + (1 : F) * rho 78830) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 58⟩, ⟨(1 : F), 78084, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78831)

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78830) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78832)

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78829) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78833)

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78832) * ((1 : F) * rho 78833) = ((1 : F) * rho 78834)

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78835) * ((1 : F) + (1 : F) * rho 78834) = ((1 : F) * rho 78832 + (1 : F) * rho 78833)

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78836) * ((1 : F) + (-1 : F) * rho 78834) = ((1 : F) * rho 78831 + (-1 : F) * rho 78832 + (-1 : F) * rho 78833)

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77890) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 58⟩], residual := [((1 : F), 78835)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78837)

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77890) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 58⟩], residual := [((1 : F), 78836)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78838)

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78829) * ((1 : F) * rho 78830) = ((1 : F) * rho 78839)

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78829) * ((1 : F) * rho 78829) = ((1 : F) * rho 78840)

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78830) * ((1 : F) * rho 78830) = ((1 : F) * rho 78841)

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78842) * ((-1 : F) * rho 78840 + (1 : F) * rho 78841) = ((2 : F) * rho 78839)

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78843) * ((2 : F) + (1 : F) * rho 78840 + (-1 : F) * rho 78841) = ((1 : F) * rho 78840 + (1 : F) * rho 78841)

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78842 + (1 : F) * rho 78843) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 59⟩, ⟨(1 : F), 78084, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78844)

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78843) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78845)

def relationRow1015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78842) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78846)

def relationRow1016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78845) * ((1 : F) * rho 78846) = ((1 : F) * rho 78847)

def relationRow1017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78848) * ((1 : F) + (1 : F) * rho 78847) = ((1 : F) * rho 78845 + (1 : F) * rho 78846)

def relationRow1018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78849) * ((1 : F) + (-1 : F) * rho 78847) = ((1 : F) * rho 78844 + (-1 : F) * rho 78845 + (-1 : F) * rho 78846)

def relationRow1019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77891) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 59⟩], residual := [((1 : F), 78848)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78850)

def relationRow1020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77891) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 59⟩], residual := [((1 : F), 78849)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78851)

def relationRow1021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78842) * ((1 : F) * rho 78843) = ((1 : F) * rho 78852)

def relationRow1022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78842) * ((1 : F) * rho 78842) = ((1 : F) * rho 78853)

def relationRow1023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78843) * ((1 : F) * rho 78843) = ((1 : F) * rho 78854)

def relationRow1024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78855) * ((-1 : F) * rho 78853 + (1 : F) * rho 78854) = ((2 : F) * rho 78852)

def relationRow1025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78856) * ((2 : F) + (1 : F) * rho 78853 + (-1 : F) * rho 78854) = ((1 : F) * rho 78853 + (1 : F) * rho 78854)

def relationRow1026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78855 + (1 : F) * rho 78856) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 60⟩, ⟨(1 : F), 78084, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78857)

def relationRow1027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78856) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78858)

def relationRow1028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78855) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78859)

def relationRow1029 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78858) * ((1 : F) * rho 78859) = ((1 : F) * rho 78860)

def relationRow1030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78861) * ((1 : F) + (1 : F) * rho 78860) = ((1 : F) * rho 78858 + (1 : F) * rho 78859)

def relationRow1031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78862) * ((1 : F) + (-1 : F) * rho 78860) = ((1 : F) * rho 78857 + (-1 : F) * rho 78858 + (-1 : F) * rho 78859)

def relationRow1032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77892) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 60⟩], residual := [((1 : F), 78861)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78863)

def relationRow1033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77892) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 60⟩], residual := [((1 : F), 78862)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78864)

def relationRow1034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78855) * ((1 : F) * rho 78856) = ((1 : F) * rho 78865)

def relationRow1035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78855) * ((1 : F) * rho 78855) = ((1 : F) * rho 78866)

def relationRow1036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78856) * ((1 : F) * rho 78856) = ((1 : F) * rho 78867)

def relationRow1037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78868) * ((-1 : F) * rho 78866 + (1 : F) * rho 78867) = ((2 : F) * rho 78865)

def relationRow1038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78869) * ((2 : F) + (1 : F) * rho 78866 + (-1 : F) * rho 78867) = ((1 : F) * rho 78866 + (1 : F) * rho 78867)

def relationRow1039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78868 + (1 : F) * rho 78869) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 61⟩, ⟨(1 : F), 78084, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78870)

def relationRow1040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78869) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78871)

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78868) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78872)

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78871) * ((1 : F) * rho 78872) = ((1 : F) * rho 78873)

def relationRow1043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78874) * ((1 : F) + (1 : F) * rho 78873) = ((1 : F) * rho 78871 + (1 : F) * rho 78872)

def relationRow1044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78875) * ((1 : F) + (-1 : F) * rho 78873) = ((1 : F) * rho 78870 + (-1 : F) * rho 78871 + (-1 : F) * rho 78872)

def relationRow1045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77893) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 61⟩], residual := [((1 : F), 78874)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78876)

def relationRow1046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77893) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 61⟩], residual := [((1 : F), 78875)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78877)

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78868) * ((1 : F) * rho 78869) = ((1 : F) * rho 78878)

def relationRow1048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78868) * ((1 : F) * rho 78868) = ((1 : F) * rho 78879)

def relationRow1049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78869) * ((1 : F) * rho 78869) = ((1 : F) * rho 78880)

def relationRow1050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78881) * ((-1 : F) * rho 78879 + (1 : F) * rho 78880) = ((2 : F) * rho 78878)

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78882) * ((2 : F) + (1 : F) * rho 78879 + (-1 : F) * rho 78880) = ((1 : F) * rho 78879 + (1 : F) * rho 78880)

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78881 + (1 : F) * rho 78882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 62⟩, ⟨(1 : F), 78084, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78883)

def relationRow1053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78884)

def relationRow1054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78881) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78885)

def relationRow1055 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78884) * ((1 : F) * rho 78885) = ((1 : F) * rho 78886)

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78887) * ((1 : F) + (1 : F) * rho 78886) = ((1 : F) * rho 78884 + (1 : F) * rho 78885)

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78888) * ((1 : F) + (-1 : F) * rho 78886) = ((1 : F) * rho 78883 + (-1 : F) * rho 78884 + (-1 : F) * rho 78885)

def relationRow1058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77894) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 62⟩], residual := [((1 : F), 78887)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78889)

def relationRow1059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77894) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 62⟩], residual := [((1 : F), 78888)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78890)

def relationRow1060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78881) * ((1 : F) * rho 78882) = ((1 : F) * rho 78891)

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78881) * ((1 : F) * rho 78881) = ((1 : F) * rho 78892)

def relationRow1062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78882) * ((1 : F) * rho 78882) = ((1 : F) * rho 78893)

def relationRow1063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78894) * ((-1 : F) * rho 78892 + (1 : F) * rho 78893) = ((2 : F) * rho 78891)

def relationRow1064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78895) * ((2 : F) + (1 : F) * rho 78892 + (-1 : F) * rho 78893) = ((1 : F) * rho 78892 + (1 : F) * rho 78893)

def relationRow1065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78894 + (1 : F) * rho 78895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 63⟩, ⟨(1 : F), 78084, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78896)

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78897)

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78894) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78898)

def relationRow1068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78897) * ((1 : F) * rho 78898) = ((1 : F) * rho 78899)

def relationRow1069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78900) * ((1 : F) + (1 : F) * rho 78899) = ((1 : F) * rho 78897 + (1 : F) * rho 78898)

def relationRow1070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78901) * ((1 : F) + (-1 : F) * rho 78899) = ((1 : F) * rho 78896 + (-1 : F) * rho 78897 + (-1 : F) * rho 78898)

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 63⟩], residual := [((1 : F), 78900)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78902)

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 63⟩], residual := [((1 : F), 78901)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78903)

def relationRow1073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78894) * ((1 : F) * rho 78895) = ((1 : F) * rho 78904)

def relationRow1074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78894) * ((1 : F) * rho 78894) = ((1 : F) * rho 78905)

def relationRow1075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78895) * ((1 : F) * rho 78895) = ((1 : F) * rho 78906)

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78907) * ((-1 : F) * rho 78905 + (1 : F) * rho 78906) = ((2 : F) * rho 78904)

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78908) * ((2 : F) + (1 : F) * rho 78905 + (-1 : F) * rho 78906) = ((1 : F) * rho 78905 + (1 : F) * rho 78906)

def relationRow1078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78907 + (1 : F) * rho 78908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 64⟩, ⟨(1 : F), 78084, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78909)

def relationRow1079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78910)

def relationRow1080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78907) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78911)

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78910) * ((1 : F) * rho 78911) = ((1 : F) * rho 78912)

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78913) * ((1 : F) + (1 : F) * rho 78912) = ((1 : F) * rho 78910 + (1 : F) * rho 78911)

def relationRow1083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78914) * ((1 : F) + (-1 : F) * rho 78912) = ((1 : F) * rho 78909 + (-1 : F) * rho 78910 + (-1 : F) * rho 78911)

def relationRow1084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77896) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 64⟩], residual := [((1 : F), 78913)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78915)

def relationRow1085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77896) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 64⟩], residual := [((1 : F), 78914)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78916)

def relationRow1086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78907) * ((1 : F) * rho 78908) = ((1 : F) * rho 78917)

def relationRow1087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78907) * ((1 : F) * rho 78907) = ((1 : F) * rho 78918)

def relationRow1088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78908) * ((1 : F) * rho 78908) = ((1 : F) * rho 78919)

def relationRow1089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78920) * ((-1 : F) * rho 78918 + (1 : F) * rho 78919) = ((2 : F) * rho 78917)

def relationRow1090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78921) * ((2 : F) + (1 : F) * rho 78918 + (-1 : F) * rho 78919) = ((1 : F) * rho 78918 + (1 : F) * rho 78919)

def relationRow1091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78920 + (1 : F) * rho 78921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 65⟩, ⟨(1 : F), 78084, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78922)

def relationRow1092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78923)

def relationRow1093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78920) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78924)

def relationRow1094 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78923) * ((1 : F) * rho 78924) = ((1 : F) * rho 78925)

def relationRow1095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78926) * ((1 : F) + (1 : F) * rho 78925) = ((1 : F) * rho 78923 + (1 : F) * rho 78924)

def relationRow1096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78927) * ((1 : F) + (-1 : F) * rho 78925) = ((1 : F) * rho 78922 + (-1 : F) * rho 78923 + (-1 : F) * rho 78924)

def relationRow1097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77897) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 65⟩], residual := [((1 : F), 78926)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78928)

def relationRow1098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77897) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 65⟩], residual := [((1 : F), 78927)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78929)

def relationRow1099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78920) * ((1 : F) * rho 78921) = ((1 : F) * rho 78930)

def relationRow1100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78920) * ((1 : F) * rho 78920) = ((1 : F) * rho 78931)

def relationRow1101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78921) * ((1 : F) * rho 78921) = ((1 : F) * rho 78932)

def relationRow1102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78933) * ((-1 : F) * rho 78931 + (1 : F) * rho 78932) = ((2 : F) * rho 78930)

def relationRow1103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78934) * ((2 : F) + (1 : F) * rho 78931 + (-1 : F) * rho 78932) = ((1 : F) * rho 78931 + (1 : F) * rho 78932)

def relationRow1104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78933 + (1 : F) * rho 78934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 66⟩, ⟨(1 : F), 78084, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78935)

def relationRow1105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78936)

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78933) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78937)

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78936) * ((1 : F) * rho 78937) = ((1 : F) * rho 78938)

def relationRow1108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78939) * ((1 : F) + (1 : F) * rho 78938) = ((1 : F) * rho 78936 + (1 : F) * rho 78937)

def relationRow1109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78940) * ((1 : F) + (-1 : F) * rho 78938) = ((1 : F) * rho 78935 + (-1 : F) * rho 78936 + (-1 : F) * rho 78937)

def relationRow1110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 66⟩], residual := [((1 : F), 78939)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78941)

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77898) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 66⟩], residual := [((1 : F), 78940)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78942)

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78933) * ((1 : F) * rho 78934) = ((1 : F) * rho 78943)

def relationRow1113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78933) * ((1 : F) * rho 78933) = ((1 : F) * rho 78944)

def relationRow1114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78934) * ((1 : F) * rho 78934) = ((1 : F) * rho 78945)

def relationRow1115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78946) * ((-1 : F) * rho 78944 + (1 : F) * rho 78945) = ((2 : F) * rho 78943)

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78947) * ((2 : F) + (1 : F) * rho 78944 + (-1 : F) * rho 78945) = ((1 : F) * rho 78944 + (1 : F) * rho 78945)

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78946 + (1 : F) * rho 78947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 67⟩, ⟨(1 : F), 78084, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78948)

def relationRow1118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78949)

def relationRow1119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78946) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78950)

def relationRow1120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78949) * ((1 : F) * rho 78950) = ((1 : F) * rho 78951)

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78952) * ((1 : F) + (1 : F) * rho 78951) = ((1 : F) * rho 78949 + (1 : F) * rho 78950)

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78953) * ((1 : F) + (-1 : F) * rho 78951) = ((1 : F) * rho 78948 + (-1 : F) * rho 78949 + (-1 : F) * rho 78950)

def relationRow1123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77899) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 67⟩], residual := [((1 : F), 78952)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78954)

def relationRow1124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77899) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 67⟩], residual := [((1 : F), 78953)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78955)

def relationRow1125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78946) * ((1 : F) * rho 78947) = ((1 : F) * rho 78956)

def relationRow1126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78946) * ((1 : F) * rho 78946) = ((1 : F) * rho 78957)

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78947) * ((1 : F) * rho 78947) = ((1 : F) * rho 78958)

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78959) * ((-1 : F) * rho 78957 + (1 : F) * rho 78958) = ((2 : F) * rho 78956)

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78960) * ((2 : F) + (1 : F) * rho 78957 + (-1 : F) * rho 78958) = ((1 : F) * rho 78957 + (1 : F) * rho 78958)

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78959 + (1 : F) * rho 78960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 68⟩, ⟨(1 : F), 78084, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78961)

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78962)

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78959) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78963)

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78962) * ((1 : F) * rho 78963) = ((1 : F) * rho 78964)

def relationRow1134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78965) * ((1 : F) + (1 : F) * rho 78964) = ((1 : F) * rho 78962 + (1 : F) * rho 78963)

def relationRow1135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78966) * ((1 : F) + (-1 : F) * rho 78964) = ((1 : F) * rho 78961 + (-1 : F) * rho 78962 + (-1 : F) * rho 78963)

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 68⟩], residual := [((1 : F), 78965)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78967)

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 68⟩], residual := [((1 : F), 78966)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78968)

def relationRow1138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78959) * ((1 : F) * rho 78960) = ((1 : F) * rho 78969)

def relationRow1139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78959) * ((1 : F) * rho 78959) = ((1 : F) * rho 78970)

def relationRow1140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78960) * ((1 : F) * rho 78960) = ((1 : F) * rho 78971)

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78972) * ((-1 : F) * rho 78970 + (1 : F) * rho 78971) = ((2 : F) * rho 78969)

def relationRow1142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78973) * ((2 : F) + (1 : F) * rho 78970 + (-1 : F) * rho 78971) = ((1 : F) * rho 78970 + (1 : F) * rho 78971)

def relationRow1143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78972 + (1 : F) * rho 78973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 69⟩, ⟨(1 : F), 78084, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78974)

def relationRow1144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78975)

def relationRow1145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78976)

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78975) * ((1 : F) * rho 78976) = ((1 : F) * rho 78977)

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78978) * ((1 : F) + (1 : F) * rho 78977) = ((1 : F) * rho 78975 + (1 : F) * rho 78976)

def relationRow1148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78979) * ((1 : F) + (-1 : F) * rho 78977) = ((1 : F) * rho 78974 + (-1 : F) * rho 78975 + (-1 : F) * rho 78976)

def relationRow1149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 69⟩], residual := [((1 : F), 78978)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78980)

def relationRow1150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 69⟩], residual := [((1 : F), 78979)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78981)

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78972) * ((1 : F) * rho 78973) = ((1 : F) * rho 78982)

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78972) * ((1 : F) * rho 78972) = ((1 : F) * rho 78983)

def relationRow1153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78973) * ((1 : F) * rho 78973) = ((1 : F) * rho 78984)

def relationRow1154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78985) * ((-1 : F) * rho 78983 + (1 : F) * rho 78984) = ((2 : F) * rho 78982)

def relationRow1155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78986) * ((2 : F) + (1 : F) * rho 78983 + (-1 : F) * rho 78984) = ((1 : F) * rho 78983 + (1 : F) * rho 78984)

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78985 + (1 : F) * rho 78986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 70⟩, ⟨(1 : F), 78084, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78987)

def relationRow1157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78988)

def relationRow1158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78989)

def relationRow1159 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 78988) * ((1 : F) * rho 78989) = ((1 : F) * rho 78990)

def relationRow1160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78991) * ((1 : F) + (1 : F) * rho 78990) = ((1 : F) * rho 78988 + (1 : F) * rho 78989)

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78992) * ((1 : F) + (-1 : F) * rho 78990) = ((1 : F) * rho 78987 + (-1 : F) * rho 78988 + (-1 : F) * rho 78989)

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77902) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 70⟩], residual := [((1 : F), 78991)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78993)

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77902) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 70⟩], residual := [((1 : F), 78992)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 78994)

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78985) * ((1 : F) * rho 78986) = ((1 : F) * rho 78995)

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78985) * ((1 : F) * rho 78985) = ((1 : F) * rho 78996)

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78986) * ((1 : F) * rho 78986) = ((1 : F) * rho 78997)

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78998) * ((-1 : F) * rho 78996 + (1 : F) * rho 78997) = ((2 : F) * rho 78995)

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78999) * ((2 : F) + (1 : F) * rho 78996 + (-1 : F) * rho 78997) = ((1 : F) * rho 78996 + (1 : F) * rho 78997)

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78998 + (1 : F) * rho 78999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 71⟩, ⟨(1 : F), 78084, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79000)

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79001)

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79002)

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79001) * ((1 : F) * rho 79002) = ((1 : F) * rho 79003)

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79004) * ((1 : F) + (1 : F) * rho 79003) = ((1 : F) * rho 79001 + (1 : F) * rho 79002)

def relationRow1174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79005) * ((1 : F) + (-1 : F) * rho 79003) = ((1 : F) * rho 79000 + (-1 : F) * rho 79001 + (-1 : F) * rho 79002)

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77903) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 71⟩], residual := [((1 : F), 79004)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79006)

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77903) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 71⟩], residual := [((1 : F), 79005)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79007)

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78998) * ((1 : F) * rho 78999) = ((1 : F) * rho 79008)

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78998) * ((1 : F) * rho 78998) = ((1 : F) * rho 79009)

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78999) * ((1 : F) * rho 78999) = ((1 : F) * rho 79010)

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79011) * ((-1 : F) * rho 79009 + (1 : F) * rho 79010) = ((2 : F) * rho 79008)

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79012) * ((2 : F) + (1 : F) * rho 79009 + (-1 : F) * rho 79010) = ((1 : F) * rho 79009 + (1 : F) * rho 79010)

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79011 + (1 : F) * rho 79012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 72⟩, ⟨(1 : F), 78084, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79013)

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79014)

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79011) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79015)

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79014) * ((1 : F) * rho 79015) = ((1 : F) * rho 79016)

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79017) * ((1 : F) + (1 : F) * rho 79016) = ((1 : F) * rho 79014 + (1 : F) * rho 79015)

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79018) * ((1 : F) + (-1 : F) * rho 79016) = ((1 : F) * rho 79013 + (-1 : F) * rho 79014 + (-1 : F) * rho 79015)

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77904) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 72⟩], residual := [((1 : F), 79017)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79019)

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77904) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 72⟩], residual := [((1 : F), 79018)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79020)

def relationRow1190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79011) * ((1 : F) * rho 79012) = ((1 : F) * rho 79021)

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79011) * ((1 : F) * rho 79011) = ((1 : F) * rho 79022)

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79012) * ((1 : F) * rho 79012) = ((1 : F) * rho 79023)

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79024) * ((-1 : F) * rho 79022 + (1 : F) * rho 79023) = ((2 : F) * rho 79021)

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79025) * ((2 : F) + (1 : F) * rho 79022 + (-1 : F) * rho 79023) = ((1 : F) * rho 79022 + (1 : F) * rho 79023)

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79024 + (1 : F) * rho 79025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 73⟩, ⟨(1 : F), 78084, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79026)

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79027)

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79028)

def relationRow1198 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79027) * ((1 : F) * rho 79028) = ((1 : F) * rho 79029)

def relationRow1199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79030) * ((1 : F) + (1 : F) * rho 79029) = ((1 : F) * rho 79027 + (1 : F) * rho 79028)

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79031) * ((1 : F) + (-1 : F) * rho 79029) = ((1 : F) * rho 79026 + (-1 : F) * rho 79027 + (-1 : F) * rho 79028)

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77905) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 73⟩], residual := [((1 : F), 79030)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79032)

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77905) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 73⟩], residual := [((1 : F), 79031)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79033)

def relationRow1203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79024) * ((1 : F) * rho 79025) = ((1 : F) * rho 79034)

def relationRow1204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79024) * ((1 : F) * rho 79024) = ((1 : F) * rho 79035)

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79025) * ((1 : F) * rho 79025) = ((1 : F) * rho 79036)

def relationRow1206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79037) * ((-1 : F) * rho 79035 + (1 : F) * rho 79036) = ((2 : F) * rho 79034)

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79038) * ((2 : F) + (1 : F) * rho 79035 + (-1 : F) * rho 79036) = ((1 : F) * rho 79035 + (1 : F) * rho 79036)

def relationRow1208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79037 + (1 : F) * rho 79038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 74⟩, ⟨(1 : F), 78084, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79039)

def relationRow1209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79040)

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79041)

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79040) * ((1 : F) * rho 79041) = ((1 : F) * rho 79042)

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79043) * ((1 : F) + (1 : F) * rho 79042) = ((1 : F) * rho 79040 + (1 : F) * rho 79041)

def relationRow1213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79044) * ((1 : F) + (-1 : F) * rho 79042) = ((1 : F) * rho 79039 + (-1 : F) * rho 79040 + (-1 : F) * rho 79041)

def relationRow1214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77906) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 74⟩], residual := [((1 : F), 79043)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79045)

def relationRow1215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77906) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 74⟩], residual := [((1 : F), 79044)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79046)

def relationRow1216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79037) * ((1 : F) * rho 79038) = ((1 : F) * rho 79047)

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79037) * ((1 : F) * rho 79037) = ((1 : F) * rho 79048)

def relationRow1218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79038) * ((1 : F) * rho 79038) = ((1 : F) * rho 79049)

def relationRow1219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79050) * ((-1 : F) * rho 79048 + (1 : F) * rho 79049) = ((2 : F) * rho 79047)

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79051) * ((2 : F) + (1 : F) * rho 79048 + (-1 : F) * rho 79049) = ((1 : F) * rho 79048 + (1 : F) * rho 79049)

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79050 + (1 : F) * rho 79051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 75⟩, ⟨(1 : F), 78084, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79052)

def relationRow1222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79053)

def relationRow1223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79050) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79054)

def relationRow1224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79053) * ((1 : F) * rho 79054) = ((1 : F) * rho 79055)

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79056) * ((1 : F) + (1 : F) * rho 79055) = ((1 : F) * rho 79053 + (1 : F) * rho 79054)

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79057) * ((1 : F) + (-1 : F) * rho 79055) = ((1 : F) * rho 79052 + (-1 : F) * rho 79053 + (-1 : F) * rho 79054)

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77907) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 75⟩], residual := [((1 : F), 79056)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79058)

def relationRow1228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77907) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 75⟩], residual := [((1 : F), 79057)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79059)

def relationRow1229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79050) * ((1 : F) * rho 79051) = ((1 : F) * rho 79060)

def relationRow1230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79050) * ((1 : F) * rho 79050) = ((1 : F) * rho 79061)

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79051) * ((1 : F) * rho 79051) = ((1 : F) * rho 79062)

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79063) * ((-1 : F) * rho 79061 + (1 : F) * rho 79062) = ((2 : F) * rho 79060)

def relationRow1233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79064) * ((2 : F) + (1 : F) * rho 79061 + (-1 : F) * rho 79062) = ((1 : F) * rho 79061 + (1 : F) * rho 79062)

def relationRow1234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79063 + (1 : F) * rho 79064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 76⟩, ⟨(1 : F), 78084, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79065)

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79066)

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79063) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79067)

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79066) * ((1 : F) * rho 79067) = ((1 : F) * rho 79068)

def relationRow1238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79069) * ((1 : F) + (1 : F) * rho 79068) = ((1 : F) * rho 79066 + (1 : F) * rho 79067)

def relationRow1239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79070) * ((1 : F) + (-1 : F) * rho 79068) = ((1 : F) * rho 79065 + (-1 : F) * rho 79066 + (-1 : F) * rho 79067)

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 76⟩], residual := [((1 : F), 79069)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79071)

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 76⟩], residual := [((1 : F), 79070)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79072)

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79063) * ((1 : F) * rho 79064) = ((1 : F) * rho 79073)

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79063) * ((1 : F) * rho 79063) = ((1 : F) * rho 79074)

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79064) * ((1 : F) * rho 79064) = ((1 : F) * rho 79075)

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79076) * ((-1 : F) * rho 79074 + (1 : F) * rho 79075) = ((2 : F) * rho 79073)

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79077) * ((2 : F) + (1 : F) * rho 79074 + (-1 : F) * rho 79075) = ((1 : F) * rho 79074 + (1 : F) * rho 79075)

def relationRow1247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79076 + (1 : F) * rho 79077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 77⟩, ⟨(1 : F), 78084, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79078)

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79079)

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79080)

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79079) * ((1 : F) * rho 79080) = ((1 : F) * rho 79081)

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79082) * ((1 : F) + (1 : F) * rho 79081) = ((1 : F) * rho 79079 + (1 : F) * rho 79080)

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79083) * ((1 : F) + (-1 : F) * rho 79081) = ((1 : F) * rho 79078 + (-1 : F) * rho 79079 + (-1 : F) * rho 79080)

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77909) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 77⟩], residual := [((1 : F), 79082)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79084)

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77909) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 77⟩], residual := [((1 : F), 79083)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79085)

def relationRow1255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79076) * ((1 : F) * rho 79077) = ((1 : F) * rho 79086)

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79076) * ((1 : F) * rho 79076) = ((1 : F) * rho 79087)

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79077) * ((1 : F) * rho 79077) = ((1 : F) * rho 79088)

def relationRow1258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79089) * ((-1 : F) * rho 79087 + (1 : F) * rho 79088) = ((2 : F) * rho 79086)

def relationRow1259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79090) * ((2 : F) + (1 : F) * rho 79087 + (-1 : F) * rho 79088) = ((1 : F) * rho 79087 + (1 : F) * rho 79088)

def relationRow1260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79089 + (1 : F) * rho 79090) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 78⟩, ⟨(1 : F), 78084, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79091)

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79090) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79092)

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79089) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79093)

def relationRow1263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79092) * ((1 : F) * rho 79093) = ((1 : F) * rho 79094)

def relationRow1264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79095) * ((1 : F) + (1 : F) * rho 79094) = ((1 : F) * rho 79092 + (1 : F) * rho 79093)

def relationRow1265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79096) * ((1 : F) + (-1 : F) * rho 79094) = ((1 : F) * rho 79091 + (-1 : F) * rho 79092 + (-1 : F) * rho 79093)

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77910) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 78⟩], residual := [((1 : F), 79095)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79097)

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77910) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 78⟩], residual := [((1 : F), 79096)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79098)

def relationRow1268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79089) * ((1 : F) * rho 79090) = ((1 : F) * rho 79099)

def relationRow1269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79089) * ((1 : F) * rho 79089) = ((1 : F) * rho 79100)

def relationRow1270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79090) * ((1 : F) * rho 79090) = ((1 : F) * rho 79101)

def relationRow1271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79102) * ((-1 : F) * rho 79100 + (1 : F) * rho 79101) = ((2 : F) * rho 79099)

def relationRow1272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79103) * ((2 : F) + (1 : F) * rho 79100 + (-1 : F) * rho 79101) = ((1 : F) * rho 79100 + (1 : F) * rho 79101)

def relationRow1273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79102 + (1 : F) * rho 79103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 79⟩, ⟨(1 : F), 78084, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79104)

def relationRow1274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79105)

def relationRow1275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79102) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79106)

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79105) * ((1 : F) * rho 79106) = ((1 : F) * rho 79107)

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79108) * ((1 : F) + (1 : F) * rho 79107) = ((1 : F) * rho 79105 + (1 : F) * rho 79106)

def relationRow1278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79109) * ((1 : F) + (-1 : F) * rho 79107) = ((1 : F) * rho 79104 + (-1 : F) * rho 79105 + (-1 : F) * rho 79106)

def relationRow1279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 79⟩], residual := [((1 : F), 79108)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79110)

def relationRow1280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77911) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 79⟩], residual := [((1 : F), 79109)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79111)

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79102) * ((1 : F) * rho 79103) = ((1 : F) * rho 79112)

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79102) * ((1 : F) * rho 79102) = ((1 : F) * rho 79113)

def relationRow1283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79103) * ((1 : F) * rho 79103) = ((1 : F) * rho 79114)

def relationRow1284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79115) * ((-1 : F) * rho 79113 + (1 : F) * rho 79114) = ((2 : F) * rho 79112)

def relationRow1285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79116) * ((2 : F) + (1 : F) * rho 79113 + (-1 : F) * rho 79114) = ((1 : F) * rho 79113 + (1 : F) * rho 79114)

def relationRow1286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79115 + (1 : F) * rho 79116) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 80⟩, ⟨(1 : F), 78084, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79117)

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79116) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79118)

def relationRow1288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79115) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79119)

def relationRow1289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79118) * ((1 : F) * rho 79119) = ((1 : F) * rho 79120)

def relationRow1290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79121) * ((1 : F) + (1 : F) * rho 79120) = ((1 : F) * rho 79118 + (1 : F) * rho 79119)

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79122) * ((1 : F) + (-1 : F) * rho 79120) = ((1 : F) * rho 79117 + (-1 : F) * rho 79118 + (-1 : F) * rho 79119)

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 80⟩], residual := [((1 : F), 79121)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79123)

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 80⟩], residual := [((1 : F), 79122)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79124)

def relationRow1294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79115) * ((1 : F) * rho 79116) = ((1 : F) * rho 79125)

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79115) * ((1 : F) * rho 79115) = ((1 : F) * rho 79126)

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79116) * ((1 : F) * rho 79116) = ((1 : F) * rho 79127)

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79128) * ((-1 : F) * rho 79126 + (1 : F) * rho 79127) = ((2 : F) * rho 79125)

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79129) * ((2 : F) + (1 : F) * rho 79126 + (-1 : F) * rho 79127) = ((1 : F) * rho 79126 + (1 : F) * rho 79127)

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79128 + (1 : F) * rho 79129) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 81⟩, ⟨(1 : F), 78084, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79130)

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79129) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79131)

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79128) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79132)

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79131) * ((1 : F) * rho 79132) = ((1 : F) * rho 79133)

def relationRow1303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79134) * ((1 : F) + (1 : F) * rho 79133) = ((1 : F) * rho 79131 + (1 : F) * rho 79132)

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79135) * ((1 : F) + (-1 : F) * rho 79133) = ((1 : F) * rho 79130 + (-1 : F) * rho 79131 + (-1 : F) * rho 79132)

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 81⟩], residual := [((1 : F), 79134)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79136)

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 81⟩], residual := [((1 : F), 79135)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79137)

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79128) * ((1 : F) * rho 79129) = ((1 : F) * rho 79138)

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79128) * ((1 : F) * rho 79128) = ((1 : F) * rho 79139)

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79129) * ((1 : F) * rho 79129) = ((1 : F) * rho 79140)

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79141) * ((-1 : F) * rho 79139 + (1 : F) * rho 79140) = ((2 : F) * rho 79138)

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79142) * ((2 : F) + (1 : F) * rho 79139 + (-1 : F) * rho 79140) = ((1 : F) * rho 79139 + (1 : F) * rho 79140)

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79141 + (1 : F) * rho 79142) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 82⟩, ⟨(1 : F), 78084, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79143)

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79142) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79144)

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79141) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79145)

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79144) * ((1 : F) * rho 79145) = ((1 : F) * rho 79146)

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79147) * ((1 : F) + (1 : F) * rho 79146) = ((1 : F) * rho 79144 + (1 : F) * rho 79145)

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79148) * ((1 : F) + (-1 : F) * rho 79146) = ((1 : F) * rho 79143 + (-1 : F) * rho 79144 + (-1 : F) * rho 79145)

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 82⟩], residual := [((1 : F), 79147)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79149)

def relationRow1319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 82⟩], residual := [((1 : F), 79148)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79150)

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79141) * ((1 : F) * rho 79142) = ((1 : F) * rho 79151)

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79141) * ((1 : F) * rho 79141) = ((1 : F) * rho 79152)

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79142) * ((1 : F) * rho 79142) = ((1 : F) * rho 79153)

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79154) * ((-1 : F) * rho 79152 + (1 : F) * rho 79153) = ((2 : F) * rho 79151)

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79155) * ((2 : F) + (1 : F) * rho 79152 + (-1 : F) * rho 79153) = ((1 : F) * rho 79152 + (1 : F) * rho 79153)

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79154 + (1 : F) * rho 79155) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 83⟩, ⟨(1 : F), 78084, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79156)

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79155) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79157)

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79154) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79158)

def relationRow1328 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79157) * ((1 : F) * rho 79158) = ((1 : F) * rho 79159)

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79160) * ((1 : F) + (1 : F) * rho 79159) = ((1 : F) * rho 79157 + (1 : F) * rho 79158)

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79161) * ((1 : F) + (-1 : F) * rho 79159) = ((1 : F) * rho 79156 + (-1 : F) * rho 79157 + (-1 : F) * rho 79158)

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 83⟩], residual := [((1 : F), 79160)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79162)

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 83⟩], residual := [((1 : F), 79161)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79163)

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79154) * ((1 : F) * rho 79155) = ((1 : F) * rho 79164)

def relationRow1334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79154) * ((1 : F) * rho 79154) = ((1 : F) * rho 79165)

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79155) * ((1 : F) * rho 79155) = ((1 : F) * rho 79166)

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79167) * ((-1 : F) * rho 79165 + (1 : F) * rho 79166) = ((2 : F) * rho 79164)

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79168) * ((2 : F) + (1 : F) * rho 79165 + (-1 : F) * rho 79166) = ((1 : F) * rho 79165 + (1 : F) * rho 79166)

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79167 + (1 : F) * rho 79168) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 84⟩, ⟨(1 : F), 78084, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79169)

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79168) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79170)

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79167) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79171)

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79170) * ((1 : F) * rho 79171) = ((1 : F) * rho 79172)

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79173) * ((1 : F) + (1 : F) * rho 79172) = ((1 : F) * rho 79170 + (1 : F) * rho 79171)

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79174) * ((1 : F) + (-1 : F) * rho 79172) = ((1 : F) * rho 79169 + (-1 : F) * rho 79170 + (-1 : F) * rho 79171)

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 84⟩], residual := [((1 : F), 79173)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79175)

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 84⟩], residual := [((1 : F), 79174)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79176)

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79167) * ((1 : F) * rho 79168) = ((1 : F) * rho 79177)

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79167) * ((1 : F) * rho 79167) = ((1 : F) * rho 79178)

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79168) * ((1 : F) * rho 79168) = ((1 : F) * rho 79179)

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79180) * ((-1 : F) * rho 79178 + (1 : F) * rho 79179) = ((2 : F) * rho 79177)

def relationRow1350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79181) * ((2 : F) + (1 : F) * rho 79178 + (-1 : F) * rho 79179) = ((1 : F) * rho 79178 + (1 : F) * rho 79179)

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79180 + (1 : F) * rho 79181) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 85⟩, ⟨(1 : F), 78084, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79182)

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79181) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79183)

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79180) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79184)

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79183) * ((1 : F) * rho 79184) = ((1 : F) * rho 79185)

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79186) * ((1 : F) + (1 : F) * rho 79185) = ((1 : F) * rho 79183 + (1 : F) * rho 79184)

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79187) * ((1 : F) + (-1 : F) * rho 79185) = ((1 : F) * rho 79182 + (-1 : F) * rho 79183 + (-1 : F) * rho 79184)

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 85⟩], residual := [((1 : F), 79186)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79188)

def relationRow1358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 85⟩], residual := [((1 : F), 79187)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79189)

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79180) * ((1 : F) * rho 79181) = ((1 : F) * rho 79190)

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79180) * ((1 : F) * rho 79180) = ((1 : F) * rho 79191)

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79181) * ((1 : F) * rho 79181) = ((1 : F) * rho 79192)

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79193) * ((-1 : F) * rho 79191 + (1 : F) * rho 79192) = ((2 : F) * rho 79190)

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79194) * ((2 : F) + (1 : F) * rho 79191 + (-1 : F) * rho 79192) = ((1 : F) * rho 79191 + (1 : F) * rho 79192)

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79193 + (1 : F) * rho 79194) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 86⟩, ⟨(1 : F), 78084, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79195)

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79194) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79196)

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79193) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79197)

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79196) * ((1 : F) * rho 79197) = ((1 : F) * rho 79198)

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79199) * ((1 : F) + (1 : F) * rho 79198) = ((1 : F) * rho 79196 + (1 : F) * rho 79197)

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79200) * ((1 : F) + (-1 : F) * rho 79198) = ((1 : F) * rho 79195 + (-1 : F) * rho 79196 + (-1 : F) * rho 79197)

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 86⟩], residual := [((1 : F), 79199)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79201)

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 86⟩], residual := [((1 : F), 79200)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79202)

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79193) * ((1 : F) * rho 79194) = ((1 : F) * rho 79203)

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79193) * ((1 : F) * rho 79193) = ((1 : F) * rho 79204)

def relationRow1374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79194) * ((1 : F) * rho 79194) = ((1 : F) * rho 79205)

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79206) * ((-1 : F) * rho 79204 + (1 : F) * rho 79205) = ((2 : F) * rho 79203)

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79207) * ((2 : F) + (1 : F) * rho 79204 + (-1 : F) * rho 79205) = ((1 : F) * rho 79204 + (1 : F) * rho 79205)

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79206 + (1 : F) * rho 79207) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 87⟩, ⟨(1 : F), 78084, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79208)

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79207) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79209)

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79206) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79210)

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79209) * ((1 : F) * rho 79210) = ((1 : F) * rho 79211)

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79212) * ((1 : F) + (1 : F) * rho 79211) = ((1 : F) * rho 79209 + (1 : F) * rho 79210)

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79213) * ((1 : F) + (-1 : F) * rho 79211) = ((1 : F) * rho 79208 + (-1 : F) * rho 79209 + (-1 : F) * rho 79210)

def relationRow1383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77919) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 87⟩], residual := [((1 : F), 79212)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79214)

def relationRow1384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77919) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 87⟩], residual := [((1 : F), 79213)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79215)

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79206) * ((1 : F) * rho 79207) = ((1 : F) * rho 79216)

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79206) * ((1 : F) * rho 79206) = ((1 : F) * rho 79217)

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79207) * ((1 : F) * rho 79207) = ((1 : F) * rho 79218)

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79219) * ((-1 : F) * rho 79217 + (1 : F) * rho 79218) = ((2 : F) * rho 79216)

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79220) * ((2 : F) + (1 : F) * rho 79217 + (-1 : F) * rho 79218) = ((1 : F) * rho 79217 + (1 : F) * rho 79218)

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79219 + (1 : F) * rho 79220) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 88⟩, ⟨(1 : F), 78084, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79221)

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79220) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79222)

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79219) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79223)

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79222) * ((1 : F) * rho 79223) = ((1 : F) * rho 79224)

def relationRow1394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79225) * ((1 : F) + (1 : F) * rho 79224) = ((1 : F) * rho 79222 + (1 : F) * rho 79223)

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79226) * ((1 : F) + (-1 : F) * rho 79224) = ((1 : F) * rho 79221 + (-1 : F) * rho 79222 + (-1 : F) * rho 79223)

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77920) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 88⟩], residual := [((1 : F), 79225)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79227)

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77920) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 88⟩], residual := [((1 : F), 79226)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79228)

def relationRow1398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79219) * ((1 : F) * rho 79220) = ((1 : F) * rho 79229)

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79219) * ((1 : F) * rho 79219) = ((1 : F) * rho 79230)

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79220) * ((1 : F) * rho 79220) = ((1 : F) * rho 79231)

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79232) * ((-1 : F) * rho 79230 + (1 : F) * rho 79231) = ((2 : F) * rho 79229)

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79233) * ((2 : F) + (1 : F) * rho 79230 + (-1 : F) * rho 79231) = ((1 : F) * rho 79230 + (1 : F) * rho 79231)

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79232 + (1 : F) * rho 79233) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 89⟩, ⟨(1 : F), 78084, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79234)

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79233) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79235)

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79232) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79236)

def relationRow1406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79235) * ((1 : F) * rho 79236) = ((1 : F) * rho 79237)

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79238) * ((1 : F) + (1 : F) * rho 79237) = ((1 : F) * rho 79235 + (1 : F) * rho 79236)

def relationRow1408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79239) * ((1 : F) + (-1 : F) * rho 79237) = ((1 : F) * rho 79234 + (-1 : F) * rho 79235 + (-1 : F) * rho 79236)

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 89⟩], residual := [((1 : F), 79238)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79240)

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 89⟩], residual := [((1 : F), 79239)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79241)

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79232) * ((1 : F) * rho 79233) = ((1 : F) * rho 79242)

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79232) * ((1 : F) * rho 79232) = ((1 : F) * rho 79243)

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79233) * ((1 : F) * rho 79233) = ((1 : F) * rho 79244)

def relationRow1414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79245) * ((-1 : F) * rho 79243 + (1 : F) * rho 79244) = ((2 : F) * rho 79242)

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79246) * ((2 : F) + (1 : F) * rho 79243 + (-1 : F) * rho 79244) = ((1 : F) * rho 79243 + (1 : F) * rho 79244)

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79245 + (1 : F) * rho 79246) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 90⟩, ⟨(1 : F), 78084, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79247)

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79246) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79248)

def relationRow1418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79245) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79249)

def relationRow1419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79248) * ((1 : F) * rho 79249) = ((1 : F) * rho 79250)

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79251) * ((1 : F) + (1 : F) * rho 79250) = ((1 : F) * rho 79248 + (1 : F) * rho 79249)

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79252) * ((1 : F) + (-1 : F) * rho 79250) = ((1 : F) * rho 79247 + (-1 : F) * rho 79248 + (-1 : F) * rho 79249)

def relationRow1422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 90⟩], residual := [((1 : F), 79251)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79253)

def relationRow1423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 90⟩], residual := [((1 : F), 79252)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79254)

def relationRow1424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79245) * ((1 : F) * rho 79246) = ((1 : F) * rho 79255)

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79245) * ((1 : F) * rho 79245) = ((1 : F) * rho 79256)

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79246) * ((1 : F) * rho 79246) = ((1 : F) * rho 79257)

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79258) * ((-1 : F) * rho 79256 + (1 : F) * rho 79257) = ((2 : F) * rho 79255)

def relationRow1428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79259) * ((2 : F) + (1 : F) * rho 79256 + (-1 : F) * rho 79257) = ((1 : F) * rho 79256 + (1 : F) * rho 79257)

def relationRow1429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79258 + (1 : F) * rho 79259) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 91⟩, ⟨(1 : F), 78084, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79260)

def relationRow1430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79259) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79261)

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79258) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79262)

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79261) * ((1 : F) * rho 79262) = ((1 : F) * rho 79263)

def relationRow1433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79264) * ((1 : F) + (1 : F) * rho 79263) = ((1 : F) * rho 79261 + (1 : F) * rho 79262)

def relationRow1434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79265) * ((1 : F) + (-1 : F) * rho 79263) = ((1 : F) * rho 79260 + (-1 : F) * rho 79261 + (-1 : F) * rho 79262)

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77923) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 91⟩], residual := [((1 : F), 79264)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79266)

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77923) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 91⟩], residual := [((1 : F), 79265)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79267)

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79258) * ((1 : F) * rho 79259) = ((1 : F) * rho 79268)

def relationRow1438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79258) * ((1 : F) * rho 79258) = ((1 : F) * rho 79269)

def relationRow1439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79259) * ((1 : F) * rho 79259) = ((1 : F) * rho 79270)

def relationRow1440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79271) * ((-1 : F) * rho 79269 + (1 : F) * rho 79270) = ((2 : F) * rho 79268)

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79272) * ((2 : F) + (1 : F) * rho 79269 + (-1 : F) * rho 79270) = ((1 : F) * rho 79269 + (1 : F) * rho 79270)

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79271 + (1 : F) * rho 79272) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 92⟩, ⟨(1 : F), 78084, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79273)

def relationRow1443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79272) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79274)

def relationRow1444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79271) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79275)

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79274) * ((1 : F) * rho 79275) = ((1 : F) * rho 79276)

def relationRow1446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79277) * ((1 : F) + (1 : F) * rho 79276) = ((1 : F) * rho 79274 + (1 : F) * rho 79275)

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79278) * ((1 : F) + (-1 : F) * rho 79276) = ((1 : F) * rho 79273 + (-1 : F) * rho 79274 + (-1 : F) * rho 79275)

def relationRow1448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 92⟩], residual := [((1 : F), 79277)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79279)

def relationRow1449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 92⟩], residual := [((1 : F), 79278)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79280)

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79271) * ((1 : F) * rho 79272) = ((1 : F) * rho 79281)

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79271) * ((1 : F) * rho 79271) = ((1 : F) * rho 79282)

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79272) * ((1 : F) * rho 79272) = ((1 : F) * rho 79283)

def relationRow1453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79284) * ((-1 : F) * rho 79282 + (1 : F) * rho 79283) = ((2 : F) * rho 79281)

def relationRow1454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79285) * ((2 : F) + (1 : F) * rho 79282 + (-1 : F) * rho 79283) = ((1 : F) * rho 79282 + (1 : F) * rho 79283)

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79284 + (1 : F) * rho 79285) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 93⟩, ⟨(1 : F), 78084, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79286)

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79285) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79287)

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79284) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79288)

def relationRow1458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79287) * ((1 : F) * rho 79288) = ((1 : F) * rho 79289)

def relationRow1459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79290) * ((1 : F) + (1 : F) * rho 79289) = ((1 : F) * rho 79287 + (1 : F) * rho 79288)

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79291) * ((1 : F) + (-1 : F) * rho 79289) = ((1 : F) * rho 79286 + (-1 : F) * rho 79287 + (-1 : F) * rho 79288)

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 93⟩], residual := [((1 : F), 79290)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79292)

def relationRow1462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 93⟩], residual := [((1 : F), 79291)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79293)

def relationRow1463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79284) * ((1 : F) * rho 79285) = ((1 : F) * rho 79294)

def relationRow1464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79284) * ((1 : F) * rho 79284) = ((1 : F) * rho 79295)

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79285) * ((1 : F) * rho 79285) = ((1 : F) * rho 79296)

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79297) * ((-1 : F) * rho 79295 + (1 : F) * rho 79296) = ((2 : F) * rho 79294)

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79298) * ((2 : F) + (1 : F) * rho 79295 + (-1 : F) * rho 79296) = ((1 : F) * rho 79295 + (1 : F) * rho 79296)

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79297 + (1 : F) * rho 79298) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 94⟩, ⟨(1 : F), 78084, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79299)

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79298) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79300)

def relationRow1470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79297) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79301)

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79300) * ((1 : F) * rho 79301) = ((1 : F) * rho 79302)

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79303) * ((1 : F) + (1 : F) * rho 79302) = ((1 : F) * rho 79300 + (1 : F) * rho 79301)

def relationRow1473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79304) * ((1 : F) + (-1 : F) * rho 79302) = ((1 : F) * rho 79299 + (-1 : F) * rho 79300 + (-1 : F) * rho 79301)

def relationRow1474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 94⟩], residual := [((1 : F), 79303)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79305)

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 94⟩], residual := [((1 : F), 79304)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79306)

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79297) * ((1 : F) * rho 79298) = ((1 : F) * rho 79307)

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79297) * ((1 : F) * rho 79297) = ((1 : F) * rho 79308)

def relationRow1478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79298) * ((1 : F) * rho 79298) = ((1 : F) * rho 79309)

def relationRow1479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79310) * ((-1 : F) * rho 79308 + (1 : F) * rho 79309) = ((2 : F) * rho 79307)

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79311) * ((2 : F) + (1 : F) * rho 79308 + (-1 : F) * rho 79309) = ((1 : F) * rho 79308 + (1 : F) * rho 79309)

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79310 + (1 : F) * rho 79311) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 95⟩, ⟨(1 : F), 78084, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79312)

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79311) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79313)

def relationRow1483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79310) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79314)

def relationRow1484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79313) * ((1 : F) * rho 79314) = ((1 : F) * rho 79315)

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79316) * ((1 : F) + (1 : F) * rho 79315) = ((1 : F) * rho 79313 + (1 : F) * rho 79314)

def relationRow1486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79317) * ((1 : F) + (-1 : F) * rho 79315) = ((1 : F) * rho 79312 + (-1 : F) * rho 79313 + (-1 : F) * rho 79314)

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 95⟩], residual := [((1 : F), 79316)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79318)

def relationRow1488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 95⟩], residual := [((1 : F), 79317)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79319)

def relationRow1489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79310) * ((1 : F) * rho 79311) = ((1 : F) * rho 79320)

def relationRow1490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79310) * ((1 : F) * rho 79310) = ((1 : F) * rho 79321)

def relationRow1491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79311) * ((1 : F) * rho 79311) = ((1 : F) * rho 79322)

def relationRow1492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79323) * ((-1 : F) * rho 79321 + (1 : F) * rho 79322) = ((2 : F) * rho 79320)

def relationRow1493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79324) * ((2 : F) + (1 : F) * rho 79321 + (-1 : F) * rho 79322) = ((1 : F) * rho 79321 + (1 : F) * rho 79322)

def relationRow1494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79323 + (1 : F) * rho 79324) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 96⟩, ⟨(1 : F), 78084, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79325)

def relationRow1495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79324) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79326)

def relationRow1496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79323) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79327)

def relationRow1497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79326) * ((1 : F) * rho 79327) = ((1 : F) * rho 79328)

def relationRow1498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79329) * ((1 : F) + (1 : F) * rho 79328) = ((1 : F) * rho 79326 + (1 : F) * rho 79327)

def relationRow1499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79330) * ((1 : F) + (-1 : F) * rho 79328) = ((1 : F) * rho 79325 + (-1 : F) * rho 79326 + (-1 : F) * rho 79327)

def relationRow1500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 96⟩], residual := [((1 : F), 79329)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79331)

def relationRow1501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 96⟩], residual := [((1 : F), 79330)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79332)

def relationRow1502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79323) * ((1 : F) * rho 79324) = ((1 : F) * rho 79333)

def relationRow1503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79323) * ((1 : F) * rho 79323) = ((1 : F) * rho 79334)

def relationRow1504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79324) * ((1 : F) * rho 79324) = ((1 : F) * rho 79335)

def relationRow1505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79336) * ((-1 : F) * rho 79334 + (1 : F) * rho 79335) = ((2 : F) * rho 79333)

def relationRow1506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79337) * ((2 : F) + (1 : F) * rho 79334 + (-1 : F) * rho 79335) = ((1 : F) * rho 79334 + (1 : F) * rho 79335)

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79336 + (1 : F) * rho 79337) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 97⟩, ⟨(1 : F), 78084, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79338)

def relationRow1508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79337) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79339)

def relationRow1509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79336) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79340)

def relationRow1510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79339) * ((1 : F) * rho 79340) = ((1 : F) * rho 79341)

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79342) * ((1 : F) + (1 : F) * rho 79341) = ((1 : F) * rho 79339 + (1 : F) * rho 79340)

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79343) * ((1 : F) + (-1 : F) * rho 79341) = ((1 : F) * rho 79338 + (-1 : F) * rho 79339 + (-1 : F) * rho 79340)

def relationRow1513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 97⟩], residual := [((1 : F), 79342)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79344)

def relationRow1514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 97⟩], residual := [((1 : F), 79343)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79345)

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79336) * ((1 : F) * rho 79337) = ((1 : F) * rho 79346)

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79336) * ((1 : F) * rho 79336) = ((1 : F) * rho 79347)

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79337) * ((1 : F) * rho 79337) = ((1 : F) * rho 79348)

def relationRow1518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79349) * ((-1 : F) * rho 79347 + (1 : F) * rho 79348) = ((2 : F) * rho 79346)

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79350) * ((2 : F) + (1 : F) * rho 79347 + (-1 : F) * rho 79348) = ((1 : F) * rho 79347 + (1 : F) * rho 79348)

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79349 + (1 : F) * rho 79350) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 98⟩, ⟨(1 : F), 78084, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79351)

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79350) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79352)

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79349) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79353)

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79352) * ((1 : F) * rho 79353) = ((1 : F) * rho 79354)

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79355) * ((1 : F) + (1 : F) * rho 79354) = ((1 : F) * rho 79352 + (1 : F) * rho 79353)

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79356) * ((1 : F) + (-1 : F) * rho 79354) = ((1 : F) * rho 79351 + (-1 : F) * rho 79352 + (-1 : F) * rho 79353)

def relationRow1526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 98⟩], residual := [((1 : F), 79355)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79357)

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 98⟩], residual := [((1 : F), 79356)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79358)

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79349) * ((1 : F) * rho 79350) = ((1 : F) * rho 79359)

def relationRow1529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79349) * ((1 : F) * rho 79349) = ((1 : F) * rho 79360)

def relationRow1530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79350) * ((1 : F) * rho 79350) = ((1 : F) * rho 79361)

def relationRow1531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79362) * ((-1 : F) * rho 79360 + (1 : F) * rho 79361) = ((2 : F) * rho 79359)

def relationRow1532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79363) * ((2 : F) + (1 : F) * rho 79360 + (-1 : F) * rho 79361) = ((1 : F) * rho 79360 + (1 : F) * rho 79361)

def relationRow1533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79362 + (1 : F) * rho 79363) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 99⟩, ⟨(1 : F), 78084, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79364)

def relationRow1534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79363) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79365)

def relationRow1535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79362) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79366)

def relationRow1536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79365) * ((1 : F) * rho 79366) = ((1 : F) * rho 79367)

def relationRow1537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79368) * ((1 : F) + (1 : F) * rho 79367) = ((1 : F) * rho 79365 + (1 : F) * rho 79366)

def relationRow1538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79369) * ((1 : F) + (-1 : F) * rho 79367) = ((1 : F) * rho 79364 + (-1 : F) * rho 79365 + (-1 : F) * rho 79366)

def relationRow1539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 99⟩], residual := [((1 : F), 79368)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79370)

def relationRow1540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 99⟩], residual := [((1 : F), 79369)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79371)

def relationRow1541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79362) * ((1 : F) * rho 79363) = ((1 : F) * rho 79372)

def relationRow1542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79362) * ((1 : F) * rho 79362) = ((1 : F) * rho 79373)

def relationRow1543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79363) * ((1 : F) * rho 79363) = ((1 : F) * rho 79374)

def relationRow1544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79375) * ((-1 : F) * rho 79373 + (1 : F) * rho 79374) = ((2 : F) * rho 79372)

def relationRow1545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79376) * ((2 : F) + (1 : F) * rho 79373 + (-1 : F) * rho 79374) = ((1 : F) * rho 79373 + (1 : F) * rho 79374)

def relationRow1546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79375 + (1 : F) * rho 79376) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 100⟩, ⟨(1 : F), 78084, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79377)

def relationRow1547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79376) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79378)

def relationRow1548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79375) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79379)

def relationRow1549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79378) * ((1 : F) * rho 79379) = ((1 : F) * rho 79380)

def relationRow1550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79381) * ((1 : F) + (1 : F) * rho 79380) = ((1 : F) * rho 79378 + (1 : F) * rho 79379)

def relationRow1551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79382) * ((1 : F) + (-1 : F) * rho 79380) = ((1 : F) * rho 79377 + (-1 : F) * rho 79378 + (-1 : F) * rho 79379)

def relationRow1552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77932) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 100⟩], residual := [((1 : F), 79381)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79383)

def relationRow1553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77932) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 100⟩], residual := [((1 : F), 79382)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79384)

def relationRow1554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79375) * ((1 : F) * rho 79376) = ((1 : F) * rho 79385)

def relationRow1555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79375) * ((1 : F) * rho 79375) = ((1 : F) * rho 79386)

def relationRow1556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79376) * ((1 : F) * rho 79376) = ((1 : F) * rho 79387)

def relationRow1557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79388) * ((-1 : F) * rho 79386 + (1 : F) * rho 79387) = ((2 : F) * rho 79385)

def relationRow1558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79389) * ((2 : F) + (1 : F) * rho 79386 + (-1 : F) * rho 79387) = ((1 : F) * rho 79386 + (1 : F) * rho 79387)

def relationRow1559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79388 + (1 : F) * rho 79389) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 101⟩, ⟨(1 : F), 78084, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79390)

def relationRow1560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79389) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79391)

def relationRow1561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79388) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79392)

def relationRow1562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79391) * ((1 : F) * rho 79392) = ((1 : F) * rho 79393)

def relationRow1563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79394) * ((1 : F) + (1 : F) * rho 79393) = ((1 : F) * rho 79391 + (1 : F) * rho 79392)

def relationRow1564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79395) * ((1 : F) + (-1 : F) * rho 79393) = ((1 : F) * rho 79390 + (-1 : F) * rho 79391 + (-1 : F) * rho 79392)

def relationRow1565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77933) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 101⟩], residual := [((1 : F), 79394)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79396)

def relationRow1566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77933) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 101⟩], residual := [((1 : F), 79395)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79397)

def relationRow1567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79388) * ((1 : F) * rho 79389) = ((1 : F) * rho 79398)

def relationRow1568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79388) * ((1 : F) * rho 79388) = ((1 : F) * rho 79399)

def relationRow1569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79389) * ((1 : F) * rho 79389) = ((1 : F) * rho 79400)

def relationRow1570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79401) * ((-1 : F) * rho 79399 + (1 : F) * rho 79400) = ((2 : F) * rho 79398)

def relationRow1571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79402) * ((2 : F) + (1 : F) * rho 79399 + (-1 : F) * rho 79400) = ((1 : F) * rho 79399 + (1 : F) * rho 79400)

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79401 + (1 : F) * rho 79402) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 102⟩, ⟨(1 : F), 78084, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79403)

def relationRow1573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79402) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79404)

def relationRow1574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79401) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79405)

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79404) * ((1 : F) * rho 79405) = ((1 : F) * rho 79406)

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79407) * ((1 : F) + (1 : F) * rho 79406) = ((1 : F) * rho 79404 + (1 : F) * rho 79405)

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79408) * ((1 : F) + (-1 : F) * rho 79406) = ((1 : F) * rho 79403 + (-1 : F) * rho 79404 + (-1 : F) * rho 79405)

def relationRow1578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 102⟩], residual := [((1 : F), 79407)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79409)

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 102⟩], residual := [((1 : F), 79408)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79410)

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79401) * ((1 : F) * rho 79402) = ((1 : F) * rho 79411)

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79401) * ((1 : F) * rho 79401) = ((1 : F) * rho 79412)

def relationRow1582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79402) * ((1 : F) * rho 79402) = ((1 : F) * rho 79413)

def relationRow1583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79414) * ((-1 : F) * rho 79412 + (1 : F) * rho 79413) = ((2 : F) * rho 79411)

def relationRow1584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79415) * ((2 : F) + (1 : F) * rho 79412 + (-1 : F) * rho 79413) = ((1 : F) * rho 79412 + (1 : F) * rho 79413)

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79414 + (1 : F) * rho 79415) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 103⟩, ⟨(1 : F), 78084, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79416)

def relationRow1586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79415) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79417)

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79414) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79418)

def relationRow1588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79417) * ((1 : F) * rho 79418) = ((1 : F) * rho 79419)

def relationRow1589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79420) * ((1 : F) + (1 : F) * rho 79419) = ((1 : F) * rho 79417 + (1 : F) * rho 79418)

def relationRow1590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79421) * ((1 : F) + (-1 : F) * rho 79419) = ((1 : F) * rho 79416 + (-1 : F) * rho 79417 + (-1 : F) * rho 79418)

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 103⟩], residual := [((1 : F), 79420)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79422)

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 103⟩], residual := [((1 : F), 79421)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79423)

def relationRow1593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79414) * ((1 : F) * rho 79415) = ((1 : F) * rho 79424)

def relationRow1594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79414) * ((1 : F) * rho 79414) = ((1 : F) * rho 79425)

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79415) * ((1 : F) * rho 79415) = ((1 : F) * rho 79426)

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79427) * ((-1 : F) * rho 79425 + (1 : F) * rho 79426) = ((2 : F) * rho 79424)

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79428) * ((2 : F) + (1 : F) * rho 79425 + (-1 : F) * rho 79426) = ((1 : F) * rho 79425 + (1 : F) * rho 79426)

def relationRow1598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79427 + (1 : F) * rho 79428) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 104⟩, ⟨(1 : F), 78084, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79429)

def relationRow1599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79428) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79430)

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79427) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79431)

def relationRow1601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79430) * ((1 : F) * rho 79431) = ((1 : F) * rho 79432)

def relationRow1602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79433) * ((1 : F) + (1 : F) * rho 79432) = ((1 : F) * rho 79430 + (1 : F) * rho 79431)

def relationRow1603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79434) * ((1 : F) + (-1 : F) * rho 79432) = ((1 : F) * rho 79429 + (-1 : F) * rho 79430 + (-1 : F) * rho 79431)

def relationRow1604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77936) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 104⟩], residual := [((1 : F), 79433)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79435)

def relationRow1605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77936) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 104⟩], residual := [((1 : F), 79434)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79436)

def relationRow1606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79427) * ((1 : F) * rho 79428) = ((1 : F) * rho 79437)

def relationRow1607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79427) * ((1 : F) * rho 79427) = ((1 : F) * rho 79438)

def relationRow1608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79428) * ((1 : F) * rho 79428) = ((1 : F) * rho 79439)

def relationRow1609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79440) * ((-1 : F) * rho 79438 + (1 : F) * rho 79439) = ((2 : F) * rho 79437)

def relationRow1610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79441) * ((2 : F) + (1 : F) * rho 79438 + (-1 : F) * rho 79439) = ((1 : F) * rho 79438 + (1 : F) * rho 79439)

def relationRow1611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79440 + (1 : F) * rho 79441) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 105⟩, ⟨(1 : F), 78084, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79442)

def relationRow1612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79441) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79443)

def relationRow1613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79440) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79444)

def relationRow1614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79443) * ((1 : F) * rho 79444) = ((1 : F) * rho 79445)

def relationRow1615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79446) * ((1 : F) + (1 : F) * rho 79445) = ((1 : F) * rho 79443 + (1 : F) * rho 79444)

def relationRow1616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79447) * ((1 : F) + (-1 : F) * rho 79445) = ((1 : F) * rho 79442 + (-1 : F) * rho 79443 + (-1 : F) * rho 79444)

def relationRow1617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 105⟩], residual := [((1 : F), 79446)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79448)

def relationRow1618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77937) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 105⟩], residual := [((1 : F), 79447)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79449)

def relationRow1619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79440) * ((1 : F) * rho 79441) = ((1 : F) * rho 79450)

def relationRow1620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79440) * ((1 : F) * rho 79440) = ((1 : F) * rho 79451)

def relationRow1621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79441) * ((1 : F) * rho 79441) = ((1 : F) * rho 79452)

def relationRow1622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79453) * ((-1 : F) * rho 79451 + (1 : F) * rho 79452) = ((2 : F) * rho 79450)

def relationRow1623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79454) * ((2 : F) + (1 : F) * rho 79451 + (-1 : F) * rho 79452) = ((1 : F) * rho 79451 + (1 : F) * rho 79452)

def relationRow1624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79453 + (1 : F) * rho 79454) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 106⟩, ⟨(1 : F), 78084, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79455)

def relationRow1625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79454) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79456)

def relationRow1626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79453) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79457)

def relationRow1627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79456) * ((1 : F) * rho 79457) = ((1 : F) * rho 79458)

def relationRow1628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79459) * ((1 : F) + (1 : F) * rho 79458) = ((1 : F) * rho 79456 + (1 : F) * rho 79457)

def relationRow1629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79460) * ((1 : F) + (-1 : F) * rho 79458) = ((1 : F) * rho 79455 + (-1 : F) * rho 79456 + (-1 : F) * rho 79457)

def relationRow1630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 106⟩], residual := [((1 : F), 79459)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79461)

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 106⟩], residual := [((1 : F), 79460)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79462)

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79453) * ((1 : F) * rho 79454) = ((1 : F) * rho 79463)

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79453) * ((1 : F) * rho 79453) = ((1 : F) * rho 79464)

def relationRow1634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79454) * ((1 : F) * rho 79454) = ((1 : F) * rho 79465)

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79466) * ((-1 : F) * rho 79464 + (1 : F) * rho 79465) = ((2 : F) * rho 79463)

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79467) * ((2 : F) + (1 : F) * rho 79464 + (-1 : F) * rho 79465) = ((1 : F) * rho 79464 + (1 : F) * rho 79465)

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79466 + (1 : F) * rho 79467) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 107⟩, ⟨(1 : F), 78084, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79468)

def relationRow1638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79467) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79469)

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79466) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79470)

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79469) * ((1 : F) * rho 79470) = ((1 : F) * rho 79471)

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79472) * ((1 : F) + (1 : F) * rho 79471) = ((1 : F) * rho 79469 + (1 : F) * rho 79470)

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79473) * ((1 : F) + (-1 : F) * rho 79471) = ((1 : F) * rho 79468 + (-1 : F) * rho 79469 + (-1 : F) * rho 79470)

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 107⟩], residual := [((1 : F), 79472)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79474)

def relationRow1644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 107⟩], residual := [((1 : F), 79473)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79475)

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79466) * ((1 : F) * rho 79467) = ((1 : F) * rho 79476)

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79466) * ((1 : F) * rho 79466) = ((1 : F) * rho 79477)

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79467) * ((1 : F) * rho 79467) = ((1 : F) * rho 79478)

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79479) * ((-1 : F) * rho 79477 + (1 : F) * rho 79478) = ((2 : F) * rho 79476)

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79480) * ((2 : F) + (1 : F) * rho 79477 + (-1 : F) * rho 79478) = ((1 : F) * rho 79477 + (1 : F) * rho 79478)

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79479 + (1 : F) * rho 79480) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 108⟩, ⟨(1 : F), 78084, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79481)

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79480) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79482)

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79479) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79483)

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79482) * ((1 : F) * rho 79483) = ((1 : F) * rho 79484)

def relationRow1654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79485) * ((1 : F) + (1 : F) * rho 79484) = ((1 : F) * rho 79482 + (1 : F) * rho 79483)

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79486) * ((1 : F) + (-1 : F) * rho 79484) = ((1 : F) * rho 79481 + (-1 : F) * rho 79482 + (-1 : F) * rho 79483)

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 108⟩], residual := [((1 : F), 79485)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79487)

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 108⟩], residual := [((1 : F), 79486)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79488)

def relationRow1658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79479) * ((1 : F) * rho 79480) = ((1 : F) * rho 79489)

def relationRow1659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79479) * ((1 : F) * rho 79479) = ((1 : F) * rho 79490)

def relationRow1660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79480) * ((1 : F) * rho 79480) = ((1 : F) * rho 79491)

def relationRow1661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79492) * ((-1 : F) * rho 79490 + (1 : F) * rho 79491) = ((2 : F) * rho 79489)

def relationRow1662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79493) * ((2 : F) + (1 : F) * rho 79490 + (-1 : F) * rho 79491) = ((1 : F) * rho 79490 + (1 : F) * rho 79491)

def relationRow1663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79492 + (1 : F) * rho 79493) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 109⟩, ⟨(1 : F), 78084, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79494)

def relationRow1664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79493) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79495)

def relationRow1665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79492) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79496)

def relationRow1666 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79495) * ((1 : F) * rho 79496) = ((1 : F) * rho 79497)

def relationRow1667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79498) * ((1 : F) + (1 : F) * rho 79497) = ((1 : F) * rho 79495 + (1 : F) * rho 79496)

def relationRow1668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79499) * ((1 : F) + (-1 : F) * rho 79497) = ((1 : F) * rho 79494 + (-1 : F) * rho 79495 + (-1 : F) * rho 79496)

def relationRow1669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 109⟩], residual := [((1 : F), 79498)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79500)

def relationRow1670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 109⟩], residual := [((1 : F), 79499)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79501)

def relationRow1671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79492) * ((1 : F) * rho 79493) = ((1 : F) * rho 79502)

def relationRow1672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79492) * ((1 : F) * rho 79492) = ((1 : F) * rho 79503)

def relationRow1673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79493) * ((1 : F) * rho 79493) = ((1 : F) * rho 79504)

def relationRow1674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79505) * ((-1 : F) * rho 79503 + (1 : F) * rho 79504) = ((2 : F) * rho 79502)

def relationRow1675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79506) * ((2 : F) + (1 : F) * rho 79503 + (-1 : F) * rho 79504) = ((1 : F) * rho 79503 + (1 : F) * rho 79504)

def relationRow1676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79505 + (1 : F) * rho 79506) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 110⟩, ⟨(1 : F), 78084, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79507)

def relationRow1677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79506) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79508)

def relationRow1678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79505) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79509)

def relationRow1679 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79508) * ((1 : F) * rho 79509) = ((1 : F) * rho 79510)

def relationRow1680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79511) * ((1 : F) + (1 : F) * rho 79510) = ((1 : F) * rho 79508 + (1 : F) * rho 79509)

def relationRow1681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79512) * ((1 : F) + (-1 : F) * rho 79510) = ((1 : F) * rho 79507 + (-1 : F) * rho 79508 + (-1 : F) * rho 79509)

def relationRow1682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 110⟩], residual := [((1 : F), 79511)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79513)

def relationRow1683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 110⟩], residual := [((1 : F), 79512)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79514)

def relationRow1684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79505) * ((1 : F) * rho 79506) = ((1 : F) * rho 79515)

def relationRow1685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79505) * ((1 : F) * rho 79505) = ((1 : F) * rho 79516)

def relationRow1686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79506) * ((1 : F) * rho 79506) = ((1 : F) * rho 79517)

def relationRow1687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79518) * ((-1 : F) * rho 79516 + (1 : F) * rho 79517) = ((2 : F) * rho 79515)

def relationRow1688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79519) * ((2 : F) + (1 : F) * rho 79516 + (-1 : F) * rho 79517) = ((1 : F) * rho 79516 + (1 : F) * rho 79517)

def relationRow1689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79518 + (1 : F) * rho 79519) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 111⟩, ⟨(1 : F), 78084, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79520)

def relationRow1690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79519) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79521)

def relationRow1691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79518) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79522)

def relationRow1692 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79521) * ((1 : F) * rho 79522) = ((1 : F) * rho 79523)

def relationRow1693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79524) * ((1 : F) + (1 : F) * rho 79523) = ((1 : F) * rho 79521 + (1 : F) * rho 79522)

def relationRow1694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79525) * ((1 : F) + (-1 : F) * rho 79523) = ((1 : F) * rho 79520 + (-1 : F) * rho 79521 + (-1 : F) * rho 79522)

def relationRow1695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 111⟩], residual := [((1 : F), 79524)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79526)

def relationRow1696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 111⟩], residual := [((1 : F), 79525)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79527)

def relationRow1697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79518) * ((1 : F) * rho 79519) = ((1 : F) * rho 79528)

def relationRow1698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79518) * ((1 : F) * rho 79518) = ((1 : F) * rho 79529)

def relationRow1699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79519) * ((1 : F) * rho 79519) = ((1 : F) * rho 79530)

def relationRow1700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79531) * ((-1 : F) * rho 79529 + (1 : F) * rho 79530) = ((2 : F) * rho 79528)

def relationRow1701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79532) * ((2 : F) + (1 : F) * rho 79529 + (-1 : F) * rho 79530) = ((1 : F) * rho 79529 + (1 : F) * rho 79530)

def relationRow1702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79531 + (1 : F) * rho 79532) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 112⟩, ⟨(1 : F), 78084, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79533)

def relationRow1703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79532) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79534)

def relationRow1704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79531) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79535)

def relationRow1705 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79534) * ((1 : F) * rho 79535) = ((1 : F) * rho 79536)

def relationRow1706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79537) * ((1 : F) + (1 : F) * rho 79536) = ((1 : F) * rho 79534 + (1 : F) * rho 79535)

def relationRow1707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79538) * ((1 : F) + (-1 : F) * rho 79536) = ((1 : F) * rho 79533 + (-1 : F) * rho 79534 + (-1 : F) * rho 79535)

def relationRow1708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 112⟩], residual := [((1 : F), 79537)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79539)

def relationRow1709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 112⟩], residual := [((1 : F), 79538)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79540)

def relationRow1710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79531) * ((1 : F) * rho 79532) = ((1 : F) * rho 79541)

def relationRow1711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79531) * ((1 : F) * rho 79531) = ((1 : F) * rho 79542)

def relationRow1712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79532) * ((1 : F) * rho 79532) = ((1 : F) * rho 79543)

def relationRow1713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79544) * ((-1 : F) * rho 79542 + (1 : F) * rho 79543) = ((2 : F) * rho 79541)

def relationRow1714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79545) * ((2 : F) + (1 : F) * rho 79542 + (-1 : F) * rho 79543) = ((1 : F) * rho 79542 + (1 : F) * rho 79543)

def relationRow1715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79544 + (1 : F) * rho 79545) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 113⟩, ⟨(1 : F), 78084, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79546)

def relationRow1716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79545) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79547)

def relationRow1717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79544) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79548)

def relationRow1718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79547) * ((1 : F) * rho 79548) = ((1 : F) * rho 79549)

def relationRow1719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79550) * ((1 : F) + (1 : F) * rho 79549) = ((1 : F) * rho 79547 + (1 : F) * rho 79548)

def relationRow1720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79551) * ((1 : F) + (-1 : F) * rho 79549) = ((1 : F) * rho 79546 + (-1 : F) * rho 79547 + (-1 : F) * rho 79548)

def relationRow1721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77945) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 113⟩], residual := [((1 : F), 79550)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79552)

def relationRow1722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77945) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 113⟩], residual := [((1 : F), 79551)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79553)

def relationRow1723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79544) * ((1 : F) * rho 79545) = ((1 : F) * rho 79554)

def relationRow1724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79544) * ((1 : F) * rho 79544) = ((1 : F) * rho 79555)

def relationRow1725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79545) * ((1 : F) * rho 79545) = ((1 : F) * rho 79556)

def relationRow1726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79557) * ((-1 : F) * rho 79555 + (1 : F) * rho 79556) = ((2 : F) * rho 79554)

def relationRow1727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79558) * ((2 : F) + (1 : F) * rho 79555 + (-1 : F) * rho 79556) = ((1 : F) * rho 79555 + (1 : F) * rho 79556)

def relationRow1728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79557 + (1 : F) * rho 79558) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 114⟩, ⟨(1 : F), 78084, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79559)

def relationRow1729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79558) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79560)

def relationRow1730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79557) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79561)

def relationRow1731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79560) * ((1 : F) * rho 79561) = ((1 : F) * rho 79562)

def relationRow1732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79563) * ((1 : F) + (1 : F) * rho 79562) = ((1 : F) * rho 79560 + (1 : F) * rho 79561)

def relationRow1733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79564) * ((1 : F) + (-1 : F) * rho 79562) = ((1 : F) * rho 79559 + (-1 : F) * rho 79560 + (-1 : F) * rho 79561)

def relationRow1734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77946) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 114⟩], residual := [((1 : F), 79563)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79565)

def relationRow1735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77946) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 114⟩], residual := [((1 : F), 79564)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79566)

def relationRow1736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79557) * ((1 : F) * rho 79558) = ((1 : F) * rho 79567)

def relationRow1737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79557) * ((1 : F) * rho 79557) = ((1 : F) * rho 79568)

def relationRow1738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79558) * ((1 : F) * rho 79558) = ((1 : F) * rho 79569)

def relationRow1739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79570) * ((-1 : F) * rho 79568 + (1 : F) * rho 79569) = ((2 : F) * rho 79567)

def relationRow1740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79571) * ((2 : F) + (1 : F) * rho 79568 + (-1 : F) * rho 79569) = ((1 : F) * rho 79568 + (1 : F) * rho 79569)

def relationRow1741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79570 + (1 : F) * rho 79571) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 115⟩, ⟨(1 : F), 78084, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79572)

def relationRow1742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79571) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79573)

def relationRow1743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79570) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79574)

def relationRow1744 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79573) * ((1 : F) * rho 79574) = ((1 : F) * rho 79575)

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79576) * ((1 : F) + (1 : F) * rho 79575) = ((1 : F) * rho 79573 + (1 : F) * rho 79574)

def relationRow1746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79577) * ((1 : F) + (-1 : F) * rho 79575) = ((1 : F) * rho 79572 + (-1 : F) * rho 79573 + (-1 : F) * rho 79574)

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 115⟩], residual := [((1 : F), 79576)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79578)

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 115⟩], residual := [((1 : F), 79577)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79579)

def relationRow1749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79570) * ((1 : F) * rho 79571) = ((1 : F) * rho 79580)

def relationRow1750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79570) * ((1 : F) * rho 79570) = ((1 : F) * rho 79581)

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79571) * ((1 : F) * rho 79571) = ((1 : F) * rho 79582)

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79583) * ((-1 : F) * rho 79581 + (1 : F) * rho 79582) = ((2 : F) * rho 79580)

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79584) * ((2 : F) + (1 : F) * rho 79581 + (-1 : F) * rho 79582) = ((1 : F) * rho 79581 + (1 : F) * rho 79582)

def relationRow1754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79583 + (1 : F) * rho 79584) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 116⟩, ⟨(1 : F), 78084, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79585)

def relationRow1755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79584) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79586)

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79583) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79587)

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79586) * ((1 : F) * rho 79587) = ((1 : F) * rho 79588)

def relationRow1758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79589) * ((1 : F) + (1 : F) * rho 79588) = ((1 : F) * rho 79586 + (1 : F) * rho 79587)

def relationRow1759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79590) * ((1 : F) + (-1 : F) * rho 79588) = ((1 : F) * rho 79585 + (-1 : F) * rho 79586 + (-1 : F) * rho 79587)

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 116⟩], residual := [((1 : F), 79589)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79591)

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 116⟩], residual := [((1 : F), 79590)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79592)

def relationRow1762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79583) * ((1 : F) * rho 79584) = ((1 : F) * rho 79593)

def relationRow1763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79583) * ((1 : F) * rho 79583) = ((1 : F) * rho 79594)

def relationRow1764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79584) * ((1 : F) * rho 79584) = ((1 : F) * rho 79595)

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79596) * ((-1 : F) * rho 79594 + (1 : F) * rho 79595) = ((2 : F) * rho 79593)

def relationRow1766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79597) * ((2 : F) + (1 : F) * rho 79594 + (-1 : F) * rho 79595) = ((1 : F) * rho 79594 + (1 : F) * rho 79595)

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79596 + (1 : F) * rho 79597) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 117⟩, ⟨(1 : F), 78084, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79598)

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79597) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79599)

def relationRow1769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79596) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79600)

def relationRow1770 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79599) * ((1 : F) * rho 79600) = ((1 : F) * rho 79601)

def relationRow1771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79602) * ((1 : F) + (1 : F) * rho 79601) = ((1 : F) * rho 79599 + (1 : F) * rho 79600)

def relationRow1772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79603) * ((1 : F) + (-1 : F) * rho 79601) = ((1 : F) * rho 79598 + (-1 : F) * rho 79599 + (-1 : F) * rho 79600)

def relationRow1773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77949) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 117⟩], residual := [((1 : F), 79602)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79604)

def relationRow1774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77949) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 117⟩], residual := [((1 : F), 79603)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79605)

def relationRow1775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79596) * ((1 : F) * rho 79597) = ((1 : F) * rho 79606)

def relationRow1776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79596) * ((1 : F) * rho 79596) = ((1 : F) * rho 79607)

def relationRow1777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79597) * ((1 : F) * rho 79597) = ((1 : F) * rho 79608)

def relationRow1778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79609) * ((-1 : F) * rho 79607 + (1 : F) * rho 79608) = ((2 : F) * rho 79606)

def relationRow1779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79610) * ((2 : F) + (1 : F) * rho 79607 + (-1 : F) * rho 79608) = ((1 : F) * rho 79607 + (1 : F) * rho 79608)

def relationRow1780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79609 + (1 : F) * rho 79610) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 118⟩, ⟨(1 : F), 78084, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79611)

def relationRow1781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79610) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79612)

def relationRow1782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79609) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79613)

def relationRow1783 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79612) * ((1 : F) * rho 79613) = ((1 : F) * rho 79614)

def relationRow1784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79615) * ((1 : F) + (1 : F) * rho 79614) = ((1 : F) * rho 79612 + (1 : F) * rho 79613)

def relationRow1785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79616) * ((1 : F) + (-1 : F) * rho 79614) = ((1 : F) * rho 79611 + (-1 : F) * rho 79612 + (-1 : F) * rho 79613)

def relationRow1786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 118⟩], residual := [((1 : F), 79615)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79617)

def relationRow1787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 118⟩], residual := [((1 : F), 79616)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79618)

def relationRow1788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79609) * ((1 : F) * rho 79610) = ((1 : F) * rho 79619)

def relationRow1789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79609) * ((1 : F) * rho 79609) = ((1 : F) * rho 79620)

def relationRow1790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79610) * ((1 : F) * rho 79610) = ((1 : F) * rho 79621)

def relationRow1791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622) * ((-1 : F) * rho 79620 + (1 : F) * rho 79621) = ((2 : F) * rho 79619)

def relationRow1792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79623) * ((2 : F) + (1 : F) * rho 79620 + (-1 : F) * rho 79621) = ((1 : F) * rho 79620 + (1 : F) * rho 79621)

def relationRow1793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622 + (1 : F) * rho 79623) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 119⟩, ⟨(1 : F), 78084, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79624)

def relationRow1794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79623) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79625)

def relationRow1795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79626)

def relationRow1796 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79625) * ((1 : F) * rho 79626) = ((1 : F) * rho 79627)

def relationRow1797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79628) * ((1 : F) + (1 : F) * rho 79627) = ((1 : F) * rho 79625 + (1 : F) * rho 79626)

def relationRow1798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79629) * ((1 : F) + (-1 : F) * rho 79627) = ((1 : F) * rho 79624 + (-1 : F) * rho 79625 + (-1 : F) * rho 79626)

def relationRow1799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 119⟩], residual := [((1 : F), 79628)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79630)

def relationRow1800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 119⟩], residual := [((1 : F), 79629)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79631)

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622) * ((1 : F) * rho 79623) = ((1 : F) * rho 79632)

def relationRow1802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79622) * ((1 : F) * rho 79622) = ((1 : F) * rho 79633)

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79623) * ((1 : F) * rho 79623) = ((1 : F) * rho 79634)

def relationRow1804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * ((-1 : F) * rho 79633 + (1 : F) * rho 79634) = ((2 : F) * rho 79632)

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79636) * ((2 : F) + (1 : F) * rho 79633 + (-1 : F) * rho 79634) = ((1 : F) * rho 79633 + (1 : F) * rho 79634)

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635 + (1 : F) * rho 79636) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 120⟩, ⟨(1 : F), 78084, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79637)

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79636) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79638)

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79639)

def relationRow1809 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79638) * ((1 : F) * rho 79639) = ((1 : F) * rho 79640)

def relationRow1810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79641) * ((1 : F) + (1 : F) * rho 79640) = ((1 : F) * rho 79638 + (1 : F) * rho 79639)

def relationRow1811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79642) * ((1 : F) + (-1 : F) * rho 79640) = ((1 : F) * rho 79637 + (-1 : F) * rho 79638 + (-1 : F) * rho 79639)

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 120⟩], residual := [((1 : F), 79641)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79643)

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 120⟩], residual := [((1 : F), 79642)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79644)

def relationRow1814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * ((1 : F) * rho 79636) = ((1 : F) * rho 79645)

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79635) * ((1 : F) * rho 79635) = ((1 : F) * rho 79646)

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79636) * ((1 : F) * rho 79636) = ((1 : F) * rho 79647)

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79648) * ((-1 : F) * rho 79646 + (1 : F) * rho 79647) = ((2 : F) * rho 79645)

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79649) * ((2 : F) + (1 : F) * rho 79646 + (-1 : F) * rho 79647) = ((1 : F) * rho 79646 + (1 : F) * rho 79647)

def relationRow1819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79648 + (1 : F) * rho 79649) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 121⟩, ⟨(1 : F), 78084, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79650)

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79649) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79651)

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79648) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79652)

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79651) * ((1 : F) * rho 79652) = ((1 : F) * rho 79653)

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79654) * ((1 : F) + (1 : F) * rho 79653) = ((1 : F) * rho 79651 + (1 : F) * rho 79652)

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79655) * ((1 : F) + (-1 : F) * rho 79653) = ((1 : F) * rho 79650 + (-1 : F) * rho 79651 + (-1 : F) * rho 79652)

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 121⟩], residual := [((1 : F), 79654)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79656)

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 121⟩], residual := [((1 : F), 79655)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79657)

def relationRow1827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79648) * ((1 : F) * rho 79649) = ((1 : F) * rho 79658)

def relationRow1828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79648) * ((1 : F) * rho 79648) = ((1 : F) * rho 79659)

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79649) * ((1 : F) * rho 79649) = ((1 : F) * rho 79660)

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79661) * ((-1 : F) * rho 79659 + (1 : F) * rho 79660) = ((2 : F) * rho 79658)

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79662) * ((2 : F) + (1 : F) * rho 79659 + (-1 : F) * rho 79660) = ((1 : F) * rho 79659 + (1 : F) * rho 79660)

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79661 + (1 : F) * rho 79662) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 122⟩, ⟨(1 : F), 78084, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79663)

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79662) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79664)

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79661) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79665)

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79664) * ((1 : F) * rho 79665) = ((1 : F) * rho 79666)

def relationRow1836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79667) * ((1 : F) + (1 : F) * rho 79666) = ((1 : F) * rho 79664 + (1 : F) * rho 79665)

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79668) * ((1 : F) + (-1 : F) * rho 79666) = ((1 : F) * rho 79663 + (-1 : F) * rho 79664 + (-1 : F) * rho 79665)

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 122⟩], residual := [((1 : F), 79667)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79669)

def relationRow1839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 122⟩], residual := [((1 : F), 79668)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79670)

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79661) * ((1 : F) * rho 79662) = ((1 : F) * rho 79671)

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79661) * ((1 : F) * rho 79661) = ((1 : F) * rho 79672)

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79662) * ((1 : F) * rho 79662) = ((1 : F) * rho 79673)

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79674) * ((-1 : F) * rho 79672 + (1 : F) * rho 79673) = ((2 : F) * rho 79671)

def relationRow1844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79675) * ((2 : F) + (1 : F) * rho 79672 + (-1 : F) * rho 79673) = ((1 : F) * rho 79672 + (1 : F) * rho 79673)

def relationRow1845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79674 + (1 : F) * rho 79675) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 123⟩, ⟨(1 : F), 78084, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79676)

def relationRow1846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79675) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79677)

def relationRow1847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79674) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79678)

def relationRow1848 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79677) * ((1 : F) * rho 79678) = ((1 : F) * rho 79679)

def relationRow1849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79680) * ((1 : F) + (1 : F) * rho 79679) = ((1 : F) * rho 79677 + (1 : F) * rho 79678)

def relationRow1850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79681) * ((1 : F) + (-1 : F) * rho 79679) = ((1 : F) * rho 79676 + (-1 : F) * rho 79677 + (-1 : F) * rho 79678)

def relationRow1851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77955) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 123⟩], residual := [((1 : F), 79680)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79682)

def relationRow1852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77955) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 123⟩], residual := [((1 : F), 79681)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79683)

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79674) * ((1 : F) * rho 79675) = ((1 : F) * rho 79684)

def relationRow1854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79674) * ((1 : F) * rho 79674) = ((1 : F) * rho 79685)

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79675) * ((1 : F) * rho 79675) = ((1 : F) * rho 79686)

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79687) * ((-1 : F) * rho 79685 + (1 : F) * rho 79686) = ((2 : F) * rho 79684)

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79688) * ((2 : F) + (1 : F) * rho 79685 + (-1 : F) * rho 79686) = ((1 : F) * rho 79685 + (1 : F) * rho 79686)

def relationRow1858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79687 + (1 : F) * rho 79688) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 124⟩, ⟨(1 : F), 78084, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79689)

def relationRow1859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79688) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79690)

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79687) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79691)

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79690) * ((1 : F) * rho 79691) = ((1 : F) * rho 79692)

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79693) * ((1 : F) + (1 : F) * rho 79692) = ((1 : F) * rho 79690 + (1 : F) * rho 79691)

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79694) * ((1 : F) + (-1 : F) * rho 79692) = ((1 : F) * rho 79689 + (-1 : F) * rho 79690 + (-1 : F) * rho 79691)

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 124⟩], residual := [((1 : F), 79693)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79695)

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 124⟩], residual := [((1 : F), 79694)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79696)

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79687) * ((1 : F) * rho 79688) = ((1 : F) * rho 79697)

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79687) * ((1 : F) * rho 79687) = ((1 : F) * rho 79698)

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79688) * ((1 : F) * rho 79688) = ((1 : F) * rho 79699)

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79700) * ((-1 : F) * rho 79698 + (1 : F) * rho 79699) = ((2 : F) * rho 79697)

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79701) * ((2 : F) + (1 : F) * rho 79698 + (-1 : F) * rho 79699) = ((1 : F) * rho 79698 + (1 : F) * rho 79699)

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79700 + (1 : F) * rho 79701) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 125⟩, ⟨(1 : F), 78084, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79702)

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79701) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79703)

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79700) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79704)

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79703) * ((1 : F) * rho 79704) = ((1 : F) * rho 79705)

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79706) * ((1 : F) + (1 : F) * rho 79705) = ((1 : F) * rho 79703 + (1 : F) * rho 79704)

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79707) * ((1 : F) + (-1 : F) * rho 79705) = ((1 : F) * rho 79702 + (-1 : F) * rho 79703 + (-1 : F) * rho 79704)

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 125⟩], residual := [((1 : F), 79706)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79708)

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 125⟩], residual := [((1 : F), 79707)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79709)

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79700) * ((1 : F) * rho 79701) = ((1 : F) * rho 79710)

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79700) * ((1 : F) * rho 79700) = ((1 : F) * rho 79711)

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79701) * ((1 : F) * rho 79701) = ((1 : F) * rho 79712)

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79713) * ((-1 : F) * rho 79711 + (1 : F) * rho 79712) = ((2 : F) * rho 79710)

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79714) * ((2 : F) + (1 : F) * rho 79711 + (-1 : F) * rho 79712) = ((1 : F) * rho 79711 + (1 : F) * rho 79712)

def relationRow1884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79713 + (1 : F) * rho 79714) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 126⟩, ⟨(1 : F), 78084, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79715)

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79714) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79716)

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79713) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79717)

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79716) * ((1 : F) * rho 79717) = ((1 : F) * rho 79718)

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79719) * ((1 : F) + (1 : F) * rho 79718) = ((1 : F) * rho 79716 + (1 : F) * rho 79717)

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79720) * ((1 : F) + (-1 : F) * rho 79718) = ((1 : F) * rho 79715 + (-1 : F) * rho 79716 + (-1 : F) * rho 79717)

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77958) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 126⟩], residual := [((1 : F), 79719)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79721)

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77958) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 126⟩], residual := [((1 : F), 79720)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79722)

def relationRow1892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79713) * ((1 : F) * rho 79714) = ((1 : F) * rho 79723)

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79713) * ((1 : F) * rho 79713) = ((1 : F) * rho 79724)

def relationRow1894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79714) * ((1 : F) * rho 79714) = ((1 : F) * rho 79725)

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79726) * ((-1 : F) * rho 79724 + (1 : F) * rho 79725) = ((2 : F) * rho 79723)

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79727) * ((2 : F) + (1 : F) * rho 79724 + (-1 : F) * rho 79725) = ((1 : F) * rho 79724 + (1 : F) * rho 79725)

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79726 + (1 : F) * rho 79727) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 127⟩, ⟨(1 : F), 78084, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79728)

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79727) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79729)

def relationRow1899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79726) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79730)

def relationRow1900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79729) * ((1 : F) * rho 79730) = ((1 : F) * rho 79731)

def relationRow1901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79732) * ((1 : F) + (1 : F) * rho 79731) = ((1 : F) * rho 79729 + (1 : F) * rho 79730)

def relationRow1902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79733) * ((1 : F) + (-1 : F) * rho 79731) = ((1 : F) * rho 79728 + (-1 : F) * rho 79729 + (-1 : F) * rho 79730)

def relationRow1903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77959) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 127⟩], residual := [((1 : F), 79732)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79734)

def relationRow1904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77959) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 127⟩], residual := [((1 : F), 79733)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79735)

def relationRow1905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79726) * ((1 : F) * rho 79727) = ((1 : F) * rho 79736)

def relationRow1906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79726) * ((1 : F) * rho 79726) = ((1 : F) * rho 79737)

def relationRow1907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79727) * ((1 : F) * rho 79727) = ((1 : F) * rho 79738)

def relationRow1908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79739) * ((-1 : F) * rho 79737 + (1 : F) * rho 79738) = ((2 : F) * rho 79736)

def relationRow1909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79740) * ((2 : F) + (1 : F) * rho 79737 + (-1 : F) * rho 79738) = ((1 : F) * rho 79737 + (1 : F) * rho 79738)

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79739 + (1 : F) * rho 79740) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 128⟩, ⟨(1 : F), 78084, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79741)

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79740) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79742)

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79739) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79743)

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79742) * ((1 : F) * rho 79743) = ((1 : F) * rho 79744)

def relationRow1914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79745) * ((1 : F) + (1 : F) * rho 79744) = ((1 : F) * rho 79742 + (1 : F) * rho 79743)

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79746) * ((1 : F) + (-1 : F) * rho 79744) = ((1 : F) * rho 79741 + (-1 : F) * rho 79742 + (-1 : F) * rho 79743)

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 128⟩], residual := [((1 : F), 79745)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79747)

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 128⟩], residual := [((1 : F), 79746)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79748)

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79739) * ((1 : F) * rho 79740) = ((1 : F) * rho 79749)

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79739) * ((1 : F) * rho 79739) = ((1 : F) * rho 79750)

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79740) * ((1 : F) * rho 79740) = ((1 : F) * rho 79751)

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79752) * ((-1 : F) * rho 79750 + (1 : F) * rho 79751) = ((2 : F) * rho 79749)

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79753) * ((2 : F) + (1 : F) * rho 79750 + (-1 : F) * rho 79751) = ((1 : F) * rho 79750 + (1 : F) * rho 79751)

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79752 + (1 : F) * rho 79753) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 129⟩, ⟨(1 : F), 78084, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79754)

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79753) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79755)

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79752) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79756)

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79755) * ((1 : F) * rho 79756) = ((1 : F) * rho 79757)

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79758) * ((1 : F) + (1 : F) * rho 79757) = ((1 : F) * rho 79755 + (1 : F) * rho 79756)

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79759) * ((1 : F) + (-1 : F) * rho 79757) = ((1 : F) * rho 79754 + (-1 : F) * rho 79755 + (-1 : F) * rho 79756)

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 129⟩], residual := [((1 : F), 79758)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79760)

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 129⟩], residual := [((1 : F), 79759)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79761)

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79752) * ((1 : F) * rho 79753) = ((1 : F) * rho 79762)

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79752) * ((1 : F) * rho 79752) = ((1 : F) * rho 79763)

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79753) * ((1 : F) * rho 79753) = ((1 : F) * rho 79764)

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79765) * ((-1 : F) * rho 79763 + (1 : F) * rho 79764) = ((2 : F) * rho 79762)

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79766) * ((2 : F) + (1 : F) * rho 79763 + (-1 : F) * rho 79764) = ((1 : F) * rho 79763 + (1 : F) * rho 79764)

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79765 + (1 : F) * rho 79766) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 130⟩, ⟨(1 : F), 78084, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79767)

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79766) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79768)

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79765) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79769)

def relationRow1939 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79768) * ((1 : F) * rho 79769) = ((1 : F) * rho 79770)

def relationRow1940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79771) * ((1 : F) + (1 : F) * rho 79770) = ((1 : F) * rho 79768 + (1 : F) * rho 79769)

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79772) * ((1 : F) + (-1 : F) * rho 79770) = ((1 : F) * rho 79767 + (-1 : F) * rho 79768 + (-1 : F) * rho 79769)

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77962) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 130⟩], residual := [((1 : F), 79771)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79773)

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77962) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 130⟩], residual := [((1 : F), 79772)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79774)

def relationRow1944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79765) * ((1 : F) * rho 79766) = ((1 : F) * rho 79775)

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79765) * ((1 : F) * rho 79765) = ((1 : F) * rho 79776)

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79766) * ((1 : F) * rho 79766) = ((1 : F) * rho 79777)

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79778) * ((-1 : F) * rho 79776 + (1 : F) * rho 79777) = ((2 : F) * rho 79775)

def relationRow1948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79779) * ((2 : F) + (1 : F) * rho 79776 + (-1 : F) * rho 79777) = ((1 : F) * rho 79776 + (1 : F) * rho 79777)

def relationRow1949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79778 + (1 : F) * rho 79779) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 131⟩, ⟨(1 : F), 78084, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79780)

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79779) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79781)

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79778) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79782)

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79781) * ((1 : F) * rho 79782) = ((1 : F) * rho 79783)

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79784) * ((1 : F) + (1 : F) * rho 79783) = ((1 : F) * rho 79781 + (1 : F) * rho 79782)

def relationRow1954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79785) * ((1 : F) + (-1 : F) * rho 79783) = ((1 : F) * rho 79780 + (-1 : F) * rho 79781 + (-1 : F) * rho 79782)

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 131⟩], residual := [((1 : F), 79784)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79786)

def relationRow1956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 131⟩], residual := [((1 : F), 79785)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79787)

def relationRow1957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79778) * ((1 : F) * rho 79779) = ((1 : F) * rho 79788)

def relationRow1958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79778) * ((1 : F) * rho 79778) = ((1 : F) * rho 79789)

def relationRow1959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79779) * ((1 : F) * rho 79779) = ((1 : F) * rho 79790)

def relationRow1960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79791) * ((-1 : F) * rho 79789 + (1 : F) * rho 79790) = ((2 : F) * rho 79788)

def relationRow1961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79792) * ((2 : F) + (1 : F) * rho 79789 + (-1 : F) * rho 79790) = ((1 : F) * rho 79789 + (1 : F) * rho 79790)

def relationRow1962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79791 + (1 : F) * rho 79792) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 132⟩, ⟨(1 : F), 78084, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79793)

def relationRow1963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79792) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79794)

def relationRow1964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79791) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79795)

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79794) * ((1 : F) * rho 79795) = ((1 : F) * rho 79796)

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79797) * ((1 : F) + (1 : F) * rho 79796) = ((1 : F) * rho 79794 + (1 : F) * rho 79795)

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79798) * ((1 : F) + (-1 : F) * rho 79796) = ((1 : F) * rho 79793 + (-1 : F) * rho 79794 + (-1 : F) * rho 79795)

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 132⟩], residual := [((1 : F), 79797)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79799)

def relationRow1969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 132⟩], residual := [((1 : F), 79798)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79800)

def relationRow1970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79791) * ((1 : F) * rho 79792) = ((1 : F) * rho 79801)

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79791) * ((1 : F) * rho 79791) = ((1 : F) * rho 79802)

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79792) * ((1 : F) * rho 79792) = ((1 : F) * rho 79803)

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804) * ((-1 : F) * rho 79802 + (1 : F) * rho 79803) = ((2 : F) * rho 79801)

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79805) * ((2 : F) + (1 : F) * rho 79802 + (-1 : F) * rho 79803) = ((1 : F) * rho 79802 + (1 : F) * rho 79803)

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804 + (1 : F) * rho 79805) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 133⟩, ⟨(1 : F), 78084, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79806)

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79805) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79807)

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79808)

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79807) * ((1 : F) * rho 79808) = ((1 : F) * rho 79809)

def relationRow1979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79810) * ((1 : F) + (1 : F) * rho 79809) = ((1 : F) * rho 79807 + (1 : F) * rho 79808)

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79811) * ((1 : F) + (-1 : F) * rho 79809) = ((1 : F) * rho 79806 + (-1 : F) * rho 79807 + (-1 : F) * rho 79808)

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 133⟩], residual := [((1 : F), 79810)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79812)

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 133⟩], residual := [((1 : F), 79811)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79813)

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804) * ((1 : F) * rho 79805) = ((1 : F) * rho 79814)

def relationRow1984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79804) * ((1 : F) * rho 79804) = ((1 : F) * rho 79815)

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79805) * ((1 : F) * rho 79805) = ((1 : F) * rho 79816)

def relationRow1986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * ((-1 : F) * rho 79815 + (1 : F) * rho 79816) = ((2 : F) * rho 79814)

def relationRow1987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79818) * ((2 : F) + (1 : F) * rho 79815 + (-1 : F) * rho 79816) = ((1 : F) * rho 79815 + (1 : F) * rho 79816)

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817 + (1 : F) * rho 79818) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 134⟩, ⟨(1 : F), 78084, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79819)

def relationRow1989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79818) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79820)

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79821)

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79820) * ((1 : F) * rho 79821) = ((1 : F) * rho 79822)

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79823) * ((1 : F) + (1 : F) * rho 79822) = ((1 : F) * rho 79820 + (1 : F) * rho 79821)

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79824) * ((1 : F) + (-1 : F) * rho 79822) = ((1 : F) * rho 79819 + (-1 : F) * rho 79820 + (-1 : F) * rho 79821)

def relationRow1994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 134⟩], residual := [((1 : F), 79823)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79825)

def relationRow1995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 134⟩], residual := [((1 : F), 79824)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79826)

def relationRow1996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * ((1 : F) * rho 79818) = ((1 : F) * rho 79827)

def relationRow1997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79817) * ((1 : F) * rho 79817) = ((1 : F) * rho 79828)

def relationRow1998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79818) * ((1 : F) * rho 79818) = ((1 : F) * rho 79829)

def relationRow1999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79830) * ((-1 : F) * rho 79828 + (1 : F) * rho 79829) = ((2 : F) * rho 79827)

def relationRow2000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79831) * ((2 : F) + (1 : F) * rho 79828 + (-1 : F) * rho 79829) = ((1 : F) * rho 79828 + (1 : F) * rho 79829)

def relationRow2001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79830 + (1 : F) * rho 79831) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 135⟩, ⟨(1 : F), 78084, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79832)

def relationRow2002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79831) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79833)

def relationRow2003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79830) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79834)

def relationRow2004 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79833) * ((1 : F) * rho 79834) = ((1 : F) * rho 79835)

def relationRow2005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79836) * ((1 : F) + (1 : F) * rho 79835) = ((1 : F) * rho 79833 + (1 : F) * rho 79834)

def relationRow2006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79837) * ((1 : F) + (-1 : F) * rho 79835) = ((1 : F) * rho 79832 + (-1 : F) * rho 79833 + (-1 : F) * rho 79834)

def relationRow2007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 135⟩], residual := [((1 : F), 79836)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79838)

def relationRow2008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 135⟩], residual := [((1 : F), 79837)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79839)

def relationRow2009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79830) * ((1 : F) * rho 79831) = ((1 : F) * rho 79840)

def relationRow2010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79830) * ((1 : F) * rho 79830) = ((1 : F) * rho 79841)

def relationRow2011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79831) * ((1 : F) * rho 79831) = ((1 : F) * rho 79842)

def relationRow2012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79843) * ((-1 : F) * rho 79841 + (1 : F) * rho 79842) = ((2 : F) * rho 79840)

def relationRow2013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79844) * ((2 : F) + (1 : F) * rho 79841 + (-1 : F) * rho 79842) = ((1 : F) * rho 79841 + (1 : F) * rho 79842)

def relationRow2014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79843 + (1 : F) * rho 79844) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 136⟩, ⟨(1 : F), 78084, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79845)

def relationRow2015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79844) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79846)

def relationRow2016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79843) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79847)

def relationRow2017 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79846) * ((1 : F) * rho 79847) = ((1 : F) * rho 79848)

def relationRow2018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79849) * ((1 : F) + (1 : F) * rho 79848) = ((1 : F) * rho 79846 + (1 : F) * rho 79847)

def relationRow2019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79850) * ((1 : F) + (-1 : F) * rho 79848) = ((1 : F) * rho 79845 + (-1 : F) * rho 79846 + (-1 : F) * rho 79847)

def relationRow2020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 136⟩], residual := [((1 : F), 79849)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79851)

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 136⟩], residual := [((1 : F), 79850)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79852)

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79843) * ((1 : F) * rho 79844) = ((1 : F) * rho 79853)

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79843) * ((1 : F) * rho 79843) = ((1 : F) * rho 79854)

def relationRow2024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79844) * ((1 : F) * rho 79844) = ((1 : F) * rho 79855)

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79856) * ((-1 : F) * rho 79854 + (1 : F) * rho 79855) = ((2 : F) * rho 79853)

def relationRow2026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79857) * ((2 : F) + (1 : F) * rho 79854 + (-1 : F) * rho 79855) = ((1 : F) * rho 79854 + (1 : F) * rho 79855)

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79856 + (1 : F) * rho 79857) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 137⟩, ⟨(1 : F), 78084, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79858)

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79857) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79859)

def relationRow2029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79856) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79860)

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79859) * ((1 : F) * rho 79860) = ((1 : F) * rho 79861)

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79862) * ((1 : F) + (1 : F) * rho 79861) = ((1 : F) * rho 79859 + (1 : F) * rho 79860)

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79863) * ((1 : F) + (-1 : F) * rho 79861) = ((1 : F) * rho 79858 + (-1 : F) * rho 79859 + (-1 : F) * rho 79860)

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 137⟩], residual := [((1 : F), 79862)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79864)

def relationRow2034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 137⟩], residual := [((1 : F), 79863)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79865)

def relationRow2035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79856) * ((1 : F) * rho 79857) = ((1 : F) * rho 79866)

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79856) * ((1 : F) * rho 79856) = ((1 : F) * rho 79867)

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79857) * ((1 : F) * rho 79857) = ((1 : F) * rho 79868)

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79869) * ((-1 : F) * rho 79867 + (1 : F) * rho 79868) = ((2 : F) * rho 79866)

def relationRow2039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79870) * ((2 : F) + (1 : F) * rho 79867 + (-1 : F) * rho 79868) = ((1 : F) * rho 79867 + (1 : F) * rho 79868)

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79869 + (1 : F) * rho 79870) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 138⟩, ⟨(1 : F), 78084, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79871)

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79870) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79872)

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79869) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79873)

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79872) * ((1 : F) * rho 79873) = ((1 : F) * rho 79874)

def relationRow2044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79875) * ((1 : F) + (1 : F) * rho 79874) = ((1 : F) * rho 79872 + (1 : F) * rho 79873)

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79876) * ((1 : F) + (-1 : F) * rho 79874) = ((1 : F) * rho 79871 + (-1 : F) * rho 79872 + (-1 : F) * rho 79873)

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 138⟩], residual := [((1 : F), 79875)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79877)

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 138⟩], residual := [((1 : F), 79876)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79878)

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79869) * ((1 : F) * rho 79870) = ((1 : F) * rho 79879)

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79869) * ((1 : F) * rho 79869) = ((1 : F) * rho 79880)

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79870) * ((1 : F) * rho 79870) = ((1 : F) * rho 79881)

def relationRow2051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79882) * ((-1 : F) * rho 79880 + (1 : F) * rho 79881) = ((2 : F) * rho 79879)

def relationRow2052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79883) * ((2 : F) + (1 : F) * rho 79880 + (-1 : F) * rho 79881) = ((1 : F) * rho 79880 + (1 : F) * rho 79881)

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79882 + (1 : F) * rho 79883) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 139⟩, ⟨(1 : F), 78084, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79884)

def relationRow2054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79883) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79885)

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79886)

def relationRow2056 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79885) * ((1 : F) * rho 79886) = ((1 : F) * rho 79887)

def relationRow2057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79888) * ((1 : F) + (1 : F) * rho 79887) = ((1 : F) * rho 79885 + (1 : F) * rho 79886)

def relationRow2058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79889) * ((1 : F) + (-1 : F) * rho 79887) = ((1 : F) * rho 79884 + (-1 : F) * rho 79885 + (-1 : F) * rho 79886)

def relationRow2059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 139⟩], residual := [((1 : F), 79888)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79890)

def relationRow2060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 139⟩], residual := [((1 : F), 79889)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79891)

def relationRow2061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79882) * ((1 : F) * rho 79883) = ((1 : F) * rho 79892)

def relationRow2062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79882) * ((1 : F) * rho 79882) = ((1 : F) * rho 79893)

def relationRow2063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79883) * ((1 : F) * rho 79883) = ((1 : F) * rho 79894)

def relationRow2064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79895) * ((-1 : F) * rho 79893 + (1 : F) * rho 79894) = ((2 : F) * rho 79892)

def relationRow2065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79896) * ((2 : F) + (1 : F) * rho 79893 + (-1 : F) * rho 79894) = ((1 : F) * rho 79893 + (1 : F) * rho 79894)

def relationRow2066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79895 + (1 : F) * rho 79896) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 140⟩, ⟨(1 : F), 78084, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79897)

def relationRow2067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79896) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79898)

def relationRow2068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79899)

def relationRow2069 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79898) * ((1 : F) * rho 79899) = ((1 : F) * rho 79900)

def relationRow2070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79901) * ((1 : F) + (1 : F) * rho 79900) = ((1 : F) * rho 79898 + (1 : F) * rho 79899)

def relationRow2071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79902) * ((1 : F) + (-1 : F) * rho 79900) = ((1 : F) * rho 79897 + (-1 : F) * rho 79898 + (-1 : F) * rho 79899)

def relationRow2072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 140⟩], residual := [((1 : F), 79901)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79903)

def relationRow2073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 140⟩], residual := [((1 : F), 79902)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79904)

def relationRow2074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79895) * ((1 : F) * rho 79896) = ((1 : F) * rho 79905)

def relationRow2075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79895) * ((1 : F) * rho 79895) = ((1 : F) * rho 79906)

def relationRow2076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79896) * ((1 : F) * rho 79896) = ((1 : F) * rho 79907)

def relationRow2077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79908) * ((-1 : F) * rho 79906 + (1 : F) * rho 79907) = ((2 : F) * rho 79905)

def relationRow2078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79909) * ((2 : F) + (1 : F) * rho 79906 + (-1 : F) * rho 79907) = ((1 : F) * rho 79906 + (1 : F) * rho 79907)

def relationRow2079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79908 + (1 : F) * rho 79909) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 141⟩, ⟨(1 : F), 78084, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79910)

def relationRow2080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79909) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79911)

def relationRow2081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79912)

def relationRow2082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79911) * ((1 : F) * rho 79912) = ((1 : F) * rho 79913)

def relationRow2083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79914) * ((1 : F) + (1 : F) * rho 79913) = ((1 : F) * rho 79911 + (1 : F) * rho 79912)

def relationRow2084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79915) * ((1 : F) + (-1 : F) * rho 79913) = ((1 : F) * rho 79910 + (-1 : F) * rho 79911 + (-1 : F) * rho 79912)

def relationRow2085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 141⟩], residual := [((1 : F), 79914)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79916)

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 141⟩], residual := [((1 : F), 79915)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79917)

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79908) * ((1 : F) * rho 79909) = ((1 : F) * rho 79918)

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79908) * ((1 : F) * rho 79908) = ((1 : F) * rho 79919)

def relationRow2089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79909) * ((1 : F) * rho 79909) = ((1 : F) * rho 79920)

def relationRow2090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79921) * ((-1 : F) * rho 79919 + (1 : F) * rho 79920) = ((2 : F) * rho 79918)

def relationRow2091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79922) * ((2 : F) + (1 : F) * rho 79919 + (-1 : F) * rho 79920) = ((1 : F) * rho 79919 + (1 : F) * rho 79920)

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79921 + (1 : F) * rho 79922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 142⟩, ⟨(1 : F), 78084, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79923)

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79924)

def relationRow2094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79925)

def relationRow2095 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79924) * ((1 : F) * rho 79925) = ((1 : F) * rho 79926)

def relationRow2096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79927) * ((1 : F) + (1 : F) * rho 79926) = ((1 : F) * rho 79924 + (1 : F) * rho 79925)

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79928) * ((1 : F) + (-1 : F) * rho 79926) = ((1 : F) * rho 79923 + (-1 : F) * rho 79924 + (-1 : F) * rho 79925)

def relationRow2098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 142⟩], residual := [((1 : F), 79927)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79929)

def relationRow2099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 142⟩], residual := [((1 : F), 79928)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79930)

def relationRow2100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79921) * ((1 : F) * rho 79922) = ((1 : F) * rho 79931)

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79921) * ((1 : F) * rho 79921) = ((1 : F) * rho 79932)

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79922) * ((1 : F) * rho 79922) = ((1 : F) * rho 79933)

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79934) * ((-1 : F) * rho 79932 + (1 : F) * rho 79933) = ((2 : F) * rho 79931)

def relationRow2104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79935) * ((2 : F) + (1 : F) * rho 79932 + (-1 : F) * rho 79933) = ((1 : F) * rho 79932 + (1 : F) * rho 79933)

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79934 + (1 : F) * rho 79935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 143⟩, ⟨(1 : F), 78084, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79936)

def relationRow2106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79937)

def relationRow2107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79938)

def relationRow2108 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79937) * ((1 : F) * rho 79938) = ((1 : F) * rho 79939)

def relationRow2109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79940) * ((1 : F) + (1 : F) * rho 79939) = ((1 : F) * rho 79937 + (1 : F) * rho 79938)

def relationRow2110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79941) * ((1 : F) + (-1 : F) * rho 79939) = ((1 : F) * rho 79936 + (-1 : F) * rho 79937 + (-1 : F) * rho 79938)

def relationRow2111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77975) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 143⟩], residual := [((1 : F), 79940)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79942)

def relationRow2112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77975) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 143⟩], residual := [((1 : F), 79941)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79943)

def relationRow2113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79934) * ((1 : F) * rho 79935) = ((1 : F) * rho 79944)

def relationRow2114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79934) * ((1 : F) * rho 79934) = ((1 : F) * rho 79945)

def relationRow2115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79935) * ((1 : F) * rho 79935) = ((1 : F) * rho 79946)

def relationRow2116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79947) * ((-1 : F) * rho 79945 + (1 : F) * rho 79946) = ((2 : F) * rho 79944)

def relationRow2117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79948) * ((2 : F) + (1 : F) * rho 79945 + (-1 : F) * rho 79946) = ((1 : F) * rho 79945 + (1 : F) * rho 79946)

def relationRow2118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79947 + (1 : F) * rho 79948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 144⟩, ⟨(1 : F), 78084, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79949)

def relationRow2119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79950)

def relationRow2120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79951)

def relationRow2121 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79950) * ((1 : F) * rho 79951) = ((1 : F) * rho 79952)

def relationRow2122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79953) * ((1 : F) + (1 : F) * rho 79952) = ((1 : F) * rho 79950 + (1 : F) * rho 79951)

def relationRow2123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79954) * ((1 : F) + (-1 : F) * rho 79952) = ((1 : F) * rho 79949 + (-1 : F) * rho 79950 + (-1 : F) * rho 79951)

def relationRow2124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 144⟩], residual := [((1 : F), 79953)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79955)

def relationRow2125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77976) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 144⟩], residual := [((1 : F), 79954)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79956)

def relationRow2126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79947) * ((1 : F) * rho 79948) = ((1 : F) * rho 79957)

def relationRow2127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79947) * ((1 : F) * rho 79947) = ((1 : F) * rho 79958)

def relationRow2128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79948) * ((1 : F) * rho 79948) = ((1 : F) * rho 79959)

def relationRow2129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79960) * ((-1 : F) * rho 79958 + (1 : F) * rho 79959) = ((2 : F) * rho 79957)

def relationRow2130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79961) * ((2 : F) + (1 : F) * rho 79958 + (-1 : F) * rho 79959) = ((1 : F) * rho 79958 + (1 : F) * rho 79959)

def relationRow2131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79960 + (1 : F) * rho 79961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 145⟩, ⟨(1 : F), 78084, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79962)

def relationRow2132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79963)

def relationRow2133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79964)

def relationRow2134 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79963) * ((1 : F) * rho 79964) = ((1 : F) * rho 79965)

def relationRow2135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79966) * ((1 : F) + (1 : F) * rho 79965) = ((1 : F) * rho 79963 + (1 : F) * rho 79964)

def relationRow2136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79967) * ((1 : F) + (-1 : F) * rho 79965) = ((1 : F) * rho 79962 + (-1 : F) * rho 79963 + (-1 : F) * rho 79964)

def relationRow2137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 145⟩], residual := [((1 : F), 79966)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79968)

def relationRow2138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 145⟩], residual := [((1 : F), 79967)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79969)

def relationRow2139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79960) * ((1 : F) * rho 79961) = ((1 : F) * rho 79970)

def relationRow2140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79960) * ((1 : F) * rho 79960) = ((1 : F) * rho 79971)

def relationRow2141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79961) * ((1 : F) * rho 79961) = ((1 : F) * rho 79972)

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79973) * ((-1 : F) * rho 79971 + (1 : F) * rho 79972) = ((2 : F) * rho 79970)

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79974) * ((2 : F) + (1 : F) * rho 79971 + (-1 : F) * rho 79972) = ((1 : F) * rho 79971 + (1 : F) * rho 79972)

def relationRow2144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79973 + (1 : F) * rho 79974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 146⟩, ⟨(1 : F), 78084, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79975)

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79976)

def relationRow2146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79977)

def relationRow2147 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79976) * ((1 : F) * rho 79977) = ((1 : F) * rho 79978)

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79979) * ((1 : F) + (1 : F) * rho 79978) = ((1 : F) * rho 79976 + (1 : F) * rho 79977)

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79980) * ((1 : F) + (-1 : F) * rho 79978) = ((1 : F) * rho 79975 + (-1 : F) * rho 79976 + (-1 : F) * rho 79977)

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 146⟩], residual := [((1 : F), 79979)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79981)

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 146⟩], residual := [((1 : F), 79980)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79982)

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79973) * ((1 : F) * rho 79974) = ((1 : F) * rho 79983)

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79973) * ((1 : F) * rho 79973) = ((1 : F) * rho 79984)

def relationRow2154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79974) * ((1 : F) * rho 79974) = ((1 : F) * rho 79985)

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986) * ((-1 : F) * rho 79984 + (1 : F) * rho 79985) = ((2 : F) * rho 79983)

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79987) * ((2 : F) + (1 : F) * rho 79984 + (-1 : F) * rho 79985) = ((1 : F) * rho 79984 + (1 : F) * rho 79985)

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986 + (1 : F) * rho 79987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 147⟩, ⟨(1 : F), 78084, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79988)

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79989)

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79990)

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 79989) * ((1 : F) * rho 79990) = ((1 : F) * rho 79991)

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79992) * ((1 : F) + (1 : F) * rho 79991) = ((1 : F) * rho 79989 + (1 : F) * rho 79990)

def relationRow2162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79993) * ((1 : F) + (-1 : F) * rho 79991) = ((1 : F) * rho 79988 + (-1 : F) * rho 79989 + (-1 : F) * rho 79990)

def relationRow2163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 147⟩], residual := [((1 : F), 79992)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79994)

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 147⟩], residual := [((1 : F), 79993)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 79995)

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986) * ((1 : F) * rho 79987) = ((1 : F) * rho 79996)

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79986) * ((1 : F) * rho 79986) = ((1 : F) * rho 79997)

def relationRow2167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79987) * ((1 : F) * rho 79987) = ((1 : F) * rho 79998)

def relationRow2168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * ((-1 : F) * rho 79997 + (1 : F) * rho 79998) = ((2 : F) * rho 79996)

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80000) * ((2 : F) + (1 : F) * rho 79997 + (-1 : F) * rho 79998) = ((1 : F) * rho 79997 + (1 : F) * rho 79998)

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999 + (1 : F) * rho 80000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 148⟩, ⟨(1 : F), 78084, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80001)

def relationRow2171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80002)

def relationRow2172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80003)

def relationRow2173 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80002) * ((1 : F) * rho 80003) = ((1 : F) * rho 80004)

def relationRow2174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80005) * ((1 : F) + (1 : F) * rho 80004) = ((1 : F) * rho 80002 + (1 : F) * rho 80003)

def relationRow2175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80006) * ((1 : F) + (-1 : F) * rho 80004) = ((1 : F) * rho 80001 + (-1 : F) * rho 80002 + (-1 : F) * rho 80003)

def relationRow2176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 148⟩], residual := [((1 : F), 80005)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80007)

def relationRow2177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 148⟩], residual := [((1 : F), 80006)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80008)

def relationRow2178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * ((1 : F) * rho 80000) = ((1 : F) * rho 80009)

def relationRow2179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79999) * ((1 : F) * rho 79999) = ((1 : F) * rho 80010)

def relationRow2180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80000) * ((1 : F) * rho 80000) = ((1 : F) * rho 80011)

def relationRow2181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80012) * ((-1 : F) * rho 80010 + (1 : F) * rho 80011) = ((2 : F) * rho 80009)

def relationRow2182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80013) * ((2 : F) + (1 : F) * rho 80010 + (-1 : F) * rho 80011) = ((1 : F) * rho 80010 + (1 : F) * rho 80011)

def relationRow2183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80012 + (1 : F) * rho 80013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 149⟩, ⟨(1 : F), 78084, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80014)

def relationRow2184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80015)

def relationRow2185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80016)

def relationRow2186 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80015) * ((1 : F) * rho 80016) = ((1 : F) * rho 80017)

def relationRow2187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80018) * ((1 : F) + (1 : F) * rho 80017) = ((1 : F) * rho 80015 + (1 : F) * rho 80016)

def relationRow2188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80019) * ((1 : F) + (-1 : F) * rho 80017) = ((1 : F) * rho 80014 + (-1 : F) * rho 80015 + (-1 : F) * rho 80016)

def relationRow2189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 149⟩], residual := [((1 : F), 80018)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80020)

def relationRow2190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 149⟩], residual := [((1 : F), 80019)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80021)

def relationRow2191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80012) * ((1 : F) * rho 80013) = ((1 : F) * rho 80022)

def relationRow2192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80012) * ((1 : F) * rho 80012) = ((1 : F) * rho 80023)

def relationRow2193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80013) * ((1 : F) * rho 80013) = ((1 : F) * rho 80024)

def relationRow2194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80025) * ((-1 : F) * rho 80023 + (1 : F) * rho 80024) = ((2 : F) * rho 80022)

def relationRow2195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80026) * ((2 : F) + (1 : F) * rho 80023 + (-1 : F) * rho 80024) = ((1 : F) * rho 80023 + (1 : F) * rho 80024)

def relationRow2196 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80027)

def relationRow2197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80027) * ((1 : F) * rho 80025 + (1 : F) * rho 80026) = ((1 : F) * rho 80028)

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80029)

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80030)

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80029) * ((1 : F) * rho 80030) = ((1 : F) * rho 80031)

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80032) * ((1 : F) + (1 : F) * rho 80031) = ((1 : F) * rho 80029 + (1 : F) * rho 80030)

def relationRow2202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80033) * ((1 : F) + (-1 : F) * rho 80031) = ((1 : F) * rho 80028 + (-1 : F) * rho 80029 + (-1 : F) * rho 80030)

def relationRow2203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80032)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80034)

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80033)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80035)

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80025) * ((1 : F) * rho 80026) = ((1 : F) * rho 80036)

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80025) * ((1 : F) * rho 80025) = ((1 : F) * rho 80037)

def relationRow2207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80026) * ((1 : F) * rho 80026) = ((1 : F) * rho 80038)

def relationRow2208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80039) * ((-1 : F) * rho 80037 + (1 : F) * rho 80038) = ((2 : F) * rho 80036)

def relationRow2209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80040) * ((2 : F) + (1 : F) * rho 80037 + (-1 : F) * rho 80038) = ((1 : F) * rho 80037 + (1 : F) * rho 80038)

def relationRow2210 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80041)

def relationRow2211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80041) * ((1 : F) * rho 80039 + (1 : F) * rho 80040) = ((1 : F) * rho 80042)

def relationRow2212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80040) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80043)

def relationRow2213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80039) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80044)

def relationRow2214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80043) * ((1 : F) * rho 80044) = ((1 : F) * rho 80045)

def relationRow2215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80046) * ((1 : F) + (1 : F) * rho 80045) = ((1 : F) * rho 80043 + (1 : F) * rho 80044)

def relationRow2216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80047) * ((1 : F) + (-1 : F) * rho 80045) = ((1 : F) * rho 80042 + (-1 : F) * rho 80043 + (-1 : F) * rho 80044)

def relationRow2217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((1 : F), 80046)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80048)

def relationRow2218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((1 : F), 80047)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80049)

def relationRow2219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80039) * ((1 : F) * rho 80040) = ((1 : F) * rho 80050)

def relationRow2220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80039) * ((1 : F) * rho 80039) = ((1 : F) * rho 80051)

def relationRow2221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80040) * ((1 : F) * rho 80040) = ((1 : F) * rho 80052)

def relationRow2222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80053) * ((-1 : F) * rho 80051 + (1 : F) * rho 80052) = ((2 : F) * rho 80050)

def relationRow2223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80054) * ((2 : F) + (1 : F) * rho 80051 + (-1 : F) * rho 80052) = ((1 : F) * rho 80051 + (1 : F) * rho 80052)

def relationRow2224 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80055)

def relationRow2225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80055) * ((1 : F) * rho 80053 + (1 : F) * rho 80054) = ((1 : F) * rho 80056)

def relationRow2226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80057)

def relationRow2227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80053) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80058)

def relationRow2228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80057) * ((1 : F) * rho 80058) = ((1 : F) * rho 80059)

def relationRow2229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80060) * ((1 : F) + (1 : F) * rho 80059) = ((1 : F) * rho 80057 + (1 : F) * rho 80058)

def relationRow2230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80061) * ((1 : F) + (-1 : F) * rho 80059) = ((1 : F) * rho 80056 + (-1 : F) * rho 80057 + (-1 : F) * rho 80058)

def relationRow2231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77984) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((1 : F), 80060)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80062)

def relationRow2232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77984) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((1 : F), 80061)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80063)

def relationRow2233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80053) * ((1 : F) * rho 80054) = ((1 : F) * rho 80064)

def relationRow2234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80053) * ((1 : F) * rho 80053) = ((1 : F) * rho 80065)

def relationRow2235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80054) * ((1 : F) * rho 80054) = ((1 : F) * rho 80066)

def relationRow2236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80067) * ((-1 : F) * rho 80065 + (1 : F) * rho 80066) = ((2 : F) * rho 80064)

def relationRow2237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80068) * ((2 : F) + (1 : F) * rho 80065 + (-1 : F) * rho 80066) = ((1 : F) * rho 80065 + (1 : F) * rho 80066)

def relationRow2238 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80069)

def relationRow2239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80069) * ((1 : F) * rho 80067 + (1 : F) * rho 80068) = ((1 : F) * rho 80070)

def relationRow2240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80071)

def relationRow2241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80072)

def relationRow2242 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80071) * ((1 : F) * rho 80072) = ((1 : F) * rho 80073)

def relationRow2243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80074) * ((1 : F) + (1 : F) * rho 80073) = ((1 : F) * rho 80071 + (1 : F) * rho 80072)

def relationRow2244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80075) * ((1 : F) + (-1 : F) * rho 80073) = ((1 : F) * rho 80070 + (-1 : F) * rho 80071 + (-1 : F) * rho 80072)

def relationRow2245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((1 : F), 80074)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80076)

def relationRow2246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((1 : F), 80075)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80077)

def relationRow2247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80067) * ((1 : F) * rho 80068) = ((1 : F) * rho 80078)

def relationRow2248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80067) * ((1 : F) * rho 80067) = ((1 : F) * rho 80079)

def relationRow2249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80068) * ((1 : F) * rho 80068) = ((1 : F) * rho 80080)

def relationRow2250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80081) * ((-1 : F) * rho 80079 + (1 : F) * rho 80080) = ((2 : F) * rho 80078)

def relationRow2251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80082) * ((2 : F) + (1 : F) * rho 80079 + (-1 : F) * rho 80080) = ((1 : F) * rho 80079 + (1 : F) * rho 80080)

def relationRow2252 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80083)

def relationRow2253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80083) * ((1 : F) * rho 80081 + (1 : F) * rho 80082) = ((1 : F) * rho 80084)

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80085)

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80086)

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80085) * ((1 : F) * rho 80086) = ((1 : F) * rho 80087)

def relationRow2257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80088) * ((1 : F) + (1 : F) * rho 80087) = ((1 : F) * rho 80085 + (1 : F) * rho 80086)

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80089) * ((1 : F) + (-1 : F) * rho 80087) = ((1 : F) * rho 80084 + (-1 : F) * rho 80085 + (-1 : F) * rho 80086)

def relationRow2259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((1 : F), 80088)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80090)

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((1 : F), 80089)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80091)

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80081) * ((1 : F) * rho 80082) = ((1 : F) * rho 80092)

def relationRow2262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80081) * ((1 : F) * rho 80081) = ((1 : F) * rho 80093)

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80082) * ((1 : F) * rho 80082) = ((1 : F) * rho 80094)

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80095) * ((-1 : F) * rho 80093 + (1 : F) * rho 80094) = ((2 : F) * rho 80092)

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80096) * ((2 : F) + (1 : F) * rho 80093 + (-1 : F) * rho 80094) = ((1 : F) * rho 80093 + (1 : F) * rho 80094)

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80097)

def relationRow2267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80097) * ((1 : F) * rho 80095 + (1 : F) * rho 80096) = ((1 : F) * rho 80098)

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80096) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80099)

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80100)

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80099) * ((1 : F) * rho 80100) = ((1 : F) * rho 80101)

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80102) * ((1 : F) + (1 : F) * rho 80101) = ((1 : F) * rho 80099 + (1 : F) * rho 80100)

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80103) * ((1 : F) + (-1 : F) * rho 80101) = ((1 : F) * rho 80098 + (-1 : F) * rho 80099 + (-1 : F) * rho 80100)

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((1 : F), 80102)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80104)

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((1 : F), 80103)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80105)

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80095) * ((1 : F) * rho 80096) = ((1 : F) * rho 80106)

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80095) * ((1 : F) * rho 80095) = ((1 : F) * rho 80107)

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80096) * ((1 : F) * rho 80096) = ((1 : F) * rho 80108)

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80109) * ((-1 : F) * rho 80107 + (1 : F) * rho 80108) = ((2 : F) * rho 80106)

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80110) * ((2 : F) + (1 : F) * rho 80107 + (-1 : F) * rho 80108) = ((1 : F) * rho 80107 + (1 : F) * rho 80108)

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80111)

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80111) * ((1 : F) * rho 80109 + (1 : F) * rho 80110) = ((1 : F) * rho 80112)

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80110) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80113)

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80109) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80114)

def relationRow2284 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80113) * ((1 : F) * rho 80114) = ((1 : F) * rho 80115)

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80116) * ((1 : F) + (1 : F) * rho 80115) = ((1 : F) * rho 80113 + (1 : F) * rho 80114)

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80117) * ((1 : F) + (-1 : F) * rho 80115) = ((1 : F) * rho 80112 + (-1 : F) * rho 80113 + (-1 : F) * rho 80114)

def relationRow2287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77988) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((1 : F), 80116)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80118)

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77988) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((1 : F), 80117)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80119)

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80109) * ((1 : F) * rho 80110) = ((1 : F) * rho 80120)

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80109) * ((1 : F) * rho 80109) = ((1 : F) * rho 80121)

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80110) * ((1 : F) * rho 80110) = ((1 : F) * rho 80122)

def relationRow2292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80123) * ((-1 : F) * rho 80121 + (1 : F) * rho 80122) = ((2 : F) * rho 80120)

def relationRow2293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80124) * ((2 : F) + (1 : F) * rho 80121 + (-1 : F) * rho 80122) = ((1 : F) * rho 80121 + (1 : F) * rho 80122)

def relationRow2294 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80125)

def relationRow2295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80125) * ((1 : F) * rho 80123 + (1 : F) * rho 80124) = ((1 : F) * rho 80126)

def relationRow2296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80124) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80127)

def relationRow2297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80123) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80128)

def relationRow2298 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80127) * ((1 : F) * rho 80128) = ((1 : F) * rho 80129)

def relationRow2299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80130) * ((1 : F) + (1 : F) * rho 80129) = ((1 : F) * rho 80127 + (1 : F) * rho 80128)

def relationRow2300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80131) * ((1 : F) + (-1 : F) * rho 80129) = ((1 : F) * rho 80126 + (-1 : F) * rho 80127 + (-1 : F) * rho 80128)

def relationRow2301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((1 : F), 80130)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80132)

def relationRow2302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77989) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((1 : F), 80131)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80133)

def relationRow2303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80123) * ((1 : F) * rho 80124) = ((1 : F) * rho 80134)

def relationRow2304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80123) * ((1 : F) * rho 80123) = ((1 : F) * rho 80135)

def relationRow2305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80124) * ((1 : F) * rho 80124) = ((1 : F) * rho 80136)

def relationRow2306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80137) * ((-1 : F) * rho 80135 + (1 : F) * rho 80136) = ((2 : F) * rho 80134)

def relationRow2307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80138) * ((2 : F) + (1 : F) * rho 80135 + (-1 : F) * rho 80136) = ((1 : F) * rho 80135 + (1 : F) * rho 80136)

def relationRow2308 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80139)

def relationRow2309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80139) * ((1 : F) * rho 80137 + (1 : F) * rho 80138) = ((1 : F) * rho 80140)

def relationRow2310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80138) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80141)

def relationRow2311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80137) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80142)

def relationRow2312 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80141) * ((1 : F) * rho 80142) = ((1 : F) * rho 80143)

def relationRow2313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80144) * ((1 : F) + (1 : F) * rho 80143) = ((1 : F) * rho 80141 + (1 : F) * rho 80142)

def relationRow2314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80145) * ((1 : F) + (-1 : F) * rho 80143) = ((1 : F) * rho 80140 + (-1 : F) * rho 80141 + (-1 : F) * rho 80142)

def relationRow2315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((1 : F), 80144)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80146)

def relationRow2316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((1 : F), 80145)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80147)

def relationRow2317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80137) * ((1 : F) * rho 80138) = ((1 : F) * rho 80148)

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80137) * ((1 : F) * rho 80137) = ((1 : F) * rho 80149)

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80138) * ((1 : F) * rho 80138) = ((1 : F) * rho 80150)

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80151) * ((-1 : F) * rho 80149 + (1 : F) * rho 80150) = ((2 : F) * rho 80148)

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80152) * ((2 : F) + (1 : F) * rho 80149 + (-1 : F) * rho 80150) = ((1 : F) * rho 80149 + (1 : F) * rho 80150)

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133), ((1 : F), 80146), ((1 : F), 80147)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80153)

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80153) * ((1 : F) * rho 80151 + (1 : F) * rho 80152) = ((1 : F) * rho 80154)

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80152) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132), ((1 : F), 80146)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80155)

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80151) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133), ((1 : F), 80147)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80156)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80155) * ((1 : F) * rho 80156) = ((1 : F) * rho 80157)

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80158) * ((1 : F) + (1 : F) * rho 80157) = ((1 : F) * rho 80155 + (1 : F) * rho 80156)

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80159) * ((1 : F) + (-1 : F) * rho 80157) = ((1 : F) * rho 80154 + (-1 : F) * rho 80155 + (-1 : F) * rho 80156)

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((-1 : F), 80146), ((1 : F), 80158)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80160)

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((-1 : F), 80147), ((1 : F), 80159)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80161)

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80151) * ((1 : F) * rho 80152) = ((1 : F) * rho 80162)

def relationRow2332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80151) * ((1 : F) * rho 80151) = ((1 : F) * rho 80163)

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80152) * ((1 : F) * rho 80152) = ((1 : F) * rho 80164)

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80165) * ((-1 : F) * rho 80163 + (1 : F) * rho 80164) = ((2 : F) * rho 80162)

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80166) * ((2 : F) + (1 : F) * rho 80163 + (-1 : F) * rho 80164) = ((1 : F) * rho 80163 + (1 : F) * rho 80164)

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133), ((1 : F), 80146), ((1 : F), 80147), ((1 : F), 80160), ((1 : F), 80161)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80167)

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80167) * ((1 : F) * rho 80165 + (1 : F) * rho 80166) = ((1 : F) * rho 80168)

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80166) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132), ((1 : F), 80146), ((1 : F), 80160)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80169)

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80165) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133), ((1 : F), 80147), ((1 : F), 80161)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80170)

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80169) * ((1 : F) * rho 80170) = ((1 : F) * rho 80171)

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80172) * ((1 : F) + (1 : F) * rho 80171) = ((1 : F) * rho 80169 + (1 : F) * rho 80170)

def relationRow2342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80173) * ((1 : F) + (-1 : F) * rho 80171) = ((1 : F) * rho 80168 + (-1 : F) * rho 80169 + (-1 : F) * rho 80170)

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((-1 : F), 80146), ((-1 : F), 80160), ((1 : F), 80172)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80174)

def relationRow2344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((-1 : F), 80147), ((-1 : F), 80161), ((1 : F), 80173)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80175)

def relationRow2345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80165) * ((1 : F) * rho 80166) = ((1 : F) * rho 80176)

def relationRow2346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80165) * ((1 : F) * rho 80165) = ((1 : F) * rho 80177)

def relationRow2347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80166) * ((1 : F) * rho 80166) = ((1 : F) * rho 80178)

def relationRow2348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80179) * ((-1 : F) * rho 80177 + (1 : F) * rho 80178) = ((2 : F) * rho 80176)

def relationRow2349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80180) * ((2 : F) + (1 : F) * rho 80177 + (-1 : F) * rho 80178) = ((1 : F) * rho 80177 + (1 : F) * rho 80178)

def relationRow2350 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133), ((1 : F), 80146), ((1 : F), 80147), ((1 : F), 80160), ((1 : F), 80161), ((1 : F), 80174), ((1 : F), 80175)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80181)

def relationRow2351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80181) * ((1 : F) * rho 80179 + (1 : F) * rho 80180) = ((1 : F) * rho 80182)

def relationRow2352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80180) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132), ((1 : F), 80146), ((1 : F), 80160), ((1 : F), 80174)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80183)

def relationRow2353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80179) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133), ((1 : F), 80147), ((1 : F), 80161), ((1 : F), 80175)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80184)

def relationRow2354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80183) * ((1 : F) * rho 80184) = ((1 : F) * rho 80185)

def relationRow2355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80186) * ((1 : F) + (1 : F) * rho 80185) = ((1 : F) * rho 80183 + (1 : F) * rho 80184)

def relationRow2356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80187) * ((1 : F) + (-1 : F) * rho 80185) = ((1 : F) * rho 80182 + (-1 : F) * rho 80183 + (-1 : F) * rho 80184)

def relationRow2357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((-1 : F), 80146), ((-1 : F), 80160), ((-1 : F), 80174), ((1 : F), 80186)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80188)

def relationRow2358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((-1 : F), 80147), ((-1 : F), 80161), ((-1 : F), 80175), ((1 : F), 80187)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80189)

def relationRow2359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80179) * ((1 : F) * rho 80180) = ((1 : F) * rho 80190)

def relationRow2360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80179) * ((1 : F) * rho 80179) = ((1 : F) * rho 80191)

def relationRow2361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80180) * ((1 : F) * rho 80180) = ((1 : F) * rho 80192)

def relationRow2362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80193) * ((-1 : F) * rho 80191 + (1 : F) * rho 80192) = ((2 : F) * rho 80190)

def relationRow2363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80194) * ((2 : F) + (1 : F) * rho 80191 + (-1 : F) * rho 80192) = ((1 : F) * rho 80191 + (1 : F) * rho 80192)

def relationRow2364 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133), ((1 : F), 80146), ((1 : F), 80147), ((1 : F), 80160), ((1 : F), 80161), ((1 : F), 80174), ((1 : F), 80175), ((1 : F), 80188), ((1 : F), 80189)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80195)

def relationRow2365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80195) * ((1 : F) * rho 80193 + (1 : F) * rho 80194) = ((1 : F) * rho 80196)

def relationRow2366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80194) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132), ((1 : F), 80146), ((1 : F), 80160), ((1 : F), 80174), ((1 : F), 80188)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80197)

def relationRow2367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80193) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133), ((1 : F), 80147), ((1 : F), 80161), ((1 : F), 80175), ((1 : F), 80189)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80198)

def relationRow2368 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80197) * ((1 : F) * rho 80198) = ((1 : F) * rho 80199)

def relationRow2369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80200) * ((1 : F) + (1 : F) * rho 80199) = ((1 : F) * rho 80197 + (1 : F) * rho 80198)

def relationRow2370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80201) * ((1 : F) + (-1 : F) * rho 80199) = ((1 : F) * rho 80196 + (-1 : F) * rho 80197 + (-1 : F) * rho 80198)

def relationRow2371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77994) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((-1 : F), 80146), ((-1 : F), 80160), ((-1 : F), 80174), ((-1 : F), 80188), ((1 : F), 80200)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80202)

def relationRow2372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77994) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((-1 : F), 80147), ((-1 : F), 80161), ((-1 : F), 80175), ((-1 : F), 80189), ((1 : F), 80201)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80203)

def relationRow2373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80193) * ((1 : F) * rho 80194) = ((1 : F) * rho 80204)

def relationRow2374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80193) * ((1 : F) * rho 80193) = ((1 : F) * rho 80205)

def relationRow2375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80194) * ((1 : F) * rho 80194) = ((1 : F) * rho 80206)

def relationRow2376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80207) * ((-1 : F) * rho 80205 + (1 : F) * rho 80206) = ((2 : F) * rho 80204)

def relationRow2377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80208) * ((2 : F) + (1 : F) * rho 80205 + (-1 : F) * rho 80206) = ((1 : F) * rho 80205 + (1 : F) * rho 80206)

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133), ((1 : F), 80146), ((1 : F), 80147), ((1 : F), 80160), ((1 : F), 80161), ((1 : F), 80174), ((1 : F), 80175), ((1 : F), 80188), ((1 : F), 80189), ((1 : F), 80202), ((1 : F), 80203)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80209)

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80209) * ((1 : F) * rho 80207 + (1 : F) * rho 80208) = ((1 : F) * rho 80210)

def relationRow2380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80208) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132), ((1 : F), 80146), ((1 : F), 80160), ((1 : F), 80174), ((1 : F), 80188), ((1 : F), 80202)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80211)

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80207) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133), ((1 : F), 80147), ((1 : F), 80161), ((1 : F), 80175), ((1 : F), 80189), ((1 : F), 80203)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80212)

def relationRow2382 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80211) * ((1 : F) * rho 80212) = ((1 : F) * rho 80213)

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80214) * ((1 : F) + (1 : F) * rho 80213) = ((1 : F) * rho 80211 + (1 : F) * rho 80212)

def relationRow2384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80215) * ((1 : F) + (-1 : F) * rho 80213) = ((1 : F) * rho 80210 + (-1 : F) * rho 80211 + (-1 : F) * rho 80212)

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((-1 : F), 80146), ((-1 : F), 80160), ((-1 : F), 80174), ((-1 : F), 80188), ((-1 : F), 80202), ((1 : F), 80214)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80216)

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((-1 : F), 80147), ((-1 : F), 80161), ((-1 : F), 80175), ((-1 : F), 80189), ((-1 : F), 80203), ((1 : F), 80215)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80217)

def relationRow2387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80207) * ((1 : F) * rho 80208) = ((1 : F) * rho 80218)

def relationRow2388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80207) * ((1 : F) * rho 80207) = ((1 : F) * rho 80219)

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80208) * ((1 : F) * rho 80208) = ((1 : F) * rho 80220)

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80221) * ((-1 : F) * rho 80219 + (1 : F) * rho 80220) = ((2 : F) * rho 80218)

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80222) * ((2 : F) + (1 : F) * rho 80219 + (-1 : F) * rho 80220) = ((1 : F) * rho 80219 + (1 : F) * rho 80220)

def relationRow2392 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133), ((1 : F), 80146), ((1 : F), 80147), ((1 : F), 80160), ((1 : F), 80161), ((1 : F), 80174), ((1 : F), 80175), ((1 : F), 80188), ((1 : F), 80189), ((1 : F), 80202), ((1 : F), 80203), ((1 : F), 80216), ((1 : F), 80217)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80223)

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80223) * ((1 : F) * rho 80221 + (1 : F) * rho 80222) = ((1 : F) * rho 80224)

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80222) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132), ((1 : F), 80146), ((1 : F), 80160), ((1 : F), 80174), ((1 : F), 80188), ((1 : F), 80202), ((1 : F), 80216)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80225)

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80221) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133), ((1 : F), 80147), ((1 : F), 80161), ((1 : F), 80175), ((1 : F), 80189), ((1 : F), 80203), ((1 : F), 80217)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80226)

def relationRow2396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80225) * ((1 : F) * rho 80226) = ((1 : F) * rho 80227)

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80228) * ((1 : F) + (1 : F) * rho 80227) = ((1 : F) * rho 80225 + (1 : F) * rho 80226)

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80229) * ((1 : F) + (-1 : F) * rho 80227) = ((1 : F) * rho 80224 + (-1 : F) * rho 80225 + (-1 : F) * rho 80226)

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((-1 : F), 80146), ((-1 : F), 80160), ((-1 : F), 80174), ((-1 : F), 80188), ((-1 : F), 80202), ((-1 : F), 80216), ((1 : F), 80228)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80230)

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((-1 : F), 80147), ((-1 : F), 80161), ((-1 : F), 80175), ((-1 : F), 80189), ((-1 : F), 80203), ((-1 : F), 80217), ((1 : F), 80229)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80231)

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80221) * ((1 : F) * rho 80222) = ((1 : F) * rho 80232)

def relationRow2402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80221) * ((1 : F) * rho 80221) = ((1 : F) * rho 80233)

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80222) * ((1 : F) * rho 80222) = ((1 : F) * rho 80234)

def relationRow2404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80235) * ((-1 : F) * rho 80233 + (1 : F) * rho 80234) = ((2 : F) * rho 80232)

def relationRow2405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80236) * ((2 : F) + (1 : F) * rho 80233 + (-1 : F) * rho 80234) = ((1 : F) * rho 80233 + (1 : F) * rho 80234)

def relationRow2406 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80035), ((1 : F), 80048), ((1 : F), 80049), ((1 : F), 80062), ((1 : F), 80063), ((1 : F), 80076), ((1 : F), 80077), ((1 : F), 80090), ((1 : F), 80091), ((1 : F), 80104), ((1 : F), 80105), ((1 : F), 80118), ((1 : F), 80119), ((1 : F), 80132), ((1 : F), 80133), ((1 : F), 80146), ((1 : F), 80147), ((1 : F), 80160), ((1 : F), 80161), ((1 : F), 80174), ((1 : F), 80175), ((1 : F), 80188), ((1 : F), 80189), ((1 : F), 80202), ((1 : F), 80203), ((1 : F), 80216), ((1 : F), 80217), ((1 : F), 80230), ((1 : F), 80231)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80237)

def relationRow2407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80237) * ((1 : F) * rho 80235 + (1 : F) * rho 80236) = ((1 : F) * rho 80238)

def relationRow2408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80236) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩], residual := [((1 : F), 80034), ((1 : F), 80048), ((1 : F), 80062), ((1 : F), 80076), ((1 : F), 80090), ((1 : F), 80104), ((1 : F), 80118), ((1 : F), 80132), ((1 : F), 80146), ((1 : F), 80160), ((1 : F), 80174), ((1 : F), 80188), ((1 : F), 80202), ((1 : F), 80216), ((1 : F), 80230)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80239)

def relationRow2409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80235) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩], residual := [((1 : F), 80035), ((1 : F), 80049), ((1 : F), 80063), ((1 : F), 80077), ((1 : F), 80091), ((1 : F), 80105), ((1 : F), 80119), ((1 : F), 80133), ((1 : F), 80147), ((1 : F), 80161), ((1 : F), 80175), ((1 : F), 80189), ((1 : F), 80203), ((1 : F), 80217), ((1 : F), 80231)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80240)

def relationRow2410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80239) * ((1 : F) * rho 80240) = ((1 : F) * rho 80241)

def relationRow2411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80242) * ((1 : F) + (1 : F) * rho 80241) = ((1 : F) * rho 80239 + (1 : F) * rho 80240)

def relationRow2412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80243) * ((1 : F) + (-1 : F) * rho 80241) = ((1 : F) * rho 80238 + (-1 : F) * rho 80239 + (-1 : F) * rho 80240)

def relationRow2413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77997) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩], residual := [((-1 : F), 80034), ((-1 : F), 80048), ((-1 : F), 80062), ((-1 : F), 80076), ((-1 : F), 80090), ((-1 : F), 80104), ((-1 : F), 80118), ((-1 : F), 80132), ((-1 : F), 80146), ((-1 : F), 80160), ((-1 : F), 80174), ((-1 : F), 80188), ((-1 : F), 80202), ((-1 : F), 80216), ((-1 : F), 80230), ((1 : F), 80242)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80244)

def relationRow2414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77997) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩], residual := [((-1 : F), 80035), ((-1 : F), 80049), ((-1 : F), 80063), ((-1 : F), 80077), ((-1 : F), 80091), ((-1 : F), 80105), ((-1 : F), 80119), ((-1 : F), 80133), ((-1 : F), 80147), ((-1 : F), 80161), ((-1 : F), 80175), ((-1 : F), 80189), ((-1 : F), 80203), ((-1 : F), 80217), ((-1 : F), 80231), ((1 : F), 80243)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80245)

def relationRow2415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80235) * ((1 : F) * rho 80236) = ((1 : F) * rho 80246)

def relationRow2416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80235) * ((1 : F) * rho 80235) = ((1 : F) * rho 80247)

def relationRow2417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80236) * ((1 : F) * rho 80236) = ((1 : F) * rho 80248)

def relationRow2418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80249) * ((-1 : F) * rho 80247 + (1 : F) * rho 80248) = ((2 : F) * rho 80246)

def relationRow2419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80250) * ((2 : F) + (1 : F) * rho 80247 + (-1 : F) * rho 80248) = ((1 : F) * rho 80247 + (1 : F) * rho 80248)

def relationRow2420 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 16⟩, ⟨(1 : F), 80035, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80251)

def relationRow2421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80251) * ((1 : F) * rho 80249 + (1 : F) * rho 80250) = ((1 : F) * rho 80252)

def relationRow2422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80250) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80253)

def relationRow2423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80249) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80254)

def relationRow2424 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80253) * ((1 : F) * rho 80254) = ((1 : F) * rho 80255)

def relationRow2425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80256) * ((1 : F) + (1 : F) * rho 80255) = ((1 : F) * rho 80253 + (1 : F) * rho 80254)

def relationRow2426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80257) * ((1 : F) + (-1 : F) * rho 80255) = ((1 : F) * rho 80252 + (-1 : F) * rho 80253 + (-1 : F) * rho 80254)

def relationRow2427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 16⟩], residual := [((1 : F), 80256)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80258)

def relationRow2428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 16⟩], residual := [((1 : F), 80257)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80259)

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80249) * ((1 : F) * rho 80250) = ((1 : F) * rho 80260)

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80249) * ((1 : F) * rho 80249) = ((1 : F) * rho 80261)

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80250) * ((1 : F) * rho 80250) = ((1 : F) * rho 80262)

def relationRow2432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80263) * ((-1 : F) * rho 80261 + (1 : F) * rho 80262) = ((2 : F) * rho 80260)

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80264) * ((2 : F) + (1 : F) * rho 80261 + (-1 : F) * rho 80262) = ((1 : F) * rho 80261 + (1 : F) * rho 80262)

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 17⟩, ⟨(1 : F), 80035, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80265)

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80265) * ((1 : F) * rho 80263 + (1 : F) * rho 80264) = ((1 : F) * rho 80266)

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80264) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80267)

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80263) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80268)

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80267) * ((1 : F) * rho 80268) = ((1 : F) * rho 80269)

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80270) * ((1 : F) + (1 : F) * rho 80269) = ((1 : F) * rho 80267 + (1 : F) * rho 80268)

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80271) * ((1 : F) + (-1 : F) * rho 80269) = ((1 : F) * rho 80266 + (-1 : F) * rho 80267 + (-1 : F) * rho 80268)

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 17⟩], residual := [((1 : F), 80270)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80272)

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 17⟩], residual := [((1 : F), 80271)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80273)

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80263) * ((1 : F) * rho 80264) = ((1 : F) * rho 80274)

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80263) * ((1 : F) * rho 80263) = ((1 : F) * rho 80275)

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80264) * ((1 : F) * rho 80264) = ((1 : F) * rho 80276)

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80277) * ((-1 : F) * rho 80275 + (1 : F) * rho 80276) = ((2 : F) * rho 80274)

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80278) * ((2 : F) + (1 : F) * rho 80275 + (-1 : F) * rho 80276) = ((1 : F) * rho 80275 + (1 : F) * rho 80276)

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 18⟩, ⟨(1 : F), 80035, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80279)

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80279) * ((1 : F) * rho 80277 + (1 : F) * rho 80278) = ((1 : F) * rho 80280)

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80278) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80281)

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80277) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80282)

def relationRow2452 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80281) * ((1 : F) * rho 80282) = ((1 : F) * rho 80283)

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80284) * ((1 : F) + (1 : F) * rho 80283) = ((1 : F) * rho 80281 + (1 : F) * rho 80282)

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80285) * ((1 : F) + (-1 : F) * rho 80283) = ((1 : F) * rho 80280 + (-1 : F) * rho 80281 + (-1 : F) * rho 80282)

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 18⟩], residual := [((1 : F), 80284)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80286)

def relationRow2456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 18⟩], residual := [((1 : F), 80285)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80287)

def relationRow2457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80277) * ((1 : F) * rho 80278) = ((1 : F) * rho 80288)

def relationRow2458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80277) * ((1 : F) * rho 80277) = ((1 : F) * rho 80289)

def relationRow2459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80278) * ((1 : F) * rho 80278) = ((1 : F) * rho 80290)

def relationRow2460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80291) * ((-1 : F) * rho 80289 + (1 : F) * rho 80290) = ((2 : F) * rho 80288)

def relationRow2461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80292) * ((2 : F) + (1 : F) * rho 80289 + (-1 : F) * rho 80290) = ((1 : F) * rho 80289 + (1 : F) * rho 80290)

def relationRow2462 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 19⟩, ⟨(1 : F), 80035, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80293)

def relationRow2463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80293) * ((1 : F) * rho 80291 + (1 : F) * rho 80292) = ((1 : F) * rho 80294)

def relationRow2464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80292) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80295)

def relationRow2465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80291) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80296)

def relationRow2466 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80295) * ((1 : F) * rho 80296) = ((1 : F) * rho 80297)

def relationRow2467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80298) * ((1 : F) + (1 : F) * rho 80297) = ((1 : F) * rho 80295 + (1 : F) * rho 80296)

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80299) * ((1 : F) + (-1 : F) * rho 80297) = ((1 : F) * rho 80294 + (-1 : F) * rho 80295 + (-1 : F) * rho 80296)

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78001) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 19⟩], residual := [((1 : F), 80298)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80300)

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78001) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 19⟩], residual := [((1 : F), 80299)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80301)

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80291) * ((1 : F) * rho 80292) = ((1 : F) * rho 80302)

def relationRow2472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80291) * ((1 : F) * rho 80291) = ((1 : F) * rho 80303)

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80292) * ((1 : F) * rho 80292) = ((1 : F) * rho 80304)

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80305) * ((-1 : F) * rho 80303 + (1 : F) * rho 80304) = ((2 : F) * rho 80302)

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80306) * ((2 : F) + (1 : F) * rho 80303 + (-1 : F) * rho 80304) = ((1 : F) * rho 80303 + (1 : F) * rho 80304)

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 20⟩, ⟨(1 : F), 80035, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80307)

def relationRow2477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80307) * ((1 : F) * rho 80305 + (1 : F) * rho 80306) = ((1 : F) * rho 80308)

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80306) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80309)

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80305) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80310)

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80309) * ((1 : F) * rho 80310) = ((1 : F) * rho 80311)

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80312) * ((1 : F) + (1 : F) * rho 80311) = ((1 : F) * rho 80309 + (1 : F) * rho 80310)

def relationRow2482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80313) * ((1 : F) + (-1 : F) * rho 80311) = ((1 : F) * rho 80308 + (-1 : F) * rho 80309 + (-1 : F) * rho 80310)

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 20⟩], residual := [((1 : F), 80312)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80314)

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78002) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 20⟩], residual := [((1 : F), 80313)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80315)

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80305) * ((1 : F) * rho 80306) = ((1 : F) * rho 80316)

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80305) * ((1 : F) * rho 80305) = ((1 : F) * rho 80317)

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80306) * ((1 : F) * rho 80306) = ((1 : F) * rho 80318)

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80319) * ((-1 : F) * rho 80317 + (1 : F) * rho 80318) = ((2 : F) * rho 80316)

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80320) * ((2 : F) + (1 : F) * rho 80317 + (-1 : F) * rho 80318) = ((1 : F) * rho 80317 + (1 : F) * rho 80318)

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 21⟩, ⟨(1 : F), 80035, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80321)

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80321) * ((1 : F) * rho 80319 + (1 : F) * rho 80320) = ((1 : F) * rho 80322)

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80320) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80323)

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80319) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80324)

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80323) * ((1 : F) * rho 80324) = ((1 : F) * rho 80325)

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80326) * ((1 : F) + (1 : F) * rho 80325) = ((1 : F) * rho 80323 + (1 : F) * rho 80324)

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80327) * ((1 : F) + (-1 : F) * rho 80325) = ((1 : F) * rho 80322 + (-1 : F) * rho 80323 + (-1 : F) * rho 80324)

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 21⟩], residual := [((1 : F), 80326)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80328)

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 21⟩], residual := [((1 : F), 80327)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80329)

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80319) * ((1 : F) * rho 80320) = ((1 : F) * rho 80330)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80319) * ((1 : F) * rho 80319) = ((1 : F) * rho 80331)

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80320) * ((1 : F) * rho 80320) = ((1 : F) * rho 80332)

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80333) * ((-1 : F) * rho 80331 + (1 : F) * rho 80332) = ((2 : F) * rho 80330)

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80334) * ((2 : F) + (1 : F) * rho 80331 + (-1 : F) * rho 80332) = ((1 : F) * rho 80331 + (1 : F) * rho 80332)

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 22⟩, ⟨(1 : F), 80035, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80335)

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80335) * ((1 : F) * rho 80333 + (1 : F) * rho 80334) = ((1 : F) * rho 80336)

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80334) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80337)

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80333) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80338)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80337) * ((1 : F) * rho 80338) = ((1 : F) * rho 80339)

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80340) * ((1 : F) + (1 : F) * rho 80339) = ((1 : F) * rho 80337 + (1 : F) * rho 80338)

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80341) * ((1 : F) + (-1 : F) * rho 80339) = ((1 : F) * rho 80336 + (-1 : F) * rho 80337 + (-1 : F) * rho 80338)

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 22⟩], residual := [((1 : F), 80340)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80342)

def relationRow2512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 22⟩], residual := [((1 : F), 80341)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80343)

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80333) * ((1 : F) * rho 80334) = ((1 : F) * rho 80344)

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80333) * ((1 : F) * rho 80333) = ((1 : F) * rho 80345)

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80334) * ((1 : F) * rho 80334) = ((1 : F) * rho 80346)

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80347) * ((-1 : F) * rho 80345 + (1 : F) * rho 80346) = ((2 : F) * rho 80344)

def relationRow2517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80348) * ((2 : F) + (1 : F) * rho 80345 + (-1 : F) * rho 80346) = ((1 : F) * rho 80345 + (1 : F) * rho 80346)

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 23⟩, ⟨(1 : F), 80035, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80349)

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80349) * ((1 : F) * rho 80347 + (1 : F) * rho 80348) = ((1 : F) * rho 80350)

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80348) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80351)

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80347) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80352)

def relationRow2522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80351) * ((1 : F) * rho 80352) = ((1 : F) * rho 80353)

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80354) * ((1 : F) + (1 : F) * rho 80353) = ((1 : F) * rho 80351 + (1 : F) * rho 80352)

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80355) * ((1 : F) + (-1 : F) * rho 80353) = ((1 : F) * rho 80350 + (-1 : F) * rho 80351 + (-1 : F) * rho 80352)

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 23⟩], residual := [((1 : F), 80354)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80356)

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 23⟩], residual := [((1 : F), 80355)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80357)

def relationRow2527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80347) * ((1 : F) * rho 80348) = ((1 : F) * rho 80358)

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80347) * ((1 : F) * rho 80347) = ((1 : F) * rho 80359)

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80348) * ((1 : F) * rho 80348) = ((1 : F) * rho 80360)

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80361) * ((-1 : F) * rho 80359 + (1 : F) * rho 80360) = ((2 : F) * rho 80358)

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80362) * ((2 : F) + (1 : F) * rho 80359 + (-1 : F) * rho 80360) = ((1 : F) * rho 80359 + (1 : F) * rho 80360)

def relationRow2532 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 24⟩, ⟨(1 : F), 80035, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80363)

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80363) * ((1 : F) * rho 80361 + (1 : F) * rho 80362) = ((1 : F) * rho 80364)

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80362) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80365)

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80361) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80366)

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80365) * ((1 : F) * rho 80366) = ((1 : F) * rho 80367)

def relationRow2537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80368) * ((1 : F) + (1 : F) * rho 80367) = ((1 : F) * rho 80365 + (1 : F) * rho 80366)

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80369) * ((1 : F) + (-1 : F) * rho 80367) = ((1 : F) * rho 80364 + (-1 : F) * rho 80365 + (-1 : F) * rho 80366)

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 24⟩], residual := [((1 : F), 80368)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80370)

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 24⟩], residual := [((1 : F), 80369)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80371)

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80361) * ((1 : F) * rho 80362) = ((1 : F) * rho 80372)

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80361) * ((1 : F) * rho 80361) = ((1 : F) * rho 80373)

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80362) * ((1 : F) * rho 80362) = ((1 : F) * rho 80374)

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80375) * ((-1 : F) * rho 80373 + (1 : F) * rho 80374) = ((2 : F) * rho 80372)

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80376) * ((2 : F) + (1 : F) * rho 80373 + (-1 : F) * rho 80374) = ((1 : F) * rho 80373 + (1 : F) * rho 80374)

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 25⟩, ⟨(1 : F), 80035, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80377)

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80377) * ((1 : F) * rho 80375 + (1 : F) * rho 80376) = ((1 : F) * rho 80378)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80376) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80379)

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80375) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80380)

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80379) * ((1 : F) * rho 80380) = ((1 : F) * rho 80381)

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80382) * ((1 : F) + (1 : F) * rho 80381) = ((1 : F) * rho 80379 + (1 : F) * rho 80380)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80383) * ((1 : F) + (-1 : F) * rho 80381) = ((1 : F) * rho 80378 + (-1 : F) * rho 80379 + (-1 : F) * rho 80380)

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78007) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 25⟩], residual := [((1 : F), 80382)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80384)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78007) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 25⟩], residual := [((1 : F), 80383)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80385)

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80375) * ((1 : F) * rho 80376) = ((1 : F) * rho 80386)

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80375) * ((1 : F) * rho 80375) = ((1 : F) * rho 80387)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80376) * ((1 : F) * rho 80376) = ((1 : F) * rho 80388)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80389) * ((-1 : F) * rho 80387 + (1 : F) * rho 80388) = ((2 : F) * rho 80386)

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80390) * ((2 : F) + (1 : F) * rho 80387 + (-1 : F) * rho 80388) = ((1 : F) * rho 80387 + (1 : F) * rho 80388)

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 26⟩, ⟨(1 : F), 80035, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80391)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80391) * ((1 : F) * rho 80389 + (1 : F) * rho 80390) = ((1 : F) * rho 80392)

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80390) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80393)

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80389) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80394)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80393) * ((1 : F) * rho 80394) = ((1 : F) * rho 80395)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80396) * ((1 : F) + (1 : F) * rho 80395) = ((1 : F) * rho 80393 + (1 : F) * rho 80394)

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80397) * ((1 : F) + (-1 : F) * rho 80395) = ((1 : F) * rho 80392 + (-1 : F) * rho 80393 + (-1 : F) * rho 80394)

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 26⟩], residual := [((1 : F), 80396)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80398)

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 26⟩], residual := [((1 : F), 80397)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80399)

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80389) * ((1 : F) * rho 80390) = ((1 : F) * rho 80400)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80389) * ((1 : F) * rho 80389) = ((1 : F) * rho 80401)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80390) * ((1 : F) * rho 80390) = ((1 : F) * rho 80402)

def relationRow2572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80403) * ((-1 : F) * rho 80401 + (1 : F) * rho 80402) = ((2 : F) * rho 80400)

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80404) * ((2 : F) + (1 : F) * rho 80401 + (-1 : F) * rho 80402) = ((1 : F) * rho 80401 + (1 : F) * rho 80402)

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 27⟩, ⟨(1 : F), 80035, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80405)

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80405) * ((1 : F) * rho 80403 + (1 : F) * rho 80404) = ((1 : F) * rho 80406)

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80404) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80407)

def relationRow2577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80403) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80408)

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80407) * ((1 : F) * rho 80408) = ((1 : F) * rho 80409)

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80410) * ((1 : F) + (1 : F) * rho 80409) = ((1 : F) * rho 80407 + (1 : F) * rho 80408)

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80411) * ((1 : F) + (-1 : F) * rho 80409) = ((1 : F) * rho 80406 + (-1 : F) * rho 80407 + (-1 : F) * rho 80408)

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 27⟩], residual := [((1 : F), 80410)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80412)

def relationRow2582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 27⟩], residual := [((1 : F), 80411)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80413)

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80403) * ((1 : F) * rho 80404) = ((1 : F) * rho 80414)

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80403) * ((1 : F) * rho 80403) = ((1 : F) * rho 80415)

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80404) * ((1 : F) * rho 80404) = ((1 : F) * rho 80416)

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80417) * ((-1 : F) * rho 80415 + (1 : F) * rho 80416) = ((2 : F) * rho 80414)

def relationRow2587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80418) * ((2 : F) + (1 : F) * rho 80415 + (-1 : F) * rho 80416) = ((1 : F) * rho 80415 + (1 : F) * rho 80416)

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 28⟩, ⟨(1 : F), 80035, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80419)

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80419) * ((1 : F) * rho 80417 + (1 : F) * rho 80418) = ((1 : F) * rho 80420)

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80418) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80421)

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80417) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80422)

def relationRow2592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80421) * ((1 : F) * rho 80422) = ((1 : F) * rho 80423)

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80424) * ((1 : F) + (1 : F) * rho 80423) = ((1 : F) * rho 80421 + (1 : F) * rho 80422)

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80425) * ((1 : F) + (-1 : F) * rho 80423) = ((1 : F) * rho 80420 + (-1 : F) * rho 80421 + (-1 : F) * rho 80422)

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78010) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 28⟩], residual := [((1 : F), 80424)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80426)

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78010) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 28⟩], residual := [((1 : F), 80425)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80427)

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80417) * ((1 : F) * rho 80418) = ((1 : F) * rho 80428)

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80417) * ((1 : F) * rho 80417) = ((1 : F) * rho 80429)

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80418) * ((1 : F) * rho 80418) = ((1 : F) * rho 80430)

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80431) * ((-1 : F) * rho 80429 + (1 : F) * rho 80430) = ((2 : F) * rho 80428)

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80432) * ((2 : F) + (1 : F) * rho 80429 + (-1 : F) * rho 80430) = ((1 : F) * rho 80429 + (1 : F) * rho 80430)

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 29⟩, ⟨(1 : F), 80035, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80433)

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80433) * ((1 : F) * rho 80431 + (1 : F) * rho 80432) = ((1 : F) * rho 80434)

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80432) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80435)

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80431) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80436)

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80435) * ((1 : F) * rho 80436) = ((1 : F) * rho 80437)

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80438) * ((1 : F) + (1 : F) * rho 80437) = ((1 : F) * rho 80435 + (1 : F) * rho 80436)

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80439) * ((1 : F) + (-1 : F) * rho 80437) = ((1 : F) * rho 80434 + (-1 : F) * rho 80435 + (-1 : F) * rho 80436)

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78011) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 29⟩], residual := [((1 : F), 80438)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80440)

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78011) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 29⟩], residual := [((1 : F), 80439)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80441)

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80431) * ((1 : F) * rho 80432) = ((1 : F) * rho 80442)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80431) * ((1 : F) * rho 80431) = ((1 : F) * rho 80443)

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80432) * ((1 : F) * rho 80432) = ((1 : F) * rho 80444)

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80445) * ((-1 : F) * rho 80443 + (1 : F) * rho 80444) = ((2 : F) * rho 80442)

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80446) * ((2 : F) + (1 : F) * rho 80443 + (-1 : F) * rho 80444) = ((1 : F) * rho 80443 + (1 : F) * rho 80444)

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 30⟩, ⟨(1 : F), 80035, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80447)

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80447) * ((1 : F) * rho 80445 + (1 : F) * rho 80446) = ((1 : F) * rho 80448)

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80449)

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80445) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80450)

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80449) * ((1 : F) * rho 80450) = ((1 : F) * rho 80451)

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80452) * ((1 : F) + (1 : F) * rho 80451) = ((1 : F) * rho 80449 + (1 : F) * rho 80450)

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80453) * ((1 : F) + (-1 : F) * rho 80451) = ((1 : F) * rho 80448 + (-1 : F) * rho 80449 + (-1 : F) * rho 80450)

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 30⟩], residual := [((1 : F), 80452)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80454)

def relationRow2624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 30⟩], residual := [((1 : F), 80453)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80455)

def relationRow2625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80445) * ((1 : F) * rho 80446) = ((1 : F) * rho 80456)

def relationRow2626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80445) * ((1 : F) * rho 80445) = ((1 : F) * rho 80457)

def relationRow2627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80446) * ((1 : F) * rho 80446) = ((1 : F) * rho 80458)

def relationRow2628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80459) * ((-1 : F) * rho 80457 + (1 : F) * rho 80458) = ((2 : F) * rho 80456)

def relationRow2629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80460) * ((2 : F) + (1 : F) * rho 80457 + (-1 : F) * rho 80458) = ((1 : F) * rho 80457 + (1 : F) * rho 80458)

def relationRow2630 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 31⟩, ⟨(1 : F), 80035, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80461)

def relationRow2631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80461) * ((1 : F) * rho 80459 + (1 : F) * rho 80460) = ((1 : F) * rho 80462)

def relationRow2632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80460) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80463)

def relationRow2633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80464)

def relationRow2634 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80463) * ((1 : F) * rho 80464) = ((1 : F) * rho 80465)

def relationRow2635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80466) * ((1 : F) + (1 : F) * rho 80465) = ((1 : F) * rho 80463 + (1 : F) * rho 80464)

def relationRow2636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80467) * ((1 : F) + (-1 : F) * rho 80465) = ((1 : F) * rho 80462 + (-1 : F) * rho 80463 + (-1 : F) * rho 80464)

def relationRow2637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 31⟩], residual := [((1 : F), 80466)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80468)

def relationRow2638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 31⟩], residual := [((1 : F), 80467)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80469)

def relationRow2639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80459) * ((1 : F) * rho 80460) = ((1 : F) * rho 80470)

def relationRow2640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80459) * ((1 : F) * rho 80459) = ((1 : F) * rho 80471)

def relationRow2641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80460) * ((1 : F) * rho 80460) = ((1 : F) * rho 80472)

def relationRow2642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80473) * ((-1 : F) * rho 80471 + (1 : F) * rho 80472) = ((2 : F) * rho 80470)

def relationRow2643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80474) * ((2 : F) + (1 : F) * rho 80471 + (-1 : F) * rho 80472) = ((1 : F) * rho 80471 + (1 : F) * rho 80472)

def relationRow2644 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 32⟩, ⟨(1 : F), 80035, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80475)

def relationRow2645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80475) * ((1 : F) * rho 80473 + (1 : F) * rho 80474) = ((1 : F) * rho 80476)

def relationRow2646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80474) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80477)

def relationRow2647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80473) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80478)

def relationRow2648 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80477) * ((1 : F) * rho 80478) = ((1 : F) * rho 80479)

def relationRow2649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80480) * ((1 : F) + (1 : F) * rho 80479) = ((1 : F) * rho 80477 + (1 : F) * rho 80478)

def relationRow2650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80481) * ((1 : F) + (-1 : F) * rho 80479) = ((1 : F) * rho 80476 + (-1 : F) * rho 80477 + (-1 : F) * rho 80478)

def relationRow2651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78014) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 32⟩], residual := [((1 : F), 80480)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80482)

def relationRow2652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78014) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 32⟩], residual := [((1 : F), 80481)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80483)

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80473) * ((1 : F) * rho 80474) = ((1 : F) * rho 80484)

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80473) * ((1 : F) * rho 80473) = ((1 : F) * rho 80485)

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80474) * ((1 : F) * rho 80474) = ((1 : F) * rho 80486)

def relationRow2656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80487) * ((-1 : F) * rho 80485 + (1 : F) * rho 80486) = ((2 : F) * rho 80484)

def relationRow2657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80488) * ((2 : F) + (1 : F) * rho 80485 + (-1 : F) * rho 80486) = ((1 : F) * rho 80485 + (1 : F) * rho 80486)

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 33⟩, ⟨(1 : F), 80035, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80489)

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80489) * ((1 : F) * rho 80487 + (1 : F) * rho 80488) = ((1 : F) * rho 80490)

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80488) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80491)

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80487) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80492)

def relationRow2662 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80491) * ((1 : F) * rho 80492) = ((1 : F) * rho 80493)

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80494) * ((1 : F) + (1 : F) * rho 80493) = ((1 : F) * rho 80491 + (1 : F) * rho 80492)

def relationRow2664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80495) * ((1 : F) + (-1 : F) * rho 80493) = ((1 : F) * rho 80490 + (-1 : F) * rho 80491 + (-1 : F) * rho 80492)

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 33⟩], residual := [((1 : F), 80494)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80496)

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78015) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 33⟩], residual := [((1 : F), 80495)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80497)

def relationRow2667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80487) * ((1 : F) * rho 80488) = ((1 : F) * rho 80498)

def relationRow2668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80487) * ((1 : F) * rho 80487) = ((1 : F) * rho 80499)

def relationRow2669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80488) * ((1 : F) * rho 80488) = ((1 : F) * rho 80500)

def relationRow2670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80501) * ((-1 : F) * rho 80499 + (1 : F) * rho 80500) = ((2 : F) * rho 80498)

def relationRow2671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80502) * ((2 : F) + (1 : F) * rho 80499 + (-1 : F) * rho 80500) = ((1 : F) * rho 80499 + (1 : F) * rho 80500)

def relationRow2672 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 34⟩, ⟨(1 : F), 80035, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80503)

def relationRow2673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80503) * ((1 : F) * rho 80501 + (1 : F) * rho 80502) = ((1 : F) * rho 80504)

def relationRow2674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80502) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80505)

def relationRow2675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80501) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80506)

def relationRow2676 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80505) * ((1 : F) * rho 80506) = ((1 : F) * rho 80507)

def relationRow2677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80508) * ((1 : F) + (1 : F) * rho 80507) = ((1 : F) * rho 80505 + (1 : F) * rho 80506)

def relationRow2678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80509) * ((1 : F) + (-1 : F) * rho 80507) = ((1 : F) * rho 80504 + (-1 : F) * rho 80505 + (-1 : F) * rho 80506)

def relationRow2679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 34⟩], residual := [((1 : F), 80508)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80510)

def relationRow2680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 34⟩], residual := [((1 : F), 80509)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80511)

def relationRow2681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80501) * ((1 : F) * rho 80502) = ((1 : F) * rho 80512)

def relationRow2682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80501) * ((1 : F) * rho 80501) = ((1 : F) * rho 80513)

def relationRow2683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80502) * ((1 : F) * rho 80502) = ((1 : F) * rho 80514)

def relationRow2684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80515) * ((-1 : F) * rho 80513 + (1 : F) * rho 80514) = ((2 : F) * rho 80512)

def relationRow2685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80516) * ((2 : F) + (1 : F) * rho 80513 + (-1 : F) * rho 80514) = ((1 : F) * rho 80513 + (1 : F) * rho 80514)

def relationRow2686 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 35⟩, ⟨(1 : F), 80035, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80517)

def relationRow2687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80517) * ((1 : F) * rho 80515 + (1 : F) * rho 80516) = ((1 : F) * rho 80518)

def relationRow2688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80516) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80519)

def relationRow2689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80515) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80520)

def relationRow2690 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80519) * ((1 : F) * rho 80520) = ((1 : F) * rho 80521)

def relationRow2691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80522) * ((1 : F) + (1 : F) * rho 80521) = ((1 : F) * rho 80519 + (1 : F) * rho 80520)

def relationRow2692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80523) * ((1 : F) + (-1 : F) * rho 80521) = ((1 : F) * rho 80518 + (-1 : F) * rho 80519 + (-1 : F) * rho 80520)

def relationRow2693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 35⟩], residual := [((1 : F), 80522)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80524)

def relationRow2694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 35⟩], residual := [((1 : F), 80523)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80525)

def relationRow2695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80515) * ((1 : F) * rho 80516) = ((1 : F) * rho 80526)

def relationRow2696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80515) * ((1 : F) * rho 80515) = ((1 : F) * rho 80527)

def relationRow2697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80516) * ((1 : F) * rho 80516) = ((1 : F) * rho 80528)

def relationRow2698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80529) * ((-1 : F) * rho 80527 + (1 : F) * rho 80528) = ((2 : F) * rho 80526)

def relationRow2699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80530) * ((2 : F) + (1 : F) * rho 80527 + (-1 : F) * rho 80528) = ((1 : F) * rho 80527 + (1 : F) * rho 80528)

def relationRow2700 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 36⟩, ⟨(1 : F), 80035, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80531)

def relationRow2701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80531) * ((1 : F) * rho 80529 + (1 : F) * rho 80530) = ((1 : F) * rho 80532)

def relationRow2702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80530) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80533)

def relationRow2703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80529) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80534)

def relationRow2704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80533) * ((1 : F) * rho 80534) = ((1 : F) * rho 80535)

def relationRow2705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80536) * ((1 : F) + (1 : F) * rho 80535) = ((1 : F) * rho 80533 + (1 : F) * rho 80534)

def relationRow2706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80537) * ((1 : F) + (-1 : F) * rho 80535) = ((1 : F) * rho 80532 + (-1 : F) * rho 80533 + (-1 : F) * rho 80534)

def relationRow2707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 36⟩], residual := [((1 : F), 80536)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80538)

def relationRow2708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 36⟩], residual := [((1 : F), 80537)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80539)

def relationRow2709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80529) * ((1 : F) * rho 80530) = ((1 : F) * rho 80540)

def relationRow2710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80529) * ((1 : F) * rho 80529) = ((1 : F) * rho 80541)

def relationRow2711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80530) * ((1 : F) * rho 80530) = ((1 : F) * rho 80542)

def relationRow2712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80543) * ((-1 : F) * rho 80541 + (1 : F) * rho 80542) = ((2 : F) * rho 80540)

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80544) * ((2 : F) + (1 : F) * rho 80541 + (-1 : F) * rho 80542) = ((1 : F) * rho 80541 + (1 : F) * rho 80542)

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 37⟩, ⟨(1 : F), 80035, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80545)

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80545) * ((1 : F) * rho 80543 + (1 : F) * rho 80544) = ((1 : F) * rho 80546)

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80544) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80547)

def relationRow2717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80543) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80548)

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80547) * ((1 : F) * rho 80548) = ((1 : F) * rho 80549)

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80550) * ((1 : F) + (1 : F) * rho 80549) = ((1 : F) * rho 80547 + (1 : F) * rho 80548)

def relationRow2720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80551) * ((1 : F) + (-1 : F) * rho 80549) = ((1 : F) * rho 80546 + (-1 : F) * rho 80547 + (-1 : F) * rho 80548)

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 37⟩], residual := [((1 : F), 80550)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80552)

def relationRow2722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 37⟩], residual := [((1 : F), 80551)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80553)

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80543) * ((1 : F) * rho 80544) = ((1 : F) * rho 80554)

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80543) * ((1 : F) * rho 80543) = ((1 : F) * rho 80555)

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80544) * ((1 : F) * rho 80544) = ((1 : F) * rho 80556)

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80557) * ((-1 : F) * rho 80555 + (1 : F) * rho 80556) = ((2 : F) * rho 80554)

def relationRow2727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80558) * ((2 : F) + (1 : F) * rho 80555 + (-1 : F) * rho 80556) = ((1 : F) * rho 80555 + (1 : F) * rho 80556)

def relationRow2728 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 38⟩, ⟨(1 : F), 80035, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80559)

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80559) * ((1 : F) * rho 80557 + (1 : F) * rho 80558) = ((1 : F) * rho 80560)

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80558) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80561)

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80557) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80562)

def relationRow2732 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80561) * ((1 : F) * rho 80562) = ((1 : F) * rho 80563)

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80564) * ((1 : F) + (1 : F) * rho 80563) = ((1 : F) * rho 80561 + (1 : F) * rho 80562)

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80565) * ((1 : F) + (-1 : F) * rho 80563) = ((1 : F) * rho 80560 + (-1 : F) * rho 80561 + (-1 : F) * rho 80562)

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 38⟩], residual := [((1 : F), 80564)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80566)

def relationRow2736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 38⟩], residual := [((1 : F), 80565)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80567)

def relationRow2737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80557) * ((1 : F) * rho 80558) = ((1 : F) * rho 80568)

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80557) * ((1 : F) * rho 80557) = ((1 : F) * rho 80569)

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80558) * ((1 : F) * rho 80558) = ((1 : F) * rho 80570)

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80571) * ((-1 : F) * rho 80569 + (1 : F) * rho 80570) = ((2 : F) * rho 80568)

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80572) * ((2 : F) + (1 : F) * rho 80569 + (-1 : F) * rho 80570) = ((1 : F) * rho 80569 + (1 : F) * rho 80570)

def relationRow2742 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 39⟩, ⟨(1 : F), 80035, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80573)

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80573) * ((1 : F) * rho 80571 + (1 : F) * rho 80572) = ((1 : F) * rho 80574)

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80572) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80575)

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80571) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80576)

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80575) * ((1 : F) * rho 80576) = ((1 : F) * rho 80577)

def relationRow2747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80578) * ((1 : F) + (1 : F) * rho 80577) = ((1 : F) * rho 80575 + (1 : F) * rho 80576)

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80579) * ((1 : F) + (-1 : F) * rho 80577) = ((1 : F) * rho 80574 + (-1 : F) * rho 80575 + (-1 : F) * rho 80576)

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 39⟩], residual := [((1 : F), 80578)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80580)

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 39⟩], residual := [((1 : F), 80579)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80581)

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80571) * ((1 : F) * rho 80572) = ((1 : F) * rho 80582)

def relationRow2752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80571) * ((1 : F) * rho 80571) = ((1 : F) * rho 80583)

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80572) * ((1 : F) * rho 80572) = ((1 : F) * rho 80584)

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80585) * ((-1 : F) * rho 80583 + (1 : F) * rho 80584) = ((2 : F) * rho 80582)

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80586) * ((2 : F) + (1 : F) * rho 80583 + (-1 : F) * rho 80584) = ((1 : F) * rho 80583 + (1 : F) * rho 80584)

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 40⟩, ⟨(1 : F), 80035, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80587)

def relationRow2757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80587) * ((1 : F) * rho 80585 + (1 : F) * rho 80586) = ((1 : F) * rho 80588)

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80586) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80589)

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80585) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80590)

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80589) * ((1 : F) * rho 80590) = ((1 : F) * rho 80591)

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80592) * ((1 : F) + (1 : F) * rho 80591) = ((1 : F) * rho 80589 + (1 : F) * rho 80590)

def relationRow2762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80593) * ((1 : F) + (-1 : F) * rho 80591) = ((1 : F) * rho 80588 + (-1 : F) * rho 80589 + (-1 : F) * rho 80590)

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 40⟩], residual := [((1 : F), 80592)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80594)

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 40⟩], residual := [((1 : F), 80593)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80595)

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80585) * ((1 : F) * rho 80586) = ((1 : F) * rho 80596)

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80585) * ((1 : F) * rho 80585) = ((1 : F) * rho 80597)

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80586) * ((1 : F) * rho 80586) = ((1 : F) * rho 80598)

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80599) * ((-1 : F) * rho 80597 + (1 : F) * rho 80598) = ((2 : F) * rho 80596)

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80600) * ((2 : F) + (1 : F) * rho 80597 + (-1 : F) * rho 80598) = ((1 : F) * rho 80597 + (1 : F) * rho 80598)

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 41⟩, ⟨(1 : F), 80035, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80601)

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80601) * ((1 : F) * rho 80599 + (1 : F) * rho 80600) = ((1 : F) * rho 80602)

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80600) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80603)

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80599) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80604)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80603) * ((1 : F) * rho 80604) = ((1 : F) * rho 80605)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80606) * ((1 : F) + (1 : F) * rho 80605) = ((1 : F) * rho 80603 + (1 : F) * rho 80604)

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80607) * ((1 : F) + (-1 : F) * rho 80605) = ((1 : F) * rho 80602 + (-1 : F) * rho 80603 + (-1 : F) * rho 80604)

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78023) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 41⟩], residual := [((1 : F), 80606)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80608)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78023) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 41⟩], residual := [((1 : F), 80607)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80609)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80599) * ((1 : F) * rho 80600) = ((1 : F) * rho 80610)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80599) * ((1 : F) * rho 80599) = ((1 : F) * rho 80611)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80600) * ((1 : F) * rho 80600) = ((1 : F) * rho 80612)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80613) * ((-1 : F) * rho 80611 + (1 : F) * rho 80612) = ((2 : F) * rho 80610)

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80614) * ((2 : F) + (1 : F) * rho 80611 + (-1 : F) * rho 80612) = ((1 : F) * rho 80611 + (1 : F) * rho 80612)

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 42⟩, ⟨(1 : F), 80035, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80615)

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80615) * ((1 : F) * rho 80613 + (1 : F) * rho 80614) = ((1 : F) * rho 80616)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80614) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80617)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80613) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80618)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80617) * ((1 : F) * rho 80618) = ((1 : F) * rho 80619)

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80620) * ((1 : F) + (1 : F) * rho 80619) = ((1 : F) * rho 80617 + (1 : F) * rho 80618)

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80621) * ((1 : F) + (-1 : F) * rho 80619) = ((1 : F) * rho 80616 + (-1 : F) * rho 80617 + (-1 : F) * rho 80618)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 42⟩], residual := [((1 : F), 80620)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80622)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 42⟩], residual := [((1 : F), 80621)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80623)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80613) * ((1 : F) * rho 80614) = ((1 : F) * rho 80624)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80613) * ((1 : F) * rho 80613) = ((1 : F) * rho 80625)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80614) * ((1 : F) * rho 80614) = ((1 : F) * rho 80626)

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80627) * ((-1 : F) * rho 80625 + (1 : F) * rho 80626) = ((2 : F) * rho 80624)

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80628) * ((2 : F) + (1 : F) * rho 80625 + (-1 : F) * rho 80626) = ((1 : F) * rho 80625 + (1 : F) * rho 80626)

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 43⟩, ⟨(1 : F), 80035, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80629)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80629) * ((1 : F) * rho 80627 + (1 : F) * rho 80628) = ((1 : F) * rho 80630)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80628) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80631)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80627) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80632)

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80631) * ((1 : F) * rho 80632) = ((1 : F) * rho 80633)

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80634) * ((1 : F) + (1 : F) * rho 80633) = ((1 : F) * rho 80631 + (1 : F) * rho 80632)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80635) * ((1 : F) + (-1 : F) * rho 80633) = ((1 : F) * rho 80630 + (-1 : F) * rho 80631 + (-1 : F) * rho 80632)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 43⟩], residual := [((1 : F), 80634)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80636)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 43⟩], residual := [((1 : F), 80635)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80637)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80627) * ((1 : F) * rho 80628) = ((1 : F) * rho 80638)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80627) * ((1 : F) * rho 80627) = ((1 : F) * rho 80639)

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80628) * ((1 : F) * rho 80628) = ((1 : F) * rho 80640)

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80641) * ((-1 : F) * rho 80639 + (1 : F) * rho 80640) = ((2 : F) * rho 80638)

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80642) * ((2 : F) + (1 : F) * rho 80639 + (-1 : F) * rho 80640) = ((1 : F) * rho 80639 + (1 : F) * rho 80640)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 44⟩, ⟨(1 : F), 80035, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80643)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80643) * ((1 : F) * rho 80641 + (1 : F) * rho 80642) = ((1 : F) * rho 80644)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80642) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80645)

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80641) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80646)

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80645) * ((1 : F) * rho 80646) = ((1 : F) * rho 80647)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80648) * ((1 : F) + (1 : F) * rho 80647) = ((1 : F) * rho 80645 + (1 : F) * rho 80646)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80649) * ((1 : F) + (-1 : F) * rho 80647) = ((1 : F) * rho 80644 + (-1 : F) * rho 80645 + (-1 : F) * rho 80646)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 44⟩], residual := [((1 : F), 80648)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80650)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 44⟩], residual := [((1 : F), 80649)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80651)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80641) * ((1 : F) * rho 80642) = ((1 : F) * rho 80652)

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80641) * ((1 : F) * rho 80641) = ((1 : F) * rho 80653)

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80642) * ((1 : F) * rho 80642) = ((1 : F) * rho 80654)

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80655) * ((-1 : F) * rho 80653 + (1 : F) * rho 80654) = ((2 : F) * rho 80652)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80656) * ((2 : F) + (1 : F) * rho 80653 + (-1 : F) * rho 80654) = ((1 : F) * rho 80653 + (1 : F) * rho 80654)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 45⟩, ⟨(1 : F), 80035, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80657)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80657) * ((1 : F) * rho 80655 + (1 : F) * rho 80656) = ((1 : F) * rho 80658)

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80656) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80659)

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80655) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80660)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80659) * ((1 : F) * rho 80660) = ((1 : F) * rho 80661)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80662) * ((1 : F) + (1 : F) * rho 80661) = ((1 : F) * rho 80659 + (1 : F) * rho 80660)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80663) * ((1 : F) + (-1 : F) * rho 80661) = ((1 : F) * rho 80658 + (-1 : F) * rho 80659 + (-1 : F) * rho 80660)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 45⟩], residual := [((1 : F), 80662)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80664)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 45⟩], residual := [((1 : F), 80663)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80665)

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80655) * ((1 : F) * rho 80656) = ((1 : F) * rho 80666)

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80655) * ((1 : F) * rho 80655) = ((1 : F) * rho 80667)

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80656) * ((1 : F) * rho 80656) = ((1 : F) * rho 80668)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80669) * ((-1 : F) * rho 80667 + (1 : F) * rho 80668) = ((2 : F) * rho 80666)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80670) * ((2 : F) + (1 : F) * rho 80667 + (-1 : F) * rho 80668) = ((1 : F) * rho 80667 + (1 : F) * rho 80668)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 46⟩, ⟨(1 : F), 80035, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80671)

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80671) * ((1 : F) * rho 80669 + (1 : F) * rho 80670) = ((1 : F) * rho 80672)

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80670) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80673)

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80669) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80674)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80673) * ((1 : F) * rho 80674) = ((1 : F) * rho 80675)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80676) * ((1 : F) + (1 : F) * rho 80675) = ((1 : F) * rho 80673 + (1 : F) * rho 80674)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80677) * ((1 : F) + (-1 : F) * rho 80675) = ((1 : F) * rho 80672 + (-1 : F) * rho 80673 + (-1 : F) * rho 80674)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 46⟩], residual := [((1 : F), 80676)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80678)

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 46⟩], residual := [((1 : F), 80677)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80679)

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80669) * ((1 : F) * rho 80670) = ((1 : F) * rho 80680)

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80669) * ((1 : F) * rho 80669) = ((1 : F) * rho 80681)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80670) * ((1 : F) * rho 80670) = ((1 : F) * rho 80682)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80683) * ((-1 : F) * rho 80681 + (1 : F) * rho 80682) = ((2 : F) * rho 80680)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80684) * ((2 : F) + (1 : F) * rho 80681 + (-1 : F) * rho 80682) = ((1 : F) * rho 80681 + (1 : F) * rho 80682)

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 47⟩, ⟨(1 : F), 80035, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80685)

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80685) * ((1 : F) * rho 80683 + (1 : F) * rho 80684) = ((1 : F) * rho 80686)

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80684) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80687)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80683) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80688)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80687) * ((1 : F) * rho 80688) = ((1 : F) * rho 80689)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80690) * ((1 : F) + (1 : F) * rho 80689) = ((1 : F) * rho 80687 + (1 : F) * rho 80688)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80691) * ((1 : F) + (-1 : F) * rho 80689) = ((1 : F) * rho 80686 + (-1 : F) * rho 80687 + (-1 : F) * rho 80688)

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 47⟩], residual := [((1 : F), 80690)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80692)

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 47⟩], residual := [((1 : F), 80691)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80693)

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80683) * ((1 : F) * rho 80684) = ((1 : F) * rho 80694)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80683) * ((1 : F) * rho 80683) = ((1 : F) * rho 80695)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80684) * ((1 : F) * rho 80684) = ((1 : F) * rho 80696)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80697) * ((-1 : F) * rho 80695 + (1 : F) * rho 80696) = ((2 : F) * rho 80694)

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80698) * ((2 : F) + (1 : F) * rho 80695 + (-1 : F) * rho 80696) = ((1 : F) * rho 80695 + (1 : F) * rho 80696)

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 48⟩, ⟨(1 : F), 80035, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80699)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80699) * ((1 : F) * rho 80697 + (1 : F) * rho 80698) = ((1 : F) * rho 80700)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80698) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80701)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80697) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80702)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80701) * ((1 : F) * rho 80702) = ((1 : F) * rho 80703)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80704) * ((1 : F) + (1 : F) * rho 80703) = ((1 : F) * rho 80701 + (1 : F) * rho 80702)

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80705) * ((1 : F) + (-1 : F) * rho 80703) = ((1 : F) * rho 80700 + (-1 : F) * rho 80701 + (-1 : F) * rho 80702)

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 48⟩], residual := [((1 : F), 80704)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80706)

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 48⟩], residual := [((1 : F), 80705)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80707)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80697) * ((1 : F) * rho 80698) = ((1 : F) * rho 80708)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80697) * ((1 : F) * rho 80697) = ((1 : F) * rho 80709)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80698) * ((1 : F) * rho 80698) = ((1 : F) * rho 80710)

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80711) * ((-1 : F) * rho 80709 + (1 : F) * rho 80710) = ((2 : F) * rho 80708)

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80712) * ((2 : F) + (1 : F) * rho 80709 + (-1 : F) * rho 80710) = ((1 : F) * rho 80709 + (1 : F) * rho 80710)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 49⟩, ⟨(1 : F), 80035, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80713)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80713) * ((1 : F) * rho 80711 + (1 : F) * rho 80712) = ((1 : F) * rho 80714)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80712) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80715)

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80711) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80716)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80715) * ((1 : F) * rho 80716) = ((1 : F) * rho 80717)

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80718) * ((1 : F) + (1 : F) * rho 80717) = ((1 : F) * rho 80715 + (1 : F) * rho 80716)

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80719) * ((1 : F) + (-1 : F) * rho 80717) = ((1 : F) * rho 80714 + (-1 : F) * rho 80715 + (-1 : F) * rho 80716)

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 49⟩], residual := [((1 : F), 80718)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80720)

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 49⟩], residual := [((1 : F), 80719)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80721)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80711) * ((1 : F) * rho 80712) = ((1 : F) * rho 80722)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80711) * ((1 : F) * rho 80711) = ((1 : F) * rho 80723)

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80712) * ((1 : F) * rho 80712) = ((1 : F) * rho 80724)

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80725) * ((-1 : F) * rho 80723 + (1 : F) * rho 80724) = ((2 : F) * rho 80722)

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80726) * ((2 : F) + (1 : F) * rho 80723 + (-1 : F) * rho 80724) = ((1 : F) * rho 80723 + (1 : F) * rho 80724)

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 50⟩, ⟨(1 : F), 80035, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80727)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80727) * ((1 : F) * rho 80725 + (1 : F) * rho 80726) = ((1 : F) * rho 80728)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80726) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80729)

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80725) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80730)

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80729) * ((1 : F) * rho 80730) = ((1 : F) * rho 80731)

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80732) * ((1 : F) + (1 : F) * rho 80731) = ((1 : F) * rho 80729 + (1 : F) * rho 80730)

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80733) * ((1 : F) + (-1 : F) * rho 80731) = ((1 : F) * rho 80728 + (-1 : F) * rho 80729 + (-1 : F) * rho 80730)

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 50⟩], residual := [((1 : F), 80732)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80734)

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 50⟩], residual := [((1 : F), 80733)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80735)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80725) * ((1 : F) * rho 80726) = ((1 : F) * rho 80736)

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80725) * ((1 : F) * rho 80725) = ((1 : F) * rho 80737)

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80726) * ((1 : F) * rho 80726) = ((1 : F) * rho 80738)

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80739) * ((-1 : F) * rho 80737 + (1 : F) * rho 80738) = ((2 : F) * rho 80736)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80740) * ((2 : F) + (1 : F) * rho 80737 + (-1 : F) * rho 80738) = ((1 : F) * rho 80737 + (1 : F) * rho 80738)

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 51⟩, ⟨(1 : F), 80035, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80741)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80741) * ((1 : F) * rho 80739 + (1 : F) * rho 80740) = ((1 : F) * rho 80742)

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80740) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80743)

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80739) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80744)

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80743) * ((1 : F) * rho 80744) = ((1 : F) * rho 80745)

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80746) * ((1 : F) + (1 : F) * rho 80745) = ((1 : F) * rho 80743 + (1 : F) * rho 80744)

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80747) * ((1 : F) + (-1 : F) * rho 80745) = ((1 : F) * rho 80742 + (-1 : F) * rho 80743 + (-1 : F) * rho 80744)

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 51⟩], residual := [((1 : F), 80746)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80748)

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 51⟩], residual := [((1 : F), 80747)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80749)

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80739) * ((1 : F) * rho 80740) = ((1 : F) * rho 80750)

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80739) * ((1 : F) * rho 80739) = ((1 : F) * rho 80751)

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80740) * ((1 : F) * rho 80740) = ((1 : F) * rho 80752)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80753) * ((-1 : F) * rho 80751 + (1 : F) * rho 80752) = ((2 : F) * rho 80750)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80754) * ((2 : F) + (1 : F) * rho 80751 + (-1 : F) * rho 80752) = ((1 : F) * rho 80751 + (1 : F) * rho 80752)

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 52⟩, ⟨(1 : F), 80035, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80755)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80755) * ((1 : F) * rho 80753 + (1 : F) * rho 80754) = ((1 : F) * rho 80756)

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80754) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80757)

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80753) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80758)

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80757) * ((1 : F) * rho 80758) = ((1 : F) * rho 80759)

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80760) * ((1 : F) + (1 : F) * rho 80759) = ((1 : F) * rho 80757 + (1 : F) * rho 80758)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80761) * ((1 : F) + (-1 : F) * rho 80759) = ((1 : F) * rho 80756 + (-1 : F) * rho 80757 + (-1 : F) * rho 80758)

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 52⟩], residual := [((1 : F), 80760)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80762)

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 52⟩], residual := [((1 : F), 80761)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80763)

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80753) * ((1 : F) * rho 80754) = ((1 : F) * rho 80764)

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80753) * ((1 : F) * rho 80753) = ((1 : F) * rho 80765)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80754) * ((1 : F) * rho 80754) = ((1 : F) * rho 80766)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80767) * ((-1 : F) * rho 80765 + (1 : F) * rho 80766) = ((2 : F) * rho 80764)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80768) * ((2 : F) + (1 : F) * rho 80765 + (-1 : F) * rho 80766) = ((1 : F) * rho 80765 + (1 : F) * rho 80766)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 53⟩, ⟨(1 : F), 80035, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80769)

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80769) * ((1 : F) * rho 80767 + (1 : F) * rho 80768) = ((1 : F) * rho 80770)

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80768) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80771)

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80767) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80772)

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80771) * ((1 : F) * rho 80772) = ((1 : F) * rho 80773)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80774) * ((1 : F) + (1 : F) * rho 80773) = ((1 : F) * rho 80771 + (1 : F) * rho 80772)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80775) * ((1 : F) + (-1 : F) * rho 80773) = ((1 : F) * rho 80770 + (-1 : F) * rho 80771 + (-1 : F) * rho 80772)

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 53⟩], residual := [((1 : F), 80774)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80776)

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 53⟩], residual := [((1 : F), 80775)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80777)

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80767) * ((1 : F) * rho 80768) = ((1 : F) * rho 80778)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80767) * ((1 : F) * rho 80767) = ((1 : F) * rho 80779)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80768) * ((1 : F) * rho 80768) = ((1 : F) * rho 80780)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80781) * ((-1 : F) * rho 80779 + (1 : F) * rho 80780) = ((2 : F) * rho 80778)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80782) * ((2 : F) + (1 : F) * rho 80779 + (-1 : F) * rho 80780) = ((1 : F) * rho 80779 + (1 : F) * rho 80780)

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 54⟩, ⟨(1 : F), 80035, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80783)

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80783) * ((1 : F) * rho 80781 + (1 : F) * rho 80782) = ((1 : F) * rho 80784)

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80782) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80785)

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80781) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80786)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80785) * ((1 : F) * rho 80786) = ((1 : F) * rho 80787)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80788) * ((1 : F) + (1 : F) * rho 80787) = ((1 : F) * rho 80785 + (1 : F) * rho 80786)

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80789) * ((1 : F) + (-1 : F) * rho 80787) = ((1 : F) * rho 80784 + (-1 : F) * rho 80785 + (-1 : F) * rho 80786)

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78036) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 54⟩], residual := [((1 : F), 80788)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80790)

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78036) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 54⟩], residual := [((1 : F), 80789)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80791)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80781) * ((1 : F) * rho 80782) = ((1 : F) * rho 80792)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80781) * ((1 : F) * rho 80781) = ((1 : F) * rho 80793)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80782) * ((1 : F) * rho 80782) = ((1 : F) * rho 80794)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80795) * ((-1 : F) * rho 80793 + (1 : F) * rho 80794) = ((2 : F) * rho 80792)

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80796) * ((2 : F) + (1 : F) * rho 80793 + (-1 : F) * rho 80794) = ((1 : F) * rho 80793 + (1 : F) * rho 80794)

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 55⟩, ⟨(1 : F), 80035, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80797)

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80797) * ((1 : F) * rho 80795 + (1 : F) * rho 80796) = ((1 : F) * rho 80798)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80796) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80799)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80795) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80800)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80799) * ((1 : F) * rho 80800) = ((1 : F) * rho 80801)

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80802) * ((1 : F) + (1 : F) * rho 80801) = ((1 : F) * rho 80799 + (1 : F) * rho 80800)

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80803) * ((1 : F) + (-1 : F) * rho 80801) = ((1 : F) * rho 80798 + (-1 : F) * rho 80799 + (-1 : F) * rho 80800)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 55⟩], residual := [((1 : F), 80802)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80804)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 55⟩], residual := [((1 : F), 80803)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80805)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80795) * ((1 : F) * rho 80796) = ((1 : F) * rho 80806)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80795) * ((1 : F) * rho 80795) = ((1 : F) * rho 80807)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80796) * ((1 : F) * rho 80796) = ((1 : F) * rho 80808)

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80809) * ((-1 : F) * rho 80807 + (1 : F) * rho 80808) = ((2 : F) * rho 80806)

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80810) * ((2 : F) + (1 : F) * rho 80807 + (-1 : F) * rho 80808) = ((1 : F) * rho 80807 + (1 : F) * rho 80808)

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 56⟩, ⟨(1 : F), 80035, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80811)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80811) * ((1 : F) * rho 80809 + (1 : F) * rho 80810) = ((1 : F) * rho 80812)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80810) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80813)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80809) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80814)

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80813) * ((1 : F) * rho 80814) = ((1 : F) * rho 80815)

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80816) * ((1 : F) + (1 : F) * rho 80815) = ((1 : F) * rho 80813 + (1 : F) * rho 80814)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80817) * ((1 : F) + (-1 : F) * rho 80815) = ((1 : F) * rho 80812 + (-1 : F) * rho 80813 + (-1 : F) * rho 80814)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 56⟩], residual := [((1 : F), 80816)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80818)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 56⟩], residual := [((1 : F), 80817)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80819)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80809) * ((1 : F) * rho 80810) = ((1 : F) * rho 80820)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80809) * ((1 : F) * rho 80809) = ((1 : F) * rho 80821)

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80810) * ((1 : F) * rho 80810) = ((1 : F) * rho 80822)

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80823) * ((-1 : F) * rho 80821 + (1 : F) * rho 80822) = ((2 : F) * rho 80820)

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80824) * ((2 : F) + (1 : F) * rho 80821 + (-1 : F) * rho 80822) = ((1 : F) * rho 80821 + (1 : F) * rho 80822)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 57⟩, ⟨(1 : F), 80035, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80825)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80825) * ((1 : F) * rho 80823 + (1 : F) * rho 80824) = ((1 : F) * rho 80826)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80824) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80827)

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80823) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80828)

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80827) * ((1 : F) * rho 80828) = ((1 : F) * rho 80829)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80830) * ((1 : F) + (1 : F) * rho 80829) = ((1 : F) * rho 80827 + (1 : F) * rho 80828)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80831) * ((1 : F) + (-1 : F) * rho 80829) = ((1 : F) * rho 80826 + (-1 : F) * rho 80827 + (-1 : F) * rho 80828)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78039) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 57⟩], residual := [((1 : F), 80830)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80832)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78039) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 57⟩], residual := [((1 : F), 80831)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80833)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80823) * ((1 : F) * rho 80824) = ((1 : F) * rho 80834)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80823) * ((1 : F) * rho 80823) = ((1 : F) * rho 80835)

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80824) * ((1 : F) * rho 80824) = ((1 : F) * rho 80836)

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80837) * ((-1 : F) * rho 80835 + (1 : F) * rho 80836) = ((2 : F) * rho 80834)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80838) * ((2 : F) + (1 : F) * rho 80835 + (-1 : F) * rho 80836) = ((1 : F) * rho 80835 + (1 : F) * rho 80836)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 58⟩, ⟨(1 : F), 80035, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80839)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80839) * ((1 : F) * rho 80837 + (1 : F) * rho 80838) = ((1 : F) * rho 80840)

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80838) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80841)

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80837) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80842)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80841) * ((1 : F) * rho 80842) = ((1 : F) * rho 80843)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80844) * ((1 : F) + (1 : F) * rho 80843) = ((1 : F) * rho 80841 + (1 : F) * rho 80842)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80845) * ((1 : F) + (-1 : F) * rho 80843) = ((1 : F) * rho 80840 + (-1 : F) * rho 80841 + (-1 : F) * rho 80842)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78040) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 58⟩], residual := [((1 : F), 80844)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80846)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78040) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 58⟩], residual := [((1 : F), 80845)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80847)

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80837) * ((1 : F) * rho 80838) = ((1 : F) * rho 80848)

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80837) * ((1 : F) * rho 80837) = ((1 : F) * rho 80849)

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80838) * ((1 : F) * rho 80838) = ((1 : F) * rho 80850)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80851) * ((-1 : F) * rho 80849 + (1 : F) * rho 80850) = ((2 : F) * rho 80848)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80852) * ((2 : F) + (1 : F) * rho 80849 + (-1 : F) * rho 80850) = ((1 : F) * rho 80849 + (1 : F) * rho 80850)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 59⟩, ⟨(1 : F), 80035, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80853)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80853) * ((1 : F) * rho 80851 + (1 : F) * rho 80852) = ((1 : F) * rho 80854)

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80852) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80855)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80851) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80856)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80855) * ((1 : F) * rho 80856) = ((1 : F) * rho 80857)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80858) * ((1 : F) + (1 : F) * rho 80857) = ((1 : F) * rho 80855 + (1 : F) * rho 80856)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80859) * ((1 : F) + (-1 : F) * rho 80857) = ((1 : F) * rho 80854 + (-1 : F) * rho 80855 + (-1 : F) * rho 80856)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 59⟩], residual := [((1 : F), 80858)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80860)

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 59⟩], residual := [((1 : F), 80859)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80861)

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80851) * ((1 : F) * rho 80852) = ((1 : F) * rho 80862)

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80851) * ((1 : F) * rho 80851) = ((1 : F) * rho 80863)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80852) * ((1 : F) * rho 80852) = ((1 : F) * rho 80864)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80865) * ((-1 : F) * rho 80863 + (1 : F) * rho 80864) = ((2 : F) * rho 80862)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80866) * ((2 : F) + (1 : F) * rho 80863 + (-1 : F) * rho 80864) = ((1 : F) * rho 80863 + (1 : F) * rho 80864)

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 60⟩, ⟨(1 : F), 80035, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80867)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80867) * ((1 : F) * rho 80865 + (1 : F) * rho 80866) = ((1 : F) * rho 80868)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80866) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80869)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80865) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80870)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80869) * ((1 : F) * rho 80870) = ((1 : F) * rho 80871)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80872) * ((1 : F) + (1 : F) * rho 80871) = ((1 : F) * rho 80869 + (1 : F) * rho 80870)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80873) * ((1 : F) + (-1 : F) * rho 80871) = ((1 : F) * rho 80868 + (-1 : F) * rho 80869 + (-1 : F) * rho 80870)

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 60⟩], residual := [((1 : F), 80872)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80874)

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 60⟩], residual := [((1 : F), 80873)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80875)

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80865) * ((1 : F) * rho 80866) = ((1 : F) * rho 80876)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80865) * ((1 : F) * rho 80865) = ((1 : F) * rho 80877)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80866) * ((1 : F) * rho 80866) = ((1 : F) * rho 80878)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80879) * ((-1 : F) * rho 80877 + (1 : F) * rho 80878) = ((2 : F) * rho 80876)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80880) * ((2 : F) + (1 : F) * rho 80877 + (-1 : F) * rho 80878) = ((1 : F) * rho 80877 + (1 : F) * rho 80878)

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 61⟩, ⟨(1 : F), 80035, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80881)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80881) * ((1 : F) * rho 80879 + (1 : F) * rho 80880) = ((1 : F) * rho 80882)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80880) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80883)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80879) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80884)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80883) * ((1 : F) * rho 80884) = ((1 : F) * rho 80885)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80886) * ((1 : F) + (1 : F) * rho 80885) = ((1 : F) * rho 80883 + (1 : F) * rho 80884)

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80887) * ((1 : F) + (-1 : F) * rho 80885) = ((1 : F) * rho 80882 + (-1 : F) * rho 80883 + (-1 : F) * rho 80884)

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 61⟩], residual := [((1 : F), 80886)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80888)

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 61⟩], residual := [((1 : F), 80887)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80889)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80879) * ((1 : F) * rho 80880) = ((1 : F) * rho 80890)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80879) * ((1 : F) * rho 80879) = ((1 : F) * rho 80891)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80880) * ((1 : F) * rho 80880) = ((1 : F) * rho 80892)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80893) * ((-1 : F) * rho 80891 + (1 : F) * rho 80892) = ((2 : F) * rho 80890)

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80894) * ((2 : F) + (1 : F) * rho 80891 + (-1 : F) * rho 80892) = ((1 : F) * rho 80891 + (1 : F) * rho 80892)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 62⟩, ⟨(1 : F), 80035, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80895)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80895) * ((1 : F) * rho 80893 + (1 : F) * rho 80894) = ((1 : F) * rho 80896)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80894) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80897)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80893) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80898)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80897) * ((1 : F) * rho 80898) = ((1 : F) * rho 80899)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80900) * ((1 : F) + (1 : F) * rho 80899) = ((1 : F) * rho 80897 + (1 : F) * rho 80898)

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80901) * ((1 : F) + (-1 : F) * rho 80899) = ((1 : F) * rho 80896 + (-1 : F) * rho 80897 + (-1 : F) * rho 80898)

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 62⟩], residual := [((1 : F), 80900)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80902)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 62⟩], residual := [((1 : F), 80901)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80903)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80893) * ((1 : F) * rho 80894) = ((1 : F) * rho 80904)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80893) * ((1 : F) * rho 80893) = ((1 : F) * rho 80905)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80894) * ((1 : F) * rho 80894) = ((1 : F) * rho 80906)

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80907) * ((-1 : F) * rho 80905 + (1 : F) * rho 80906) = ((2 : F) * rho 80904)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80908) * ((2 : F) + (1 : F) * rho 80905 + (-1 : F) * rho 80906) = ((1 : F) * rho 80905 + (1 : F) * rho 80906)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 63⟩, ⟨(1 : F), 80035, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80909)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80909) * ((1 : F) * rho 80907 + (1 : F) * rho 80908) = ((1 : F) * rho 80910)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80911)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80907) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80912)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80911) * ((1 : F) * rho 80912) = ((1 : F) * rho 80913)

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80914) * ((1 : F) + (1 : F) * rho 80913) = ((1 : F) * rho 80911 + (1 : F) * rho 80912)

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80915) * ((1 : F) + (-1 : F) * rho 80913) = ((1 : F) * rho 80910 + (-1 : F) * rho 80911 + (-1 : F) * rho 80912)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 63⟩], residual := [((1 : F), 80914)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80916)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 63⟩], residual := [((1 : F), 80915)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80917)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80907) * ((1 : F) * rho 80908) = ((1 : F) * rho 80918)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80907) * ((1 : F) * rho 80907) = ((1 : F) * rho 80919)

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80908) * ((1 : F) * rho 80908) = ((1 : F) * rho 80920)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80921) * ((-1 : F) * rho 80919 + (1 : F) * rho 80920) = ((2 : F) * rho 80918)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80922) * ((2 : F) + (1 : F) * rho 80919 + (-1 : F) * rho 80920) = ((1 : F) * rho 80919 + (1 : F) * rho 80920)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 64⟩, ⟨(1 : F), 80035, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80923)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80923) * ((1 : F) * rho 80921 + (1 : F) * rho 80922) = ((1 : F) * rho 80924)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80925)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80926)

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80925) * ((1 : F) * rho 80926) = ((1 : F) * rho 80927)

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80928) * ((1 : F) + (1 : F) * rho 80927) = ((1 : F) * rho 80925 + (1 : F) * rho 80926)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80929) * ((1 : F) + (-1 : F) * rho 80927) = ((1 : F) * rho 80924 + (-1 : F) * rho 80925 + (-1 : F) * rho 80926)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78046) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 64⟩], residual := [((1 : F), 80928)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80930)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78046) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 64⟩], residual := [((1 : F), 80929)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80931)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80921) * ((1 : F) * rho 80922) = ((1 : F) * rho 80932)

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80921) * ((1 : F) * rho 80921) = ((1 : F) * rho 80933)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80922) * ((1 : F) * rho 80922) = ((1 : F) * rho 80934)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80935) * ((-1 : F) * rho 80933 + (1 : F) * rho 80934) = ((2 : F) * rho 80932)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80936) * ((2 : F) + (1 : F) * rho 80933 + (-1 : F) * rho 80934) = ((1 : F) * rho 80933 + (1 : F) * rho 80934)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 65⟩, ⟨(1 : F), 80035, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80937)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80937) * ((1 : F) * rho 80935 + (1 : F) * rho 80936) = ((1 : F) * rho 80938)

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80936) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80939)

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80940)

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80939) * ((1 : F) * rho 80940) = ((1 : F) * rho 80941)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80942) * ((1 : F) + (1 : F) * rho 80941) = ((1 : F) * rho 80939 + (1 : F) * rho 80940)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80943) * ((1 : F) + (-1 : F) * rho 80941) = ((1 : F) * rho 80938 + (-1 : F) * rho 80939 + (-1 : F) * rho 80940)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 65⟩], residual := [((1 : F), 80942)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80944)

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 65⟩], residual := [((1 : F), 80943)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80945)

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80935) * ((1 : F) * rho 80936) = ((1 : F) * rho 80946)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80935) * ((1 : F) * rho 80935) = ((1 : F) * rho 80947)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80936) * ((1 : F) * rho 80936) = ((1 : F) * rho 80948)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80949) * ((-1 : F) * rho 80947 + (1 : F) * rho 80948) = ((2 : F) * rho 80946)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80950) * ((2 : F) + (1 : F) * rho 80947 + (-1 : F) * rho 80948) = ((1 : F) * rho 80947 + (1 : F) * rho 80948)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 66⟩, ⟨(1 : F), 80035, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80951)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80951) * ((1 : F) * rho 80949 + (1 : F) * rho 80950) = ((1 : F) * rho 80952)

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80953)

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80949) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80954)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80953) * ((1 : F) * rho 80954) = ((1 : F) * rho 80955)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80956) * ((1 : F) + (1 : F) * rho 80955) = ((1 : F) * rho 80953 + (1 : F) * rho 80954)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80957) * ((1 : F) + (-1 : F) * rho 80955) = ((1 : F) * rho 80952 + (-1 : F) * rho 80953 + (-1 : F) * rho 80954)

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 66⟩], residual := [((1 : F), 80956)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80958)

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 66⟩], residual := [((1 : F), 80957)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80959)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80949) * ((1 : F) * rho 80950) = ((1 : F) * rho 80960)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80949) * ((1 : F) * rho 80949) = ((1 : F) * rho 80961)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80950) * ((1 : F) * rho 80950) = ((1 : F) * rho 80962)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80963) * ((-1 : F) * rho 80961 + (1 : F) * rho 80962) = ((2 : F) * rho 80960)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80964) * ((2 : F) + (1 : F) * rho 80961 + (-1 : F) * rho 80962) = ((1 : F) * rho 80961 + (1 : F) * rho 80962)

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 67⟩, ⟨(1 : F), 80035, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80965)

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80965) * ((1 : F) * rho 80963 + (1 : F) * rho 80964) = ((1 : F) * rho 80966)

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80967)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80968)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80967) * ((1 : F) * rho 80968) = ((1 : F) * rho 80969)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80970) * ((1 : F) + (1 : F) * rho 80969) = ((1 : F) * rho 80967 + (1 : F) * rho 80968)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80971) * ((1 : F) + (-1 : F) * rho 80969) = ((1 : F) * rho 80966 + (-1 : F) * rho 80967 + (-1 : F) * rho 80968)

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78049) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 67⟩], residual := [((1 : F), 80970)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80972)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78049) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 67⟩], residual := [((1 : F), 80971)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80973)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80963) * ((1 : F) * rho 80964) = ((1 : F) * rho 80974)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80963) * ((1 : F) * rho 80963) = ((1 : F) * rho 80975)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80964) * ((1 : F) * rho 80964) = ((1 : F) * rho 80976)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80977) * ((-1 : F) * rho 80975 + (1 : F) * rho 80976) = ((2 : F) * rho 80974)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80978) * ((2 : F) + (1 : F) * rho 80975 + (-1 : F) * rho 80976) = ((1 : F) * rho 80975 + (1 : F) * rho 80976)

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 68⟩, ⟨(1 : F), 80035, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80979)

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80979) * ((1 : F) * rho 80977 + (1 : F) * rho 80978) = ((1 : F) * rho 80980)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80981)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80982)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80981) * ((1 : F) * rho 80982) = ((1 : F) * rho 80983)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80984) * ((1 : F) + (1 : F) * rho 80983) = ((1 : F) * rho 80981 + (1 : F) * rho 80982)

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80985) * ((1 : F) + (-1 : F) * rho 80983) = ((1 : F) * rho 80980 + (-1 : F) * rho 80981 + (-1 : F) * rho 80982)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78050) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 68⟩], residual := [((1 : F), 80984)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80986)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78050) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 68⟩], residual := [((1 : F), 80985)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80987)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80977) * ((1 : F) * rho 80978) = ((1 : F) * rho 80988)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80977) * ((1 : F) * rho 80977) = ((1 : F) * rho 80989)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80978) * ((1 : F) * rho 80978) = ((1 : F) * rho 80990)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80991) * ((-1 : F) * rho 80989 + (1 : F) * rho 80990) = ((2 : F) * rho 80988)

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80992) * ((2 : F) + (1 : F) * rho 80989 + (-1 : F) * rho 80990) = ((1 : F) * rho 80989 + (1 : F) * rho 80990)

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 69⟩, ⟨(1 : F), 80035, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80993)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80993) * ((1 : F) * rho 80991 + (1 : F) * rho 80992) = ((1 : F) * rho 80994)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80995)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 80996)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 80995) * ((1 : F) * rho 80996) = ((1 : F) * rho 80997)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80998) * ((1 : F) + (1 : F) * rho 80997) = ((1 : F) * rho 80995 + (1 : F) * rho 80996)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80999) * ((1 : F) + (-1 : F) * rho 80997) = ((1 : F) * rho 80994 + (-1 : F) * rho 80995 + (-1 : F) * rho 80996)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 69⟩], residual := [((1 : F), 80998)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81000)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 69⟩], residual := [((1 : F), 80999)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81001)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80991) * ((1 : F) * rho 80992) = ((1 : F) * rho 81002)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80991) * ((1 : F) * rho 80991) = ((1 : F) * rho 81003)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80992) * ((1 : F) * rho 80992) = ((1 : F) * rho 81004)

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81005) * ((-1 : F) * rho 81003 + (1 : F) * rho 81004) = ((2 : F) * rho 81002)

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81006) * ((2 : F) + (1 : F) * rho 81003 + (-1 : F) * rho 81004) = ((1 : F) * rho 81003 + (1 : F) * rho 81004)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 70⟩, ⟨(1 : F), 80035, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81007)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81007) * ((1 : F) * rho 81005 + (1 : F) * rho 81006) = ((1 : F) * rho 81008)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81009)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81010)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81009) * ((1 : F) * rho 81010) = ((1 : F) * rho 81011)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81012) * ((1 : F) + (1 : F) * rho 81011) = ((1 : F) * rho 81009 + (1 : F) * rho 81010)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81013) * ((1 : F) + (-1 : F) * rho 81011) = ((1 : F) * rho 81008 + (-1 : F) * rho 81009 + (-1 : F) * rho 81010)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78052) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 70⟩], residual := [((1 : F), 81012)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81014)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78052) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 70⟩], residual := [((1 : F), 81013)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81015)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81005) * ((1 : F) * rho 81006) = ((1 : F) * rho 81016)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81005) * ((1 : F) * rho 81005) = ((1 : F) * rho 81017)

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81006) * ((1 : F) * rho 81006) = ((1 : F) * rho 81018)

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81019) * ((-1 : F) * rho 81017 + (1 : F) * rho 81018) = ((2 : F) * rho 81016)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81020) * ((2 : F) + (1 : F) * rho 81017 + (-1 : F) * rho 81018) = ((1 : F) * rho 81017 + (1 : F) * rho 81018)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 71⟩, ⟨(1 : F), 80035, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81021)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81021) * ((1 : F) * rho 81019 + (1 : F) * rho 81020) = ((1 : F) * rho 81022)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81023)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81024)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81023) * ((1 : F) * rho 81024) = ((1 : F) * rho 81025)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81026) * ((1 : F) + (1 : F) * rho 81025) = ((1 : F) * rho 81023 + (1 : F) * rho 81024)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81027) * ((1 : F) + (-1 : F) * rho 81025) = ((1 : F) * rho 81022 + (-1 : F) * rho 81023 + (-1 : F) * rho 81024)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78053) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 71⟩], residual := [((1 : F), 81026)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81028)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78053) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 71⟩], residual := [((1 : F), 81027)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81029)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81019) * ((1 : F) * rho 81020) = ((1 : F) * rho 81030)

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81019) * ((1 : F) * rho 81019) = ((1 : F) * rho 81031)

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81020) * ((1 : F) * rho 81020) = ((1 : F) * rho 81032)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81033) * ((-1 : F) * rho 81031 + (1 : F) * rho 81032) = ((2 : F) * rho 81030)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81034) * ((2 : F) + (1 : F) * rho 81031 + (-1 : F) * rho 81032) = ((1 : F) * rho 81031 + (1 : F) * rho 81032)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 72⟩, ⟨(1 : F), 80035, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81035)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81035) * ((1 : F) * rho 81033 + (1 : F) * rho 81034) = ((1 : F) * rho 81036)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81037)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81038)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81037) * ((1 : F) * rho 81038) = ((1 : F) * rho 81039)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81040) * ((1 : F) + (1 : F) * rho 81039) = ((1 : F) * rho 81037 + (1 : F) * rho 81038)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81041) * ((1 : F) + (-1 : F) * rho 81039) = ((1 : F) * rho 81036 + (-1 : F) * rho 81037 + (-1 : F) * rho 81038)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 72⟩], residual := [((1 : F), 81040)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81042)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 72⟩], residual := [((1 : F), 81041)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81043)

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81033) * ((1 : F) * rho 81034) = ((1 : F) * rho 81044)

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81033) * ((1 : F) * rho 81033) = ((1 : F) * rho 81045)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81034) * ((1 : F) * rho 81034) = ((1 : F) * rho 81046)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81047) * ((-1 : F) * rho 81045 + (1 : F) * rho 81046) = ((2 : F) * rho 81044)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81048) * ((2 : F) + (1 : F) * rho 81045 + (-1 : F) * rho 81046) = ((1 : F) * rho 81045 + (1 : F) * rho 81046)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 73⟩, ⟨(1 : F), 80035, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81049)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81049) * ((1 : F) * rho 81047 + (1 : F) * rho 81048) = ((1 : F) * rho 81050)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81051)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81052)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81051) * ((1 : F) * rho 81052) = ((1 : F) * rho 81053)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81054) * ((1 : F) + (1 : F) * rho 81053) = ((1 : F) * rho 81051 + (1 : F) * rho 81052)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81055) * ((1 : F) + (-1 : F) * rho 81053) = ((1 : F) * rho 81050 + (-1 : F) * rho 81051 + (-1 : F) * rho 81052)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 73⟩], residual := [((1 : F), 81054)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81056)

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 73⟩], residual := [((1 : F), 81055)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81057)

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81047) * ((1 : F) * rho 81048) = ((1 : F) * rho 81058)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81047) * ((1 : F) * rho 81047) = ((1 : F) * rho 81059)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81048) * ((1 : F) * rho 81048) = ((1 : F) * rho 81060)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81061) * ((-1 : F) * rho 81059 + (1 : F) * rho 81060) = ((2 : F) * rho 81058)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81062) * ((2 : F) + (1 : F) * rho 81059 + (-1 : F) * rho 81060) = ((1 : F) * rho 81059 + (1 : F) * rho 81060)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 74⟩, ⟨(1 : F), 80035, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81063)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81063) * ((1 : F) * rho 81061 + (1 : F) * rho 81062) = ((1 : F) * rho 81064)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81062) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81065)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81066)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81065) * ((1 : F) * rho 81066) = ((1 : F) * rho 81067)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81068) * ((1 : F) + (1 : F) * rho 81067) = ((1 : F) * rho 81065 + (1 : F) * rho 81066)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81069) * ((1 : F) + (-1 : F) * rho 81067) = ((1 : F) * rho 81064 + (-1 : F) * rho 81065 + (-1 : F) * rho 81066)

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 74⟩], residual := [((1 : F), 81068)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81070)

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 74⟩], residual := [((1 : F), 81069)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81071)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81061) * ((1 : F) * rho 81062) = ((1 : F) * rho 81072)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81061) * ((1 : F) * rho 81061) = ((1 : F) * rho 81073)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81062) * ((1 : F) * rho 81062) = ((1 : F) * rho 81074)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81075) * ((-1 : F) * rho 81073 + (1 : F) * rho 81074) = ((2 : F) * rho 81072)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81076) * ((2 : F) + (1 : F) * rho 81073 + (-1 : F) * rho 81074) = ((1 : F) * rho 81073 + (1 : F) * rho 81074)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 75⟩, ⟨(1 : F), 80035, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81077)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81077) * ((1 : F) * rho 81075 + (1 : F) * rho 81076) = ((1 : F) * rho 81078)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81079)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81080)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81079) * ((1 : F) * rho 81080) = ((1 : F) * rho 81081)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81082) * ((1 : F) + (1 : F) * rho 81081) = ((1 : F) * rho 81079 + (1 : F) * rho 81080)

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81083) * ((1 : F) + (-1 : F) * rho 81081) = ((1 : F) * rho 81078 + (-1 : F) * rho 81079 + (-1 : F) * rho 81080)

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 75⟩], residual := [((1 : F), 81082)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81084)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 75⟩], residual := [((1 : F), 81083)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81085)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81075) * ((1 : F) * rho 81076) = ((1 : F) * rho 81086)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81075) * ((1 : F) * rho 81075) = ((1 : F) * rho 81087)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81076) * ((1 : F) * rho 81076) = ((1 : F) * rho 81088)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81089) * ((-1 : F) * rho 81087 + (1 : F) * rho 81088) = ((2 : F) * rho 81086)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81090) * ((2 : F) + (1 : F) * rho 81087 + (-1 : F) * rho 81088) = ((1 : F) * rho 81087 + (1 : F) * rho 81088)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 76⟩, ⟨(1 : F), 80035, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81091)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81091) * ((1 : F) * rho 81089 + (1 : F) * rho 81090) = ((1 : F) * rho 81092)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81090) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81093)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81089) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81094)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81093) * ((1 : F) * rho 81094) = ((1 : F) * rho 81095)

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81096) * ((1 : F) + (1 : F) * rho 81095) = ((1 : F) * rho 81093 + (1 : F) * rho 81094)

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81097) * ((1 : F) + (-1 : F) * rho 81095) = ((1 : F) * rho 81092 + (-1 : F) * rho 81093 + (-1 : F) * rho 81094)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78058) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 76⟩], residual := [((1 : F), 81096)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81098)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78058) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 76⟩], residual := [((1 : F), 81097)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81099)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81089) * ((1 : F) * rho 81090) = ((1 : F) * rho 81100)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81089) * ((1 : F) * rho 81089) = ((1 : F) * rho 81101)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81090) * ((1 : F) * rho 81090) = ((1 : F) * rho 81102)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81103) * ((-1 : F) * rho 81101 + (1 : F) * rho 81102) = ((2 : F) * rho 81100)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81104) * ((2 : F) + (1 : F) * rho 81101 + (-1 : F) * rho 81102) = ((1 : F) * rho 81101 + (1 : F) * rho 81102)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 77⟩, ⟨(1 : F), 80035, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81105)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81105) * ((1 : F) * rho 81103 + (1 : F) * rho 81104) = ((1 : F) * rho 81106)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81104) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81107)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81108)

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81107) * ((1 : F) * rho 81108) = ((1 : F) * rho 81109)

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81110) * ((1 : F) + (1 : F) * rho 81109) = ((1 : F) * rho 81107 + (1 : F) * rho 81108)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81111) * ((1 : F) + (-1 : F) * rho 81109) = ((1 : F) * rho 81106 + (-1 : F) * rho 81107 + (-1 : F) * rho 81108)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78059) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 77⟩], residual := [((1 : F), 81110)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81112)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78059) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 77⟩], residual := [((1 : F), 81111)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81113)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81103) * ((1 : F) * rho 81104) = ((1 : F) * rho 81114)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81103) * ((1 : F) * rho 81103) = ((1 : F) * rho 81115)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81104) * ((1 : F) * rho 81104) = ((1 : F) * rho 81116)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81117) * ((-1 : F) * rho 81115 + (1 : F) * rho 81116) = ((2 : F) * rho 81114)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81118) * ((2 : F) + (1 : F) * rho 81115 + (-1 : F) * rho 81116) = ((1 : F) * rho 81115 + (1 : F) * rho 81116)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 78⟩, ⟨(1 : F), 80035, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81119)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81119) * ((1 : F) * rho 81117 + (1 : F) * rho 81118) = ((1 : F) * rho 81120)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81118) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81121)

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81117) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81122)

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81121) * ((1 : F) * rho 81122) = ((1 : F) * rho 81123)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81124) * ((1 : F) + (1 : F) * rho 81123) = ((1 : F) * rho 81121 + (1 : F) * rho 81122)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81125) * ((1 : F) + (-1 : F) * rho 81123) = ((1 : F) * rho 81120 + (-1 : F) * rho 81121 + (-1 : F) * rho 81122)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 78⟩], residual := [((1 : F), 81124)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81126)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 78⟩], residual := [((1 : F), 81125)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81127)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81117) * ((1 : F) * rho 81118) = ((1 : F) * rho 81128)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81117) * ((1 : F) * rho 81117) = ((1 : F) * rho 81129)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81118) * ((1 : F) * rho 81118) = ((1 : F) * rho 81130)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81131) * ((-1 : F) * rho 81129 + (1 : F) * rho 81130) = ((2 : F) * rho 81128)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81132) * ((2 : F) + (1 : F) * rho 81129 + (-1 : F) * rho 81130) = ((1 : F) * rho 81129 + (1 : F) * rho 81130)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 79⟩, ⟨(1 : F), 80035, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81133)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81133) * ((1 : F) * rho 81131 + (1 : F) * rho 81132) = ((1 : F) * rho 81134)

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81132) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81135)

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81131) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81136)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81135) * ((1 : F) * rho 81136) = ((1 : F) * rho 81137)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81138) * ((1 : F) + (1 : F) * rho 81137) = ((1 : F) * rho 81135 + (1 : F) * rho 81136)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81139) * ((1 : F) + (-1 : F) * rho 81137) = ((1 : F) * rho 81134 + (-1 : F) * rho 81135 + (-1 : F) * rho 81136)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 79⟩], residual := [((1 : F), 81138)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81140)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 79⟩], residual := [((1 : F), 81139)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81141)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81131) * ((1 : F) * rho 81132) = ((1 : F) * rho 81142)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81131) * ((1 : F) * rho 81131) = ((1 : F) * rho 81143)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81132) * ((1 : F) * rho 81132) = ((1 : F) * rho 81144)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81145) * ((-1 : F) * rho 81143 + (1 : F) * rho 81144) = ((2 : F) * rho 81142)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81146) * ((2 : F) + (1 : F) * rho 81143 + (-1 : F) * rho 81144) = ((1 : F) * rho 81143 + (1 : F) * rho 81144)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 80⟩, ⟨(1 : F), 80035, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81147)

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81147) * ((1 : F) * rho 81145 + (1 : F) * rho 81146) = ((1 : F) * rho 81148)

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81146) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81149)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81145) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81150)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81149) * ((1 : F) * rho 81150) = ((1 : F) * rho 81151)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81152) * ((1 : F) + (1 : F) * rho 81151) = ((1 : F) * rho 81149 + (1 : F) * rho 81150)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81153) * ((1 : F) + (-1 : F) * rho 81151) = ((1 : F) * rho 81148 + (-1 : F) * rho 81149 + (-1 : F) * rho 81150)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78062) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 80⟩], residual := [((1 : F), 81152)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81154)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78062) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 80⟩], residual := [((1 : F), 81153)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81155)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81145) * ((1 : F) * rho 81146) = ((1 : F) * rho 81156)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81145) * ((1 : F) * rho 81145) = ((1 : F) * rho 81157)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81146) * ((1 : F) * rho 81146) = ((1 : F) * rho 81158)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81159) * ((-1 : F) * rho 81157 + (1 : F) * rho 81158) = ((2 : F) * rho 81156)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81160) * ((2 : F) + (1 : F) * rho 81157 + (-1 : F) * rho 81158) = ((1 : F) * rho 81157 + (1 : F) * rho 81158)

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 81⟩, ⟨(1 : F), 80035, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81161)

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81161) * ((1 : F) * rho 81159 + (1 : F) * rho 81160) = ((1 : F) * rho 81162)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81160) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81163)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81159) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81164)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81163) * ((1 : F) * rho 81164) = ((1 : F) * rho 81165)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81166) * ((1 : F) + (1 : F) * rho 81165) = ((1 : F) * rho 81163 + (1 : F) * rho 81164)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81167) * ((1 : F) + (-1 : F) * rho 81165) = ((1 : F) * rho 81162 + (-1 : F) * rho 81163 + (-1 : F) * rho 81164)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78063) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 81⟩], residual := [((1 : F), 81166)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81168)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78063) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 81⟩], residual := [((1 : F), 81167)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81169)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81159) * ((1 : F) * rho 81160) = ((1 : F) * rho 81170)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81159) * ((1 : F) * rho 81159) = ((1 : F) * rho 81171)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81160) * ((1 : F) * rho 81160) = ((1 : F) * rho 81172)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81173) * ((-1 : F) * rho 81171 + (1 : F) * rho 81172) = ((2 : F) * rho 81170)

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81174) * ((2 : F) + (1 : F) * rho 81171 + (-1 : F) * rho 81172) = ((1 : F) * rho 81171 + (1 : F) * rho 81172)

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 82⟩, ⟨(1 : F), 80035, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81175)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81175) * ((1 : F) * rho 81173 + (1 : F) * rho 81174) = ((1 : F) * rho 81176)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81174) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81177)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81173) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81178)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81177) * ((1 : F) * rho 81178) = ((1 : F) * rho 81179)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81180) * ((1 : F) + (1 : F) * rho 81179) = ((1 : F) * rho 81177 + (1 : F) * rho 81178)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81181) * ((1 : F) + (-1 : F) * rho 81179) = ((1 : F) * rho 81176 + (-1 : F) * rho 81177 + (-1 : F) * rho 81178)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 82⟩], residual := [((1 : F), 81180)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81182)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 82⟩], residual := [((1 : F), 81181)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81183)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81173) * ((1 : F) * rho 81174) = ((1 : F) * rho 81184)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81173) * ((1 : F) * rho 81173) = ((1 : F) * rho 81185)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81174) * ((1 : F) * rho 81174) = ((1 : F) * rho 81186)

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81187) * ((-1 : F) * rho 81185 + (1 : F) * rho 81186) = ((2 : F) * rho 81184)

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81188) * ((2 : F) + (1 : F) * rho 81185 + (-1 : F) * rho 81186) = ((1 : F) * rho 81185 + (1 : F) * rho 81186)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 83⟩, ⟨(1 : F), 80035, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81189)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81189) * ((1 : F) * rho 81187 + (1 : F) * rho 81188) = ((1 : F) * rho 81190)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81188) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81191)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81187) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81192)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81191) * ((1 : F) * rho 81192) = ((1 : F) * rho 81193)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81194) * ((1 : F) + (1 : F) * rho 81193) = ((1 : F) * rho 81191 + (1 : F) * rho 81192)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81195) * ((1 : F) + (-1 : F) * rho 81193) = ((1 : F) * rho 81190 + (-1 : F) * rho 81191 + (-1 : F) * rho 81192)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78065) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 83⟩], residual := [((1 : F), 81194)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81196)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78065) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 83⟩], residual := [((1 : F), 81195)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81197)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81187) * ((1 : F) * rho 81188) = ((1 : F) * rho 81198)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81187) * ((1 : F) * rho 81187) = ((1 : F) * rho 81199)

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81188) * ((1 : F) * rho 81188) = ((1 : F) * rho 81200)

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81201) * ((-1 : F) * rho 81199 + (1 : F) * rho 81200) = ((2 : F) * rho 81198)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81202) * ((2 : F) + (1 : F) * rho 81199 + (-1 : F) * rho 81200) = ((1 : F) * rho 81199 + (1 : F) * rho 81200)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 84⟩, ⟨(1 : F), 80035, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81203)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81203) * ((1 : F) * rho 81201 + (1 : F) * rho 81202) = ((1 : F) * rho 81204)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81202) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81205)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81201) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81206)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81205) * ((1 : F) * rho 81206) = ((1 : F) * rho 81207)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81208) * ((1 : F) + (1 : F) * rho 81207) = ((1 : F) * rho 81205 + (1 : F) * rho 81206)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81209) * ((1 : F) + (-1 : F) * rho 81207) = ((1 : F) * rho 81204 + (-1 : F) * rho 81205 + (-1 : F) * rho 81206)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78066) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 84⟩], residual := [((1 : F), 81208)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81210)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78066) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 84⟩], residual := [((1 : F), 81209)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81211)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81201) * ((1 : F) * rho 81202) = ((1 : F) * rho 81212)

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81201) * ((1 : F) * rho 81201) = ((1 : F) * rho 81213)

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81202) * ((1 : F) * rho 81202) = ((1 : F) * rho 81214)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81215) * ((-1 : F) * rho 81213 + (1 : F) * rho 81214) = ((2 : F) * rho 81212)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81216) * ((2 : F) + (1 : F) * rho 81213 + (-1 : F) * rho 81214) = ((1 : F) * rho 81213 + (1 : F) * rho 81214)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 85⟩, ⟨(1 : F), 80035, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81217)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81217) * ((1 : F) * rho 81215 + (1 : F) * rho 81216) = ((1 : F) * rho 81218)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81216) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81219)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81215) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81220)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81219) * ((1 : F) * rho 81220) = ((1 : F) * rho 81221)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81222) * ((1 : F) + (1 : F) * rho 81221) = ((1 : F) * rho 81219 + (1 : F) * rho 81220)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81223) * ((1 : F) + (-1 : F) * rho 81221) = ((1 : F) * rho 81218 + (-1 : F) * rho 81219 + (-1 : F) * rho 81220)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 85⟩], residual := [((1 : F), 81222)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81224)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 85⟩], residual := [((1 : F), 81223)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81225)

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81215) * ((1 : F) * rho 81216) = ((1 : F) * rho 81226)

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81215) * ((1 : F) * rho 81215) = ((1 : F) * rho 81227)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81216) * ((1 : F) * rho 81216) = ((1 : F) * rho 81228)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81229) * ((-1 : F) * rho 81227 + (1 : F) * rho 81228) = ((2 : F) * rho 81226)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81230) * ((2 : F) + (1 : F) * rho 81227 + (-1 : F) * rho 81228) = ((1 : F) * rho 81227 + (1 : F) * rho 81228)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 86⟩, ⟨(1 : F), 80035, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81231)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81231) * ((1 : F) * rho 81229 + (1 : F) * rho 81230) = ((1 : F) * rho 81232)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81230) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81233)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81229) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81234)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81233) * ((1 : F) * rho 81234) = ((1 : F) * rho 81235)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81236) * ((1 : F) + (1 : F) * rho 81235) = ((1 : F) * rho 81233 + (1 : F) * rho 81234)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81237) * ((1 : F) + (-1 : F) * rho 81235) = ((1 : F) * rho 81232 + (-1 : F) * rho 81233 + (-1 : F) * rho 81234)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 86⟩], residual := [((1 : F), 81236)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81238)

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 86⟩], residual := [((1 : F), 81237)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81239)

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81229) * ((1 : F) * rho 81230) = ((1 : F) * rho 81240)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81229) * ((1 : F) * rho 81229) = ((1 : F) * rho 81241)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81230) * ((1 : F) * rho 81230) = ((1 : F) * rho 81242)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81243) * ((-1 : F) * rho 81241 + (1 : F) * rho 81242) = ((2 : F) * rho 81240)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81244) * ((2 : F) + (1 : F) * rho 81241 + (-1 : F) * rho 81242) = ((1 : F) * rho 81241 + (1 : F) * rho 81242)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 87⟩, ⟨(1 : F), 80035, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81245)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81245) * ((1 : F) * rho 81243 + (1 : F) * rho 81244) = ((1 : F) * rho 81246)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81244) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81247)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81243) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81248)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81247) * ((1 : F) * rho 81248) = ((1 : F) * rho 81249)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81250) * ((1 : F) + (1 : F) * rho 81249) = ((1 : F) * rho 81247 + (1 : F) * rho 81248)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81251) * ((1 : F) + (-1 : F) * rho 81249) = ((1 : F) * rho 81246 + (-1 : F) * rho 81247 + (-1 : F) * rho 81248)

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 87⟩], residual := [((1 : F), 81250)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81252)

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 87⟩], residual := [((1 : F), 81251)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81253)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81243) * ((1 : F) * rho 81244) = ((1 : F) * rho 81254)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81243) * ((1 : F) * rho 81243) = ((1 : F) * rho 81255)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81244) * ((1 : F) * rho 81244) = ((1 : F) * rho 81256)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81257) * ((-1 : F) * rho 81255 + (1 : F) * rho 81256) = ((2 : F) * rho 81254)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81258) * ((2 : F) + (1 : F) * rho 81255 + (-1 : F) * rho 81256) = ((1 : F) * rho 81255 + (1 : F) * rho 81256)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 88⟩, ⟨(1 : F), 80035, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81259)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81259) * ((1 : F) * rho 81257 + (1 : F) * rho 81258) = ((1 : F) * rho 81260)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81258) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81261)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81257) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81262)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81261) * ((1 : F) * rho 81262) = ((1 : F) * rho 81263)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81264) * ((1 : F) + (1 : F) * rho 81263) = ((1 : F) * rho 81261 + (1 : F) * rho 81262)

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81265) * ((1 : F) + (-1 : F) * rho 81263) = ((1 : F) * rho 81260 + (-1 : F) * rho 81261 + (-1 : F) * rho 81262)

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 88⟩], residual := [((1 : F), 81264)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81266)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 88⟩], residual := [((1 : F), 81265)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81267)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81257) * ((1 : F) * rho 81258) = ((1 : F) * rho 81268)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81257) * ((1 : F) * rho 81257) = ((1 : F) * rho 81269)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81258) * ((1 : F) * rho 81258) = ((1 : F) * rho 81270)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81271) * ((-1 : F) * rho 81269 + (1 : F) * rho 81270) = ((2 : F) * rho 81268)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81272) * ((2 : F) + (1 : F) * rho 81269 + (-1 : F) * rho 81270) = ((1 : F) * rho 81269 + (1 : F) * rho 81270)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 89⟩, ⟨(1 : F), 80035, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81273)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81273) * ((1 : F) * rho 81271 + (1 : F) * rho 81272) = ((1 : F) * rho 81274)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81272) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81275)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81271) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81276)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81275) * ((1 : F) * rho 81276) = ((1 : F) * rho 81277)

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81278) * ((1 : F) + (1 : F) * rho 81277) = ((1 : F) * rho 81275 + (1 : F) * rho 81276)

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81279) * ((1 : F) + (-1 : F) * rho 81277) = ((1 : F) * rho 81274 + (-1 : F) * rho 81275 + (-1 : F) * rho 81276)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78071) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 89⟩], residual := [((1 : F), 81278)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81280)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78071) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 89⟩], residual := [((1 : F), 81279)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81281)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81271) * ((1 : F) * rho 81272) = ((1 : F) * rho 81282)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81271) * ((1 : F) * rho 81271) = ((1 : F) * rho 81283)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81272) * ((1 : F) * rho 81272) = ((1 : F) * rho 81284)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81285) * ((-1 : F) * rho 81283 + (1 : F) * rho 81284) = ((2 : F) * rho 81282)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81286) * ((2 : F) + (1 : F) * rho 81283 + (-1 : F) * rho 81284) = ((1 : F) * rho 81283 + (1 : F) * rho 81284)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 90⟩, ⟨(1 : F), 80035, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81287)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81287) * ((1 : F) * rho 81285 + (1 : F) * rho 81286) = ((1 : F) * rho 81288)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81286) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81289)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81285) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81290)

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81289) * ((1 : F) * rho 81290) = ((1 : F) * rho 81291)

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81292) * ((1 : F) + (1 : F) * rho 81291) = ((1 : F) * rho 81289 + (1 : F) * rho 81290)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81293) * ((1 : F) + (-1 : F) * rho 81291) = ((1 : F) * rho 81288 + (-1 : F) * rho 81289 + (-1 : F) * rho 81290)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 90⟩], residual := [((1 : F), 81292)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81294)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 90⟩], residual := [((1 : F), 81293)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81295)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81285) * ((1 : F) * rho 81286) = ((1 : F) * rho 81296)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81285) * ((1 : F) * rho 81285) = ((1 : F) * rho 81297)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81286) * ((1 : F) * rho 81286) = ((1 : F) * rho 81298)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81299) * ((-1 : F) * rho 81297 + (1 : F) * rho 81298) = ((2 : F) * rho 81296)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81300) * ((2 : F) + (1 : F) * rho 81297 + (-1 : F) * rho 81298) = ((1 : F) * rho 81297 + (1 : F) * rho 81298)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 91⟩, ⟨(1 : F), 80035, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81301)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81301) * ((1 : F) * rho 81299 + (1 : F) * rho 81300) = ((1 : F) * rho 81302)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81300) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81303)

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81299) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81304)

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81303) * ((1 : F) * rho 81304) = ((1 : F) * rho 81305)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81306) * ((1 : F) + (1 : F) * rho 81305) = ((1 : F) * rho 81303 + (1 : F) * rho 81304)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81307) * ((1 : F) + (-1 : F) * rho 81305) = ((1 : F) * rho 81302 + (-1 : F) * rho 81303 + (-1 : F) * rho 81304)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 91⟩], residual := [((1 : F), 81306)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81308)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 91⟩], residual := [((1 : F), 81307)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81309)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81299) * ((1 : F) * rho 81300) = ((1 : F) * rho 81310)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81299) * ((1 : F) * rho 81299) = ((1 : F) * rho 81311)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81300) * ((1 : F) * rho 81300) = ((1 : F) * rho 81312)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81313) * ((-1 : F) * rho 81311 + (1 : F) * rho 81312) = ((2 : F) * rho 81310)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81314) * ((2 : F) + (1 : F) * rho 81311 + (-1 : F) * rho 81312) = ((1 : F) * rho 81311 + (1 : F) * rho 81312)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 92⟩, ⟨(1 : F), 80035, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81315)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81315) * ((1 : F) * rho 81313 + (1 : F) * rho 81314) = ((1 : F) * rho 81316)

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81314) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81317)

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81313) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81318)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81317) * ((1 : F) * rho 81318) = ((1 : F) * rho 81319)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81320) * ((1 : F) + (1 : F) * rho 81319) = ((1 : F) * rho 81317 + (1 : F) * rho 81318)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81321) * ((1 : F) + (-1 : F) * rho 81319) = ((1 : F) * rho 81316 + (-1 : F) * rho 81317 + (-1 : F) * rho 81318)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78074) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 92⟩], residual := [((1 : F), 81320)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81322)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78074) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 92⟩], residual := [((1 : F), 81321)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81323)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81313) * ((1 : F) * rho 81314) = ((1 : F) * rho 81324)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81313) * ((1 : F) * rho 81313) = ((1 : F) * rho 81325)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81314) * ((1 : F) * rho 81314) = ((1 : F) * rho 81326)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81327) * ((-1 : F) * rho 81325 + (1 : F) * rho 81326) = ((2 : F) * rho 81324)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81328) * ((2 : F) + (1 : F) * rho 81325 + (-1 : F) * rho 81326) = ((1 : F) * rho 81325 + (1 : F) * rho 81326)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 93⟩, ⟨(1 : F), 80035, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81329)

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81329) * ((1 : F) * rho 81327 + (1 : F) * rho 81328) = ((1 : F) * rho 81330)

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81328) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81331)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81327) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81332)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81331) * ((1 : F) * rho 81332) = ((1 : F) * rho 81333)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81334) * ((1 : F) + (1 : F) * rho 81333) = ((1 : F) * rho 81331 + (1 : F) * rho 81332)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81335) * ((1 : F) + (-1 : F) * rho 81333) = ((1 : F) * rho 81330 + (-1 : F) * rho 81331 + (-1 : F) * rho 81332)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 93⟩], residual := [((1 : F), 81334)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81336)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 93⟩], residual := [((1 : F), 81335)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81337)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81327) * ((1 : F) * rho 81328) = ((1 : F) * rho 81338)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81327) * ((1 : F) * rho 81327) = ((1 : F) * rho 81339)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81328) * ((1 : F) * rho 81328) = ((1 : F) * rho 81340)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81341) * ((-1 : F) * rho 81339 + (1 : F) * rho 81340) = ((2 : F) * rho 81338)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81342) * ((2 : F) + (1 : F) * rho 81339 + (-1 : F) * rho 81340) = ((1 : F) * rho 81339 + (1 : F) * rho 81340)

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 94⟩, ⟨(1 : F), 80035, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81343)

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81343) * ((1 : F) * rho 81341 + (1 : F) * rho 81342) = ((1 : F) * rho 81344)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81342) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81345)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81341) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81346)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81345) * ((1 : F) * rho 81346) = ((1 : F) * rho 81347)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81348) * ((1 : F) + (1 : F) * rho 81347) = ((1 : F) * rho 81345 + (1 : F) * rho 81346)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81349) * ((1 : F) + (-1 : F) * rho 81347) = ((1 : F) * rho 81344 + (-1 : F) * rho 81345 + (-1 : F) * rho 81346)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 94⟩], residual := [((1 : F), 81348)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81350)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 94⟩], residual := [((1 : F), 81349)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81351)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81341) * ((1 : F) * rho 81342) = ((1 : F) * rho 81352)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81341) * ((1 : F) * rho 81341) = ((1 : F) * rho 81353)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81342) * ((1 : F) * rho 81342) = ((1 : F) * rho 81354)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81355) * ((-1 : F) * rho 81353 + (1 : F) * rho 81354) = ((2 : F) * rho 81352)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81356) * ((2 : F) + (1 : F) * rho 81353 + (-1 : F) * rho 81354) = ((1 : F) * rho 81353 + (1 : F) * rho 81354)

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 95⟩, ⟨(1 : F), 80035, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81357)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81357) * ((1 : F) * rho 81355 + (1 : F) * rho 81356) = ((1 : F) * rho 81358)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81356) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81359)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81360)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81359) * ((1 : F) * rho 81360) = ((1 : F) * rho 81361)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81362) * ((1 : F) + (1 : F) * rho 81361) = ((1 : F) * rho 81359 + (1 : F) * rho 81360)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81363) * ((1 : F) + (-1 : F) * rho 81361) = ((1 : F) * rho 81358 + (-1 : F) * rho 81359 + (-1 : F) * rho 81360)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 95⟩], residual := [((1 : F), 81362)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81364)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 95⟩], residual := [((1 : F), 81363)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81365)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81355) * ((1 : F) * rho 81356) = ((1 : F) * rho 81366)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81355) * ((1 : F) * rho 81355) = ((1 : F) * rho 81367)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81356) * ((1 : F) * rho 81356) = ((1 : F) * rho 81368)

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81369) * ((-1 : F) * rho 81367 + (1 : F) * rho 81368) = ((2 : F) * rho 81366)

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81370) * ((2 : F) + (1 : F) * rho 81367 + (-1 : F) * rho 81368) = ((1 : F) * rho 81367 + (1 : F) * rho 81368)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 96⟩, ⟨(1 : F), 80035, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81371)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81371) * ((1 : F) * rho 81369 + (1 : F) * rho 81370) = ((1 : F) * rho 81372)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81370) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81373)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81369) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81374)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81373) * ((1 : F) * rho 81374) = ((1 : F) * rho 81375)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81376) * ((1 : F) + (1 : F) * rho 81375) = ((1 : F) * rho 81373 + (1 : F) * rho 81374)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81377) * ((1 : F) + (-1 : F) * rho 81375) = ((1 : F) * rho 81372 + (-1 : F) * rho 81373 + (-1 : F) * rho 81374)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78078) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 96⟩], residual := [((1 : F), 81376)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81378)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78078) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 96⟩], residual := [((1 : F), 81377)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81379)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81369) * ((1 : F) * rho 81370) = ((1 : F) * rho 81380)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81369) * ((1 : F) * rho 81369) = ((1 : F) * rho 81381)

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81370) * ((1 : F) * rho 81370) = ((1 : F) * rho 81382)

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81383) * ((-1 : F) * rho 81381 + (1 : F) * rho 81382) = ((2 : F) * rho 81380)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81384) * ((2 : F) + (1 : F) * rho 81381 + (-1 : F) * rho 81382) = ((1 : F) * rho 81381 + (1 : F) * rho 81382)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 97⟩, ⟨(1 : F), 80035, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81385)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81385) * ((1 : F) * rho 81383 + (1 : F) * rho 81384) = ((1 : F) * rho 81386)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81384) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81387)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81383) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81388)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81387) * ((1 : F) * rho 81388) = ((1 : F) * rho 81389)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81390) * ((1 : F) + (1 : F) * rho 81389) = ((1 : F) * rho 81387 + (1 : F) * rho 81388)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81391) * ((1 : F) + (-1 : F) * rho 81389) = ((1 : F) * rho 81386 + (-1 : F) * rho 81387 + (-1 : F) * rho 81388)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78079) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 97⟩], residual := [((1 : F), 81390)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81392)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78079) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 97⟩], residual := [((1 : F), 81391)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81393)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81383) * ((1 : F) * rho 81384) = ((1 : F) * rho 81394)

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81383) * ((1 : F) * rho 81383) = ((1 : F) * rho 81395)

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81384) * ((1 : F) * rho 81384) = ((1 : F) * rho 81396)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81397) * ((-1 : F) * rho 81395 + (1 : F) * rho 81396) = ((2 : F) * rho 81394)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81398) * ((2 : F) + (1 : F) * rho 81395 + (-1 : F) * rho 81396) = ((1 : F) * rho 81395 + (1 : F) * rho 81396)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 98⟩, ⟨(1 : F), 80035, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81399)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81399) * ((1 : F) * rho 81397 + (1 : F) * rho 81398) = ((1 : F) * rho 81400)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81398) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81401)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81397) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81402)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81401) * ((1 : F) * rho 81402) = ((1 : F) * rho 81403)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81404) * ((1 : F) + (1 : F) * rho 81403) = ((1 : F) * rho 81401 + (1 : F) * rho 81402)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81405) * ((1 : F) + (-1 : F) * rho 81403) = ((1 : F) * rho 81400 + (-1 : F) * rho 81401 + (-1 : F) * rho 81402)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 98⟩], residual := [((1 : F), 81404)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81406)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 98⟩], residual := [((1 : F), 81405)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81407)

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81397) * ((1 : F) * rho 81398) = ((1 : F) * rho 81408)

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81397) * ((1 : F) * rho 81397) = ((1 : F) * rho 81409)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81398) * ((1 : F) * rho 81398) = ((1 : F) * rho 81410)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81411) * ((-1 : F) * rho 81409 + (1 : F) * rho 81410) = ((2 : F) * rho 81408)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81412) * ((2 : F) + (1 : F) * rho 81409 + (-1 : F) * rho 81410) = ((1 : F) * rho 81409 + (1 : F) * rho 81410)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 99⟩, ⟨(1 : F), 80035, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81413)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81413) * ((1 : F) * rho 81411 + (1 : F) * rho 81412) = ((1 : F) * rho 81414)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81412) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81415)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81411) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81416)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81415) * ((1 : F) * rho 81416) = ((1 : F) * rho 81417)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81418) * ((1 : F) + (1 : F) * rho 81417) = ((1 : F) * rho 81415 + (1 : F) * rho 81416)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81419) * ((1 : F) + (-1 : F) * rho 81417) = ((1 : F) * rho 81414 + (-1 : F) * rho 81415 + (-1 : F) * rho 81416)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 99⟩], residual := [((1 : F), 81418)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81420)

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 99⟩], residual := [((1 : F), 81419)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81421)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81411) * ((1 : F) * rho 81412) = ((1 : F) * rho 81422)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81411) * ((1 : F) * rho 81411) = ((1 : F) * rho 81423)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81412) * ((1 : F) * rho 81412) = ((1 : F) * rho 81424)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81425) * ((-1 : F) * rho 81423 + (1 : F) * rho 81424) = ((2 : F) * rho 81422)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81426) * ((2 : F) + (1 : F) * rho 81423 + (-1 : F) * rho 81424) = ((1 : F) * rho 81423 + (1 : F) * rho 81424)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80034, 14, 100⟩, ⟨(1 : F), 80035, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81427)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81427) * ((1 : F) * rho 81425 + (1 : F) * rho 81426) = ((1 : F) * rho 81428)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81426) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 78083, 13, 150⟩, ⟨(1 : F), 80034, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81429)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81425) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 78084, 13, 150⟩, ⟨(1 : F), 80035, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81430)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 81429) * ((1 : F) * rho 81430) = ((1 : F) * rho 81431)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81432) * ((1 : F) + (1 : F) * rho 81431) = ((1 : F) * rho 81429 + (1 : F) * rho 81430)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81433) * ((1 : F) + (-1 : F) * rho 81431) = ((1 : F) * rho 81428 + (-1 : F) * rho 81429 + (-1 : F) * rho 81430)

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 78083, 13, 150⟩, ⟨(-1 : F), 80034, 14, 100⟩], residual := [((1 : F), 81432)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81434)

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 78084, 13, 150⟩, ⟨(-1 : F), 80035, 14, 100⟩], residual := [((1 : F), 81433)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 81435)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81425) * ((1 : F) * rho 81426) = ((1 : F) * rho 81436)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81425) * ((1 : F) * rho 81425) = ((1 : F) * rho 81437)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81426) * ((1 : F) * rho 81426) = ((1 : F) * rho 81438)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81439) * ((-1 : F) * rho 81437 + (1 : F) * rho 81438) = ((2 : F) * rho 81436)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81440) * ((2 : F) + (1 : F) * rho 81437 + (-1 : F) * rho 81438) = ((1 : F) * rho 81437 + (1 : F) * rho 81438)

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
relationSha256Hex := "17b4e2a9edb427922c81937980eccc8727e48bc91b1ea993e2792411cfdfff02",
wireRoleSha256Hex := "b446694b1a5a182f99e3c6c84033e4fa7770784580c534b5c66fef541982e2b9",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg72
