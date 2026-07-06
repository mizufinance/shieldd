import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Transfer.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg10

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relationRow0 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20864) * ((1 : F) + (-1 : F) * rho 20864) = ((0 : F))

def relationRow1 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20865) * ((1 : F) + (-1 : F) * rho 20865) = ((0 : F))

def relationRow2 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20866) * ((1 : F) + (-1 : F) * rho 20866) = ((0 : F))

def relationRow3 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20867) * ((1 : F) + (-1 : F) * rho 20867) = ((0 : F))

def relationRow4 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20868) * ((1 : F) + (-1 : F) * rho 20868) = ((0 : F))

def relationRow5 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20869) * ((1 : F) + (-1 : F) * rho 20869) = ((0 : F))

def relationRow6 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20870) * ((1 : F) + (-1 : F) * rho 20870) = ((0 : F))

def relationRow7 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20871) * ((1 : F) + (-1 : F) * rho 20871) = ((0 : F))

def relationRow8 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20872) * ((1 : F) + (-1 : F) * rho 20872) = ((0 : F))

def relationRow9 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20873) * ((1 : F) + (-1 : F) * rho 20873) = ((0 : F))

def relationRow10 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20874) * ((1 : F) + (-1 : F) * rho 20874) = ((0 : F))

def relationRow11 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20875) * ((1 : F) + (-1 : F) * rho 20875) = ((0 : F))

def relationRow12 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20876) * ((1 : F) + (-1 : F) * rho 20876) = ((0 : F))

def relationRow13 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20877) * ((1 : F) + (-1 : F) * rho 20877) = ((0 : F))

def relationRow14 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20878) * ((1 : F) + (-1 : F) * rho 20878) = ((0 : F))

def relationRow15 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20879) * ((1 : F) + (-1 : F) * rho 20879) = ((0 : F))

def relationRow16 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20880) * ((1 : F) + (-1 : F) * rho 20880) = ((0 : F))

def relationRow17 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20881) * ((1 : F) + (-1 : F) * rho 20881) = ((0 : F))

def relationRow18 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20882) * ((1 : F) + (-1 : F) * rho 20882) = ((0 : F))

def relationRow19 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20883) * ((1 : F) + (-1 : F) * rho 20883) = ((0 : F))

def relationRow20 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20884) * ((1 : F) + (-1 : F) * rho 20884) = ((0 : F))

def relationRow21 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20885) * ((1 : F) + (-1 : F) * rho 20885) = ((0 : F))

def relationRow22 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20886) * ((1 : F) + (-1 : F) * rho 20886) = ((0 : F))

def relationRow23 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20887) * ((1 : F) + (-1 : F) * rho 20887) = ((0 : F))

def relationRow24 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20888) * ((1 : F) + (-1 : F) * rho 20888) = ((0 : F))

def relationRow25 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20889) * ((1 : F) + (-1 : F) * rho 20889) = ((0 : F))

def relationRow26 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20890) * ((1 : F) + (-1 : F) * rho 20890) = ((0 : F))

def relationRow27 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20891) * ((1 : F) + (-1 : F) * rho 20891) = ((0 : F))

def relationRow28 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20892) * ((1 : F) + (-1 : F) * rho 20892) = ((0 : F))

def relationRow29 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20893) * ((1 : F) + (-1 : F) * rho 20893) = ((0 : F))

def relationRow30 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20894) * ((1 : F) + (-1 : F) * rho 20894) = ((0 : F))

def relationRow31 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20895) * ((1 : F) + (-1 : F) * rho 20895) = ((0 : F))

def relationRow32 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20896) * ((1 : F) + (-1 : F) * rho 20896) = ((0 : F))

def relationRow33 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20897) * ((1 : F) + (-1 : F) * rho 20897) = ((0 : F))

def relationRow34 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20898) * ((1 : F) + (-1 : F) * rho 20898) = ((0 : F))

def relationRow35 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20899) * ((1 : F) + (-1 : F) * rho 20899) = ((0 : F))

def relationRow36 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20900) * ((1 : F) + (-1 : F) * rho 20900) = ((0 : F))

def relationRow37 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20901) * ((1 : F) + (-1 : F) * rho 20901) = ((0 : F))

def relationRow38 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20902) * ((1 : F) + (-1 : F) * rho 20902) = ((0 : F))

def relationRow39 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20903) * ((1 : F) + (-1 : F) * rho 20903) = ((0 : F))

def relationRow40 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20904) * ((1 : F) + (-1 : F) * rho 20904) = ((0 : F))

def relationRow41 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20905) * ((1 : F) + (-1 : F) * rho 20905) = ((0 : F))

def relationRow42 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20906) * ((1 : F) + (-1 : F) * rho 20906) = ((0 : F))

def relationRow43 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20907) * ((1 : F) + (-1 : F) * rho 20907) = ((0 : F))

def relationRow44 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20908) * ((1 : F) + (-1 : F) * rho 20908) = ((0 : F))

def relationRow45 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20909) * ((1 : F) + (-1 : F) * rho 20909) = ((0 : F))

def relationRow46 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20910) * ((1 : F) + (-1 : F) * rho 20910) = ((0 : F))

def relationRow47 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20911) * ((1 : F) + (-1 : F) * rho 20911) = ((0 : F))

def relationRow48 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20912) * ((1 : F) + (-1 : F) * rho 20912) = ((0 : F))

def relationRow49 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20913) * ((1 : F) + (-1 : F) * rho 20913) = ((0 : F))

def relationRow50 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20914) * ((1 : F) + (-1 : F) * rho 20914) = ((0 : F))

def relationRow51 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20915) * ((1 : F) + (-1 : F) * rho 20915) = ((0 : F))

def relationRow52 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20916) * ((1 : F) + (-1 : F) * rho 20916) = ((0 : F))

def relationRow53 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20917) * ((1 : F) + (-1 : F) * rho 20917) = ((0 : F))

def relationRow54 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20918) * ((1 : F) + (-1 : F) * rho 20918) = ((0 : F))

def relationRow55 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20919) * ((1 : F) + (-1 : F) * rho 20919) = ((0 : F))

def relationRow56 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20920) * ((1 : F) + (-1 : F) * rho 20920) = ((0 : F))

def relationRow57 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20921) * ((1 : F) + (-1 : F) * rho 20921) = ((0 : F))

def relationRow58 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20922) * ((1 : F) + (-1 : F) * rho 20922) = ((0 : F))

def relationRow59 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20923) * ((1 : F) + (-1 : F) * rho 20923) = ((0 : F))

def relationRow60 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20924) * ((1 : F) + (-1 : F) * rho 20924) = ((0 : F))

def relationRow61 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20925) * ((1 : F) + (-1 : F) * rho 20925) = ((0 : F))

def relationRow62 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20926) * ((1 : F) + (-1 : F) * rho 20926) = ((0 : F))

def relationRow63 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20927) * ((1 : F) + (-1 : F) * rho 20927) = ((0 : F))

def relationRow64 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20928) * ((1 : F) + (-1 : F) * rho 20928) = ((0 : F))

def relationRow65 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20929) * ((1 : F) + (-1 : F) * rho 20929) = ((0 : F))

def relationRow66 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20930) * ((1 : F) + (-1 : F) * rho 20930) = ((0 : F))

def relationRow67 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20931) * ((1 : F) + (-1 : F) * rho 20931) = ((0 : F))

def relationRow68 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20932) * ((1 : F) + (-1 : F) * rho 20932) = ((0 : F))

def relationRow69 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20933) * ((1 : F) + (-1 : F) * rho 20933) = ((0 : F))

def relationRow70 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20934) * ((1 : F) + (-1 : F) * rho 20934) = ((0 : F))

def relationRow71 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20935) * ((1 : F) + (-1 : F) * rho 20935) = ((0 : F))

def relationRow72 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20936) * ((1 : F) + (-1 : F) * rho 20936) = ((0 : F))

def relationRow73 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20937) * ((1 : F) + (-1 : F) * rho 20937) = ((0 : F))

def relationRow74 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20938) * ((1 : F) + (-1 : F) * rho 20938) = ((0 : F))

def relationRow75 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20939) * ((1 : F) + (-1 : F) * rho 20939) = ((0 : F))

def relationRow76 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20940) * ((1 : F) + (-1 : F) * rho 20940) = ((0 : F))

def relationRow77 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20941) * ((1 : F) + (-1 : F) * rho 20941) = ((0 : F))

def relationRow78 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20942) * ((1 : F) + (-1 : F) * rho 20942) = ((0 : F))

def relationRow79 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20943) * ((1 : F) + (-1 : F) * rho 20943) = ((0 : F))

def relationRow80 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20944) * ((1 : F) + (-1 : F) * rho 20944) = ((0 : F))

def relationRow81 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20945) * ((1 : F) + (-1 : F) * rho 20945) = ((0 : F))

def relationRow82 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20946) * ((1 : F) + (-1 : F) * rho 20946) = ((0 : F))

def relationRow83 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20947) * ((1 : F) + (-1 : F) * rho 20947) = ((0 : F))

def relationRow84 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20948) * ((1 : F) + (-1 : F) * rho 20948) = ((0 : F))

def relationRow85 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20949) * ((1 : F) + (-1 : F) * rho 20949) = ((0 : F))

def relationRow86 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20950) * ((1 : F) + (-1 : F) * rho 20950) = ((0 : F))

def relationRow87 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20951) * ((1 : F) + (-1 : F) * rho 20951) = ((0 : F))

def relationRow88 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20952) * ((1 : F) + (-1 : F) * rho 20952) = ((0 : F))

def relationRow89 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20953) * ((1 : F) + (-1 : F) * rho 20953) = ((0 : F))

def relationRow90 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20954) * ((1 : F) + (-1 : F) * rho 20954) = ((0 : F))

def relationRow91 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20955) * ((1 : F) + (-1 : F) * rho 20955) = ((0 : F))

def relationRow92 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20956) * ((1 : F) + (-1 : F) * rho 20956) = ((0 : F))

def relationRow93 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20957) * ((1 : F) + (-1 : F) * rho 20957) = ((0 : F))

def relationRow94 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20958) * ((1 : F) + (-1 : F) * rho 20958) = ((0 : F))

def relationRow95 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20959) * ((1 : F) + (-1 : F) * rho 20959) = ((0 : F))

def relationRow96 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20960) * ((1 : F) + (-1 : F) * rho 20960) = ((0 : F))

def relationRow97 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20961) * ((1 : F) + (-1 : F) * rho 20961) = ((0 : F))

def relationRow98 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20962) * ((1 : F) + (-1 : F) * rho 20962) = ((0 : F))

def relationRow99 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20963) * ((1 : F) + (-1 : F) * rho 20963) = ((0 : F))

def relationRow100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20964) * ((1 : F) + (-1 : F) * rho 20964) = ((0 : F))

def relationRow101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20965) * ((1 : F) + (-1 : F) * rho 20965) = ((0 : F))

def relationRow102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20966) * ((1 : F) + (-1 : F) * rho 20966) = ((0 : F))

def relationRow103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20967) * ((1 : F) + (-1 : F) * rho 20967) = ((0 : F))

def relationRow104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20968) * ((1 : F) + (-1 : F) * rho 20968) = ((0 : F))

def relationRow105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20969) * ((1 : F) + (-1 : F) * rho 20969) = ((0 : F))

def relationRow106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20970) * ((1 : F) + (-1 : F) * rho 20970) = ((0 : F))

def relationRow107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20971) * ((1 : F) + (-1 : F) * rho 20971) = ((0 : F))

def relationRow108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20972) * ((1 : F) + (-1 : F) * rho 20972) = ((0 : F))

def relationRow109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20973) * ((1 : F) + (-1 : F) * rho 20973) = ((0 : F))

def relationRow110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20974) * ((1 : F) + (-1 : F) * rho 20974) = ((0 : F))

def relationRow111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20975) * ((1 : F) + (-1 : F) * rho 20975) = ((0 : F))

def relationRow112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20976) * ((1 : F) + (-1 : F) * rho 20976) = ((0 : F))

def relationRow113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20977) * ((1 : F) + (-1 : F) * rho 20977) = ((0 : F))

def relationRow114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20978) * ((1 : F) + (-1 : F) * rho 20978) = ((0 : F))

def relationRow115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20979) * ((1 : F) + (-1 : F) * rho 20979) = ((0 : F))

def relationRow116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20980) * ((1 : F) + (-1 : F) * rho 20980) = ((0 : F))

def relationRow117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20981) * ((1 : F) + (-1 : F) * rho 20981) = ((0 : F))

def relationRow118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20982) * ((1 : F) + (-1 : F) * rho 20982) = ((0 : F))

def relationRow119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20983) * ((1 : F) + (-1 : F) * rho 20983) = ((0 : F))

def relationRow120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20984) * ((1 : F) + (-1 : F) * rho 20984) = ((0 : F))

def relationRow121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20985) * ((1 : F) + (-1 : F) * rho 20985) = ((0 : F))

def relationRow122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20986) * ((1 : F) + (-1 : F) * rho 20986) = ((0 : F))

def relationRow123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20987) * ((1 : F) + (-1 : F) * rho 20987) = ((0 : F))

def relationRow124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20988) * ((1 : F) + (-1 : F) * rho 20988) = ((0 : F))

def relationRow125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20989) * ((1 : F) + (-1 : F) * rho 20989) = ((0 : F))

def relationRow126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20990) * ((1 : F) + (-1 : F) * rho 20990) = ((0 : F))

def relationRow127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20991) * ((1 : F) + (-1 : F) * rho 20991) = ((0 : F))

def relationRow128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20992) * ((1 : F) + (-1 : F) * rho 20992) = ((0 : F))

def relationRow129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20993) * ((1 : F) + (-1 : F) * rho 20993) = ((0 : F))

def relationRow130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20994) * ((1 : F) + (-1 : F) * rho 20994) = ((0 : F))

def relationRow131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20995) * ((1 : F) + (-1 : F) * rho 20995) = ((0 : F))

def relationRow132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20996) * ((1 : F) + (-1 : F) * rho 20996) = ((0 : F))

def relationRow133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20997) * ((1 : F) + (-1 : F) * rho 20997) = ((0 : F))

def relationRow134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20998) * ((1 : F) + (-1 : F) * rho 20998) = ((0 : F))

def relationRow135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20999) * ((1 : F) + (-1 : F) * rho 20999) = ((0 : F))

def relationRow136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21000) * ((1 : F) + (-1 : F) * rho 21000) = ((0 : F))

def relationRow137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21001) * ((1 : F) + (-1 : F) * rho 21001) = ((0 : F))

def relationRow138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21002) * ((1 : F) + (-1 : F) * rho 21002) = ((0 : F))

def relationRow139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21003) * ((1 : F) + (-1 : F) * rho 21003) = ((0 : F))

def relationRow140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21004) * ((1 : F) + (-1 : F) * rho 21004) = ((0 : F))

def relationRow141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21005) * ((1 : F) + (-1 : F) * rho 21005) = ((0 : F))

def relationRow142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21006) * ((1 : F) + (-1 : F) * rho 21006) = ((0 : F))

def relationRow143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21007) * ((1 : F) + (-1 : F) * rho 21007) = ((0 : F))

def relationRow144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21008) * ((1 : F) + (-1 : F) * rho 21008) = ((0 : F))

def relationRow145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21009) * ((1 : F) + (-1 : F) * rho 21009) = ((0 : F))

def relationRow146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21010) * ((1 : F) + (-1 : F) * rho 21010) = ((0 : F))

def relationRow147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21011) * ((1 : F) + (-1 : F) * rho 21011) = ((0 : F))

def relationRow148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21012) * ((1 : F) + (-1 : F) * rho 21012) = ((0 : F))

def relationRow149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21013) * ((1 : F) + (-1 : F) * rho 21013) = ((0 : F))

def relationRow150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21014) * ((1 : F) + (-1 : F) * rho 21014) = ((0 : F))

def relationRow151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21015) * ((1 : F) + (-1 : F) * rho 21015) = ((0 : F))

def relationRow152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21016) * ((1 : F) + (-1 : F) * rho 21016) = ((0 : F))

def relationRow153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21017) * ((1 : F) + (-1 : F) * rho 21017) = ((0 : F))

def relationRow154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21018) * ((1 : F) + (-1 : F) * rho 21018) = ((0 : F))

def relationRow155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21019) * ((1 : F) + (-1 : F) * rho 21019) = ((0 : F))

def relationRow156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21020) * ((1 : F) + (-1 : F) * rho 21020) = ((0 : F))

def relationRow157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21021) * ((1 : F) + (-1 : F) * rho 21021) = ((0 : F))

def relationRow158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21022) * ((1 : F) + (-1 : F) * rho 21022) = ((0 : F))

def relationRow159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21023) * ((1 : F) + (-1 : F) * rho 21023) = ((0 : F))

def relationRow160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21024) * ((1 : F) + (-1 : F) * rho 21024) = ((0 : F))

def relationRow161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21025) * ((1 : F) + (-1 : F) * rho 21025) = ((0 : F))

def relationRow162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21026) * ((1 : F) + (-1 : F) * rho 21026) = ((0 : F))

def relationRow163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21027) * ((1 : F) + (-1 : F) * rho 21027) = ((0 : F))

def relationRow164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21028) * ((1 : F) + (-1 : F) * rho 21028) = ((0 : F))

def relationRow165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21029) * ((1 : F) + (-1 : F) * rho 21029) = ((0 : F))

def relationRow166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21030) * ((1 : F) + (-1 : F) * rho 21030) = ((0 : F))

def relationRow167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21031) * ((1 : F) + (-1 : F) * rho 21031) = ((0 : F))

def relationRow168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21032) * ((1 : F) + (-1 : F) * rho 21032) = ((0 : F))

def relationRow169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21033) * ((1 : F) + (-1 : F) * rho 21033) = ((0 : F))

def relationRow170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21034) * ((1 : F) + (-1 : F) * rho 21034) = ((0 : F))

def relationRow171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21035) * ((1 : F) + (-1 : F) * rho 21035) = ((0 : F))

def relationRow172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21036) * ((1 : F) + (-1 : F) * rho 21036) = ((0 : F))

def relationRow173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21037) * ((1 : F) + (-1 : F) * rho 21037) = ((0 : F))

def relationRow174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21038) * ((1 : F) + (-1 : F) * rho 21038) = ((0 : F))

def relationRow175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21039) * ((1 : F) + (-1 : F) * rho 21039) = ((0 : F))

def relationRow176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21040) * ((1 : F) + (-1 : F) * rho 21040) = ((0 : F))

def relationRow177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21041) * ((1 : F) + (-1 : F) * rho 21041) = ((0 : F))

def relationRow178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21042) * ((1 : F) + (-1 : F) * rho 21042) = ((0 : F))

def relationRow179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21043) * ((1 : F) + (-1 : F) * rho 21043) = ((0 : F))

def relationRow180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21044) * ((1 : F) + (-1 : F) * rho 21044) = ((0 : F))

def relationRow181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21045) * ((1 : F) + (-1 : F) * rho 21045) = ((0 : F))

def relationRow182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21046) * ((1 : F) + (-1 : F) * rho 21046) = ((0 : F))

def relationRow183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21047) * ((1 : F) + (-1 : F) * rho 21047) = ((0 : F))

def relationRow184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21048) * ((1 : F) + (-1 : F) * rho 21048) = ((0 : F))

def relationRow185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21049) * ((1 : F) + (-1 : F) * rho 21049) = ((0 : F))

def relationRow186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21050) * ((1 : F) + (-1 : F) * rho 21050) = ((0 : F))

def relationRow187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21051) * ((1 : F) + (-1 : F) * rho 21051) = ((0 : F))

def relationRow188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21052) * ((1 : F) + (-1 : F) * rho 21052) = ((0 : F))

def relationRow189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21053) * ((1 : F) + (-1 : F) * rho 21053) = ((0 : F))

def relationRow190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21054) * ((1 : F) + (-1 : F) * rho 21054) = ((0 : F))

def relationRow191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21055) * ((1 : F) + (-1 : F) * rho 21055) = ((0 : F))

def relationRow192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21056) * ((1 : F) + (-1 : F) * rho 21056) = ((0 : F))

def relationRow193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21057) * ((1 : F) + (-1 : F) * rho 21057) = ((0 : F))

def relationRow194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21058) * ((1 : F) + (-1 : F) * rho 21058) = ((0 : F))

def relationRow195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21059) * ((1 : F) + (-1 : F) * rho 21059) = ((0 : F))

def relationRow196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21060) * ((1 : F) + (-1 : F) * rho 21060) = ((0 : F))

def relationRow197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21061) * ((1 : F) + (-1 : F) * rho 21061) = ((0 : F))

def relationRow198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21062) * ((1 : F) + (-1 : F) * rho 21062) = ((0 : F))

def relationRow199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21063) * ((1 : F) + (-1 : F) * rho 21063) = ((0 : F))

def relationRow200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21064) * ((1 : F) + (-1 : F) * rho 21064) = ((0 : F))

def relationRow201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21065) * ((1 : F) + (-1 : F) * rho 21065) = ((0 : F))

def relationRow202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21066) * ((1 : F) + (-1 : F) * rho 21066) = ((0 : F))

def relationRow203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21067) * ((1 : F) + (-1 : F) * rho 21067) = ((0 : F))

def relationRow204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21068) * ((1 : F) + (-1 : F) * rho 21068) = ((0 : F))

def relationRow205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21069) * ((1 : F) + (-1 : F) * rho 21069) = ((0 : F))

def relationRow206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21070) * ((1 : F) + (-1 : F) * rho 21070) = ((0 : F))

def relationRow207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21071) * ((1 : F) + (-1 : F) * rho 21071) = ((0 : F))

def relationRow208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21072) * ((1 : F) + (-1 : F) * rho 21072) = ((0 : F))

def relationRow209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21073) * ((1 : F) + (-1 : F) * rho 21073) = ((0 : F))

def relationRow210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21074) * ((1 : F) + (-1 : F) * rho 21074) = ((0 : F))

def relationRow211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21075) * ((1 : F) + (-1 : F) * rho 21075) = ((0 : F))

def relationRow212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21076) * ((1 : F) + (-1 : F) * rho 21076) = ((0 : F))

def relationRow213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21077) * ((1 : F) + (-1 : F) * rho 21077) = ((0 : F))

def relationRow214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21078) * ((1 : F) + (-1 : F) * rho 21078) = ((0 : F))

def relationRow215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21079) * ((1 : F) + (-1 : F) * rho 21079) = ((0 : F))

def relationRow216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21080) * ((1 : F) + (-1 : F) * rho 21080) = ((0 : F))

def relationRow217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21081) * ((1 : F) + (-1 : F) * rho 21081) = ((0 : F))

def relationRow218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21082) * ((1 : F) + (-1 : F) * rho 21082) = ((0 : F))

def relationRow219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21083) * ((1 : F) + (-1 : F) * rho 21083) = ((0 : F))

def relationRow220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21084) * ((1 : F) + (-1 : F) * rho 21084) = ((0 : F))

def relationRow221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21085) * ((1 : F) + (-1 : F) * rho 21085) = ((0 : F))

def relationRow222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21086) * ((1 : F) + (-1 : F) * rho 21086) = ((0 : F))

def relationRow223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21087) * ((1 : F) + (-1 : F) * rho 21087) = ((0 : F))

def relationRow224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21088) * ((1 : F) + (-1 : F) * rho 21088) = ((0 : F))

def relationRow225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21089) * ((1 : F) + (-1 : F) * rho 21089) = ((0 : F))

def relationRow226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21090) * ((1 : F) + (-1 : F) * rho 21090) = ((0 : F))

def relationRow227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21091) * ((1 : F) + (-1 : F) * rho 21091) = ((0 : F))

def relationRow228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21092) * ((1 : F) + (-1 : F) * rho 21092) = ((0 : F))

def relationRow229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21093) * ((1 : F) + (-1 : F) * rho 21093) = ((0 : F))

def relationRow230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21094) * ((1 : F) + (-1 : F) * rho 21094) = ((0 : F))

def relationRow231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21095) * ((1 : F) + (-1 : F) * rho 21095) = ((0 : F))

def relationRow232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21096) * ((1 : F) + (-1 : F) * rho 21096) = ((0 : F))

def relationRow233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21097) * ((1 : F) + (-1 : F) * rho 21097) = ((0 : F))

def relationRow234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21098) * ((1 : F) + (-1 : F) * rho 21098) = ((0 : F))

def relationRow235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21099) * ((1 : F) + (-1 : F) * rho 21099) = ((0 : F))

def relationRow236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21100) * ((1 : F) + (-1 : F) * rho 21100) = ((0 : F))

def relationRow237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21101) * ((1 : F) + (-1 : F) * rho 21101) = ((0 : F))

def relationRow238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21102) * ((1 : F) + (-1 : F) * rho 21102) = ((0 : F))

def relationRow239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21103) * ((1 : F) + (-1 : F) * rho 21103) = ((0 : F))

def relationRow240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21104) * ((1 : F) + (-1 : F) * rho 21104) = ((0 : F))

def relationRow241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21105) * ((1 : F) + (-1 : F) * rho 21105) = ((0 : F))

def relationRow242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21106) * ((1 : F) + (-1 : F) * rho 21106) = ((0 : F))

def relationRow243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21107) * ((1 : F) + (-1 : F) * rho 21107) = ((0 : F))

def relationRow244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21108) * ((1 : F) + (-1 : F) * rho 21108) = ((0 : F))

def relationRow245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21109) * ((1 : F) + (-1 : F) * rho 21109) = ((0 : F))

def relationRow246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21110) * ((1 : F) + (-1 : F) * rho 21110) = ((0 : F))

def relationRow247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21111) * ((1 : F) + (-1 : F) * rho 21111) = ((0 : F))

def relationRow248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21112) * ((1 : F) + (-1 : F) * rho 21112) = ((0 : F))

def relationRow249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21113) * ((1 : F) + (-1 : F) * rho 21113) = ((0 : F))

def relationRow250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21114) * ((1 : F) + (-1 : F) * rho 21114) = ((0 : F))

def relationLc0Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 20864 + (2 : F) * rho 20865 + (4 : F) * rho 20866 + (8 : F) * rho 20867 + (16 : F) * rho 20868 + (32 : F) * rho 20869 + (64 : F) * rho 20870 + (128 : F) * rho 20871 + (256 : F) * rho 20872 + (512 : F) * rho 20873 + (1024 : F) * rho 20874 + (2048 : F) * rho 20875 + (4096 : F) * rho 20876 + (8192 : F) * rho 20877 + (16384 : F) * rho 20878 + (32768 : F) * rho 20879 + (65536 : F) * rho 20880 + (131072 : F) * rho 20881 + (262144 : F) * rho 20882 + (524288 : F) * rho 20883 + (1048576 : F) * rho 20884 + (2097152 : F) * rho 20885 + (4194304 : F) * rho 20886 + (8388608 : F) * rho 20887 + (16777216 : F) * rho 20888 + (33554432 : F) * rho 20889 + (67108864 : F) * rho 20890 + (134217728 : F) * rho 20891 + (268435456 : F) * rho 20892 + (536870912 : F) * rho 20893 + (1073741824 : F) * rho 20894 + (2147483648 : F) * rho 20895

def relationLc0Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 20896 + (8589934592 : F) * rho 20897 + (17179869184 : F) * rho 20898 + (34359738368 : F) * rho 20899 + (68719476736 : F) * rho 20900 + (137438953472 : F) * rho 20901 + (274877906944 : F) * rho 20902 + (549755813888 : F) * rho 20903 + (1099511627776 : F) * rho 20904 + (2199023255552 : F) * rho 20905 + (4398046511104 : F) * rho 20906 + (8796093022208 : F) * rho 20907 + (17592186044416 : F) * rho 20908 + (35184372088832 : F) * rho 20909 + (70368744177664 : F) * rho 20910 + (140737488355328 : F) * rho 20911 + (281474976710656 : F) * rho 20912 + (562949953421312 : F) * rho 20913 + (1125899906842624 : F) * rho 20914 + (2251799813685248 : F) * rho 20915 + (4503599627370496 : F) * rho 20916 + (9007199254740992 : F) * rho 20917 + (18014398509481984 : F) * rho 20918 + (36028797018963968 : F) * rho 20919 + (72057594037927936 : F) * rho 20920 + (144115188075855872 : F) * rho 20921 + (288230376151711744 : F) * rho 20922 + (576460752303423488 : F) * rho 20923 + (1152921504606846976 : F) * rho 20924 + (2305843009213693952 : F) * rho 20925 + (4611686018427387904 : F) * rho 20926 + (9223372036854775808 : F) * rho 20927

def relationLc0Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 20928 + (36893488147419103232 : F) * rho 20929 + (73786976294838206464 : F) * rho 20930 + (147573952589676412928 : F) * rho 20931 + (295147905179352825856 : F) * rho 20932 + (590295810358705651712 : F) * rho 20933 + (1180591620717411303424 : F) * rho 20934 + (2361183241434822606848 : F) * rho 20935 + (4722366482869645213696 : F) * rho 20936 + (9444732965739290427392 : F) * rho 20937 + (18889465931478580854784 : F) * rho 20938 + (37778931862957161709568 : F) * rho 20939 + (75557863725914323419136 : F) * rho 20940 + (151115727451828646838272 : F) * rho 20941 + (302231454903657293676544 : F) * rho 20942 + (604462909807314587353088 : F) * rho 20943 + (1208925819614629174706176 : F) * rho 20944 + (2417851639229258349412352 : F) * rho 20945 + (4835703278458516698824704 : F) * rho 20946 + (9671406556917033397649408 : F) * rho 20947 + (19342813113834066795298816 : F) * rho 20948 + (38685626227668133590597632 : F) * rho 20949 + (77371252455336267181195264 : F) * rho 20950 + (154742504910672534362390528 : F) * rho 20951 + (309485009821345068724781056 : F) * rho 20952 + (618970019642690137449562112 : F) * rho 20953 + (1237940039285380274899124224 : F) * rho 20954 + (2475880078570760549798248448 : F) * rho 20955 + (4951760157141521099596496896 : F) * rho 20956 + (9903520314283042199192993792 : F) * rho 20957 + (19807040628566084398385987584 : F) * rho 20958 + (39614081257132168796771975168 : F) * rho 20959

def relationLc0Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 20960 + (158456325028528675187087900672 : F) * rho 20961 + (316912650057057350374175801344 : F) * rho 20962 + (633825300114114700748351602688 : F) * rho 20963 + (1267650600228229401496703205376 : F) * rho 20964 + (2535301200456458802993406410752 : F) * rho 20965 + (5070602400912917605986812821504 : F) * rho 20966 + (10141204801825835211973625643008 : F) * rho 20967 + (20282409603651670423947251286016 : F) * rho 20968 + (40564819207303340847894502572032 : F) * rho 20969 + (81129638414606681695789005144064 : F) * rho 20970 + (162259276829213363391578010288128 : F) * rho 20971 + (324518553658426726783156020576256 : F) * rho 20972 + (649037107316853453566312041152512 : F) * rho 20973 + (1298074214633706907132624082305024 : F) * rho 20974 + (2596148429267413814265248164610048 : F) * rho 20975 + (5192296858534827628530496329220096 : F) * rho 20976 + (10384593717069655257060992658440192 : F) * rho 20977 + (20769187434139310514121985316880384 : F) * rho 20978 + (41538374868278621028243970633760768 : F) * rho 20979 + (83076749736557242056487941267521536 : F) * rho 20980 + (166153499473114484112975882535043072 : F) * rho 20981 + (332306998946228968225951765070086144 : F) * rho 20982 + (664613997892457936451903530140172288 : F) * rho 20983 + (1329227995784915872903807060280344576 : F) * rho 20984 + (2658455991569831745807614120560689152 : F) * rho 20985 + (5316911983139663491615228241121378304 : F) * rho 20986 + (10633823966279326983230456482242756608 : F) * rho 20987 + (21267647932558653966460912964485513216 : F) * rho 20988 + (42535295865117307932921825928971026432 : F) * rho 20989 + (85070591730234615865843651857942052864 : F) * rho 20990 + (170141183460469231731687303715884105728 : F) * rho 20991

def relationLc0Part4 (rho : Nat -> F) : F :=
    (340282366920938463463374607431768211456 : F) * rho 20992 + (680564733841876926926749214863536422912 : F) * rho 20993 + (1361129467683753853853498429727072845824 : F) * rho 20994 + (2722258935367507707706996859454145691648 : F) * rho 20995 + (5444517870735015415413993718908291383296 : F) * rho 20996 + (10889035741470030830827987437816582766592 : F) * rho 20997 + (21778071482940061661655974875633165533184 : F) * rho 20998 + (43556142965880123323311949751266331066368 : F) * rho 20999 + (87112285931760246646623899502532662132736 : F) * rho 21000 + (174224571863520493293247799005065324265472 : F) * rho 21001 + (348449143727040986586495598010130648530944 : F) * rho 21002 + (696898287454081973172991196020261297061888 : F) * rho 21003 + (1393796574908163946345982392040522594123776 : F) * rho 21004 + (2787593149816327892691964784081045188247552 : F) * rho 21005 + (5575186299632655785383929568162090376495104 : F) * rho 21006 + (11150372599265311570767859136324180752990208 : F) * rho 21007 + (22300745198530623141535718272648361505980416 : F) * rho 21008 + (44601490397061246283071436545296723011960832 : F) * rho 21009 + (89202980794122492566142873090593446023921664 : F) * rho 21010 + (178405961588244985132285746181186892047843328 : F) * rho 21011 + (356811923176489970264571492362373784095686656 : F) * rho 21012 + (713623846352979940529142984724747568191373312 : F) * rho 21013 + (1427247692705959881058285969449495136382746624 : F) * rho 21014 + (2854495385411919762116571938898990272765493248 : F) * rho 21015 + (5708990770823839524233143877797980545530986496 : F) * rho 21016 + (11417981541647679048466287755595961091061972992 : F) * rho 21017 + (22835963083295358096932575511191922182123945984 : F) * rho 21018 + (45671926166590716193865151022383844364247891968 : F) * rho 21019 + (91343852333181432387730302044767688728495783936 : F) * rho 21020 + (182687704666362864775460604089535377456991567872 : F) * rho 21021 + (365375409332725729550921208179070754913983135744 : F) * rho 21022 + (730750818665451459101842416358141509827966271488 : F) * rho 21023

def relationLc0Part5 (rho : Nat -> F) : F :=
    (1461501637330902918203684832716283019655932542976 : F) * rho 21024 + (2923003274661805836407369665432566039311865085952 : F) * rho 21025 + (5846006549323611672814739330865132078623730171904 : F) * rho 21026 + (11692013098647223345629478661730264157247460343808 : F) * rho 21027 + (23384026197294446691258957323460528314494920687616 : F) * rho 21028 + (46768052394588893382517914646921056628989841375232 : F) * rho 21029 + (93536104789177786765035829293842113257979682750464 : F) * rho 21030 + (187072209578355573530071658587684226515959365500928 : F) * rho 21031 + (374144419156711147060143317175368453031918731001856 : F) * rho 21032 + (748288838313422294120286634350736906063837462003712 : F) * rho 21033 + (1496577676626844588240573268701473812127674924007424 : F) * rho 21034 + (2993155353253689176481146537402947624255349848014848 : F) * rho 21035 + (5986310706507378352962293074805895248510699696029696 : F) * rho 21036 + (11972621413014756705924586149611790497021399392059392 : F) * rho 21037 + (23945242826029513411849172299223580994042798784118784 : F) * rho 21038 + (47890485652059026823698344598447161988085597568237568 : F) * rho 21039 + (95780971304118053647396689196894323976171195136475136 : F) * rho 21040 + (191561942608236107294793378393788647952342390272950272 : F) * rho 21041 + (383123885216472214589586756787577295904684780545900544 : F) * rho 21042 + (766247770432944429179173513575154591809369561091801088 : F) * rho 21043 + (1532495540865888858358347027150309183618739122183602176 : F) * rho 21044 + (3064991081731777716716694054300618367237478244367204352 : F) * rho 21045 + (6129982163463555433433388108601236734474956488734408704 : F) * rho 21046 + (12259964326927110866866776217202473468949912977468817408 : F) * rho 21047 + (24519928653854221733733552434404946937899825954937634816 : F) * rho 21048 + (49039857307708443467467104868809893875799651909875269632 : F) * rho 21049 + (98079714615416886934934209737619787751599303819750539264 : F) * rho 21050 + (196159429230833773869868419475239575503198607639501078528 : F) * rho 21051 + (392318858461667547739736838950479151006397215279002157056 : F) * rho 21052 + (784637716923335095479473677900958302012794430558004314112 : F) * rho 21053 + (1569275433846670190958947355801916604025588861116008628224 : F) * rho 21054 + (3138550867693340381917894711603833208051177722232017256448 : F) * rho 21055

def relationLc0Part6 (rho : Nat -> F) : F :=
    (6277101735386680763835789423207666416102355444464034512896 : F) * rho 21056 + (12554203470773361527671578846415332832204710888928069025792 : F) * rho 21057 + (25108406941546723055343157692830665664409421777856138051584 : F) * rho 21058 + (50216813883093446110686315385661331328818843555712276103168 : F) * rho 21059 + (100433627766186892221372630771322662657637687111424552206336 : F) * rho 21060 + (200867255532373784442745261542645325315275374222849104412672 : F) * rho 21061 + (401734511064747568885490523085290650630550748445698208825344 : F) * rho 21062 + (803469022129495137770981046170581301261101496891396417650688 : F) * rho 21063 + (1606938044258990275541962092341162602522202993782792835301376 : F) * rho 21064 + (3213876088517980551083924184682325205044405987565585670602752 : F) * rho 21065 + (6427752177035961102167848369364650410088811975131171341205504 : F) * rho 21066 + (12855504354071922204335696738729300820177623950262342682411008 : F) * rho 21067 + (25711008708143844408671393477458601640355247900524685364822016 : F) * rho 21068 + (51422017416287688817342786954917203280710495801049370729644032 : F) * rho 21069 + (102844034832575377634685573909834406561420991602098741459288064 : F) * rho 21070 + (205688069665150755269371147819668813122841983204197482918576128 : F) * rho 21071 + (411376139330301510538742295639337626245683966408394965837152256 : F) * rho 21072 + (822752278660603021077484591278675252491367932816789931674304512 : F) * rho 21073 + (1645504557321206042154969182557350504982735865633579863348609024 : F) * rho 21074 + (3291009114642412084309938365114701009965471731267159726697218048 : F) * rho 21075 + (6582018229284824168619876730229402019930943462534319453394436096 : F) * rho 21076 + (13164036458569648337239753460458804039861886925068638906788872192 : F) * rho 21077 + (26328072917139296674479506920917608079723773850137277813577744384 : F) * rho 21078 + (52656145834278593348959013841835216159447547700274555627155488768 : F) * rho 21079 + (105312291668557186697918027683670432318895095400549111254310977536 : F) * rho 21080 + (210624583337114373395836055367340864637790190801098222508621955072 : F) * rho 21081 + (421249166674228746791672110734681729275580381602196445017243910144 : F) * rho 21082 + (842498333348457493583344221469363458551160763204392890034487820288 : F) * rho 21083 + (1684996666696914987166688442938726917102321526408785780068975640576 : F) * rho 21084 + (3369993333393829974333376885877453834204643052817571560137951281152 : F) * rho 21085 + (6739986666787659948666753771754907668409286105635143120275902562304 : F) * rho 21086 + (13479973333575319897333507543509815336818572211270286240551805124608 : F) * rho 21087

def relationLc0Part7 (rho : Nat -> F) : F :=
    (26959946667150639794667015087019630673637144422540572481103610249216 : F) * rho 21088 + (53919893334301279589334030174039261347274288845081144962207220498432 : F) * rho 21089 + (107839786668602559178668060348078522694548577690162289924414440996864 : F) * rho 21090 + (215679573337205118357336120696157045389097155380324579848828881993728 : F) * rho 21091 + (431359146674410236714672241392314090778194310760649159697657763987456 : F) * rho 21092 + (862718293348820473429344482784628181556388621521298319395315527974912 : F) * rho 21093 + (1725436586697640946858688965569256363112777243042596638790631055949824 : F) * rho 21094 + (3450873173395281893717377931138512726225554486085193277581262111899648 : F) * rho 21095 + (6901746346790563787434755862277025452451108972170386555162524223799296 : F) * rho 21096 + (13803492693581127574869511724554050904902217944340773110325048447598592 : F) * rho 21097 + (27606985387162255149739023449108101809804435888681546220650096895197184 : F) * rho 21098 + (55213970774324510299478046898216203619608871777363092441300193790394368 : F) * rho 21099 + (110427941548649020598956093796432407239217743554726184882600387580788736 : F) * rho 21100 + (220855883097298041197912187592864814478435487109452369765200775161577472 : F) * rho 21101 + (441711766194596082395824375185729628956870974218904739530401550323154944 : F) * rho 21102 + (883423532389192164791648750371459257913741948437809479060803100646309888 : F) * rho 21103 + (1766847064778384329583297500742918515827483896875618958121606201292619776 : F) * rho 21104 + (3533694129556768659166595001485837031654967793751237916243212402585239552 : F) * rho 21105 + (7067388259113537318333190002971674063309935587502475832486424805170479104 : F) * rho 21106 + (14134776518227074636666380005943348126619871175004951664972849610340958208 : F) * rho 21107 + (28269553036454149273332760011886696253239742350009903329945699220681916416 : F) * rho 21108 + (56539106072908298546665520023773392506479484700019806659891398441363832832 : F) * rho 21109 + (113078212145816597093331040047546785012958969400039613319782796882727665664 : F) * rho 21110 + (226156424291633194186662080095093570025917938800079226639565593765455331328 : F) * rho 21111 + (452312848583266388373324160190187140051835877600158453279131187530910662656 : F) * rho 21112 + (904625697166532776746648320380374280103671755200316906558262375061821325312 : F) * rho 21113 + (1809251394333065553493296640760748560207343510400633813116524750123642650624 : F) * rho 21114

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
    ((1 : F)) * (relationLc0 rho) = ((1 : F) * rho 85)

def relationRow252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20864) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 21115)

def relationRow253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20864) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 545) = ((1 : F) * rho 21116)

def relationRow254 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 21117)

def relationRow255 (rho : Nat -> F) : Prop :=
    ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 544) = ((1 : F) * rho 21118)

def relationRow256 (rho : Nat -> F) : Prop :=
    ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) * ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) + (1 : F) * rho 545) = ((1 : F) * rho 21119)

def relationRow257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21120) * ((-1 : F) * rho 21118 + (1 : F) * rho 21119) = ((2 : F) * rho 21117)

def relationRow258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21121) * ((2 : F) + (1 : F) * rho 21118 + (-1 : F) * rho 21119) = ((1 : F) * rho 21118 + (1 : F) * rho 21119)

def relationRow259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21120 + (1 : F) * rho 21121) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116) = ((1 : F) * rho 21122)

def relationRow260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21121) * ((1 : F) * rho 21115) = ((1 : F) * rho 21123)

def relationRow261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21120) * ((1 : F) + (1 : F) * rho 21116) = ((1 : F) * rho 21124)

def relationRow262 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21123) * ((1 : F) * rho 21124) = ((1 : F) * rho 21125)

def relationRow263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21126) * ((1 : F) + (1 : F) * rho 21125) = ((1 : F) * rho 21123 + (1 : F) * rho 21124)

def relationRow264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21127) * ((1 : F) + (-1 : F) * rho 21125) = ((1 : F) * rho 21122 + (-1 : F) * rho 21123 + (-1 : F) * rho 21124)

def relationRow265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20865) * ((-1 : F) * rho 21115 + (1 : F) * rho 21126) = ((1 : F) * rho 21128)

def relationRow266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20865) * ((-1 : F) + (-1 : F) * rho 21116 + (1 : F) * rho 21127) = ((1 : F) * rho 21129)

def relationRow267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21120) * ((1 : F) * rho 21121) = ((1 : F) * rho 21130)

def relationRow268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21120) * ((1 : F) * rho 21120) = ((1 : F) * rho 21131)

def relationRow269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21121) * ((1 : F) * rho 21121) = ((1 : F) * rho 21132)

def relationRow270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21133) * ((-1 : F) * rho 21131 + (1 : F) * rho 21132) = ((2 : F) * rho 21130)

def relationRow271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21134) * ((2 : F) + (1 : F) * rho 21131 + (-1 : F) * rho 21132) = ((1 : F) * rho 21131 + (1 : F) * rho 21132)

def relationRow272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21133 + (1 : F) * rho 21134) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129) = ((1 : F) * rho 21135)

def relationRow273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21134) * ((1 : F) * rho 21115 + (1 : F) * rho 21128) = ((1 : F) * rho 21136)

def relationRow274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21133) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129) = ((1 : F) * rho 21137)

def relationRow275 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21136) * ((1 : F) * rho 21137) = ((1 : F) * rho 21138)

def relationRow276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21139) * ((1 : F) + (1 : F) * rho 21138) = ((1 : F) * rho 21136 + (1 : F) * rho 21137)

def relationRow277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21140) * ((1 : F) + (-1 : F) * rho 21138) = ((1 : F) * rho 21135 + (-1 : F) * rho 21136 + (-1 : F) * rho 21137)

def relationRow278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20866) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (1 : F) * rho 21139) = ((1 : F) * rho 21141)

def relationRow279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20866) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (1 : F) * rho 21140) = ((1 : F) * rho 21142)

def relationRow280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21133) * ((1 : F) * rho 21134) = ((1 : F) * rho 21143)

def relationRow281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21133) * ((1 : F) * rho 21133) = ((1 : F) * rho 21144)

def relationRow282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21134) * ((1 : F) * rho 21134) = ((1 : F) * rho 21145)

def relationRow283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21146) * ((-1 : F) * rho 21144 + (1 : F) * rho 21145) = ((2 : F) * rho 21143)

def relationRow284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21147) * ((2 : F) + (1 : F) * rho 21144 + (-1 : F) * rho 21145) = ((1 : F) * rho 21144 + (1 : F) * rho 21145)

def relationRow285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21146 + (1 : F) * rho 21147) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142) = ((1 : F) * rho 21148)

def relationRow286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21147) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141) = ((1 : F) * rho 21149)

def relationRow287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21146) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142) = ((1 : F) * rho 21150)

def relationRow288 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21149) * ((1 : F) * rho 21150) = ((1 : F) * rho 21151)

def relationRow289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21152) * ((1 : F) + (1 : F) * rho 21151) = ((1 : F) * rho 21149 + (1 : F) * rho 21150)

def relationRow290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21153) * ((1 : F) + (-1 : F) * rho 21151) = ((1 : F) * rho 21148 + (-1 : F) * rho 21149 + (-1 : F) * rho 21150)

def relationRow291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20867) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (1 : F) * rho 21152) = ((1 : F) * rho 21154)

def relationRow292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20867) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (1 : F) * rho 21153) = ((1 : F) * rho 21155)

def relationRow293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21146) * ((1 : F) * rho 21147) = ((1 : F) * rho 21156)

def relationRow294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21146) * ((1 : F) * rho 21146) = ((1 : F) * rho 21157)

def relationRow295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21147) * ((1 : F) * rho 21147) = ((1 : F) * rho 21158)

def relationRow296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21159) * ((-1 : F) * rho 21157 + (1 : F) * rho 21158) = ((2 : F) * rho 21156)

def relationRow297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21160) * ((2 : F) + (1 : F) * rho 21157 + (-1 : F) * rho 21158) = ((1 : F) * rho 21157 + (1 : F) * rho 21158)

def relationRow298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21159 + (1 : F) * rho 21160) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155) = ((1 : F) * rho 21161)

def relationRow299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21160) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154) = ((1 : F) * rho 21162)

def relationRow300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21159) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155) = ((1 : F) * rho 21163)

def relationRow301 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21162) * ((1 : F) * rho 21163) = ((1 : F) * rho 21164)

def relationRow302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21165) * ((1 : F) + (1 : F) * rho 21164) = ((1 : F) * rho 21162 + (1 : F) * rho 21163)

def relationRow303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21166) * ((1 : F) + (-1 : F) * rho 21164) = ((1 : F) * rho 21161 + (-1 : F) * rho 21162 + (-1 : F) * rho 21163)

def relationRow304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20868) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (1 : F) * rho 21165) = ((1 : F) * rho 21167)

def relationRow305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20868) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (1 : F) * rho 21166) = ((1 : F) * rho 21168)

def relationRow306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21159) * ((1 : F) * rho 21160) = ((1 : F) * rho 21169)

def relationRow307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21159) * ((1 : F) * rho 21159) = ((1 : F) * rho 21170)

def relationRow308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21160) * ((1 : F) * rho 21160) = ((1 : F) * rho 21171)

def relationRow309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21172) * ((-1 : F) * rho 21170 + (1 : F) * rho 21171) = ((2 : F) * rho 21169)

def relationRow310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21173) * ((2 : F) + (1 : F) * rho 21170 + (-1 : F) * rho 21171) = ((1 : F) * rho 21170 + (1 : F) * rho 21171)

def relationRow311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21172 + (1 : F) * rho 21173) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168) = ((1 : F) * rho 21174)

def relationRow312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21173) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167) = ((1 : F) * rho 21175)

def relationRow313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21172) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168) = ((1 : F) * rho 21176)

def relationRow314 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21175) * ((1 : F) * rho 21176) = ((1 : F) * rho 21177)

def relationRow315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21178) * ((1 : F) + (1 : F) * rho 21177) = ((1 : F) * rho 21175 + (1 : F) * rho 21176)

def relationRow316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21179) * ((1 : F) + (-1 : F) * rho 21177) = ((1 : F) * rho 21174 + (-1 : F) * rho 21175 + (-1 : F) * rho 21176)

def relationRow317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20869) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (1 : F) * rho 21178) = ((1 : F) * rho 21180)

def relationRow318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20869) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (1 : F) * rho 21179) = ((1 : F) * rho 21181)

def relationRow319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21172) * ((1 : F) * rho 21173) = ((1 : F) * rho 21182)

def relationRow320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21172) * ((1 : F) * rho 21172) = ((1 : F) * rho 21183)

def relationRow321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21173) * ((1 : F) * rho 21173) = ((1 : F) * rho 21184)

def relationRow322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21185) * ((-1 : F) * rho 21183 + (1 : F) * rho 21184) = ((2 : F) * rho 21182)

def relationRow323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21186) * ((2 : F) + (1 : F) * rho 21183 + (-1 : F) * rho 21184) = ((1 : F) * rho 21183 + (1 : F) * rho 21184)

def relationRow324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21185 + (1 : F) * rho 21186) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181) = ((1 : F) * rho 21187)

def relationRow325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21186) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180) = ((1 : F) * rho 21188)

def relationRow326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21185) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181) = ((1 : F) * rho 21189)

def relationRow327 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21188) * ((1 : F) * rho 21189) = ((1 : F) * rho 21190)

def relationRow328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21191) * ((1 : F) + (1 : F) * rho 21190) = ((1 : F) * rho 21188 + (1 : F) * rho 21189)

def relationRow329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21192) * ((1 : F) + (-1 : F) * rho 21190) = ((1 : F) * rho 21187 + (-1 : F) * rho 21188 + (-1 : F) * rho 21189)

def relationRow330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20870) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (1 : F) * rho 21191) = ((1 : F) * rho 21193)

def relationRow331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20870) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (1 : F) * rho 21192) = ((1 : F) * rho 21194)

def relationRow332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21185) * ((1 : F) * rho 21186) = ((1 : F) * rho 21195)

def relationRow333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21185) * ((1 : F) * rho 21185) = ((1 : F) * rho 21196)

def relationRow334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21186) * ((1 : F) * rho 21186) = ((1 : F) * rho 21197)

def relationRow335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21198) * ((-1 : F) * rho 21196 + (1 : F) * rho 21197) = ((2 : F) * rho 21195)

def relationRow336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21199) * ((2 : F) + (1 : F) * rho 21196 + (-1 : F) * rho 21197) = ((1 : F) * rho 21196 + (1 : F) * rho 21197)

def relationRow337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21198 + (1 : F) * rho 21199) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194) = ((1 : F) * rho 21200)

def relationRow338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21199) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193) = ((1 : F) * rho 21201)

def relationRow339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21198) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194) = ((1 : F) * rho 21202)

def relationRow340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21201) * ((1 : F) * rho 21202) = ((1 : F) * rho 21203)

def relationRow341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21204) * ((1 : F) + (1 : F) * rho 21203) = ((1 : F) * rho 21201 + (1 : F) * rho 21202)

def relationRow342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21205) * ((1 : F) + (-1 : F) * rho 21203) = ((1 : F) * rho 21200 + (-1 : F) * rho 21201 + (-1 : F) * rho 21202)

def relationRow343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20871) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (1 : F) * rho 21204) = ((1 : F) * rho 21206)

def relationRow344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20871) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (1 : F) * rho 21205) = ((1 : F) * rho 21207)

def relationRow345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21198) * ((1 : F) * rho 21199) = ((1 : F) * rho 21208)

def relationRow346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21198) * ((1 : F) * rho 21198) = ((1 : F) * rho 21209)

def relationRow347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21199) * ((1 : F) * rho 21199) = ((1 : F) * rho 21210)

def relationRow348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21211) * ((-1 : F) * rho 21209 + (1 : F) * rho 21210) = ((2 : F) * rho 21208)

def relationRow349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21212) * ((2 : F) + (1 : F) * rho 21209 + (-1 : F) * rho 21210) = ((1 : F) * rho 21209 + (1 : F) * rho 21210)

def relationRow350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21211 + (1 : F) * rho 21212) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207) = ((1 : F) * rho 21213)

def relationRow351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21212) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206) = ((1 : F) * rho 21214)

def relationRow352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21211) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207) = ((1 : F) * rho 21215)

def relationRow353 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21214) * ((1 : F) * rho 21215) = ((1 : F) * rho 21216)

def relationRow354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21217) * ((1 : F) + (1 : F) * rho 21216) = ((1 : F) * rho 21214 + (1 : F) * rho 21215)

def relationRow355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21218) * ((1 : F) + (-1 : F) * rho 21216) = ((1 : F) * rho 21213 + (-1 : F) * rho 21214 + (-1 : F) * rho 21215)

def relationRow356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20872) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (1 : F) * rho 21217) = ((1 : F) * rho 21219)

def relationRow357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20872) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (1 : F) * rho 21218) = ((1 : F) * rho 21220)

def relationRow358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21211) * ((1 : F) * rho 21212) = ((1 : F) * rho 21221)

def relationRow359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21211) * ((1 : F) * rho 21211) = ((1 : F) * rho 21222)

def relationRow360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21212) * ((1 : F) * rho 21212) = ((1 : F) * rho 21223)

def relationRow361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21224) * ((-1 : F) * rho 21222 + (1 : F) * rho 21223) = ((2 : F) * rho 21221)

def relationRow362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21225) * ((2 : F) + (1 : F) * rho 21222 + (-1 : F) * rho 21223) = ((1 : F) * rho 21222 + (1 : F) * rho 21223)

def relationRow363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21224 + (1 : F) * rho 21225) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207 + (1 : F) * rho 21219 + (1 : F) * rho 21220) = ((1 : F) * rho 21226)

def relationRow364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21225) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206 + (1 : F) * rho 21219) = ((1 : F) * rho 21227)

def relationRow365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21224) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207 + (1 : F) * rho 21220) = ((1 : F) * rho 21228)

def relationRow366 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21227) * ((1 : F) * rho 21228) = ((1 : F) * rho 21229)

def relationRow367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21230) * ((1 : F) + (1 : F) * rho 21229) = ((1 : F) * rho 21227 + (1 : F) * rho 21228)

def relationRow368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21231) * ((1 : F) + (-1 : F) * rho 21229) = ((1 : F) * rho 21226 + (-1 : F) * rho 21227 + (-1 : F) * rho 21228)

def relationRow369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20873) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (-1 : F) * rho 21219 + (1 : F) * rho 21230) = ((1 : F) * rho 21232)

def relationRow370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20873) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (-1 : F) * rho 21220 + (1 : F) * rho 21231) = ((1 : F) * rho 21233)

def relationRow371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21224) * ((1 : F) * rho 21225) = ((1 : F) * rho 21234)

def relationRow372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21224) * ((1 : F) * rho 21224) = ((1 : F) * rho 21235)

def relationRow373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21225) * ((1 : F) * rho 21225) = ((1 : F) * rho 21236)

def relationRow374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21237) * ((-1 : F) * rho 21235 + (1 : F) * rho 21236) = ((2 : F) * rho 21234)

def relationRow375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21238) * ((2 : F) + (1 : F) * rho 21235 + (-1 : F) * rho 21236) = ((1 : F) * rho 21235 + (1 : F) * rho 21236)

def relationRow376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21237 + (1 : F) * rho 21238) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207 + (1 : F) * rho 21219 + (1 : F) * rho 21220 + (1 : F) * rho 21232 + (1 : F) * rho 21233) = ((1 : F) * rho 21239)

def relationRow377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21238) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206 + (1 : F) * rho 21219 + (1 : F) * rho 21232) = ((1 : F) * rho 21240)

def relationRow378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21237) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207 + (1 : F) * rho 21220 + (1 : F) * rho 21233) = ((1 : F) * rho 21241)

def relationRow379 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21240) * ((1 : F) * rho 21241) = ((1 : F) * rho 21242)

def relationRow380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21243) * ((1 : F) + (1 : F) * rho 21242) = ((1 : F) * rho 21240 + (1 : F) * rho 21241)

def relationRow381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21244) * ((1 : F) + (-1 : F) * rho 21242) = ((1 : F) * rho 21239 + (-1 : F) * rho 21240 + (-1 : F) * rho 21241)

def relationRow382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20874) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (-1 : F) * rho 21219 + (-1 : F) * rho 21232 + (1 : F) * rho 21243) = ((1 : F) * rho 21245)

def relationRow383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20874) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (-1 : F) * rho 21220 + (-1 : F) * rho 21233 + (1 : F) * rho 21244) = ((1 : F) * rho 21246)

def relationRow384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21237) * ((1 : F) * rho 21238) = ((1 : F) * rho 21247)

def relationRow385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21237) * ((1 : F) * rho 21237) = ((1 : F) * rho 21248)

def relationRow386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21238) * ((1 : F) * rho 21238) = ((1 : F) * rho 21249)

def relationRow387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21250) * ((-1 : F) * rho 21248 + (1 : F) * rho 21249) = ((2 : F) * rho 21247)

def relationRow388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21251) * ((2 : F) + (1 : F) * rho 21248 + (-1 : F) * rho 21249) = ((1 : F) * rho 21248 + (1 : F) * rho 21249)

def relationRow389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21250 + (1 : F) * rho 21251) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207 + (1 : F) * rho 21219 + (1 : F) * rho 21220 + (1 : F) * rho 21232 + (1 : F) * rho 21233 + (1 : F) * rho 21245 + (1 : F) * rho 21246) = ((1 : F) * rho 21252)

def relationRow390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21251) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206 + (1 : F) * rho 21219 + (1 : F) * rho 21232 + (1 : F) * rho 21245) = ((1 : F) * rho 21253)

def relationRow391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21250) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207 + (1 : F) * rho 21220 + (1 : F) * rho 21233 + (1 : F) * rho 21246) = ((1 : F) * rho 21254)

def relationRow392 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21253) * ((1 : F) * rho 21254) = ((1 : F) * rho 21255)

def relationRow393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21256) * ((1 : F) + (1 : F) * rho 21255) = ((1 : F) * rho 21253 + (1 : F) * rho 21254)

def relationRow394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21257) * ((1 : F) + (-1 : F) * rho 21255) = ((1 : F) * rho 21252 + (-1 : F) * rho 21253 + (-1 : F) * rho 21254)

def relationRow395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20875) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (-1 : F) * rho 21219 + (-1 : F) * rho 21232 + (-1 : F) * rho 21245 + (1 : F) * rho 21256) = ((1 : F) * rho 21258)

def relationRow396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20875) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (-1 : F) * rho 21220 + (-1 : F) * rho 21233 + (-1 : F) * rho 21246 + (1 : F) * rho 21257) = ((1 : F) * rho 21259)

def relationRow397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21250) * ((1 : F) * rho 21251) = ((1 : F) * rho 21260)

def relationRow398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21250) * ((1 : F) * rho 21250) = ((1 : F) * rho 21261)

def relationRow399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21251) * ((1 : F) * rho 21251) = ((1 : F) * rho 21262)

def relationRow400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21263) * ((-1 : F) * rho 21261 + (1 : F) * rho 21262) = ((2 : F) * rho 21260)

def relationRow401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21264) * ((2 : F) + (1 : F) * rho 21261 + (-1 : F) * rho 21262) = ((1 : F) * rho 21261 + (1 : F) * rho 21262)

def relationRow402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21263 + (1 : F) * rho 21264) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207 + (1 : F) * rho 21219 + (1 : F) * rho 21220 + (1 : F) * rho 21232 + (1 : F) * rho 21233 + (1 : F) * rho 21245 + (1 : F) * rho 21246 + (1 : F) * rho 21258 + (1 : F) * rho 21259) = ((1 : F) * rho 21265)

def relationRow403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21264) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206 + (1 : F) * rho 21219 + (1 : F) * rho 21232 + (1 : F) * rho 21245 + (1 : F) * rho 21258) = ((1 : F) * rho 21266)

def relationRow404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21263) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207 + (1 : F) * rho 21220 + (1 : F) * rho 21233 + (1 : F) * rho 21246 + (1 : F) * rho 21259) = ((1 : F) * rho 21267)

def relationRow405 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21266) * ((1 : F) * rho 21267) = ((1 : F) * rho 21268)

def relationRow406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21269) * ((1 : F) + (1 : F) * rho 21268) = ((1 : F) * rho 21266 + (1 : F) * rho 21267)

def relationRow407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21270) * ((1 : F) + (-1 : F) * rho 21268) = ((1 : F) * rho 21265 + (-1 : F) * rho 21266 + (-1 : F) * rho 21267)

def relationRow408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20876) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (-1 : F) * rho 21219 + (-1 : F) * rho 21232 + (-1 : F) * rho 21245 + (-1 : F) * rho 21258 + (1 : F) * rho 21269) = ((1 : F) * rho 21271)

def relationRow409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20876) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (-1 : F) * rho 21220 + (-1 : F) * rho 21233 + (-1 : F) * rho 21246 + (-1 : F) * rho 21259 + (1 : F) * rho 21270) = ((1 : F) * rho 21272)

def relationRow410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21263) * ((1 : F) * rho 21264) = ((1 : F) * rho 21273)

def relationRow411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21263) * ((1 : F) * rho 21263) = ((1 : F) * rho 21274)

def relationRow412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21264) * ((1 : F) * rho 21264) = ((1 : F) * rho 21275)

def relationRow413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21276) * ((-1 : F) * rho 21274 + (1 : F) * rho 21275) = ((2 : F) * rho 21273)

def relationRow414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21277) * ((2 : F) + (1 : F) * rho 21274 + (-1 : F) * rho 21275) = ((1 : F) * rho 21274 + (1 : F) * rho 21275)

def relationRow415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21276 + (1 : F) * rho 21277) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207 + (1 : F) * rho 21219 + (1 : F) * rho 21220 + (1 : F) * rho 21232 + (1 : F) * rho 21233 + (1 : F) * rho 21245 + (1 : F) * rho 21246 + (1 : F) * rho 21258 + (1 : F) * rho 21259 + (1 : F) * rho 21271 + (1 : F) * rho 21272) = ((1 : F) * rho 21278)

def relationRow416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21277) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206 + (1 : F) * rho 21219 + (1 : F) * rho 21232 + (1 : F) * rho 21245 + (1 : F) * rho 21258 + (1 : F) * rho 21271) = ((1 : F) * rho 21279)

def relationRow417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21276) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207 + (1 : F) * rho 21220 + (1 : F) * rho 21233 + (1 : F) * rho 21246 + (1 : F) * rho 21259 + (1 : F) * rho 21272) = ((1 : F) * rho 21280)

def relationRow418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21279) * ((1 : F) * rho 21280) = ((1 : F) * rho 21281)

def relationRow419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21282) * ((1 : F) + (1 : F) * rho 21281) = ((1 : F) * rho 21279 + (1 : F) * rho 21280)

def relationRow420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21283) * ((1 : F) + (-1 : F) * rho 21281) = ((1 : F) * rho 21278 + (-1 : F) * rho 21279 + (-1 : F) * rho 21280)

def relationRow421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20877) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (-1 : F) * rho 21219 + (-1 : F) * rho 21232 + (-1 : F) * rho 21245 + (-1 : F) * rho 21258 + (-1 : F) * rho 21271 + (1 : F) * rho 21282) = ((1 : F) * rho 21284)

def relationRow422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20877) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (-1 : F) * rho 21220 + (-1 : F) * rho 21233 + (-1 : F) * rho 21246 + (-1 : F) * rho 21259 + (-1 : F) * rho 21272 + (1 : F) * rho 21283) = ((1 : F) * rho 21285)

def relationRow423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21276) * ((1 : F) * rho 21277) = ((1 : F) * rho 21286)

def relationRow424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21276) * ((1 : F) * rho 21276) = ((1 : F) * rho 21287)

def relationRow425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21277) * ((1 : F) * rho 21277) = ((1 : F) * rho 21288)

def relationRow426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21289) * ((-1 : F) * rho 21287 + (1 : F) * rho 21288) = ((2 : F) * rho 21286)

def relationRow427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21290) * ((2 : F) + (1 : F) * rho 21287 + (-1 : F) * rho 21288) = ((1 : F) * rho 21287 + (1 : F) * rho 21288)

def relationRow428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21289 + (1 : F) * rho 21290) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207 + (1 : F) * rho 21219 + (1 : F) * rho 21220 + (1 : F) * rho 21232 + (1 : F) * rho 21233 + (1 : F) * rho 21245 + (1 : F) * rho 21246 + (1 : F) * rho 21258 + (1 : F) * rho 21259 + (1 : F) * rho 21271 + (1 : F) * rho 21272 + (1 : F) * rho 21284 + (1 : F) * rho 21285) = ((1 : F) * rho 21291)

def relationRow429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21290) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206 + (1 : F) * rho 21219 + (1 : F) * rho 21232 + (1 : F) * rho 21245 + (1 : F) * rho 21258 + (1 : F) * rho 21271 + (1 : F) * rho 21284) = ((1 : F) * rho 21292)

def relationRow430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21289) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207 + (1 : F) * rho 21220 + (1 : F) * rho 21233 + (1 : F) * rho 21246 + (1 : F) * rho 21259 + (1 : F) * rho 21272 + (1 : F) * rho 21285) = ((1 : F) * rho 21293)

def relationRow431 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21292) * ((1 : F) * rho 21293) = ((1 : F) * rho 21294)

def relationRow432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21295) * ((1 : F) + (1 : F) * rho 21294) = ((1 : F) * rho 21292 + (1 : F) * rho 21293)

def relationRow433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21296) * ((1 : F) + (-1 : F) * rho 21294) = ((1 : F) * rho 21291 + (-1 : F) * rho 21292 + (-1 : F) * rho 21293)

def relationRow434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20878) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (-1 : F) * rho 21219 + (-1 : F) * rho 21232 + (-1 : F) * rho 21245 + (-1 : F) * rho 21258 + (-1 : F) * rho 21271 + (-1 : F) * rho 21284 + (1 : F) * rho 21295) = ((1 : F) * rho 21297)

def relationRow435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20878) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (-1 : F) * rho 21220 + (-1 : F) * rho 21233 + (-1 : F) * rho 21246 + (-1 : F) * rho 21259 + (-1 : F) * rho 21272 + (-1 : F) * rho 21285 + (1 : F) * rho 21296) = ((1 : F) * rho 21298)

def relationRow436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21289) * ((1 : F) * rho 21290) = ((1 : F) * rho 21299)

def relationRow437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21289) * ((1 : F) * rho 21289) = ((1 : F) * rho 21300)

def relationRow438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21290) * ((1 : F) * rho 21290) = ((1 : F) * rho 21301)

def relationRow439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21302) * ((-1 : F) * rho 21300 + (1 : F) * rho 21301) = ((2 : F) * rho 21299)

def relationRow440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21303) * ((2 : F) + (1 : F) * rho 21300 + (-1 : F) * rho 21301) = ((1 : F) * rho 21300 + (1 : F) * rho 21301)

def relationRow441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21302 + (1 : F) * rho 21303) * ((1 : F) + (1 : F) * rho 21115 + (1 : F) * rho 21116 + (1 : F) * rho 21128 + (1 : F) * rho 21129 + (1 : F) * rho 21141 + (1 : F) * rho 21142 + (1 : F) * rho 21154 + (1 : F) * rho 21155 + (1 : F) * rho 21167 + (1 : F) * rho 21168 + (1 : F) * rho 21180 + (1 : F) * rho 21181 + (1 : F) * rho 21193 + (1 : F) * rho 21194 + (1 : F) * rho 21206 + (1 : F) * rho 21207 + (1 : F) * rho 21219 + (1 : F) * rho 21220 + (1 : F) * rho 21232 + (1 : F) * rho 21233 + (1 : F) * rho 21245 + (1 : F) * rho 21246 + (1 : F) * rho 21258 + (1 : F) * rho 21259 + (1 : F) * rho 21271 + (1 : F) * rho 21272 + (1 : F) * rho 21284 + (1 : F) * rho 21285 + (1 : F) * rho 21297 + (1 : F) * rho 21298) = ((1 : F) * rho 21304)

def relationRow442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21303) * ((1 : F) * rho 21115 + (1 : F) * rho 21128 + (1 : F) * rho 21141 + (1 : F) * rho 21154 + (1 : F) * rho 21167 + (1 : F) * rho 21180 + (1 : F) * rho 21193 + (1 : F) * rho 21206 + (1 : F) * rho 21219 + (1 : F) * rho 21232 + (1 : F) * rho 21245 + (1 : F) * rho 21258 + (1 : F) * rho 21271 + (1 : F) * rho 21284 + (1 : F) * rho 21297) = ((1 : F) * rho 21305)

def relationRow443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21302) * ((1 : F) + (1 : F) * rho 21116 + (1 : F) * rho 21129 + (1 : F) * rho 21142 + (1 : F) * rho 21155 + (1 : F) * rho 21168 + (1 : F) * rho 21181 + (1 : F) * rho 21194 + (1 : F) * rho 21207 + (1 : F) * rho 21220 + (1 : F) * rho 21233 + (1 : F) * rho 21246 + (1 : F) * rho 21259 + (1 : F) * rho 21272 + (1 : F) * rho 21285 + (1 : F) * rho 21298) = ((1 : F) * rho 21306)

def relationRow444 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21305) * ((1 : F) * rho 21306) = ((1 : F) * rho 21307)

def relationRow445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21308) * ((1 : F) + (1 : F) * rho 21307) = ((1 : F) * rho 21305 + (1 : F) * rho 21306)

def relationRow446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21309) * ((1 : F) + (-1 : F) * rho 21307) = ((1 : F) * rho 21304 + (-1 : F) * rho 21305 + (-1 : F) * rho 21306)

def relationRow447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20879) * ((-1 : F) * rho 21115 + (-1 : F) * rho 21128 + (-1 : F) * rho 21141 + (-1 : F) * rho 21154 + (-1 : F) * rho 21167 + (-1 : F) * rho 21180 + (-1 : F) * rho 21193 + (-1 : F) * rho 21206 + (-1 : F) * rho 21219 + (-1 : F) * rho 21232 + (-1 : F) * rho 21245 + (-1 : F) * rho 21258 + (-1 : F) * rho 21271 + (-1 : F) * rho 21284 + (-1 : F) * rho 21297 + (1 : F) * rho 21308) = ((1 : F) * rho 21310)

def relationRow448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20879) * ((-1 : F) + (-1 : F) * rho 21116 + (-1 : F) * rho 21129 + (-1 : F) * rho 21142 + (-1 : F) * rho 21155 + (-1 : F) * rho 21168 + (-1 : F) * rho 21181 + (-1 : F) * rho 21194 + (-1 : F) * rho 21207 + (-1 : F) * rho 21220 + (-1 : F) * rho 21233 + (-1 : F) * rho 21246 + (-1 : F) * rho 21259 + (-1 : F) * rho 21272 + (-1 : F) * rho 21285 + (-1 : F) * rho 21298 + (1 : F) * rho 21309) = ((1 : F) * rho 21311)

def relationRow449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21302) * ((1 : F) * rho 21303) = ((1 : F) * rho 21312)

def relationRow450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21302) * ((1 : F) * rho 21302) = ((1 : F) * rho 21313)

def relationRow451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21303) * ((1 : F) * rho 21303) = ((1 : F) * rho 21314)

def relationRow452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21315) * ((-1 : F) * rho 21313 + (1 : F) * rho 21314) = ((2 : F) * rho 21312)

def relationRow453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21316) * ((2 : F) + (1 : F) * rho 21313 + (-1 : F) * rho 21314) = ((1 : F) * rho 21313 + (1 : F) * rho 21314)

def relationRow454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21315 + (1 : F) * rho 21316) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 16⟩, ⟨(1 : F), 21116, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21317)

def relationRow455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21316) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21318)

def relationRow456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21315) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21319)

def relationRow457 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21318) * ((1 : F) * rho 21319) = ((1 : F) * rho 21320)

def relationRow458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21321) * ((1 : F) + (1 : F) * rho 21320) = ((1 : F) * rho 21318 + (1 : F) * rho 21319)

def relationRow459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21322) * ((1 : F) + (-1 : F) * rho 21320) = ((1 : F) * rho 21317 + (-1 : F) * rho 21318 + (-1 : F) * rho 21319)

def relationRow460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20880) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 16⟩], residual := [((1 : F), 21321)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21323)

def relationRow461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20880) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 16⟩], residual := [((1 : F), 21322)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21324)

def relationRow462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21315) * ((1 : F) * rho 21316) = ((1 : F) * rho 21325)

def relationRow463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21315) * ((1 : F) * rho 21315) = ((1 : F) * rho 21326)

def relationRow464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21316) * ((1 : F) * rho 21316) = ((1 : F) * rho 21327)

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21328) * ((-1 : F) * rho 21326 + (1 : F) * rho 21327) = ((2 : F) * rho 21325)

def relationRow466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21329) * ((2 : F) + (1 : F) * rho 21326 + (-1 : F) * rho 21327) = ((1 : F) * rho 21326 + (1 : F) * rho 21327)

def relationRow467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21328 + (1 : F) * rho 21329) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 17⟩, ⟨(1 : F), 21116, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21330)

def relationRow468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21329) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21331)

def relationRow469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21328) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21332)

def relationRow470 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21331) * ((1 : F) * rho 21332) = ((1 : F) * rho 21333)

def relationRow471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21334) * ((1 : F) + (1 : F) * rho 21333) = ((1 : F) * rho 21331 + (1 : F) * rho 21332)

def relationRow472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21335) * ((1 : F) + (-1 : F) * rho 21333) = ((1 : F) * rho 21330 + (-1 : F) * rho 21331 + (-1 : F) * rho 21332)

def relationRow473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20881) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 17⟩], residual := [((1 : F), 21334)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21336)

def relationRow474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20881) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 17⟩], residual := [((1 : F), 21335)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21337)

def relationRow475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21328) * ((1 : F) * rho 21329) = ((1 : F) * rho 21338)

def relationRow476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21328) * ((1 : F) * rho 21328) = ((1 : F) * rho 21339)

def relationRow477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21329) * ((1 : F) * rho 21329) = ((1 : F) * rho 21340)

def relationRow478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21341) * ((-1 : F) * rho 21339 + (1 : F) * rho 21340) = ((2 : F) * rho 21338)

def relationRow479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21342) * ((2 : F) + (1 : F) * rho 21339 + (-1 : F) * rho 21340) = ((1 : F) * rho 21339 + (1 : F) * rho 21340)

def relationRow480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21341 + (1 : F) * rho 21342) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 18⟩, ⟨(1 : F), 21116, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21343)

def relationRow481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21342) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21344)

def relationRow482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21341) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21345)

def relationRow483 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21344) * ((1 : F) * rho 21345) = ((1 : F) * rho 21346)

def relationRow484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21347) * ((1 : F) + (1 : F) * rho 21346) = ((1 : F) * rho 21344 + (1 : F) * rho 21345)

def relationRow485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21348) * ((1 : F) + (-1 : F) * rho 21346) = ((1 : F) * rho 21343 + (-1 : F) * rho 21344 + (-1 : F) * rho 21345)

def relationRow486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 18⟩], residual := [((1 : F), 21347)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21349)

def relationRow487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20882) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 18⟩], residual := [((1 : F), 21348)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21350)

def relationRow488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21341) * ((1 : F) * rho 21342) = ((1 : F) * rho 21351)

def relationRow489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21341) * ((1 : F) * rho 21341) = ((1 : F) * rho 21352)

def relationRow490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21342) * ((1 : F) * rho 21342) = ((1 : F) * rho 21353)

def relationRow491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21354) * ((-1 : F) * rho 21352 + (1 : F) * rho 21353) = ((2 : F) * rho 21351)

def relationRow492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21355) * ((2 : F) + (1 : F) * rho 21352 + (-1 : F) * rho 21353) = ((1 : F) * rho 21352 + (1 : F) * rho 21353)

def relationRow493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21354 + (1 : F) * rho 21355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 19⟩, ⟨(1 : F), 21116, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21356)

def relationRow494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21357)

def relationRow495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21354) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21358)

def relationRow496 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21357) * ((1 : F) * rho 21358) = ((1 : F) * rho 21359)

def relationRow497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21360) * ((1 : F) + (1 : F) * rho 21359) = ((1 : F) * rho 21357 + (1 : F) * rho 21358)

def relationRow498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21361) * ((1 : F) + (-1 : F) * rho 21359) = ((1 : F) * rho 21356 + (-1 : F) * rho 21357 + (-1 : F) * rho 21358)

def relationRow499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20883) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 19⟩], residual := [((1 : F), 21360)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21362)

def relationRow500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20883) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 19⟩], residual := [((1 : F), 21361)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21363)

def relationRow501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21354) * ((1 : F) * rho 21355) = ((1 : F) * rho 21364)

def relationRow502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21354) * ((1 : F) * rho 21354) = ((1 : F) * rho 21365)

def relationRow503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21355) * ((1 : F) * rho 21355) = ((1 : F) * rho 21366)

def relationRow504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21367) * ((-1 : F) * rho 21365 + (1 : F) * rho 21366) = ((2 : F) * rho 21364)

def relationRow505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21368) * ((2 : F) + (1 : F) * rho 21365 + (-1 : F) * rho 21366) = ((1 : F) * rho 21365 + (1 : F) * rho 21366)

def relationRow506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21367 + (1 : F) * rho 21368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 20⟩, ⟨(1 : F), 21116, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21369)

def relationRow507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21370)

def relationRow508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21367) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21371)

def relationRow509 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21370) * ((1 : F) * rho 21371) = ((1 : F) * rho 21372)

def relationRow510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21373) * ((1 : F) + (1 : F) * rho 21372) = ((1 : F) * rho 21370 + (1 : F) * rho 21371)

def relationRow511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21374) * ((1 : F) + (-1 : F) * rho 21372) = ((1 : F) * rho 21369 + (-1 : F) * rho 21370 + (-1 : F) * rho 21371)

def relationRow512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20884) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 20⟩], residual := [((1 : F), 21373)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21375)

def relationRow513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20884) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 20⟩], residual := [((1 : F), 21374)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21376)

def relationRow514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21367) * ((1 : F) * rho 21368) = ((1 : F) * rho 21377)

def relationRow515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21367) * ((1 : F) * rho 21367) = ((1 : F) * rho 21378)

def relationRow516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21368) * ((1 : F) * rho 21368) = ((1 : F) * rho 21379)

def relationRow517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21380) * ((-1 : F) * rho 21378 + (1 : F) * rho 21379) = ((2 : F) * rho 21377)

def relationRow518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21381) * ((2 : F) + (1 : F) * rho 21378 + (-1 : F) * rho 21379) = ((1 : F) * rho 21378 + (1 : F) * rho 21379)

def relationRow519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21380 + (1 : F) * rho 21381) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 21⟩, ⟨(1 : F), 21116, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21382)

def relationRow520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21381) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21383)

def relationRow521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21380) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21384)

def relationRow522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21383) * ((1 : F) * rho 21384) = ((1 : F) * rho 21385)

def relationRow523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21386) * ((1 : F) + (1 : F) * rho 21385) = ((1 : F) * rho 21383 + (1 : F) * rho 21384)

def relationRow524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21387) * ((1 : F) + (-1 : F) * rho 21385) = ((1 : F) * rho 21382 + (-1 : F) * rho 21383 + (-1 : F) * rho 21384)

def relationRow525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20885) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 21⟩], residual := [((1 : F), 21386)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21388)

def relationRow526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20885) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 21⟩], residual := [((1 : F), 21387)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21389)

def relationRow527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21380) * ((1 : F) * rho 21381) = ((1 : F) * rho 21390)

def relationRow528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21380) * ((1 : F) * rho 21380) = ((1 : F) * rho 21391)

def relationRow529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21381) * ((1 : F) * rho 21381) = ((1 : F) * rho 21392)

def relationRow530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21393) * ((-1 : F) * rho 21391 + (1 : F) * rho 21392) = ((2 : F) * rho 21390)

def relationRow531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21394) * ((2 : F) + (1 : F) * rho 21391 + (-1 : F) * rho 21392) = ((1 : F) * rho 21391 + (1 : F) * rho 21392)

def relationRow532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21393 + (1 : F) * rho 21394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 22⟩, ⟨(1 : F), 21116, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21395)

def relationRow533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21396)

def relationRow534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21393) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21397)

def relationRow535 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21396) * ((1 : F) * rho 21397) = ((1 : F) * rho 21398)

def relationRow536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21399) * ((1 : F) + (1 : F) * rho 21398) = ((1 : F) * rho 21396 + (1 : F) * rho 21397)

def relationRow537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21400) * ((1 : F) + (-1 : F) * rho 21398) = ((1 : F) * rho 21395 + (-1 : F) * rho 21396 + (-1 : F) * rho 21397)

def relationRow538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 22⟩], residual := [((1 : F), 21399)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21401)

def relationRow539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20886) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 22⟩], residual := [((1 : F), 21400)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21402)

def relationRow540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21393) * ((1 : F) * rho 21394) = ((1 : F) * rho 21403)

def relationRow541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21393) * ((1 : F) * rho 21393) = ((1 : F) * rho 21404)

def relationRow542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21394) * ((1 : F) * rho 21394) = ((1 : F) * rho 21405)

def relationRow543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21406) * ((-1 : F) * rho 21404 + (1 : F) * rho 21405) = ((2 : F) * rho 21403)

def relationRow544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21407) * ((2 : F) + (1 : F) * rho 21404 + (-1 : F) * rho 21405) = ((1 : F) * rho 21404 + (1 : F) * rho 21405)

def relationRow545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21406 + (1 : F) * rho 21407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 23⟩, ⟨(1 : F), 21116, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21408)

def relationRow546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21409)

def relationRow547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21406) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21410)

def relationRow548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21409) * ((1 : F) * rho 21410) = ((1 : F) * rho 21411)

def relationRow549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21412) * ((1 : F) + (1 : F) * rho 21411) = ((1 : F) * rho 21409 + (1 : F) * rho 21410)

def relationRow550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21413) * ((1 : F) + (-1 : F) * rho 21411) = ((1 : F) * rho 21408 + (-1 : F) * rho 21409 + (-1 : F) * rho 21410)

def relationRow551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 23⟩], residual := [((1 : F), 21412)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21414)

def relationRow552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 23⟩], residual := [((1 : F), 21413)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21415)

def relationRow553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21406) * ((1 : F) * rho 21407) = ((1 : F) * rho 21416)

def relationRow554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21406) * ((1 : F) * rho 21406) = ((1 : F) * rho 21417)

def relationRow555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21407) * ((1 : F) * rho 21407) = ((1 : F) * rho 21418)

def relationRow556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21419) * ((-1 : F) * rho 21417 + (1 : F) * rho 21418) = ((2 : F) * rho 21416)

def relationRow557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21420) * ((2 : F) + (1 : F) * rho 21417 + (-1 : F) * rho 21418) = ((1 : F) * rho 21417 + (1 : F) * rho 21418)

def relationRow558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21419 + (1 : F) * rho 21420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 24⟩, ⟨(1 : F), 21116, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21421)

def relationRow559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21422)

def relationRow560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21419) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21423)

def relationRow561 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21422) * ((1 : F) * rho 21423) = ((1 : F) * rho 21424)

def relationRow562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21425) * ((1 : F) + (1 : F) * rho 21424) = ((1 : F) * rho 21422 + (1 : F) * rho 21423)

def relationRow563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21426) * ((1 : F) + (-1 : F) * rho 21424) = ((1 : F) * rho 21421 + (-1 : F) * rho 21422 + (-1 : F) * rho 21423)

def relationRow564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 24⟩], residual := [((1 : F), 21425)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21427)

def relationRow565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 24⟩], residual := [((1 : F), 21426)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21428)

def relationRow566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21419) * ((1 : F) * rho 21420) = ((1 : F) * rho 21429)

def relationRow567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21419) * ((1 : F) * rho 21419) = ((1 : F) * rho 21430)

def relationRow568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21420) * ((1 : F) * rho 21420) = ((1 : F) * rho 21431)

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21432) * ((-1 : F) * rho 21430 + (1 : F) * rho 21431) = ((2 : F) * rho 21429)

def relationRow570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21433) * ((2 : F) + (1 : F) * rho 21430 + (-1 : F) * rho 21431) = ((1 : F) * rho 21430 + (1 : F) * rho 21431)

def relationRow571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21432 + (1 : F) * rho 21433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 25⟩, ⟨(1 : F), 21116, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21434)

def relationRow572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21435)

def relationRow573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21432) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21436)

def relationRow574 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21435) * ((1 : F) * rho 21436) = ((1 : F) * rho 21437)

def relationRow575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21438) * ((1 : F) + (1 : F) * rho 21437) = ((1 : F) * rho 21435 + (1 : F) * rho 21436)

def relationRow576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21439) * ((1 : F) + (-1 : F) * rho 21437) = ((1 : F) * rho 21434 + (-1 : F) * rho 21435 + (-1 : F) * rho 21436)

def relationRow577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20889) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 25⟩], residual := [((1 : F), 21438)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21440)

def relationRow578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20889) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 25⟩], residual := [((1 : F), 21439)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21441)

def relationRow579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21432) * ((1 : F) * rho 21433) = ((1 : F) * rho 21442)

def relationRow580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21432) * ((1 : F) * rho 21432) = ((1 : F) * rho 21443)

def relationRow581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21433) * ((1 : F) * rho 21433) = ((1 : F) * rho 21444)

def relationRow582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21445) * ((-1 : F) * rho 21443 + (1 : F) * rho 21444) = ((2 : F) * rho 21442)

def relationRow583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21446) * ((2 : F) + (1 : F) * rho 21443 + (-1 : F) * rho 21444) = ((1 : F) * rho 21443 + (1 : F) * rho 21444)

def relationRow584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21445 + (1 : F) * rho 21446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 26⟩, ⟨(1 : F), 21116, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21447)

def relationRow585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21448)

def relationRow586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21445) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21449)

def relationRow587 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21448) * ((1 : F) * rho 21449) = ((1 : F) * rho 21450)

def relationRow588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21451) * ((1 : F) + (1 : F) * rho 21450) = ((1 : F) * rho 21448 + (1 : F) * rho 21449)

def relationRow589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21452) * ((1 : F) + (-1 : F) * rho 21450) = ((1 : F) * rho 21447 + (-1 : F) * rho 21448 + (-1 : F) * rho 21449)

def relationRow590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20890) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 26⟩], residual := [((1 : F), 21451)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21453)

def relationRow591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20890) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 26⟩], residual := [((1 : F), 21452)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21454)

def relationRow592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21445) * ((1 : F) * rho 21446) = ((1 : F) * rho 21455)

def relationRow593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21445) * ((1 : F) * rho 21445) = ((1 : F) * rho 21456)

def relationRow594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21446) * ((1 : F) * rho 21446) = ((1 : F) * rho 21457)

def relationRow595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21458) * ((-1 : F) * rho 21456 + (1 : F) * rho 21457) = ((2 : F) * rho 21455)

def relationRow596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21459) * ((2 : F) + (1 : F) * rho 21456 + (-1 : F) * rho 21457) = ((1 : F) * rho 21456 + (1 : F) * rho 21457)

def relationRow597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21458 + (1 : F) * rho 21459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 27⟩, ⟨(1 : F), 21116, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21460)

def relationRow598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21461)

def relationRow599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21458) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21462)

def relationRow600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21461) * ((1 : F) * rho 21462) = ((1 : F) * rho 21463)

def relationRow601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21464) * ((1 : F) + (1 : F) * rho 21463) = ((1 : F) * rho 21461 + (1 : F) * rho 21462)

def relationRow602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21465) * ((1 : F) + (-1 : F) * rho 21463) = ((1 : F) * rho 21460 + (-1 : F) * rho 21461 + (-1 : F) * rho 21462)

def relationRow603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20891) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 27⟩], residual := [((1 : F), 21464)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21466)

def relationRow604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20891) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 27⟩], residual := [((1 : F), 21465)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21467)

def relationRow605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21458) * ((1 : F) * rho 21459) = ((1 : F) * rho 21468)

def relationRow606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21458) * ((1 : F) * rho 21458) = ((1 : F) * rho 21469)

def relationRow607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21459) * ((1 : F) * rho 21459) = ((1 : F) * rho 21470)

def relationRow608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21471) * ((-1 : F) * rho 21469 + (1 : F) * rho 21470) = ((2 : F) * rho 21468)

def relationRow609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21472) * ((2 : F) + (1 : F) * rho 21469 + (-1 : F) * rho 21470) = ((1 : F) * rho 21469 + (1 : F) * rho 21470)

def relationRow610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21471 + (1 : F) * rho 21472) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 28⟩, ⟨(1 : F), 21116, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21473)

def relationRow611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21472) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21474)

def relationRow612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21471) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21475)

def relationRow613 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21474) * ((1 : F) * rho 21475) = ((1 : F) * rho 21476)

def relationRow614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21477) * ((1 : F) + (1 : F) * rho 21476) = ((1 : F) * rho 21474 + (1 : F) * rho 21475)

def relationRow615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21478) * ((1 : F) + (-1 : F) * rho 21476) = ((1 : F) * rho 21473 + (-1 : F) * rho 21474 + (-1 : F) * rho 21475)

def relationRow616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20892) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 28⟩], residual := [((1 : F), 21477)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21479)

def relationRow617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20892) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 28⟩], residual := [((1 : F), 21478)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21480)

def relationRow618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21471) * ((1 : F) * rho 21472) = ((1 : F) * rho 21481)

def relationRow619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21471) * ((1 : F) * rho 21471) = ((1 : F) * rho 21482)

def relationRow620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21472) * ((1 : F) * rho 21472) = ((1 : F) * rho 21483)

def relationRow621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21484) * ((-1 : F) * rho 21482 + (1 : F) * rho 21483) = ((2 : F) * rho 21481)

def relationRow622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21485) * ((2 : F) + (1 : F) * rho 21482 + (-1 : F) * rho 21483) = ((1 : F) * rho 21482 + (1 : F) * rho 21483)

def relationRow623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21484 + (1 : F) * rho 21485) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 29⟩, ⟨(1 : F), 21116, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21486)

def relationRow624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21485) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21487)

def relationRow625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21484) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21488)

def relationRow626 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21487) * ((1 : F) * rho 21488) = ((1 : F) * rho 21489)

def relationRow627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21490) * ((1 : F) + (1 : F) * rho 21489) = ((1 : F) * rho 21487 + (1 : F) * rho 21488)

def relationRow628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21491) * ((1 : F) + (-1 : F) * rho 21489) = ((1 : F) * rho 21486 + (-1 : F) * rho 21487 + (-1 : F) * rho 21488)

def relationRow629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20893) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 29⟩], residual := [((1 : F), 21490)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21492)

def relationRow630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20893) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 29⟩], residual := [((1 : F), 21491)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21493)

def relationRow631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21484) * ((1 : F) * rho 21485) = ((1 : F) * rho 21494)

def relationRow632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21484) * ((1 : F) * rho 21484) = ((1 : F) * rho 21495)

def relationRow633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21485) * ((1 : F) * rho 21485) = ((1 : F) * rho 21496)

def relationRow634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21497) * ((-1 : F) * rho 21495 + (1 : F) * rho 21496) = ((2 : F) * rho 21494)

def relationRow635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21498) * ((2 : F) + (1 : F) * rho 21495 + (-1 : F) * rho 21496) = ((1 : F) * rho 21495 + (1 : F) * rho 21496)

def relationRow636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21497 + (1 : F) * rho 21498) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 30⟩, ⟨(1 : F), 21116, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21499)

def relationRow637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21498) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21500)

def relationRow638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21497) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21501)

def relationRow639 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21500) * ((1 : F) * rho 21501) = ((1 : F) * rho 21502)

def relationRow640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21503) * ((1 : F) + (1 : F) * rho 21502) = ((1 : F) * rho 21500 + (1 : F) * rho 21501)

def relationRow641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21504) * ((1 : F) + (-1 : F) * rho 21502) = ((1 : F) * rho 21499 + (-1 : F) * rho 21500 + (-1 : F) * rho 21501)

def relationRow642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20894) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 30⟩], residual := [((1 : F), 21503)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21505)

def relationRow643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20894) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 30⟩], residual := [((1 : F), 21504)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21506)

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21497) * ((1 : F) * rho 21498) = ((1 : F) * rho 21507)

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21497) * ((1 : F) * rho 21497) = ((1 : F) * rho 21508)

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21498) * ((1 : F) * rho 21498) = ((1 : F) * rho 21509)

def relationRow647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21510) * ((-1 : F) * rho 21508 + (1 : F) * rho 21509) = ((2 : F) * rho 21507)

def relationRow648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21511) * ((2 : F) + (1 : F) * rho 21508 + (-1 : F) * rho 21509) = ((1 : F) * rho 21508 + (1 : F) * rho 21509)

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21510 + (1 : F) * rho 21511) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 31⟩, ⟨(1 : F), 21116, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21512)

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21511) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21513)

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21510) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21514)

def relationRow652 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21513) * ((1 : F) * rho 21514) = ((1 : F) * rho 21515)

def relationRow653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21516) * ((1 : F) + (1 : F) * rho 21515) = ((1 : F) * rho 21513 + (1 : F) * rho 21514)

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21517) * ((1 : F) + (-1 : F) * rho 21515) = ((1 : F) * rho 21512 + (-1 : F) * rho 21513 + (-1 : F) * rho 21514)

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 31⟩], residual := [((1 : F), 21516)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21518)

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20895) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 31⟩], residual := [((1 : F), 21517)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21519)

def relationRow657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21510) * ((1 : F) * rho 21511) = ((1 : F) * rho 21520)

def relationRow658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21510) * ((1 : F) * rho 21510) = ((1 : F) * rho 21521)

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21511) * ((1 : F) * rho 21511) = ((1 : F) * rho 21522)

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21523) * ((-1 : F) * rho 21521 + (1 : F) * rho 21522) = ((2 : F) * rho 21520)

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21524) * ((2 : F) + (1 : F) * rho 21521 + (-1 : F) * rho 21522) = ((1 : F) * rho 21521 + (1 : F) * rho 21522)

def relationRow662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21523 + (1 : F) * rho 21524) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 32⟩, ⟨(1 : F), 21116, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21525)

def relationRow663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21524) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21526)

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21523) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21527)

def relationRow665 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21526) * ((1 : F) * rho 21527) = ((1 : F) * rho 21528)

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21529) * ((1 : F) + (1 : F) * rho 21528) = ((1 : F) * rho 21526 + (1 : F) * rho 21527)

def relationRow667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21530) * ((1 : F) + (-1 : F) * rho 21528) = ((1 : F) * rho 21525 + (-1 : F) * rho 21526 + (-1 : F) * rho 21527)

def relationRow668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20896) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 32⟩], residual := [((1 : F), 21529)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21531)

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20896) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 32⟩], residual := [((1 : F), 21530)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21532)

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21523) * ((1 : F) * rho 21524) = ((1 : F) * rho 21533)

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21523) * ((1 : F) * rho 21523) = ((1 : F) * rho 21534)

def relationRow672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21524) * ((1 : F) * rho 21524) = ((1 : F) * rho 21535)

def relationRow673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21536) * ((-1 : F) * rho 21534 + (1 : F) * rho 21535) = ((2 : F) * rho 21533)

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21537) * ((2 : F) + (1 : F) * rho 21534 + (-1 : F) * rho 21535) = ((1 : F) * rho 21534 + (1 : F) * rho 21535)

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21536 + (1 : F) * rho 21537) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 33⟩, ⟨(1 : F), 21116, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21538)

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21537) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21539)

def relationRow677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21536) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21540)

def relationRow678 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21539) * ((1 : F) * rho 21540) = ((1 : F) * rho 21541)

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21542) * ((1 : F) + (1 : F) * rho 21541) = ((1 : F) * rho 21539 + (1 : F) * rho 21540)

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21543) * ((1 : F) + (-1 : F) * rho 21541) = ((1 : F) * rho 21538 + (-1 : F) * rho 21539 + (-1 : F) * rho 21540)

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20897) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 33⟩], residual := [((1 : F), 21542)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21544)

def relationRow682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20897) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 33⟩], residual := [((1 : F), 21543)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21545)

def relationRow683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21536) * ((1 : F) * rho 21537) = ((1 : F) * rho 21546)

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21536) * ((1 : F) * rho 21536) = ((1 : F) * rho 21547)

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21537) * ((1 : F) * rho 21537) = ((1 : F) * rho 21548)

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21549) * ((-1 : F) * rho 21547 + (1 : F) * rho 21548) = ((2 : F) * rho 21546)

def relationRow687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21550) * ((2 : F) + (1 : F) * rho 21547 + (-1 : F) * rho 21548) = ((1 : F) * rho 21547 + (1 : F) * rho 21548)

def relationRow688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21549 + (1 : F) * rho 21550) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 34⟩, ⟨(1 : F), 21116, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21551)

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21550) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21552)

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21549) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21553)

def relationRow691 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21552) * ((1 : F) * rho 21553) = ((1 : F) * rho 21554)

def relationRow692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21555) * ((1 : F) + (1 : F) * rho 21554) = ((1 : F) * rho 21552 + (1 : F) * rho 21553)

def relationRow693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21556) * ((1 : F) + (-1 : F) * rho 21554) = ((1 : F) * rho 21551 + (-1 : F) * rho 21552 + (-1 : F) * rho 21553)

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20898) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 34⟩], residual := [((1 : F), 21555)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21557)

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20898) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 34⟩], residual := [((1 : F), 21556)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21558)

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21549) * ((1 : F) * rho 21550) = ((1 : F) * rho 21559)

def relationRow697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21549) * ((1 : F) * rho 21549) = ((1 : F) * rho 21560)

def relationRow698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21550) * ((1 : F) * rho 21550) = ((1 : F) * rho 21561)

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21562) * ((-1 : F) * rho 21560 + (1 : F) * rho 21561) = ((2 : F) * rho 21559)

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21563) * ((2 : F) + (1 : F) * rho 21560 + (-1 : F) * rho 21561) = ((1 : F) * rho 21560 + (1 : F) * rho 21561)

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21562 + (1 : F) * rho 21563) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 35⟩, ⟨(1 : F), 21116, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21564)

def relationRow702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21563) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21565)

def relationRow703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21562) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21566)

def relationRow704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21565) * ((1 : F) * rho 21566) = ((1 : F) * rho 21567)

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21568) * ((1 : F) + (1 : F) * rho 21567) = ((1 : F) * rho 21565 + (1 : F) * rho 21566)

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21569) * ((1 : F) + (-1 : F) * rho 21567) = ((1 : F) * rho 21564 + (-1 : F) * rho 21565 + (-1 : F) * rho 21566)

def relationRow707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20899) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 35⟩], residual := [((1 : F), 21568)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21570)

def relationRow708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20899) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 35⟩], residual := [((1 : F), 21569)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21571)

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21562) * ((1 : F) * rho 21563) = ((1 : F) * rho 21572)

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21562) * ((1 : F) * rho 21562) = ((1 : F) * rho 21573)

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21563) * ((1 : F) * rho 21563) = ((1 : F) * rho 21574)

def relationRow712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21575) * ((-1 : F) * rho 21573 + (1 : F) * rho 21574) = ((2 : F) * rho 21572)

def relationRow713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21576) * ((2 : F) + (1 : F) * rho 21573 + (-1 : F) * rho 21574) = ((1 : F) * rho 21573 + (1 : F) * rho 21574)

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21575 + (1 : F) * rho 21576) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 36⟩, ⟨(1 : F), 21116, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21577)

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21576) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21578)

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21575) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21579)

def relationRow717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21578) * ((1 : F) * rho 21579) = ((1 : F) * rho 21580)

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21581) * ((1 : F) + (1 : F) * rho 21580) = ((1 : F) * rho 21578 + (1 : F) * rho 21579)

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21582) * ((1 : F) + (-1 : F) * rho 21580) = ((1 : F) * rho 21577 + (-1 : F) * rho 21578 + (-1 : F) * rho 21579)

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 36⟩], residual := [((1 : F), 21581)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21583)

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 36⟩], residual := [((1 : F), 21582)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21584)

def relationRow722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21575) * ((1 : F) * rho 21576) = ((1 : F) * rho 21585)

def relationRow723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21575) * ((1 : F) * rho 21575) = ((1 : F) * rho 21586)

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21576) * ((1 : F) * rho 21576) = ((1 : F) * rho 21587)

def relationRow725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21588) * ((-1 : F) * rho 21586 + (1 : F) * rho 21587) = ((2 : F) * rho 21585)

def relationRow726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21589) * ((2 : F) + (1 : F) * rho 21586 + (-1 : F) * rho 21587) = ((1 : F) * rho 21586 + (1 : F) * rho 21587)

def relationRow727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21588 + (1 : F) * rho 21589) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 37⟩, ⟨(1 : F), 21116, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21590)

def relationRow728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21589) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21591)

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21588) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21592)

def relationRow730 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21591) * ((1 : F) * rho 21592) = ((1 : F) * rho 21593)

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21594) * ((1 : F) + (1 : F) * rho 21593) = ((1 : F) * rho 21591 + (1 : F) * rho 21592)

def relationRow732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21595) * ((1 : F) + (-1 : F) * rho 21593) = ((1 : F) * rho 21590 + (-1 : F) * rho 21591 + (-1 : F) * rho 21592)

def relationRow733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 37⟩], residual := [((1 : F), 21594)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21596)

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 37⟩], residual := [((1 : F), 21595)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21597)

def relationRow735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21588) * ((1 : F) * rho 21589) = ((1 : F) * rho 21598)

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21588) * ((1 : F) * rho 21588) = ((1 : F) * rho 21599)

def relationRow737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21589) * ((1 : F) * rho 21589) = ((1 : F) * rho 21600)

def relationRow738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21601) * ((-1 : F) * rho 21599 + (1 : F) * rho 21600) = ((2 : F) * rho 21598)

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21602) * ((2 : F) + (1 : F) * rho 21599 + (-1 : F) * rho 21600) = ((1 : F) * rho 21599 + (1 : F) * rho 21600)

def relationRow740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21601 + (1 : F) * rho 21602) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 38⟩, ⟨(1 : F), 21116, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21603)

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21602) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21604)

def relationRow742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21601) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21605)

def relationRow743 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21604) * ((1 : F) * rho 21605) = ((1 : F) * rho 21606)

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21607) * ((1 : F) + (1 : F) * rho 21606) = ((1 : F) * rho 21604 + (1 : F) * rho 21605)

def relationRow745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21608) * ((1 : F) + (-1 : F) * rho 21606) = ((1 : F) * rho 21603 + (-1 : F) * rho 21604 + (-1 : F) * rho 21605)

def relationRow746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20902) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 38⟩], residual := [((1 : F), 21607)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21609)

def relationRow747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20902) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 38⟩], residual := [((1 : F), 21608)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21610)

def relationRow748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21601) * ((1 : F) * rho 21602) = ((1 : F) * rho 21611)

def relationRow749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21601) * ((1 : F) * rho 21601) = ((1 : F) * rho 21612)

def relationRow750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21602) * ((1 : F) * rho 21602) = ((1 : F) * rho 21613)

def relationRow751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21614) * ((-1 : F) * rho 21612 + (1 : F) * rho 21613) = ((2 : F) * rho 21611)

def relationRow752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21615) * ((2 : F) + (1 : F) * rho 21612 + (-1 : F) * rho 21613) = ((1 : F) * rho 21612 + (1 : F) * rho 21613)

def relationRow753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21614 + (1 : F) * rho 21615) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 39⟩, ⟨(1 : F), 21116, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21616)

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21615) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21617)

def relationRow755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21614) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21618)

def relationRow756 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21617) * ((1 : F) * rho 21618) = ((1 : F) * rho 21619)

def relationRow757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21620) * ((1 : F) + (1 : F) * rho 21619) = ((1 : F) * rho 21617 + (1 : F) * rho 21618)

def relationRow758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21621) * ((1 : F) + (-1 : F) * rho 21619) = ((1 : F) * rho 21616 + (-1 : F) * rho 21617 + (-1 : F) * rho 21618)

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20903) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 39⟩], residual := [((1 : F), 21620)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21622)

def relationRow760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20903) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 39⟩], residual := [((1 : F), 21621)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21623)

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21614) * ((1 : F) * rho 21615) = ((1 : F) * rho 21624)

def relationRow762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21614) * ((1 : F) * rho 21614) = ((1 : F) * rho 21625)

def relationRow763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21615) * ((1 : F) * rho 21615) = ((1 : F) * rho 21626)

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21627) * ((-1 : F) * rho 21625 + (1 : F) * rho 21626) = ((2 : F) * rho 21624)

def relationRow765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21628) * ((2 : F) + (1 : F) * rho 21625 + (-1 : F) * rho 21626) = ((1 : F) * rho 21625 + (1 : F) * rho 21626)

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21627 + (1 : F) * rho 21628) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 40⟩, ⟨(1 : F), 21116, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21629)

def relationRow767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21628) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21630)

def relationRow768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21627) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21631)

def relationRow769 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21630) * ((1 : F) * rho 21631) = ((1 : F) * rho 21632)

def relationRow770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21633) * ((1 : F) + (1 : F) * rho 21632) = ((1 : F) * rho 21630 + (1 : F) * rho 21631)

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21634) * ((1 : F) + (-1 : F) * rho 21632) = ((1 : F) * rho 21629 + (-1 : F) * rho 21630 + (-1 : F) * rho 21631)

def relationRow772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20904) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 40⟩], residual := [((1 : F), 21633)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21635)

def relationRow773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20904) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 40⟩], residual := [((1 : F), 21634)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21636)

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21627) * ((1 : F) * rho 21628) = ((1 : F) * rho 21637)

def relationRow775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21627) * ((1 : F) * rho 21627) = ((1 : F) * rho 21638)

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21628) * ((1 : F) * rho 21628) = ((1 : F) * rho 21639)

def relationRow777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21640) * ((-1 : F) * rho 21638 + (1 : F) * rho 21639) = ((2 : F) * rho 21637)

def relationRow778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21641) * ((2 : F) + (1 : F) * rho 21638 + (-1 : F) * rho 21639) = ((1 : F) * rho 21638 + (1 : F) * rho 21639)

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21640 + (1 : F) * rho 21641) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 41⟩, ⟨(1 : F), 21116, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21642)

def relationRow780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21641) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21643)

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21640) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21644)

def relationRow782 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21643) * ((1 : F) * rho 21644) = ((1 : F) * rho 21645)

def relationRow783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21646) * ((1 : F) + (1 : F) * rho 21645) = ((1 : F) * rho 21643 + (1 : F) * rho 21644)

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21647) * ((1 : F) + (-1 : F) * rho 21645) = ((1 : F) * rho 21642 + (-1 : F) * rho 21643 + (-1 : F) * rho 21644)

def relationRow785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20905) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 41⟩], residual := [((1 : F), 21646)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21648)

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20905) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 41⟩], residual := [((1 : F), 21647)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21649)

def relationRow787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21640) * ((1 : F) * rho 21641) = ((1 : F) * rho 21650)

def relationRow788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21640) * ((1 : F) * rho 21640) = ((1 : F) * rho 21651)

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21641) * ((1 : F) * rho 21641) = ((1 : F) * rho 21652)

def relationRow790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21653) * ((-1 : F) * rho 21651 + (1 : F) * rho 21652) = ((2 : F) * rho 21650)

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21654) * ((2 : F) + (1 : F) * rho 21651 + (-1 : F) * rho 21652) = ((1 : F) * rho 21651 + (1 : F) * rho 21652)

def relationRow792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21653 + (1 : F) * rho 21654) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 42⟩, ⟨(1 : F), 21116, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21655)

def relationRow793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21654) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21656)

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21653) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21657)

def relationRow795 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21656) * ((1 : F) * rho 21657) = ((1 : F) * rho 21658)

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21659) * ((1 : F) + (1 : F) * rho 21658) = ((1 : F) * rho 21656 + (1 : F) * rho 21657)

def relationRow797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21660) * ((1 : F) + (-1 : F) * rho 21658) = ((1 : F) * rho 21655 + (-1 : F) * rho 21656 + (-1 : F) * rho 21657)

def relationRow798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20906) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 42⟩], residual := [((1 : F), 21659)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21661)

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20906) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 42⟩], residual := [((1 : F), 21660)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21662)

def relationRow800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21653) * ((1 : F) * rho 21654) = ((1 : F) * rho 21663)

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21653) * ((1 : F) * rho 21653) = ((1 : F) * rho 21664)

def relationRow802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21654) * ((1 : F) * rho 21654) = ((1 : F) * rho 21665)

def relationRow803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21666) * ((-1 : F) * rho 21664 + (1 : F) * rho 21665) = ((2 : F) * rho 21663)

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21667) * ((2 : F) + (1 : F) * rho 21664 + (-1 : F) * rho 21665) = ((1 : F) * rho 21664 + (1 : F) * rho 21665)

def relationRow805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21666 + (1 : F) * rho 21667) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 43⟩, ⟨(1 : F), 21116, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21668)

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21667) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21669)

def relationRow807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21666) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21670)

def relationRow808 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21669) * ((1 : F) * rho 21670) = ((1 : F) * rho 21671)

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21672) * ((1 : F) + (1 : F) * rho 21671) = ((1 : F) * rho 21669 + (1 : F) * rho 21670)

def relationRow810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21673) * ((1 : F) + (-1 : F) * rho 21671) = ((1 : F) * rho 21668 + (-1 : F) * rho 21669 + (-1 : F) * rho 21670)

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20907) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 43⟩], residual := [((1 : F), 21672)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21674)

def relationRow812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20907) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 43⟩], residual := [((1 : F), 21673)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21675)

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21666) * ((1 : F) * rho 21667) = ((1 : F) * rho 21676)

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21666) * ((1 : F) * rho 21666) = ((1 : F) * rho 21677)

def relationRow815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21667) * ((1 : F) * rho 21667) = ((1 : F) * rho 21678)

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21679) * ((-1 : F) * rho 21677 + (1 : F) * rho 21678) = ((2 : F) * rho 21676)

def relationRow817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21680) * ((2 : F) + (1 : F) * rho 21677 + (-1 : F) * rho 21678) = ((1 : F) * rho 21677 + (1 : F) * rho 21678)

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21679 + (1 : F) * rho 21680) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 44⟩, ⟨(1 : F), 21116, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21681)

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21680) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21682)

def relationRow820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21679) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21683)

def relationRow821 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21682) * ((1 : F) * rho 21683) = ((1 : F) * rho 21684)

def relationRow822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21685) * ((1 : F) + (1 : F) * rho 21684) = ((1 : F) * rho 21682 + (1 : F) * rho 21683)

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21686) * ((1 : F) + (-1 : F) * rho 21684) = ((1 : F) * rho 21681 + (-1 : F) * rho 21682 + (-1 : F) * rho 21683)

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 44⟩], residual := [((1 : F), 21685)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21687)

def relationRow825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20908) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 44⟩], residual := [((1 : F), 21686)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21688)

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21679) * ((1 : F) * rho 21680) = ((1 : F) * rho 21689)

def relationRow827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21679) * ((1 : F) * rho 21679) = ((1 : F) * rho 21690)

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21680) * ((1 : F) * rho 21680) = ((1 : F) * rho 21691)

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21692) * ((-1 : F) * rho 21690 + (1 : F) * rho 21691) = ((2 : F) * rho 21689)

def relationRow830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21693) * ((2 : F) + (1 : F) * rho 21690 + (-1 : F) * rho 21691) = ((1 : F) * rho 21690 + (1 : F) * rho 21691)

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21692 + (1 : F) * rho 21693) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 45⟩, ⟨(1 : F), 21116, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21694)

def relationRow832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21693) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21695)

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21692) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21696)

def relationRow834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21695) * ((1 : F) * rho 21696) = ((1 : F) * rho 21697)

def relationRow835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21698) * ((1 : F) + (1 : F) * rho 21697) = ((1 : F) * rho 21695 + (1 : F) * rho 21696)

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21699) * ((1 : F) + (-1 : F) * rho 21697) = ((1 : F) * rho 21694 + (-1 : F) * rho 21695 + (-1 : F) * rho 21696)

def relationRow837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20909) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 45⟩], residual := [((1 : F), 21698)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21700)

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20909) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 45⟩], residual := [((1 : F), 21699)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21701)

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21692) * ((1 : F) * rho 21693) = ((1 : F) * rho 21702)

def relationRow840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21692) * ((1 : F) * rho 21692) = ((1 : F) * rho 21703)

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21693) * ((1 : F) * rho 21693) = ((1 : F) * rho 21704)

def relationRow842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21705) * ((-1 : F) * rho 21703 + (1 : F) * rho 21704) = ((2 : F) * rho 21702)

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21706) * ((2 : F) + (1 : F) * rho 21703 + (-1 : F) * rho 21704) = ((1 : F) * rho 21703 + (1 : F) * rho 21704)

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21705 + (1 : F) * rho 21706) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 46⟩, ⟨(1 : F), 21116, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21707)

def relationRow845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21706) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21708)

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21705) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21709)

def relationRow847 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21708) * ((1 : F) * rho 21709) = ((1 : F) * rho 21710)

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21711) * ((1 : F) + (1 : F) * rho 21710) = ((1 : F) * rho 21708 + (1 : F) * rho 21709)

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21712) * ((1 : F) + (-1 : F) * rho 21710) = ((1 : F) * rho 21707 + (-1 : F) * rho 21708 + (-1 : F) * rho 21709)

def relationRow850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20910) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 46⟩], residual := [((1 : F), 21711)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21713)

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20910) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 46⟩], residual := [((1 : F), 21712)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21714)

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21705) * ((1 : F) * rho 21706) = ((1 : F) * rho 21715)

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21705) * ((1 : F) * rho 21705) = ((1 : F) * rho 21716)

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21706) * ((1 : F) * rho 21706) = ((1 : F) * rho 21717)

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21718) * ((-1 : F) * rho 21716 + (1 : F) * rho 21717) = ((2 : F) * rho 21715)

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21719) * ((2 : F) + (1 : F) * rho 21716 + (-1 : F) * rho 21717) = ((1 : F) * rho 21716 + (1 : F) * rho 21717)

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21718 + (1 : F) * rho 21719) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 47⟩, ⟨(1 : F), 21116, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21720)

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21719) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21721)

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21718) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21722)

def relationRow860 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21721) * ((1 : F) * rho 21722) = ((1 : F) * rho 21723)

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21724) * ((1 : F) + (1 : F) * rho 21723) = ((1 : F) * rho 21721 + (1 : F) * rho 21722)

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21725) * ((1 : F) + (-1 : F) * rho 21723) = ((1 : F) * rho 21720 + (-1 : F) * rho 21721 + (-1 : F) * rho 21722)

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20911) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 47⟩], residual := [((1 : F), 21724)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21726)

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20911) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 47⟩], residual := [((1 : F), 21725)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21727)

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21718) * ((1 : F) * rho 21719) = ((1 : F) * rho 21728)

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21718) * ((1 : F) * rho 21718) = ((1 : F) * rho 21729)

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21719) * ((1 : F) * rho 21719) = ((1 : F) * rho 21730)

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21731) * ((-1 : F) * rho 21729 + (1 : F) * rho 21730) = ((2 : F) * rho 21728)

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21732) * ((2 : F) + (1 : F) * rho 21729 + (-1 : F) * rho 21730) = ((1 : F) * rho 21729 + (1 : F) * rho 21730)

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21731 + (1 : F) * rho 21732) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 48⟩, ⟨(1 : F), 21116, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21733)

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21732) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21734)

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21731) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21735)

def relationRow873 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21734) * ((1 : F) * rho 21735) = ((1 : F) * rho 21736)

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21737) * ((1 : F) + (1 : F) * rho 21736) = ((1 : F) * rho 21734 + (1 : F) * rho 21735)

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21738) * ((1 : F) + (-1 : F) * rho 21736) = ((1 : F) * rho 21733 + (-1 : F) * rho 21734 + (-1 : F) * rho 21735)

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 48⟩], residual := [((1 : F), 21737)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21739)

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 48⟩], residual := [((1 : F), 21738)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21740)

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21731) * ((1 : F) * rho 21732) = ((1 : F) * rho 21741)

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21731) * ((1 : F) * rho 21731) = ((1 : F) * rho 21742)

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21732) * ((1 : F) * rho 21732) = ((1 : F) * rho 21743)

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21744) * ((-1 : F) * rho 21742 + (1 : F) * rho 21743) = ((2 : F) * rho 21741)

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21745) * ((2 : F) + (1 : F) * rho 21742 + (-1 : F) * rho 21743) = ((1 : F) * rho 21742 + (1 : F) * rho 21743)

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21744 + (1 : F) * rho 21745) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 49⟩, ⟨(1 : F), 21116, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21746)

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21745) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21747)

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21744) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21748)

def relationRow886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21747) * ((1 : F) * rho 21748) = ((1 : F) * rho 21749)

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21750) * ((1 : F) + (1 : F) * rho 21749) = ((1 : F) * rho 21747 + (1 : F) * rho 21748)

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21751) * ((1 : F) + (-1 : F) * rho 21749) = ((1 : F) * rho 21746 + (-1 : F) * rho 21747 + (-1 : F) * rho 21748)

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 49⟩], residual := [((1 : F), 21750)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21752)

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 49⟩], residual := [((1 : F), 21751)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21753)

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21744) * ((1 : F) * rho 21745) = ((1 : F) * rho 21754)

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21744) * ((1 : F) * rho 21744) = ((1 : F) * rho 21755)

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21745) * ((1 : F) * rho 21745) = ((1 : F) * rho 21756)

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21757) * ((-1 : F) * rho 21755 + (1 : F) * rho 21756) = ((2 : F) * rho 21754)

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21758) * ((2 : F) + (1 : F) * rho 21755 + (-1 : F) * rho 21756) = ((1 : F) * rho 21755 + (1 : F) * rho 21756)

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21757 + (1 : F) * rho 21758) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 50⟩, ⟨(1 : F), 21116, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21759)

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21758) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21760)

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21757) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21761)

def relationRow899 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21760) * ((1 : F) * rho 21761) = ((1 : F) * rho 21762)

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21763) * ((1 : F) + (1 : F) * rho 21762) = ((1 : F) * rho 21760 + (1 : F) * rho 21761)

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21764) * ((1 : F) + (-1 : F) * rho 21762) = ((1 : F) * rho 21759 + (-1 : F) * rho 21760 + (-1 : F) * rho 21761)

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 50⟩], residual := [((1 : F), 21763)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21765)

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 50⟩], residual := [((1 : F), 21764)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21766)

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21757) * ((1 : F) * rho 21758) = ((1 : F) * rho 21767)

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21757) * ((1 : F) * rho 21757) = ((1 : F) * rho 21768)

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21758) * ((1 : F) * rho 21758) = ((1 : F) * rho 21769)

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21770) * ((-1 : F) * rho 21768 + (1 : F) * rho 21769) = ((2 : F) * rho 21767)

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21771) * ((2 : F) + (1 : F) * rho 21768 + (-1 : F) * rho 21769) = ((1 : F) * rho 21768 + (1 : F) * rho 21769)

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21770 + (1 : F) * rho 21771) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 51⟩, ⟨(1 : F), 21116, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21772)

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21771) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21773)

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21770) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21774)

def relationRow912 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21773) * ((1 : F) * rho 21774) = ((1 : F) * rho 21775)

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21776) * ((1 : F) + (1 : F) * rho 21775) = ((1 : F) * rho 21773 + (1 : F) * rho 21774)

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21777) * ((1 : F) + (-1 : F) * rho 21775) = ((1 : F) * rho 21772 + (-1 : F) * rho 21773 + (-1 : F) * rho 21774)

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 51⟩], residual := [((1 : F), 21776)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21778)

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 51⟩], residual := [((1 : F), 21777)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21779)

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21770) * ((1 : F) * rho 21771) = ((1 : F) * rho 21780)

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21770) * ((1 : F) * rho 21770) = ((1 : F) * rho 21781)

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21771) * ((1 : F) * rho 21771) = ((1 : F) * rho 21782)

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21783) * ((-1 : F) * rho 21781 + (1 : F) * rho 21782) = ((2 : F) * rho 21780)

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21784) * ((2 : F) + (1 : F) * rho 21781 + (-1 : F) * rho 21782) = ((1 : F) * rho 21781 + (1 : F) * rho 21782)

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21783 + (1 : F) * rho 21784) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 52⟩, ⟨(1 : F), 21116, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21785)

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21784) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21786)

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21783) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21787)

def relationRow925 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21786) * ((1 : F) * rho 21787) = ((1 : F) * rho 21788)

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21789) * ((1 : F) + (1 : F) * rho 21788) = ((1 : F) * rho 21786 + (1 : F) * rho 21787)

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21790) * ((1 : F) + (-1 : F) * rho 21788) = ((1 : F) * rho 21785 + (-1 : F) * rho 21786 + (-1 : F) * rho 21787)

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 52⟩], residual := [((1 : F), 21789)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21791)

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20916) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 52⟩], residual := [((1 : F), 21790)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21792)

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21783) * ((1 : F) * rho 21784) = ((1 : F) * rho 21793)

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21783) * ((1 : F) * rho 21783) = ((1 : F) * rho 21794)

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21784) * ((1 : F) * rho 21784) = ((1 : F) * rho 21795)

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21796) * ((-1 : F) * rho 21794 + (1 : F) * rho 21795) = ((2 : F) * rho 21793)

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21797) * ((2 : F) + (1 : F) * rho 21794 + (-1 : F) * rho 21795) = ((1 : F) * rho 21794 + (1 : F) * rho 21795)

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21796 + (1 : F) * rho 21797) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 53⟩, ⟨(1 : F), 21116, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21798)

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21797) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21799)

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21796) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21800)

def relationRow938 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21799) * ((1 : F) * rho 21800) = ((1 : F) * rho 21801)

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21802) * ((1 : F) + (1 : F) * rho 21801) = ((1 : F) * rho 21799 + (1 : F) * rho 21800)

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21803) * ((1 : F) + (-1 : F) * rho 21801) = ((1 : F) * rho 21798 + (-1 : F) * rho 21799 + (-1 : F) * rho 21800)

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 53⟩], residual := [((1 : F), 21802)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21804)

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20917) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 53⟩], residual := [((1 : F), 21803)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21805)

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21796) * ((1 : F) * rho 21797) = ((1 : F) * rho 21806)

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21796) * ((1 : F) * rho 21796) = ((1 : F) * rho 21807)

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21797) * ((1 : F) * rho 21797) = ((1 : F) * rho 21808)

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21809) * ((-1 : F) * rho 21807 + (1 : F) * rho 21808) = ((2 : F) * rho 21806)

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21810) * ((2 : F) + (1 : F) * rho 21807 + (-1 : F) * rho 21808) = ((1 : F) * rho 21807 + (1 : F) * rho 21808)

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21809 + (1 : F) * rho 21810) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 54⟩, ⟨(1 : F), 21116, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21811)

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21810) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21812)

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21809) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21813)

def relationRow951 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21812) * ((1 : F) * rho 21813) = ((1 : F) * rho 21814)

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21815) * ((1 : F) + (1 : F) * rho 21814) = ((1 : F) * rho 21812 + (1 : F) * rho 21813)

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21816) * ((1 : F) + (-1 : F) * rho 21814) = ((1 : F) * rho 21811 + (-1 : F) * rho 21812 + (-1 : F) * rho 21813)

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 54⟩], residual := [((1 : F), 21815)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21817)

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20918) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 54⟩], residual := [((1 : F), 21816)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21818)

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21809) * ((1 : F) * rho 21810) = ((1 : F) * rho 21819)

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21809) * ((1 : F) * rho 21809) = ((1 : F) * rho 21820)

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21810) * ((1 : F) * rho 21810) = ((1 : F) * rho 21821)

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21822) * ((-1 : F) * rho 21820 + (1 : F) * rho 21821) = ((2 : F) * rho 21819)

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21823) * ((2 : F) + (1 : F) * rho 21820 + (-1 : F) * rho 21821) = ((1 : F) * rho 21820 + (1 : F) * rho 21821)

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21822 + (1 : F) * rho 21823) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 55⟩, ⟨(1 : F), 21116, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21824)

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21823) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21825)

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21822) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21826)

def relationRow964 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21825) * ((1 : F) * rho 21826) = ((1 : F) * rho 21827)

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21828) * ((1 : F) + (1 : F) * rho 21827) = ((1 : F) * rho 21825 + (1 : F) * rho 21826)

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21829) * ((1 : F) + (-1 : F) * rho 21827) = ((1 : F) * rho 21824 + (-1 : F) * rho 21825 + (-1 : F) * rho 21826)

def relationRow967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20919) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 55⟩], residual := [((1 : F), 21828)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21830)

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20919) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 55⟩], residual := [((1 : F), 21829)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21831)

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21822) * ((1 : F) * rho 21823) = ((1 : F) * rho 21832)

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21822) * ((1 : F) * rho 21822) = ((1 : F) * rho 21833)

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21823) * ((1 : F) * rho 21823) = ((1 : F) * rho 21834)

def relationRow972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21835) * ((-1 : F) * rho 21833 + (1 : F) * rho 21834) = ((2 : F) * rho 21832)

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21836) * ((2 : F) + (1 : F) * rho 21833 + (-1 : F) * rho 21834) = ((1 : F) * rho 21833 + (1 : F) * rho 21834)

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21835 + (1 : F) * rho 21836) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 56⟩, ⟨(1 : F), 21116, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21837)

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21836) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21838)

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21835) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21839)

def relationRow977 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21838) * ((1 : F) * rho 21839) = ((1 : F) * rho 21840)

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21841) * ((1 : F) + (1 : F) * rho 21840) = ((1 : F) * rho 21838 + (1 : F) * rho 21839)

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21842) * ((1 : F) + (-1 : F) * rho 21840) = ((1 : F) * rho 21837 + (-1 : F) * rho 21838 + (-1 : F) * rho 21839)

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20920) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 56⟩], residual := [((1 : F), 21841)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21843)

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20920) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 56⟩], residual := [((1 : F), 21842)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21844)

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21835) * ((1 : F) * rho 21836) = ((1 : F) * rho 21845)

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21835) * ((1 : F) * rho 21835) = ((1 : F) * rho 21846)

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21836) * ((1 : F) * rho 21836) = ((1 : F) * rho 21847)

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21848) * ((-1 : F) * rho 21846 + (1 : F) * rho 21847) = ((2 : F) * rho 21845)

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21849) * ((2 : F) + (1 : F) * rho 21846 + (-1 : F) * rho 21847) = ((1 : F) * rho 21846 + (1 : F) * rho 21847)

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21848 + (1 : F) * rho 21849) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 57⟩, ⟨(1 : F), 21116, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21850)

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21849) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21851)

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21848) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21852)

def relationRow990 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21851) * ((1 : F) * rho 21852) = ((1 : F) * rho 21853)

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21854) * ((1 : F) + (1 : F) * rho 21853) = ((1 : F) * rho 21851 + (1 : F) * rho 21852)

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21855) * ((1 : F) + (-1 : F) * rho 21853) = ((1 : F) * rho 21850 + (-1 : F) * rho 21851 + (-1 : F) * rho 21852)

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 57⟩], residual := [((1 : F), 21854)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21856)

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20921) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 57⟩], residual := [((1 : F), 21855)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21857)

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21848) * ((1 : F) * rho 21849) = ((1 : F) * rho 21858)

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21848) * ((1 : F) * rho 21848) = ((1 : F) * rho 21859)

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21849) * ((1 : F) * rho 21849) = ((1 : F) * rho 21860)

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21861) * ((-1 : F) * rho 21859 + (1 : F) * rho 21860) = ((2 : F) * rho 21858)

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21862) * ((2 : F) + (1 : F) * rho 21859 + (-1 : F) * rho 21860) = ((1 : F) * rho 21859 + (1 : F) * rho 21860)

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21861 + (1 : F) * rho 21862) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 58⟩, ⟨(1 : F), 21116, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21863)

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21862) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21864)

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21861) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21865)

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21864) * ((1 : F) * rho 21865) = ((1 : F) * rho 21866)

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21867) * ((1 : F) + (1 : F) * rho 21866) = ((1 : F) * rho 21864 + (1 : F) * rho 21865)

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21868) * ((1 : F) + (-1 : F) * rho 21866) = ((1 : F) * rho 21863 + (-1 : F) * rho 21864 + (-1 : F) * rho 21865)

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 58⟩], residual := [((1 : F), 21867)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21869)

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20922) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 58⟩], residual := [((1 : F), 21868)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21870)

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21861) * ((1 : F) * rho 21862) = ((1 : F) * rho 21871)

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21861) * ((1 : F) * rho 21861) = ((1 : F) * rho 21872)

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21862) * ((1 : F) * rho 21862) = ((1 : F) * rho 21873)

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21874) * ((-1 : F) * rho 21872 + (1 : F) * rho 21873) = ((2 : F) * rho 21871)

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21875) * ((2 : F) + (1 : F) * rho 21872 + (-1 : F) * rho 21873) = ((1 : F) * rho 21872 + (1 : F) * rho 21873)

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21874 + (1 : F) * rho 21875) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 59⟩, ⟨(1 : F), 21116, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21876)

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21875) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21877)

def relationRow1015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21874) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21878)

def relationRow1016 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21877) * ((1 : F) * rho 21878) = ((1 : F) * rho 21879)

def relationRow1017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21880) * ((1 : F) + (1 : F) * rho 21879) = ((1 : F) * rho 21877 + (1 : F) * rho 21878)

def relationRow1018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21881) * ((1 : F) + (-1 : F) * rho 21879) = ((1 : F) * rho 21876 + (-1 : F) * rho 21877 + (-1 : F) * rho 21878)

def relationRow1019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20923) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 59⟩], residual := [((1 : F), 21880)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21882)

def relationRow1020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20923) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 59⟩], residual := [((1 : F), 21881)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21883)

def relationRow1021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21874) * ((1 : F) * rho 21875) = ((1 : F) * rho 21884)

def relationRow1022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21874) * ((1 : F) * rho 21874) = ((1 : F) * rho 21885)

def relationRow1023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21875) * ((1 : F) * rho 21875) = ((1 : F) * rho 21886)

def relationRow1024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21887) * ((-1 : F) * rho 21885 + (1 : F) * rho 21886) = ((2 : F) * rho 21884)

def relationRow1025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21888) * ((2 : F) + (1 : F) * rho 21885 + (-1 : F) * rho 21886) = ((1 : F) * rho 21885 + (1 : F) * rho 21886)

def relationRow1026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21887 + (1 : F) * rho 21888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 60⟩, ⟨(1 : F), 21116, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21889)

def relationRow1027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21890)

def relationRow1028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21887) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21891)

def relationRow1029 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21890) * ((1 : F) * rho 21891) = ((1 : F) * rho 21892)

def relationRow1030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21893) * ((1 : F) + (1 : F) * rho 21892) = ((1 : F) * rho 21890 + (1 : F) * rho 21891)

def relationRow1031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21894) * ((1 : F) + (-1 : F) * rho 21892) = ((1 : F) * rho 21889 + (-1 : F) * rho 21890 + (-1 : F) * rho 21891)

def relationRow1032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 60⟩], residual := [((1 : F), 21893)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21895)

def relationRow1033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20924) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 60⟩], residual := [((1 : F), 21894)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21896)

def relationRow1034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21887) * ((1 : F) * rho 21888) = ((1 : F) * rho 21897)

def relationRow1035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21887) * ((1 : F) * rho 21887) = ((1 : F) * rho 21898)

def relationRow1036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21888) * ((1 : F) * rho 21888) = ((1 : F) * rho 21899)

def relationRow1037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21900) * ((-1 : F) * rho 21898 + (1 : F) * rho 21899) = ((2 : F) * rho 21897)

def relationRow1038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21901) * ((2 : F) + (1 : F) * rho 21898 + (-1 : F) * rho 21899) = ((1 : F) * rho 21898 + (1 : F) * rho 21899)

def relationRow1039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21900 + (1 : F) * rho 21901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 61⟩, ⟨(1 : F), 21116, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21902)

def relationRow1040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21903)

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21900) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21904)

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21903) * ((1 : F) * rho 21904) = ((1 : F) * rho 21905)

def relationRow1043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21906) * ((1 : F) + (1 : F) * rho 21905) = ((1 : F) * rho 21903 + (1 : F) * rho 21904)

def relationRow1044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21907) * ((1 : F) + (-1 : F) * rho 21905) = ((1 : F) * rho 21902 + (-1 : F) * rho 21903 + (-1 : F) * rho 21904)

def relationRow1045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 61⟩], residual := [((1 : F), 21906)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21908)

def relationRow1046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 61⟩], residual := [((1 : F), 21907)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21909)

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21900) * ((1 : F) * rho 21901) = ((1 : F) * rho 21910)

def relationRow1048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21900) * ((1 : F) * rho 21900) = ((1 : F) * rho 21911)

def relationRow1049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21901) * ((1 : F) * rho 21901) = ((1 : F) * rho 21912)

def relationRow1050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21913) * ((-1 : F) * rho 21911 + (1 : F) * rho 21912) = ((2 : F) * rho 21910)

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21914) * ((2 : F) + (1 : F) * rho 21911 + (-1 : F) * rho 21912) = ((1 : F) * rho 21911 + (1 : F) * rho 21912)

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21913 + (1 : F) * rho 21914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 62⟩, ⟨(1 : F), 21116, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21915)

def relationRow1053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21916)

def relationRow1054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21913) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21917)

def relationRow1055 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21916) * ((1 : F) * rho 21917) = ((1 : F) * rho 21918)

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21919) * ((1 : F) + (1 : F) * rho 21918) = ((1 : F) * rho 21916 + (1 : F) * rho 21917)

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21920) * ((1 : F) + (-1 : F) * rho 21918) = ((1 : F) * rho 21915 + (-1 : F) * rho 21916 + (-1 : F) * rho 21917)

def relationRow1058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 62⟩], residual := [((1 : F), 21919)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21921)

def relationRow1059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 62⟩], residual := [((1 : F), 21920)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21922)

def relationRow1060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21913) * ((1 : F) * rho 21914) = ((1 : F) * rho 21923)

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21913) * ((1 : F) * rho 21913) = ((1 : F) * rho 21924)

def relationRow1062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21914) * ((1 : F) * rho 21914) = ((1 : F) * rho 21925)

def relationRow1063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21926) * ((-1 : F) * rho 21924 + (1 : F) * rho 21925) = ((2 : F) * rho 21923)

def relationRow1064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21927) * ((2 : F) + (1 : F) * rho 21924 + (-1 : F) * rho 21925) = ((1 : F) * rho 21924 + (1 : F) * rho 21925)

def relationRow1065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21926 + (1 : F) * rho 21927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 63⟩, ⟨(1 : F), 21116, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21928)

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21929)

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21930)

def relationRow1068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21929) * ((1 : F) * rho 21930) = ((1 : F) * rho 21931)

def relationRow1069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21932) * ((1 : F) + (1 : F) * rho 21931) = ((1 : F) * rho 21929 + (1 : F) * rho 21930)

def relationRow1070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21933) * ((1 : F) + (-1 : F) * rho 21931) = ((1 : F) * rho 21928 + (-1 : F) * rho 21929 + (-1 : F) * rho 21930)

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 63⟩], residual := [((1 : F), 21932)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21934)

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 63⟩], residual := [((1 : F), 21933)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21935)

def relationRow1073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21926) * ((1 : F) * rho 21927) = ((1 : F) * rho 21936)

def relationRow1074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21926) * ((1 : F) * rho 21926) = ((1 : F) * rho 21937)

def relationRow1075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21927) * ((1 : F) * rho 21927) = ((1 : F) * rho 21938)

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21939) * ((-1 : F) * rho 21937 + (1 : F) * rho 21938) = ((2 : F) * rho 21936)

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21940) * ((2 : F) + (1 : F) * rho 21937 + (-1 : F) * rho 21938) = ((1 : F) * rho 21937 + (1 : F) * rho 21938)

def relationRow1078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21939 + (1 : F) * rho 21940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 64⟩, ⟨(1 : F), 21116, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21941)

def relationRow1079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21942)

def relationRow1080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21943)

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21942) * ((1 : F) * rho 21943) = ((1 : F) * rho 21944)

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21945) * ((1 : F) + (1 : F) * rho 21944) = ((1 : F) * rho 21942 + (1 : F) * rho 21943)

def relationRow1083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21946) * ((1 : F) + (-1 : F) * rho 21944) = ((1 : F) * rho 21941 + (-1 : F) * rho 21942 + (-1 : F) * rho 21943)

def relationRow1084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 64⟩], residual := [((1 : F), 21945)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21947)

def relationRow1085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 64⟩], residual := [((1 : F), 21946)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21948)

def relationRow1086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21939) * ((1 : F) * rho 21940) = ((1 : F) * rho 21949)

def relationRow1087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21939) * ((1 : F) * rho 21939) = ((1 : F) * rho 21950)

def relationRow1088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21940) * ((1 : F) * rho 21940) = ((1 : F) * rho 21951)

def relationRow1089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21952) * ((-1 : F) * rho 21950 + (1 : F) * rho 21951) = ((2 : F) * rho 21949)

def relationRow1090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21953) * ((2 : F) + (1 : F) * rho 21950 + (-1 : F) * rho 21951) = ((1 : F) * rho 21950 + (1 : F) * rho 21951)

def relationRow1091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21952 + (1 : F) * rho 21953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 65⟩, ⟨(1 : F), 21116, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21954)

def relationRow1092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21955)

def relationRow1093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21956)

def relationRow1094 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21955) * ((1 : F) * rho 21956) = ((1 : F) * rho 21957)

def relationRow1095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21958) * ((1 : F) + (1 : F) * rho 21957) = ((1 : F) * rho 21955 + (1 : F) * rho 21956)

def relationRow1096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21959) * ((1 : F) + (-1 : F) * rho 21957) = ((1 : F) * rho 21954 + (-1 : F) * rho 21955 + (-1 : F) * rho 21956)

def relationRow1097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 65⟩], residual := [((1 : F), 21958)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21960)

def relationRow1098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20929) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 65⟩], residual := [((1 : F), 21959)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21961)

def relationRow1099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21952) * ((1 : F) * rho 21953) = ((1 : F) * rho 21962)

def relationRow1100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21952) * ((1 : F) * rho 21952) = ((1 : F) * rho 21963)

def relationRow1101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21953) * ((1 : F) * rho 21953) = ((1 : F) * rho 21964)

def relationRow1102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21965) * ((-1 : F) * rho 21963 + (1 : F) * rho 21964) = ((2 : F) * rho 21962)

def relationRow1103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21966) * ((2 : F) + (1 : F) * rho 21963 + (-1 : F) * rho 21964) = ((1 : F) * rho 21963 + (1 : F) * rho 21964)

def relationRow1104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21965 + (1 : F) * rho 21966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 66⟩, ⟨(1 : F), 21116, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21967)

def relationRow1105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21968)

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21969)

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21968) * ((1 : F) * rho 21969) = ((1 : F) * rho 21970)

def relationRow1108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21971) * ((1 : F) + (1 : F) * rho 21970) = ((1 : F) * rho 21968 + (1 : F) * rho 21969)

def relationRow1109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21972) * ((1 : F) + (-1 : F) * rho 21970) = ((1 : F) * rho 21967 + (-1 : F) * rho 21968 + (-1 : F) * rho 21969)

def relationRow1110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 66⟩], residual := [((1 : F), 21971)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21973)

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20930) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 66⟩], residual := [((1 : F), 21972)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21974)

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21965) * ((1 : F) * rho 21966) = ((1 : F) * rho 21975)

def relationRow1113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21965) * ((1 : F) * rho 21965) = ((1 : F) * rho 21976)

def relationRow1114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21966) * ((1 : F) * rho 21966) = ((1 : F) * rho 21977)

def relationRow1115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21978) * ((-1 : F) * rho 21976 + (1 : F) * rho 21977) = ((2 : F) * rho 21975)

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21979) * ((2 : F) + (1 : F) * rho 21976 + (-1 : F) * rho 21977) = ((1 : F) * rho 21976 + (1 : F) * rho 21977)

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21978 + (1 : F) * rho 21979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 67⟩, ⟨(1 : F), 21116, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21980)

def relationRow1118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21981)

def relationRow1119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21982)

def relationRow1120 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21981) * ((1 : F) * rho 21982) = ((1 : F) * rho 21983)

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21984) * ((1 : F) + (1 : F) * rho 21983) = ((1 : F) * rho 21981 + (1 : F) * rho 21982)

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21985) * ((1 : F) + (-1 : F) * rho 21983) = ((1 : F) * rho 21980 + (-1 : F) * rho 21981 + (-1 : F) * rho 21982)

def relationRow1123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 67⟩], residual := [((1 : F), 21984)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21986)

def relationRow1124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20931) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 67⟩], residual := [((1 : F), 21985)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21987)

def relationRow1125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21978) * ((1 : F) * rho 21979) = ((1 : F) * rho 21988)

def relationRow1126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21978) * ((1 : F) * rho 21978) = ((1 : F) * rho 21989)

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21979) * ((1 : F) * rho 21979) = ((1 : F) * rho 21990)

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21991) * ((-1 : F) * rho 21989 + (1 : F) * rho 21990) = ((2 : F) * rho 21988)

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21992) * ((2 : F) + (1 : F) * rho 21989 + (-1 : F) * rho 21990) = ((1 : F) * rho 21989 + (1 : F) * rho 21990)

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21991 + (1 : F) * rho 21992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 68⟩, ⟨(1 : F), 21116, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21993)

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21994)

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21995)

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 21994) * ((1 : F) * rho 21995) = ((1 : F) * rho 21996)

def relationRow1134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21997) * ((1 : F) + (1 : F) * rho 21996) = ((1 : F) * rho 21994 + (1 : F) * rho 21995)

def relationRow1135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21998) * ((1 : F) + (-1 : F) * rho 21996) = ((1 : F) * rho 21993 + (-1 : F) * rho 21994 + (-1 : F) * rho 21995)

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20932) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 68⟩], residual := [((1 : F), 21997)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 21999)

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20932) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 68⟩], residual := [((1 : F), 21998)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22000)

def relationRow1138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21991) * ((1 : F) * rho 21992) = ((1 : F) * rho 22001)

def relationRow1139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21991) * ((1 : F) * rho 21991) = ((1 : F) * rho 22002)

def relationRow1140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21992) * ((1 : F) * rho 21992) = ((1 : F) * rho 22003)

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22004) * ((-1 : F) * rho 22002 + (1 : F) * rho 22003) = ((2 : F) * rho 22001)

def relationRow1142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22005) * ((2 : F) + (1 : F) * rho 22002 + (-1 : F) * rho 22003) = ((1 : F) * rho 22002 + (1 : F) * rho 22003)

def relationRow1143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22004 + (1 : F) * rho 22005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 69⟩, ⟨(1 : F), 21116, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22006)

def relationRow1144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22007)

def relationRow1145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22008)

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22007) * ((1 : F) * rho 22008) = ((1 : F) * rho 22009)

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22010) * ((1 : F) + (1 : F) * rho 22009) = ((1 : F) * rho 22007 + (1 : F) * rho 22008)

def relationRow1148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22011) * ((1 : F) + (-1 : F) * rho 22009) = ((1 : F) * rho 22006 + (-1 : F) * rho 22007 + (-1 : F) * rho 22008)

def relationRow1149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20933) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 69⟩], residual := [((1 : F), 22010)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22012)

def relationRow1150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20933) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 69⟩], residual := [((1 : F), 22011)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22013)

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22004) * ((1 : F) * rho 22005) = ((1 : F) * rho 22014)

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22004) * ((1 : F) * rho 22004) = ((1 : F) * rho 22015)

def relationRow1153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22005) * ((1 : F) * rho 22005) = ((1 : F) * rho 22016)

def relationRow1154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22017) * ((-1 : F) * rho 22015 + (1 : F) * rho 22016) = ((2 : F) * rho 22014)

def relationRow1155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22018) * ((2 : F) + (1 : F) * rho 22015 + (-1 : F) * rho 22016) = ((1 : F) * rho 22015 + (1 : F) * rho 22016)

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22017 + (1 : F) * rho 22018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 70⟩, ⟨(1 : F), 21116, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22019)

def relationRow1157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22020)

def relationRow1158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22021)

def relationRow1159 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22020) * ((1 : F) * rho 22021) = ((1 : F) * rho 22022)

def relationRow1160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22023) * ((1 : F) + (1 : F) * rho 22022) = ((1 : F) * rho 22020 + (1 : F) * rho 22021)

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22024) * ((1 : F) + (-1 : F) * rho 22022) = ((1 : F) * rho 22019 + (-1 : F) * rho 22020 + (-1 : F) * rho 22021)

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 70⟩], residual := [((1 : F), 22023)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22025)

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20934) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 70⟩], residual := [((1 : F), 22024)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22026)

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22017) * ((1 : F) * rho 22018) = ((1 : F) * rho 22027)

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22017) * ((1 : F) * rho 22017) = ((1 : F) * rho 22028)

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22018) * ((1 : F) * rho 22018) = ((1 : F) * rho 22029)

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22030) * ((-1 : F) * rho 22028 + (1 : F) * rho 22029) = ((2 : F) * rho 22027)

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22031) * ((2 : F) + (1 : F) * rho 22028 + (-1 : F) * rho 22029) = ((1 : F) * rho 22028 + (1 : F) * rho 22029)

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22030 + (1 : F) * rho 22031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 71⟩, ⟨(1 : F), 21116, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22032)

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22033)

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22034)

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22033) * ((1 : F) * rho 22034) = ((1 : F) * rho 22035)

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22036) * ((1 : F) + (1 : F) * rho 22035) = ((1 : F) * rho 22033 + (1 : F) * rho 22034)

def relationRow1174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22037) * ((1 : F) + (-1 : F) * rho 22035) = ((1 : F) * rho 22032 + (-1 : F) * rho 22033 + (-1 : F) * rho 22034)

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 71⟩], residual := [((1 : F), 22036)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22038)

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20935) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 71⟩], residual := [((1 : F), 22037)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22039)

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22030) * ((1 : F) * rho 22031) = ((1 : F) * rho 22040)

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22030) * ((1 : F) * rho 22030) = ((1 : F) * rho 22041)

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22031) * ((1 : F) * rho 22031) = ((1 : F) * rho 22042)

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22043) * ((-1 : F) * rho 22041 + (1 : F) * rho 22042) = ((2 : F) * rho 22040)

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22044) * ((2 : F) + (1 : F) * rho 22041 + (-1 : F) * rho 22042) = ((1 : F) * rho 22041 + (1 : F) * rho 22042)

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22043 + (1 : F) * rho 22044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 72⟩, ⟨(1 : F), 21116, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22045)

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22046)

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22047)

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22046) * ((1 : F) * rho 22047) = ((1 : F) * rho 22048)

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22049) * ((1 : F) + (1 : F) * rho 22048) = ((1 : F) * rho 22046 + (1 : F) * rho 22047)

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22050) * ((1 : F) + (-1 : F) * rho 22048) = ((1 : F) * rho 22045 + (-1 : F) * rho 22046 + (-1 : F) * rho 22047)

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20936) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 72⟩], residual := [((1 : F), 22049)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22051)

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20936) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 72⟩], residual := [((1 : F), 22050)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22052)

def relationRow1190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22043) * ((1 : F) * rho 22044) = ((1 : F) * rho 22053)

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22043) * ((1 : F) * rho 22043) = ((1 : F) * rho 22054)

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22044) * ((1 : F) * rho 22044) = ((1 : F) * rho 22055)

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22056) * ((-1 : F) * rho 22054 + (1 : F) * rho 22055) = ((2 : F) * rho 22053)

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22057) * ((2 : F) + (1 : F) * rho 22054 + (-1 : F) * rho 22055) = ((1 : F) * rho 22054 + (1 : F) * rho 22055)

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22056 + (1 : F) * rho 22057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 73⟩, ⟨(1 : F), 21116, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22058)

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22059)

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22060)

def relationRow1198 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22059) * ((1 : F) * rho 22060) = ((1 : F) * rho 22061)

def relationRow1199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22062) * ((1 : F) + (1 : F) * rho 22061) = ((1 : F) * rho 22059 + (1 : F) * rho 22060)

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22063) * ((1 : F) + (-1 : F) * rho 22061) = ((1 : F) * rho 22058 + (-1 : F) * rho 22059 + (-1 : F) * rho 22060)

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20937) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 73⟩], residual := [((1 : F), 22062)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22064)

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20937) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 73⟩], residual := [((1 : F), 22063)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22065)

def relationRow1203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22056) * ((1 : F) * rho 22057) = ((1 : F) * rho 22066)

def relationRow1204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22056) * ((1 : F) * rho 22056) = ((1 : F) * rho 22067)

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22057) * ((1 : F) * rho 22057) = ((1 : F) * rho 22068)

def relationRow1206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22069) * ((-1 : F) * rho 22067 + (1 : F) * rho 22068) = ((2 : F) * rho 22066)

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22070) * ((2 : F) + (1 : F) * rho 22067 + (-1 : F) * rho 22068) = ((1 : F) * rho 22067 + (1 : F) * rho 22068)

def relationRow1208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22069 + (1 : F) * rho 22070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 74⟩, ⟨(1 : F), 21116, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22071)

def relationRow1209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22072)

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22073)

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22072) * ((1 : F) * rho 22073) = ((1 : F) * rho 22074)

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22075) * ((1 : F) + (1 : F) * rho 22074) = ((1 : F) * rho 22072 + (1 : F) * rho 22073)

def relationRow1213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22076) * ((1 : F) + (-1 : F) * rho 22074) = ((1 : F) * rho 22071 + (-1 : F) * rho 22072 + (-1 : F) * rho 22073)

def relationRow1214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 74⟩], residual := [((1 : F), 22075)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22077)

def relationRow1215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20938) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 74⟩], residual := [((1 : F), 22076)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22078)

def relationRow1216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22069) * ((1 : F) * rho 22070) = ((1 : F) * rho 22079)

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22069) * ((1 : F) * rho 22069) = ((1 : F) * rho 22080)

def relationRow1218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22070) * ((1 : F) * rho 22070) = ((1 : F) * rho 22081)

def relationRow1219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22082) * ((-1 : F) * rho 22080 + (1 : F) * rho 22081) = ((2 : F) * rho 22079)

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22083) * ((2 : F) + (1 : F) * rho 22080 + (-1 : F) * rho 22081) = ((1 : F) * rho 22080 + (1 : F) * rho 22081)

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22082 + (1 : F) * rho 22083) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 75⟩, ⟨(1 : F), 21116, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22084)

def relationRow1222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22083) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22085)

def relationRow1223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22086)

def relationRow1224 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22085) * ((1 : F) * rho 22086) = ((1 : F) * rho 22087)

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22088) * ((1 : F) + (1 : F) * rho 22087) = ((1 : F) * rho 22085 + (1 : F) * rho 22086)

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22089) * ((1 : F) + (-1 : F) * rho 22087) = ((1 : F) * rho 22084 + (-1 : F) * rho 22085 + (-1 : F) * rho 22086)

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 75⟩], residual := [((1 : F), 22088)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22090)

def relationRow1228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 75⟩], residual := [((1 : F), 22089)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22091)

def relationRow1229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22082) * ((1 : F) * rho 22083) = ((1 : F) * rho 22092)

def relationRow1230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22082) * ((1 : F) * rho 22082) = ((1 : F) * rho 22093)

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22083) * ((1 : F) * rho 22083) = ((1 : F) * rho 22094)

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22095) * ((-1 : F) * rho 22093 + (1 : F) * rho 22094) = ((2 : F) * rho 22092)

def relationRow1233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22096) * ((2 : F) + (1 : F) * rho 22093 + (-1 : F) * rho 22094) = ((1 : F) * rho 22093 + (1 : F) * rho 22094)

def relationRow1234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22095 + (1 : F) * rho 22096) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 76⟩, ⟨(1 : F), 21116, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22097)

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22096) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22098)

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22099)

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22098) * ((1 : F) * rho 22099) = ((1 : F) * rho 22100)

def relationRow1238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22101) * ((1 : F) + (1 : F) * rho 22100) = ((1 : F) * rho 22098 + (1 : F) * rho 22099)

def relationRow1239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22102) * ((1 : F) + (-1 : F) * rho 22100) = ((1 : F) * rho 22097 + (-1 : F) * rho 22098 + (-1 : F) * rho 22099)

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 76⟩], residual := [((1 : F), 22101)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22103)

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 76⟩], residual := [((1 : F), 22102)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22104)

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22095) * ((1 : F) * rho 22096) = ((1 : F) * rho 22105)

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22095) * ((1 : F) * rho 22095) = ((1 : F) * rho 22106)

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22096) * ((1 : F) * rho 22096) = ((1 : F) * rho 22107)

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22108) * ((-1 : F) * rho 22106 + (1 : F) * rho 22107) = ((2 : F) * rho 22105)

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22109) * ((2 : F) + (1 : F) * rho 22106 + (-1 : F) * rho 22107) = ((1 : F) * rho 22106 + (1 : F) * rho 22107)

def relationRow1247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22108 + (1 : F) * rho 22109) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 77⟩, ⟨(1 : F), 21116, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22110)

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22109) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22111)

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22112)

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22111) * ((1 : F) * rho 22112) = ((1 : F) * rho 22113)

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22114) * ((1 : F) + (1 : F) * rho 22113) = ((1 : F) * rho 22111 + (1 : F) * rho 22112)

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22115) * ((1 : F) + (-1 : F) * rho 22113) = ((1 : F) * rho 22110 + (-1 : F) * rho 22111 + (-1 : F) * rho 22112)

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 77⟩], residual := [((1 : F), 22114)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22116)

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 77⟩], residual := [((1 : F), 22115)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22117)

def relationRow1255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22108) * ((1 : F) * rho 22109) = ((1 : F) * rho 22118)

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22108) * ((1 : F) * rho 22108) = ((1 : F) * rho 22119)

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22109) * ((1 : F) * rho 22109) = ((1 : F) * rho 22120)

def relationRow1258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22121) * ((-1 : F) * rho 22119 + (1 : F) * rho 22120) = ((2 : F) * rho 22118)

def relationRow1259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22122) * ((2 : F) + (1 : F) * rho 22119 + (-1 : F) * rho 22120) = ((1 : F) * rho 22119 + (1 : F) * rho 22120)

def relationRow1260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22121 + (1 : F) * rho 22122) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 78⟩, ⟨(1 : F), 21116, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22123)

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22122) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22124)

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22121) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22125)

def relationRow1263 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22124) * ((1 : F) * rho 22125) = ((1 : F) * rho 22126)

def relationRow1264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22127) * ((1 : F) + (1 : F) * rho 22126) = ((1 : F) * rho 22124 + (1 : F) * rho 22125)

def relationRow1265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22128) * ((1 : F) + (-1 : F) * rho 22126) = ((1 : F) * rho 22123 + (-1 : F) * rho 22124 + (-1 : F) * rho 22125)

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 78⟩], residual := [((1 : F), 22127)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22129)

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20942) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 78⟩], residual := [((1 : F), 22128)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22130)

def relationRow1268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22121) * ((1 : F) * rho 22122) = ((1 : F) * rho 22131)

def relationRow1269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22121) * ((1 : F) * rho 22121) = ((1 : F) * rho 22132)

def relationRow1270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22122) * ((1 : F) * rho 22122) = ((1 : F) * rho 22133)

def relationRow1271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22134) * ((-1 : F) * rho 22132 + (1 : F) * rho 22133) = ((2 : F) * rho 22131)

def relationRow1272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22135) * ((2 : F) + (1 : F) * rho 22132 + (-1 : F) * rho 22133) = ((1 : F) * rho 22132 + (1 : F) * rho 22133)

def relationRow1273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22134 + (1 : F) * rho 22135) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 79⟩, ⟨(1 : F), 21116, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22136)

def relationRow1274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22135) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22137)

def relationRow1275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22134) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22138)

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22137) * ((1 : F) * rho 22138) = ((1 : F) * rho 22139)

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22140) * ((1 : F) + (1 : F) * rho 22139) = ((1 : F) * rho 22137 + (1 : F) * rho 22138)

def relationRow1278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22141) * ((1 : F) + (-1 : F) * rho 22139) = ((1 : F) * rho 22136 + (-1 : F) * rho 22137 + (-1 : F) * rho 22138)

def relationRow1279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 79⟩], residual := [((1 : F), 22140)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22142)

def relationRow1280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20943) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 79⟩], residual := [((1 : F), 22141)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22143)

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22134) * ((1 : F) * rho 22135) = ((1 : F) * rho 22144)

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22134) * ((1 : F) * rho 22134) = ((1 : F) * rho 22145)

def relationRow1283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22135) * ((1 : F) * rho 22135) = ((1 : F) * rho 22146)

def relationRow1284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22147) * ((-1 : F) * rho 22145 + (1 : F) * rho 22146) = ((2 : F) * rho 22144)

def relationRow1285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22148) * ((2 : F) + (1 : F) * rho 22145 + (-1 : F) * rho 22146) = ((1 : F) * rho 22145 + (1 : F) * rho 22146)

def relationRow1286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22147 + (1 : F) * rho 22148) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 80⟩, ⟨(1 : F), 21116, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22149)

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22148) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22150)

def relationRow1288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22147) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22151)

def relationRow1289 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22150) * ((1 : F) * rho 22151) = ((1 : F) * rho 22152)

def relationRow1290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22153) * ((1 : F) + (1 : F) * rho 22152) = ((1 : F) * rho 22150 + (1 : F) * rho 22151)

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22154) * ((1 : F) + (-1 : F) * rho 22152) = ((1 : F) * rho 22149 + (-1 : F) * rho 22150 + (-1 : F) * rho 22151)

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 80⟩], residual := [((1 : F), 22153)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22155)

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20944) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 80⟩], residual := [((1 : F), 22154)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22156)

def relationRow1294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22147) * ((1 : F) * rho 22148) = ((1 : F) * rho 22157)

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22147) * ((1 : F) * rho 22147) = ((1 : F) * rho 22158)

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22148) * ((1 : F) * rho 22148) = ((1 : F) * rho 22159)

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22160) * ((-1 : F) * rho 22158 + (1 : F) * rho 22159) = ((2 : F) * rho 22157)

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22161) * ((2 : F) + (1 : F) * rho 22158 + (-1 : F) * rho 22159) = ((1 : F) * rho 22158 + (1 : F) * rho 22159)

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22160 + (1 : F) * rho 22161) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 81⟩, ⟨(1 : F), 21116, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22162)

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22161) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22163)

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22160) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22164)

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22163) * ((1 : F) * rho 22164) = ((1 : F) * rho 22165)

def relationRow1303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22166) * ((1 : F) + (1 : F) * rho 22165) = ((1 : F) * rho 22163 + (1 : F) * rho 22164)

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22167) * ((1 : F) + (-1 : F) * rho 22165) = ((1 : F) * rho 22162 + (-1 : F) * rho 22163 + (-1 : F) * rho 22164)

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20945) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 81⟩], residual := [((1 : F), 22166)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22168)

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20945) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 81⟩], residual := [((1 : F), 22167)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22169)

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22160) * ((1 : F) * rho 22161) = ((1 : F) * rho 22170)

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22160) * ((1 : F) * rho 22160) = ((1 : F) * rho 22171)

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22161) * ((1 : F) * rho 22161) = ((1 : F) * rho 22172)

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22173) * ((-1 : F) * rho 22171 + (1 : F) * rho 22172) = ((2 : F) * rho 22170)

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22174) * ((2 : F) + (1 : F) * rho 22171 + (-1 : F) * rho 22172) = ((1 : F) * rho 22171 + (1 : F) * rho 22172)

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22173 + (1 : F) * rho 22174) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 82⟩, ⟨(1 : F), 21116, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22175)

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22174) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22176)

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22173) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22177)

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22176) * ((1 : F) * rho 22177) = ((1 : F) * rho 22178)

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22179) * ((1 : F) + (1 : F) * rho 22178) = ((1 : F) * rho 22176 + (1 : F) * rho 22177)

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22180) * ((1 : F) + (-1 : F) * rho 22178) = ((1 : F) * rho 22175 + (-1 : F) * rho 22176 + (-1 : F) * rho 22177)

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20946) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 82⟩], residual := [((1 : F), 22179)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22181)

def relationRow1319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20946) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 82⟩], residual := [((1 : F), 22180)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22182)

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22173) * ((1 : F) * rho 22174) = ((1 : F) * rho 22183)

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22173) * ((1 : F) * rho 22173) = ((1 : F) * rho 22184)

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22174) * ((1 : F) * rho 22174) = ((1 : F) * rho 22185)

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22186) * ((-1 : F) * rho 22184 + (1 : F) * rho 22185) = ((2 : F) * rho 22183)

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22187) * ((2 : F) + (1 : F) * rho 22184 + (-1 : F) * rho 22185) = ((1 : F) * rho 22184 + (1 : F) * rho 22185)

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22186 + (1 : F) * rho 22187) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 83⟩, ⟨(1 : F), 21116, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22188)

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22187) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22189)

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22186) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22190)

def relationRow1328 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22189) * ((1 : F) * rho 22190) = ((1 : F) * rho 22191)

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22192) * ((1 : F) + (1 : F) * rho 22191) = ((1 : F) * rho 22189 + (1 : F) * rho 22190)

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22193) * ((1 : F) + (-1 : F) * rho 22191) = ((1 : F) * rho 22188 + (-1 : F) * rho 22189 + (-1 : F) * rho 22190)

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 83⟩], residual := [((1 : F), 22192)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22194)

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20947) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 83⟩], residual := [((1 : F), 22193)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22195)

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22186) * ((1 : F) * rho 22187) = ((1 : F) * rho 22196)

def relationRow1334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22186) * ((1 : F) * rho 22186) = ((1 : F) * rho 22197)

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22187) * ((1 : F) * rho 22187) = ((1 : F) * rho 22198)

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22199) * ((-1 : F) * rho 22197 + (1 : F) * rho 22198) = ((2 : F) * rho 22196)

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22200) * ((2 : F) + (1 : F) * rho 22197 + (-1 : F) * rho 22198) = ((1 : F) * rho 22197 + (1 : F) * rho 22198)

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22199 + (1 : F) * rho 22200) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 84⟩, ⟨(1 : F), 21116, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22201)

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22200) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22202)

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22199) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22203)

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22202) * ((1 : F) * rho 22203) = ((1 : F) * rho 22204)

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22205) * ((1 : F) + (1 : F) * rho 22204) = ((1 : F) * rho 22202 + (1 : F) * rho 22203)

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22206) * ((1 : F) + (-1 : F) * rho 22204) = ((1 : F) * rho 22201 + (-1 : F) * rho 22202 + (-1 : F) * rho 22203)

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 84⟩], residual := [((1 : F), 22205)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22207)

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20948) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 84⟩], residual := [((1 : F), 22206)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22208)

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22199) * ((1 : F) * rho 22200) = ((1 : F) * rho 22209)

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22199) * ((1 : F) * rho 22199) = ((1 : F) * rho 22210)

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22200) * ((1 : F) * rho 22200) = ((1 : F) * rho 22211)

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22212) * ((-1 : F) * rho 22210 + (1 : F) * rho 22211) = ((2 : F) * rho 22209)

def relationRow1350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22213) * ((2 : F) + (1 : F) * rho 22210 + (-1 : F) * rho 22211) = ((1 : F) * rho 22210 + (1 : F) * rho 22211)

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22212 + (1 : F) * rho 22213) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 85⟩, ⟨(1 : F), 21116, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22214)

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22213) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22215)

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22212) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22216)

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22215) * ((1 : F) * rho 22216) = ((1 : F) * rho 22217)

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22218) * ((1 : F) + (1 : F) * rho 22217) = ((1 : F) * rho 22215 + (1 : F) * rho 22216)

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22219) * ((1 : F) + (-1 : F) * rho 22217) = ((1 : F) * rho 22214 + (-1 : F) * rho 22215 + (-1 : F) * rho 22216)

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20949) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 85⟩], residual := [((1 : F), 22218)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22220)

def relationRow1358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20949) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 85⟩], residual := [((1 : F), 22219)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22221)

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22212) * ((1 : F) * rho 22213) = ((1 : F) * rho 22222)

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22212) * ((1 : F) * rho 22212) = ((1 : F) * rho 22223)

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22213) * ((1 : F) * rho 22213) = ((1 : F) * rho 22224)

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22225) * ((-1 : F) * rho 22223 + (1 : F) * rho 22224) = ((2 : F) * rho 22222)

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22226) * ((2 : F) + (1 : F) * rho 22223 + (-1 : F) * rho 22224) = ((1 : F) * rho 22223 + (1 : F) * rho 22224)

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22225 + (1 : F) * rho 22226) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 86⟩, ⟨(1 : F), 21116, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22227)

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22226) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22228)

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22225) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22229)

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22228) * ((1 : F) * rho 22229) = ((1 : F) * rho 22230)

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22231) * ((1 : F) + (1 : F) * rho 22230) = ((1 : F) * rho 22228 + (1 : F) * rho 22229)

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22232) * ((1 : F) + (-1 : F) * rho 22230) = ((1 : F) * rho 22227 + (-1 : F) * rho 22228 + (-1 : F) * rho 22229)

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 86⟩], residual := [((1 : F), 22231)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22233)

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20950) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 86⟩], residual := [((1 : F), 22232)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22234)

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22225) * ((1 : F) * rho 22226) = ((1 : F) * rho 22235)

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22225) * ((1 : F) * rho 22225) = ((1 : F) * rho 22236)

def relationRow1374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22226) * ((1 : F) * rho 22226) = ((1 : F) * rho 22237)

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22238) * ((-1 : F) * rho 22236 + (1 : F) * rho 22237) = ((2 : F) * rho 22235)

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22239) * ((2 : F) + (1 : F) * rho 22236 + (-1 : F) * rho 22237) = ((1 : F) * rho 22236 + (1 : F) * rho 22237)

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22238 + (1 : F) * rho 22239) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 87⟩, ⟨(1 : F), 21116, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22240)

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22239) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22241)

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22238) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22242)

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22241) * ((1 : F) * rho 22242) = ((1 : F) * rho 22243)

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22244) * ((1 : F) + (1 : F) * rho 22243) = ((1 : F) * rho 22241 + (1 : F) * rho 22242)

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22245) * ((1 : F) + (-1 : F) * rho 22243) = ((1 : F) * rho 22240 + (-1 : F) * rho 22241 + (-1 : F) * rho 22242)

def relationRow1383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 87⟩], residual := [((1 : F), 22244)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22246)

def relationRow1384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20951) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 87⟩], residual := [((1 : F), 22245)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22247)

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22238) * ((1 : F) * rho 22239) = ((1 : F) * rho 22248)

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22238) * ((1 : F) * rho 22238) = ((1 : F) * rho 22249)

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22239) * ((1 : F) * rho 22239) = ((1 : F) * rho 22250)

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22251) * ((-1 : F) * rho 22249 + (1 : F) * rho 22250) = ((2 : F) * rho 22248)

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22252) * ((2 : F) + (1 : F) * rho 22249 + (-1 : F) * rho 22250) = ((1 : F) * rho 22249 + (1 : F) * rho 22250)

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22251 + (1 : F) * rho 22252) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 88⟩, ⟨(1 : F), 21116, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22253)

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22252) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22254)

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22251) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22255)

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22254) * ((1 : F) * rho 22255) = ((1 : F) * rho 22256)

def relationRow1394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22257) * ((1 : F) + (1 : F) * rho 22256) = ((1 : F) * rho 22254 + (1 : F) * rho 22255)

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22258) * ((1 : F) + (-1 : F) * rho 22256) = ((1 : F) * rho 22253 + (-1 : F) * rho 22254 + (-1 : F) * rho 22255)

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 88⟩], residual := [((1 : F), 22257)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22259)

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20952) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 88⟩], residual := [((1 : F), 22258)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22260)

def relationRow1398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22251) * ((1 : F) * rho 22252) = ((1 : F) * rho 22261)

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22251) * ((1 : F) * rho 22251) = ((1 : F) * rho 22262)

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22252) * ((1 : F) * rho 22252) = ((1 : F) * rho 22263)

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22264) * ((-1 : F) * rho 22262 + (1 : F) * rho 22263) = ((2 : F) * rho 22261)

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22265) * ((2 : F) + (1 : F) * rho 22262 + (-1 : F) * rho 22263) = ((1 : F) * rho 22262 + (1 : F) * rho 22263)

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22264 + (1 : F) * rho 22265) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 89⟩, ⟨(1 : F), 21116, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22266)

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22265) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22267)

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22264) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22268)

def relationRow1406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22267) * ((1 : F) * rho 22268) = ((1 : F) * rho 22269)

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22270) * ((1 : F) + (1 : F) * rho 22269) = ((1 : F) * rho 22267 + (1 : F) * rho 22268)

def relationRow1408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22271) * ((1 : F) + (-1 : F) * rho 22269) = ((1 : F) * rho 22266 + (-1 : F) * rho 22267 + (-1 : F) * rho 22268)

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 89⟩], residual := [((1 : F), 22270)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22272)

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 89⟩], residual := [((1 : F), 22271)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22273)

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22264) * ((1 : F) * rho 22265) = ((1 : F) * rho 22274)

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22264) * ((1 : F) * rho 22264) = ((1 : F) * rho 22275)

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22265) * ((1 : F) * rho 22265) = ((1 : F) * rho 22276)

def relationRow1414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22277) * ((-1 : F) * rho 22275 + (1 : F) * rho 22276) = ((2 : F) * rho 22274)

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22278) * ((2 : F) + (1 : F) * rho 22275 + (-1 : F) * rho 22276) = ((1 : F) * rho 22275 + (1 : F) * rho 22276)

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22277 + (1 : F) * rho 22278) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 90⟩, ⟨(1 : F), 21116, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22279)

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22278) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22280)

def relationRow1418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22277) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22281)

def relationRow1419 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22280) * ((1 : F) * rho 22281) = ((1 : F) * rho 22282)

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22283) * ((1 : F) + (1 : F) * rho 22282) = ((1 : F) * rho 22280 + (1 : F) * rho 22281)

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22284) * ((1 : F) + (-1 : F) * rho 22282) = ((1 : F) * rho 22279 + (-1 : F) * rho 22280 + (-1 : F) * rho 22281)

def relationRow1422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 90⟩], residual := [((1 : F), 22283)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22285)

def relationRow1423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 90⟩], residual := [((1 : F), 22284)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22286)

def relationRow1424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22277) * ((1 : F) * rho 22278) = ((1 : F) * rho 22287)

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22277) * ((1 : F) * rho 22277) = ((1 : F) * rho 22288)

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22278) * ((1 : F) * rho 22278) = ((1 : F) * rho 22289)

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22290) * ((-1 : F) * rho 22288 + (1 : F) * rho 22289) = ((2 : F) * rho 22287)

def relationRow1428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22291) * ((2 : F) + (1 : F) * rho 22288 + (-1 : F) * rho 22289) = ((1 : F) * rho 22288 + (1 : F) * rho 22289)

def relationRow1429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22290 + (1 : F) * rho 22291) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 91⟩, ⟨(1 : F), 21116, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22292)

def relationRow1430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22291) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22293)

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22290) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22294)

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22293) * ((1 : F) * rho 22294) = ((1 : F) * rho 22295)

def relationRow1433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22296) * ((1 : F) + (1 : F) * rho 22295) = ((1 : F) * rho 22293 + (1 : F) * rho 22294)

def relationRow1434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22297) * ((1 : F) + (-1 : F) * rho 22295) = ((1 : F) * rho 22292 + (-1 : F) * rho 22293 + (-1 : F) * rho 22294)

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20955) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 91⟩], residual := [((1 : F), 22296)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22298)

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20955) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 91⟩], residual := [((1 : F), 22297)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22299)

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22290) * ((1 : F) * rho 22291) = ((1 : F) * rho 22300)

def relationRow1438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22290) * ((1 : F) * rho 22290) = ((1 : F) * rho 22301)

def relationRow1439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22291) * ((1 : F) * rho 22291) = ((1 : F) * rho 22302)

def relationRow1440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22303) * ((-1 : F) * rho 22301 + (1 : F) * rho 22302) = ((2 : F) * rho 22300)

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22304) * ((2 : F) + (1 : F) * rho 22301 + (-1 : F) * rho 22302) = ((1 : F) * rho 22301 + (1 : F) * rho 22302)

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22303 + (1 : F) * rho 22304) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 92⟩, ⟨(1 : F), 21116, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22305)

def relationRow1443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22304) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22306)

def relationRow1444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22303) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22307)

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22306) * ((1 : F) * rho 22307) = ((1 : F) * rho 22308)

def relationRow1446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22309) * ((1 : F) + (1 : F) * rho 22308) = ((1 : F) * rho 22306 + (1 : F) * rho 22307)

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22310) * ((1 : F) + (-1 : F) * rho 22308) = ((1 : F) * rho 22305 + (-1 : F) * rho 22306 + (-1 : F) * rho 22307)

def relationRow1448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 92⟩], residual := [((1 : F), 22309)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22311)

def relationRow1449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20956) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 92⟩], residual := [((1 : F), 22310)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22312)

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22303) * ((1 : F) * rho 22304) = ((1 : F) * rho 22313)

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22303) * ((1 : F) * rho 22303) = ((1 : F) * rho 22314)

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22304) * ((1 : F) * rho 22304) = ((1 : F) * rho 22315)

def relationRow1453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22316) * ((-1 : F) * rho 22314 + (1 : F) * rho 22315) = ((2 : F) * rho 22313)

def relationRow1454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22317) * ((2 : F) + (1 : F) * rho 22314 + (-1 : F) * rho 22315) = ((1 : F) * rho 22314 + (1 : F) * rho 22315)

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22316 + (1 : F) * rho 22317) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 93⟩, ⟨(1 : F), 21116, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22318)

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22317) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22319)

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22316) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22320)

def relationRow1458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22319) * ((1 : F) * rho 22320) = ((1 : F) * rho 22321)

def relationRow1459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22322) * ((1 : F) + (1 : F) * rho 22321) = ((1 : F) * rho 22319 + (1 : F) * rho 22320)

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22323) * ((1 : F) + (-1 : F) * rho 22321) = ((1 : F) * rho 22318 + (-1 : F) * rho 22319 + (-1 : F) * rho 22320)

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 93⟩], residual := [((1 : F), 22322)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22324)

def relationRow1462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20957) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 93⟩], residual := [((1 : F), 22323)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22325)

def relationRow1463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22316) * ((1 : F) * rho 22317) = ((1 : F) * rho 22326)

def relationRow1464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22316) * ((1 : F) * rho 22316) = ((1 : F) * rho 22327)

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22317) * ((1 : F) * rho 22317) = ((1 : F) * rho 22328)

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22329) * ((-1 : F) * rho 22327 + (1 : F) * rho 22328) = ((2 : F) * rho 22326)

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22330) * ((2 : F) + (1 : F) * rho 22327 + (-1 : F) * rho 22328) = ((1 : F) * rho 22327 + (1 : F) * rho 22328)

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22329 + (1 : F) * rho 22330) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 94⟩, ⟨(1 : F), 21116, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22331)

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22330) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22332)

def relationRow1470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22329) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22333)

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22332) * ((1 : F) * rho 22333) = ((1 : F) * rho 22334)

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22335) * ((1 : F) + (1 : F) * rho 22334) = ((1 : F) * rho 22332 + (1 : F) * rho 22333)

def relationRow1473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22336) * ((1 : F) + (-1 : F) * rho 22334) = ((1 : F) * rho 22331 + (-1 : F) * rho 22332 + (-1 : F) * rho 22333)

def relationRow1474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20958) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 94⟩], residual := [((1 : F), 22335)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22337)

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20958) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 94⟩], residual := [((1 : F), 22336)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22338)

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22329) * ((1 : F) * rho 22330) = ((1 : F) * rho 22339)

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22329) * ((1 : F) * rho 22329) = ((1 : F) * rho 22340)

def relationRow1478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22330) * ((1 : F) * rho 22330) = ((1 : F) * rho 22341)

def relationRow1479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22342) * ((-1 : F) * rho 22340 + (1 : F) * rho 22341) = ((2 : F) * rho 22339)

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22343) * ((2 : F) + (1 : F) * rho 22340 + (-1 : F) * rho 22341) = ((1 : F) * rho 22340 + (1 : F) * rho 22341)

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22342 + (1 : F) * rho 22343) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 95⟩, ⟨(1 : F), 21116, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22344)

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22343) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22345)

def relationRow1483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22342) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22346)

def relationRow1484 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22345) * ((1 : F) * rho 22346) = ((1 : F) * rho 22347)

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22348) * ((1 : F) + (1 : F) * rho 22347) = ((1 : F) * rho 22345 + (1 : F) * rho 22346)

def relationRow1486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22349) * ((1 : F) + (-1 : F) * rho 22347) = ((1 : F) * rho 22344 + (-1 : F) * rho 22345 + (-1 : F) * rho 22346)

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20959) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 95⟩], residual := [((1 : F), 22348)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22350)

def relationRow1488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20959) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 95⟩], residual := [((1 : F), 22349)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22351)

def relationRow1489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22342) * ((1 : F) * rho 22343) = ((1 : F) * rho 22352)

def relationRow1490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22342) * ((1 : F) * rho 22342) = ((1 : F) * rho 22353)

def relationRow1491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22343) * ((1 : F) * rho 22343) = ((1 : F) * rho 22354)

def relationRow1492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22355) * ((-1 : F) * rho 22353 + (1 : F) * rho 22354) = ((2 : F) * rho 22352)

def relationRow1493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22356) * ((2 : F) + (1 : F) * rho 22353 + (-1 : F) * rho 22354) = ((1 : F) * rho 22353 + (1 : F) * rho 22354)

def relationRow1494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22355 + (1 : F) * rho 22356) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 96⟩, ⟨(1 : F), 21116, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22357)

def relationRow1495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22356) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22358)

def relationRow1496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22355) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22359)

def relationRow1497 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22358) * ((1 : F) * rho 22359) = ((1 : F) * rho 22360)

def relationRow1498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22361) * ((1 : F) + (1 : F) * rho 22360) = ((1 : F) * rho 22358 + (1 : F) * rho 22359)

def relationRow1499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22362) * ((1 : F) + (-1 : F) * rho 22360) = ((1 : F) * rho 22357 + (-1 : F) * rho 22358 + (-1 : F) * rho 22359)

def relationRow1500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 96⟩], residual := [((1 : F), 22361)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22363)

def relationRow1501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20960) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 96⟩], residual := [((1 : F), 22362)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22364)

def relationRow1502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22355) * ((1 : F) * rho 22356) = ((1 : F) * rho 22365)

def relationRow1503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22355) * ((1 : F) * rho 22355) = ((1 : F) * rho 22366)

def relationRow1504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22356) * ((1 : F) * rho 22356) = ((1 : F) * rho 22367)

def relationRow1505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22368) * ((-1 : F) * rho 22366 + (1 : F) * rho 22367) = ((2 : F) * rho 22365)

def relationRow1506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22369) * ((2 : F) + (1 : F) * rho 22366 + (-1 : F) * rho 22367) = ((1 : F) * rho 22366 + (1 : F) * rho 22367)

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22368 + (1 : F) * rho 22369) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 97⟩, ⟨(1 : F), 21116, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22370)

def relationRow1508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22369) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22371)

def relationRow1509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22368) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22372)

def relationRow1510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22371) * ((1 : F) * rho 22372) = ((1 : F) * rho 22373)

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22374) * ((1 : F) + (1 : F) * rho 22373) = ((1 : F) * rho 22371 + (1 : F) * rho 22372)

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22375) * ((1 : F) + (-1 : F) * rho 22373) = ((1 : F) * rho 22370 + (-1 : F) * rho 22371 + (-1 : F) * rho 22372)

def relationRow1513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 97⟩], residual := [((1 : F), 22374)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22376)

def relationRow1514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20961) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 97⟩], residual := [((1 : F), 22375)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22377)

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22368) * ((1 : F) * rho 22369) = ((1 : F) * rho 22378)

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22368) * ((1 : F) * rho 22368) = ((1 : F) * rho 22379)

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22369) * ((1 : F) * rho 22369) = ((1 : F) * rho 22380)

def relationRow1518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22381) * ((-1 : F) * rho 22379 + (1 : F) * rho 22380) = ((2 : F) * rho 22378)

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22382) * ((2 : F) + (1 : F) * rho 22379 + (-1 : F) * rho 22380) = ((1 : F) * rho 22379 + (1 : F) * rho 22380)

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22381 + (1 : F) * rho 22382) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 98⟩, ⟨(1 : F), 21116, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22383)

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22382) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22384)

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22381) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22385)

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22384) * ((1 : F) * rho 22385) = ((1 : F) * rho 22386)

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22387) * ((1 : F) + (1 : F) * rho 22386) = ((1 : F) * rho 22384 + (1 : F) * rho 22385)

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22388) * ((1 : F) + (-1 : F) * rho 22386) = ((1 : F) * rho 22383 + (-1 : F) * rho 22384 + (-1 : F) * rho 22385)

def relationRow1526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20962) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 98⟩], residual := [((1 : F), 22387)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22389)

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20962) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 98⟩], residual := [((1 : F), 22388)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22390)

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22381) * ((1 : F) * rho 22382) = ((1 : F) * rho 22391)

def relationRow1529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22381) * ((1 : F) * rho 22381) = ((1 : F) * rho 22392)

def relationRow1530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22382) * ((1 : F) * rho 22382) = ((1 : F) * rho 22393)

def relationRow1531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22394) * ((-1 : F) * rho 22392 + (1 : F) * rho 22393) = ((2 : F) * rho 22391)

def relationRow1532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22395) * ((2 : F) + (1 : F) * rho 22392 + (-1 : F) * rho 22393) = ((1 : F) * rho 22392 + (1 : F) * rho 22393)

def relationRow1533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22394 + (1 : F) * rho 22395) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 99⟩, ⟨(1 : F), 21116, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22396)

def relationRow1534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22395) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22397)

def relationRow1535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22398)

def relationRow1536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22397) * ((1 : F) * rho 22398) = ((1 : F) * rho 22399)

def relationRow1537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22400) * ((1 : F) + (1 : F) * rho 22399) = ((1 : F) * rho 22397 + (1 : F) * rho 22398)

def relationRow1538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22401) * ((1 : F) + (-1 : F) * rho 22399) = ((1 : F) * rho 22396 + (-1 : F) * rho 22397 + (-1 : F) * rho 22398)

def relationRow1539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 99⟩], residual := [((1 : F), 22400)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22402)

def relationRow1540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20963) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 99⟩], residual := [((1 : F), 22401)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22403)

def relationRow1541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22394) * ((1 : F) * rho 22395) = ((1 : F) * rho 22404)

def relationRow1542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22394) * ((1 : F) * rho 22394) = ((1 : F) * rho 22405)

def relationRow1543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22395) * ((1 : F) * rho 22395) = ((1 : F) * rho 22406)

def relationRow1544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22407) * ((-1 : F) * rho 22405 + (1 : F) * rho 22406) = ((2 : F) * rho 22404)

def relationRow1545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22408) * ((2 : F) + (1 : F) * rho 22405 + (-1 : F) * rho 22406) = ((1 : F) * rho 22405 + (1 : F) * rho 22406)

def relationRow1546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22407 + (1 : F) * rho 22408) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 100⟩, ⟨(1 : F), 21116, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22409)

def relationRow1547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22408) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22410)

def relationRow1548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22411)

def relationRow1549 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22410) * ((1 : F) * rho 22411) = ((1 : F) * rho 22412)

def relationRow1550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22413) * ((1 : F) + (1 : F) * rho 22412) = ((1 : F) * rho 22410 + (1 : F) * rho 22411)

def relationRow1551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22414) * ((1 : F) + (-1 : F) * rho 22412) = ((1 : F) * rho 22409 + (-1 : F) * rho 22410 + (-1 : F) * rho 22411)

def relationRow1552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 100⟩], residual := [((1 : F), 22413)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22415)

def relationRow1553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20964) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 100⟩], residual := [((1 : F), 22414)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22416)

def relationRow1554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22407) * ((1 : F) * rho 22408) = ((1 : F) * rho 22417)

def relationRow1555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22407) * ((1 : F) * rho 22407) = ((1 : F) * rho 22418)

def relationRow1556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22408) * ((1 : F) * rho 22408) = ((1 : F) * rho 22419)

def relationRow1557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22420) * ((-1 : F) * rho 22418 + (1 : F) * rho 22419) = ((2 : F) * rho 22417)

def relationRow1558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22421) * ((2 : F) + (1 : F) * rho 22418 + (-1 : F) * rho 22419) = ((1 : F) * rho 22418 + (1 : F) * rho 22419)

def relationRow1559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22420 + (1 : F) * rho 22421) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 101⟩, ⟨(1 : F), 21116, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22422)

def relationRow1560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22421) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22423)

def relationRow1561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22420) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22424)

def relationRow1562 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22423) * ((1 : F) * rho 22424) = ((1 : F) * rho 22425)

def relationRow1563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22426) * ((1 : F) + (1 : F) * rho 22425) = ((1 : F) * rho 22423 + (1 : F) * rho 22424)

def relationRow1564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22427) * ((1 : F) + (-1 : F) * rho 22425) = ((1 : F) * rho 22422 + (-1 : F) * rho 22423 + (-1 : F) * rho 22424)

def relationRow1565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 101⟩], residual := [((1 : F), 22426)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22428)

def relationRow1566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20965) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 101⟩], residual := [((1 : F), 22427)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22429)

def relationRow1567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22420) * ((1 : F) * rho 22421) = ((1 : F) * rho 22430)

def relationRow1568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22420) * ((1 : F) * rho 22420) = ((1 : F) * rho 22431)

def relationRow1569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22421) * ((1 : F) * rho 22421) = ((1 : F) * rho 22432)

def relationRow1570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22433) * ((-1 : F) * rho 22431 + (1 : F) * rho 22432) = ((2 : F) * rho 22430)

def relationRow1571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22434) * ((2 : F) + (1 : F) * rho 22431 + (-1 : F) * rho 22432) = ((1 : F) * rho 22431 + (1 : F) * rho 22432)

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22433 + (1 : F) * rho 22434) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 102⟩, ⟨(1 : F), 21116, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22435)

def relationRow1573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22434) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22436)

def relationRow1574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22433) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22437)

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22436) * ((1 : F) * rho 22437) = ((1 : F) * rho 22438)

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22439) * ((1 : F) + (1 : F) * rho 22438) = ((1 : F) * rho 22436 + (1 : F) * rho 22437)

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22440) * ((1 : F) + (-1 : F) * rho 22438) = ((1 : F) * rho 22435 + (-1 : F) * rho 22436 + (-1 : F) * rho 22437)

def relationRow1578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 102⟩], residual := [((1 : F), 22439)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22441)

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 102⟩], residual := [((1 : F), 22440)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22442)

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22433) * ((1 : F) * rho 22434) = ((1 : F) * rho 22443)

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22433) * ((1 : F) * rho 22433) = ((1 : F) * rho 22444)

def relationRow1582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22434) * ((1 : F) * rho 22434) = ((1 : F) * rho 22445)

def relationRow1583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22446) * ((-1 : F) * rho 22444 + (1 : F) * rho 22445) = ((2 : F) * rho 22443)

def relationRow1584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22447) * ((2 : F) + (1 : F) * rho 22444 + (-1 : F) * rho 22445) = ((1 : F) * rho 22444 + (1 : F) * rho 22445)

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22446 + (1 : F) * rho 22447) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 103⟩, ⟨(1 : F), 21116, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22448)

def relationRow1586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22447) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22449)

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22446) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22450)

def relationRow1588 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22449) * ((1 : F) * rho 22450) = ((1 : F) * rho 22451)

def relationRow1589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22452) * ((1 : F) + (1 : F) * rho 22451) = ((1 : F) * rho 22449 + (1 : F) * rho 22450)

def relationRow1590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22453) * ((1 : F) + (-1 : F) * rho 22451) = ((1 : F) * rho 22448 + (-1 : F) * rho 22449 + (-1 : F) * rho 22450)

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 103⟩], residual := [((1 : F), 22452)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22454)

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 103⟩], residual := [((1 : F), 22453)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22455)

def relationRow1593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22446) * ((1 : F) * rho 22447) = ((1 : F) * rho 22456)

def relationRow1594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22446) * ((1 : F) * rho 22446) = ((1 : F) * rho 22457)

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22447) * ((1 : F) * rho 22447) = ((1 : F) * rho 22458)

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22459) * ((-1 : F) * rho 22457 + (1 : F) * rho 22458) = ((2 : F) * rho 22456)

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22460) * ((2 : F) + (1 : F) * rho 22457 + (-1 : F) * rho 22458) = ((1 : F) * rho 22457 + (1 : F) * rho 22458)

def relationRow1598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22459 + (1 : F) * rho 22460) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 104⟩, ⟨(1 : F), 21116, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22461)

def relationRow1599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22460) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22462)

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22459) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22463)

def relationRow1601 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22462) * ((1 : F) * rho 22463) = ((1 : F) * rho 22464)

def relationRow1602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22465) * ((1 : F) + (1 : F) * rho 22464) = ((1 : F) * rho 22462 + (1 : F) * rho 22463)

def relationRow1603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22466) * ((1 : F) + (-1 : F) * rho 22464) = ((1 : F) * rho 22461 + (-1 : F) * rho 22462 + (-1 : F) * rho 22463)

def relationRow1604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 104⟩], residual := [((1 : F), 22465)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22467)

def relationRow1605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 104⟩], residual := [((1 : F), 22466)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22468)

def relationRow1606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22459) * ((1 : F) * rho 22460) = ((1 : F) * rho 22469)

def relationRow1607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22459) * ((1 : F) * rho 22459) = ((1 : F) * rho 22470)

def relationRow1608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22460) * ((1 : F) * rho 22460) = ((1 : F) * rho 22471)

def relationRow1609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22472) * ((-1 : F) * rho 22470 + (1 : F) * rho 22471) = ((2 : F) * rho 22469)

def relationRow1610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22473) * ((2 : F) + (1 : F) * rho 22470 + (-1 : F) * rho 22471) = ((1 : F) * rho 22470 + (1 : F) * rho 22471)

def relationRow1611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22472 + (1 : F) * rho 22473) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 105⟩, ⟨(1 : F), 21116, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22474)

def relationRow1612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22473) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22475)

def relationRow1613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22472) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22476)

def relationRow1614 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22475) * ((1 : F) * rho 22476) = ((1 : F) * rho 22477)

def relationRow1615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22478) * ((1 : F) + (1 : F) * rho 22477) = ((1 : F) * rho 22475 + (1 : F) * rho 22476)

def relationRow1616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22479) * ((1 : F) + (-1 : F) * rho 22477) = ((1 : F) * rho 22474 + (-1 : F) * rho 22475 + (-1 : F) * rho 22476)

def relationRow1617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 105⟩], residual := [((1 : F), 22478)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22480)

def relationRow1618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20969) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 105⟩], residual := [((1 : F), 22479)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22481)

def relationRow1619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22472) * ((1 : F) * rho 22473) = ((1 : F) * rho 22482)

def relationRow1620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22472) * ((1 : F) * rho 22472) = ((1 : F) * rho 22483)

def relationRow1621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22473) * ((1 : F) * rho 22473) = ((1 : F) * rho 22484)

def relationRow1622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22485) * ((-1 : F) * rho 22483 + (1 : F) * rho 22484) = ((2 : F) * rho 22482)

def relationRow1623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22486) * ((2 : F) + (1 : F) * rho 22483 + (-1 : F) * rho 22484) = ((1 : F) * rho 22483 + (1 : F) * rho 22484)

def relationRow1624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22485 + (1 : F) * rho 22486) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 106⟩, ⟨(1 : F), 21116, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22487)

def relationRow1625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22486) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22488)

def relationRow1626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22485) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22489)

def relationRow1627 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22488) * ((1 : F) * rho 22489) = ((1 : F) * rho 22490)

def relationRow1628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22491) * ((1 : F) + (1 : F) * rho 22490) = ((1 : F) * rho 22488 + (1 : F) * rho 22489)

def relationRow1629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22492) * ((1 : F) + (-1 : F) * rho 22490) = ((1 : F) * rho 22487 + (-1 : F) * rho 22488 + (-1 : F) * rho 22489)

def relationRow1630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 106⟩], residual := [((1 : F), 22491)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22493)

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20970) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 106⟩], residual := [((1 : F), 22492)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22494)

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22485) * ((1 : F) * rho 22486) = ((1 : F) * rho 22495)

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22485) * ((1 : F) * rho 22485) = ((1 : F) * rho 22496)

def relationRow1634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22486) * ((1 : F) * rho 22486) = ((1 : F) * rho 22497)

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22498) * ((-1 : F) * rho 22496 + (1 : F) * rho 22497) = ((2 : F) * rho 22495)

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22499) * ((2 : F) + (1 : F) * rho 22496 + (-1 : F) * rho 22497) = ((1 : F) * rho 22496 + (1 : F) * rho 22497)

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22498 + (1 : F) * rho 22499) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 107⟩, ⟨(1 : F), 21116, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22500)

def relationRow1638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22499) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22501)

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22498) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22502)

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22501) * ((1 : F) * rho 22502) = ((1 : F) * rho 22503)

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22504) * ((1 : F) + (1 : F) * rho 22503) = ((1 : F) * rho 22501 + (1 : F) * rho 22502)

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22505) * ((1 : F) + (-1 : F) * rho 22503) = ((1 : F) * rho 22500 + (-1 : F) * rho 22501 + (-1 : F) * rho 22502)

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 107⟩], residual := [((1 : F), 22504)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22506)

def relationRow1644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20971) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 107⟩], residual := [((1 : F), 22505)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22507)

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22498) * ((1 : F) * rho 22499) = ((1 : F) * rho 22508)

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22498) * ((1 : F) * rho 22498) = ((1 : F) * rho 22509)

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22499) * ((1 : F) * rho 22499) = ((1 : F) * rho 22510)

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22511) * ((-1 : F) * rho 22509 + (1 : F) * rho 22510) = ((2 : F) * rho 22508)

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22512) * ((2 : F) + (1 : F) * rho 22509 + (-1 : F) * rho 22510) = ((1 : F) * rho 22509 + (1 : F) * rho 22510)

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22511 + (1 : F) * rho 22512) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 108⟩, ⟨(1 : F), 21116, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22513)

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22512) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22514)

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22511) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22515)

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22514) * ((1 : F) * rho 22515) = ((1 : F) * rho 22516)

def relationRow1654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22517) * ((1 : F) + (1 : F) * rho 22516) = ((1 : F) * rho 22514 + (1 : F) * rho 22515)

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22518) * ((1 : F) + (-1 : F) * rho 22516) = ((1 : F) * rho 22513 + (-1 : F) * rho 22514 + (-1 : F) * rho 22515)

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 108⟩], residual := [((1 : F), 22517)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22519)

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20972) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 108⟩], residual := [((1 : F), 22518)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22520)

def relationRow1658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22511) * ((1 : F) * rho 22512) = ((1 : F) * rho 22521)

def relationRow1659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22511) * ((1 : F) * rho 22511) = ((1 : F) * rho 22522)

def relationRow1660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22512) * ((1 : F) * rho 22512) = ((1 : F) * rho 22523)

def relationRow1661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22524) * ((-1 : F) * rho 22522 + (1 : F) * rho 22523) = ((2 : F) * rho 22521)

def relationRow1662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22525) * ((2 : F) + (1 : F) * rho 22522 + (-1 : F) * rho 22523) = ((1 : F) * rho 22522 + (1 : F) * rho 22523)

def relationRow1663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22524 + (1 : F) * rho 22525) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 109⟩, ⟨(1 : F), 21116, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22526)

def relationRow1664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22525) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22527)

def relationRow1665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22524) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22528)

def relationRow1666 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22527) * ((1 : F) * rho 22528) = ((1 : F) * rho 22529)

def relationRow1667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22530) * ((1 : F) + (1 : F) * rho 22529) = ((1 : F) * rho 22527 + (1 : F) * rho 22528)

def relationRow1668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22531) * ((1 : F) + (-1 : F) * rho 22529) = ((1 : F) * rho 22526 + (-1 : F) * rho 22527 + (-1 : F) * rho 22528)

def relationRow1669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 109⟩], residual := [((1 : F), 22530)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22532)

def relationRow1670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20973) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 109⟩], residual := [((1 : F), 22531)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22533)

def relationRow1671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22524) * ((1 : F) * rho 22525) = ((1 : F) * rho 22534)

def relationRow1672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22524) * ((1 : F) * rho 22524) = ((1 : F) * rho 22535)

def relationRow1673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22525) * ((1 : F) * rho 22525) = ((1 : F) * rho 22536)

def relationRow1674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22537) * ((-1 : F) * rho 22535 + (1 : F) * rho 22536) = ((2 : F) * rho 22534)

def relationRow1675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22538) * ((2 : F) + (1 : F) * rho 22535 + (-1 : F) * rho 22536) = ((1 : F) * rho 22535 + (1 : F) * rho 22536)

def relationRow1676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22537 + (1 : F) * rho 22538) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 110⟩, ⟨(1 : F), 21116, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22539)

def relationRow1677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22538) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22540)

def relationRow1678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22537) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22541)

def relationRow1679 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22540) * ((1 : F) * rho 22541) = ((1 : F) * rho 22542)

def relationRow1680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22543) * ((1 : F) + (1 : F) * rho 22542) = ((1 : F) * rho 22540 + (1 : F) * rho 22541)

def relationRow1681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22544) * ((1 : F) + (-1 : F) * rho 22542) = ((1 : F) * rho 22539 + (-1 : F) * rho 22540 + (-1 : F) * rho 22541)

def relationRow1682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 110⟩], residual := [((1 : F), 22543)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22545)

def relationRow1683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20974) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 110⟩], residual := [((1 : F), 22544)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22546)

def relationRow1684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22537) * ((1 : F) * rho 22538) = ((1 : F) * rho 22547)

def relationRow1685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22537) * ((1 : F) * rho 22537) = ((1 : F) * rho 22548)

def relationRow1686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22538) * ((1 : F) * rho 22538) = ((1 : F) * rho 22549)

def relationRow1687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22550) * ((-1 : F) * rho 22548 + (1 : F) * rho 22549) = ((2 : F) * rho 22547)

def relationRow1688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22551) * ((2 : F) + (1 : F) * rho 22548 + (-1 : F) * rho 22549) = ((1 : F) * rho 22548 + (1 : F) * rho 22549)

def relationRow1689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22550 + (1 : F) * rho 22551) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 111⟩, ⟨(1 : F), 21116, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22552)

def relationRow1690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22551) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22553)

def relationRow1691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22550) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22554)

def relationRow1692 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22553) * ((1 : F) * rho 22554) = ((1 : F) * rho 22555)

def relationRow1693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22556) * ((1 : F) + (1 : F) * rho 22555) = ((1 : F) * rho 22553 + (1 : F) * rho 22554)

def relationRow1694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22557) * ((1 : F) + (-1 : F) * rho 22555) = ((1 : F) * rho 22552 + (-1 : F) * rho 22553 + (-1 : F) * rho 22554)

def relationRow1695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20975) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 111⟩], residual := [((1 : F), 22556)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22558)

def relationRow1696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20975) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 111⟩], residual := [((1 : F), 22557)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22559)

def relationRow1697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22550) * ((1 : F) * rho 22551) = ((1 : F) * rho 22560)

def relationRow1698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22550) * ((1 : F) * rho 22550) = ((1 : F) * rho 22561)

def relationRow1699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22551) * ((1 : F) * rho 22551) = ((1 : F) * rho 22562)

def relationRow1700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22563) * ((-1 : F) * rho 22561 + (1 : F) * rho 22562) = ((2 : F) * rho 22560)

def relationRow1701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22564) * ((2 : F) + (1 : F) * rho 22561 + (-1 : F) * rho 22562) = ((1 : F) * rho 22561 + (1 : F) * rho 22562)

def relationRow1702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22563 + (1 : F) * rho 22564) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 112⟩, ⟨(1 : F), 21116, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22565)

def relationRow1703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22564) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22566)

def relationRow1704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22563) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22567)

def relationRow1705 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22566) * ((1 : F) * rho 22567) = ((1 : F) * rho 22568)

def relationRow1706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22569) * ((1 : F) + (1 : F) * rho 22568) = ((1 : F) * rho 22566 + (1 : F) * rho 22567)

def relationRow1707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22570) * ((1 : F) + (-1 : F) * rho 22568) = ((1 : F) * rho 22565 + (-1 : F) * rho 22566 + (-1 : F) * rho 22567)

def relationRow1708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20976) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 112⟩], residual := [((1 : F), 22569)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22571)

def relationRow1709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20976) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 112⟩], residual := [((1 : F), 22570)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22572)

def relationRow1710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22563) * ((1 : F) * rho 22564) = ((1 : F) * rho 22573)

def relationRow1711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22563) * ((1 : F) * rho 22563) = ((1 : F) * rho 22574)

def relationRow1712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22564) * ((1 : F) * rho 22564) = ((1 : F) * rho 22575)

def relationRow1713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22576) * ((-1 : F) * rho 22574 + (1 : F) * rho 22575) = ((2 : F) * rho 22573)

def relationRow1714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22577) * ((2 : F) + (1 : F) * rho 22574 + (-1 : F) * rho 22575) = ((1 : F) * rho 22574 + (1 : F) * rho 22575)

def relationRow1715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22576 + (1 : F) * rho 22577) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 113⟩, ⟨(1 : F), 21116, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22578)

def relationRow1716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22577) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22579)

def relationRow1717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22576) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22580)

def relationRow1718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22579) * ((1 : F) * rho 22580) = ((1 : F) * rho 22581)

def relationRow1719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22582) * ((1 : F) + (1 : F) * rho 22581) = ((1 : F) * rho 22579 + (1 : F) * rho 22580)

def relationRow1720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22583) * ((1 : F) + (-1 : F) * rho 22581) = ((1 : F) * rho 22578 + (-1 : F) * rho 22579 + (-1 : F) * rho 22580)

def relationRow1721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 113⟩], residual := [((1 : F), 22582)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22584)

def relationRow1722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20977) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 113⟩], residual := [((1 : F), 22583)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22585)

def relationRow1723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22576) * ((1 : F) * rho 22577) = ((1 : F) * rho 22586)

def relationRow1724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22576) * ((1 : F) * rho 22576) = ((1 : F) * rho 22587)

def relationRow1725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22577) * ((1 : F) * rho 22577) = ((1 : F) * rho 22588)

def relationRow1726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22589) * ((-1 : F) * rho 22587 + (1 : F) * rho 22588) = ((2 : F) * rho 22586)

def relationRow1727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22590) * ((2 : F) + (1 : F) * rho 22587 + (-1 : F) * rho 22588) = ((1 : F) * rho 22587 + (1 : F) * rho 22588)

def relationRow1728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22589 + (1 : F) * rho 22590) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 114⟩, ⟨(1 : F), 21116, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22591)

def relationRow1729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22590) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22592)

def relationRow1730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22589) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22593)

def relationRow1731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22592) * ((1 : F) * rho 22593) = ((1 : F) * rho 22594)

def relationRow1732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22595) * ((1 : F) + (1 : F) * rho 22594) = ((1 : F) * rho 22592 + (1 : F) * rho 22593)

def relationRow1733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22596) * ((1 : F) + (-1 : F) * rho 22594) = ((1 : F) * rho 22591 + (-1 : F) * rho 22592 + (-1 : F) * rho 22593)

def relationRow1734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 114⟩], residual := [((1 : F), 22595)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22597)

def relationRow1735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20978) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 114⟩], residual := [((1 : F), 22596)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22598)

def relationRow1736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22589) * ((1 : F) * rho 22590) = ((1 : F) * rho 22599)

def relationRow1737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22589) * ((1 : F) * rho 22589) = ((1 : F) * rho 22600)

def relationRow1738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22590) * ((1 : F) * rho 22590) = ((1 : F) * rho 22601)

def relationRow1739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22602) * ((-1 : F) * rho 22600 + (1 : F) * rho 22601) = ((2 : F) * rho 22599)

def relationRow1740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22603) * ((2 : F) + (1 : F) * rho 22600 + (-1 : F) * rho 22601) = ((1 : F) * rho 22600 + (1 : F) * rho 22601)

def relationRow1741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22602 + (1 : F) * rho 22603) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 115⟩, ⟨(1 : F), 21116, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22604)

def relationRow1742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22603) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22605)

def relationRow1743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22602) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22606)

def relationRow1744 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22605) * ((1 : F) * rho 22606) = ((1 : F) * rho 22607)

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22608) * ((1 : F) + (1 : F) * rho 22607) = ((1 : F) * rho 22605 + (1 : F) * rho 22606)

def relationRow1746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22609) * ((1 : F) + (-1 : F) * rho 22607) = ((1 : F) * rho 22604 + (-1 : F) * rho 22605 + (-1 : F) * rho 22606)

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 115⟩], residual := [((1 : F), 22608)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22610)

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 115⟩], residual := [((1 : F), 22609)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22611)

def relationRow1749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22602) * ((1 : F) * rho 22603) = ((1 : F) * rho 22612)

def relationRow1750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22602) * ((1 : F) * rho 22602) = ((1 : F) * rho 22613)

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22603) * ((1 : F) * rho 22603) = ((1 : F) * rho 22614)

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22615) * ((-1 : F) * rho 22613 + (1 : F) * rho 22614) = ((2 : F) * rho 22612)

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22616) * ((2 : F) + (1 : F) * rho 22613 + (-1 : F) * rho 22614) = ((1 : F) * rho 22613 + (1 : F) * rho 22614)

def relationRow1754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22615 + (1 : F) * rho 22616) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 116⟩, ⟨(1 : F), 21116, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22617)

def relationRow1755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22616) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22618)

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22615) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22619)

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22618) * ((1 : F) * rho 22619) = ((1 : F) * rho 22620)

def relationRow1758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22621) * ((1 : F) + (1 : F) * rho 22620) = ((1 : F) * rho 22618 + (1 : F) * rho 22619)

def relationRow1759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22622) * ((1 : F) + (-1 : F) * rho 22620) = ((1 : F) * rho 22617 + (-1 : F) * rho 22618 + (-1 : F) * rho 22619)

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 116⟩], residual := [((1 : F), 22621)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22623)

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 116⟩], residual := [((1 : F), 22622)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22624)

def relationRow1762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22615) * ((1 : F) * rho 22616) = ((1 : F) * rho 22625)

def relationRow1763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22615) * ((1 : F) * rho 22615) = ((1 : F) * rho 22626)

def relationRow1764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22616) * ((1 : F) * rho 22616) = ((1 : F) * rho 22627)

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22628) * ((-1 : F) * rho 22626 + (1 : F) * rho 22627) = ((2 : F) * rho 22625)

def relationRow1766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22629) * ((2 : F) + (1 : F) * rho 22626 + (-1 : F) * rho 22627) = ((1 : F) * rho 22626 + (1 : F) * rho 22627)

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22628 + (1 : F) * rho 22629) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 117⟩, ⟨(1 : F), 21116, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22630)

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22629) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22631)

def relationRow1769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22628) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22632)

def relationRow1770 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22631) * ((1 : F) * rho 22632) = ((1 : F) * rho 22633)

def relationRow1771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22634) * ((1 : F) + (1 : F) * rho 22633) = ((1 : F) * rho 22631 + (1 : F) * rho 22632)

def relationRow1772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22635) * ((1 : F) + (-1 : F) * rho 22633) = ((1 : F) * rho 22630 + (-1 : F) * rho 22631 + (-1 : F) * rho 22632)

def relationRow1773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 117⟩], residual := [((1 : F), 22634)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22636)

def relationRow1774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 117⟩], residual := [((1 : F), 22635)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22637)

def relationRow1775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22628) * ((1 : F) * rho 22629) = ((1 : F) * rho 22638)

def relationRow1776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22628) * ((1 : F) * rho 22628) = ((1 : F) * rho 22639)

def relationRow1777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22629) * ((1 : F) * rho 22629) = ((1 : F) * rho 22640)

def relationRow1778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22641) * ((-1 : F) * rho 22639 + (1 : F) * rho 22640) = ((2 : F) * rho 22638)

def relationRow1779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22642) * ((2 : F) + (1 : F) * rho 22639 + (-1 : F) * rho 22640) = ((1 : F) * rho 22639 + (1 : F) * rho 22640)

def relationRow1780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22641 + (1 : F) * rho 22642) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 118⟩, ⟨(1 : F), 21116, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22643)

def relationRow1781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22642) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22644)

def relationRow1782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22641) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22645)

def relationRow1783 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22644) * ((1 : F) * rho 22645) = ((1 : F) * rho 22646)

def relationRow1784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22647) * ((1 : F) + (1 : F) * rho 22646) = ((1 : F) * rho 22644 + (1 : F) * rho 22645)

def relationRow1785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22648) * ((1 : F) + (-1 : F) * rho 22646) = ((1 : F) * rho 22643 + (-1 : F) * rho 22644 + (-1 : F) * rho 22645)

def relationRow1786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 118⟩], residual := [((1 : F), 22647)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22649)

def relationRow1787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 118⟩], residual := [((1 : F), 22648)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22650)

def relationRow1788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22641) * ((1 : F) * rho 22642) = ((1 : F) * rho 22651)

def relationRow1789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22641) * ((1 : F) * rho 22641) = ((1 : F) * rho 22652)

def relationRow1790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22642) * ((1 : F) * rho 22642) = ((1 : F) * rho 22653)

def relationRow1791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22654) * ((-1 : F) * rho 22652 + (1 : F) * rho 22653) = ((2 : F) * rho 22651)

def relationRow1792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22655) * ((2 : F) + (1 : F) * rho 22652 + (-1 : F) * rho 22653) = ((1 : F) * rho 22652 + (1 : F) * rho 22653)

def relationRow1793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22654 + (1 : F) * rho 22655) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 119⟩, ⟨(1 : F), 21116, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22656)

def relationRow1794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22655) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22657)

def relationRow1795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22654) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22658)

def relationRow1796 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22657) * ((1 : F) * rho 22658) = ((1 : F) * rho 22659)

def relationRow1797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22660) * ((1 : F) + (1 : F) * rho 22659) = ((1 : F) * rho 22657 + (1 : F) * rho 22658)

def relationRow1798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22661) * ((1 : F) + (-1 : F) * rho 22659) = ((1 : F) * rho 22656 + (-1 : F) * rho 22657 + (-1 : F) * rho 22658)

def relationRow1799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 119⟩], residual := [((1 : F), 22660)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22662)

def relationRow1800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20983) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 119⟩], residual := [((1 : F), 22661)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22663)

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22654) * ((1 : F) * rho 22655) = ((1 : F) * rho 22664)

def relationRow1802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22654) * ((1 : F) * rho 22654) = ((1 : F) * rho 22665)

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22655) * ((1 : F) * rho 22655) = ((1 : F) * rho 22666)

def relationRow1804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22667) * ((-1 : F) * rho 22665 + (1 : F) * rho 22666) = ((2 : F) * rho 22664)

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22668) * ((2 : F) + (1 : F) * rho 22665 + (-1 : F) * rho 22666) = ((1 : F) * rho 22665 + (1 : F) * rho 22666)

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22667 + (1 : F) * rho 22668) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 120⟩, ⟨(1 : F), 21116, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22669)

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22668) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22670)

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22667) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22671)

def relationRow1809 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22670) * ((1 : F) * rho 22671) = ((1 : F) * rho 22672)

def relationRow1810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22673) * ((1 : F) + (1 : F) * rho 22672) = ((1 : F) * rho 22670 + (1 : F) * rho 22671)

def relationRow1811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22674) * ((1 : F) + (-1 : F) * rho 22672) = ((1 : F) * rho 22669 + (-1 : F) * rho 22670 + (-1 : F) * rho 22671)

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20984) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 120⟩], residual := [((1 : F), 22673)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22675)

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20984) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 120⟩], residual := [((1 : F), 22674)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22676)

def relationRow1814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22667) * ((1 : F) * rho 22668) = ((1 : F) * rho 22677)

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22667) * ((1 : F) * rho 22667) = ((1 : F) * rho 22678)

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22668) * ((1 : F) * rho 22668) = ((1 : F) * rho 22679)

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22680) * ((-1 : F) * rho 22678 + (1 : F) * rho 22679) = ((2 : F) * rho 22677)

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22681) * ((2 : F) + (1 : F) * rho 22678 + (-1 : F) * rho 22679) = ((1 : F) * rho 22678 + (1 : F) * rho 22679)

def relationRow1819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22680 + (1 : F) * rho 22681) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 121⟩, ⟨(1 : F), 21116, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22682)

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22681) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22683)

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22680) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22684)

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22683) * ((1 : F) * rho 22684) = ((1 : F) * rho 22685)

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22686) * ((1 : F) + (1 : F) * rho 22685) = ((1 : F) * rho 22683 + (1 : F) * rho 22684)

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22687) * ((1 : F) + (-1 : F) * rho 22685) = ((1 : F) * rho 22682 + (-1 : F) * rho 22683 + (-1 : F) * rho 22684)

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 121⟩], residual := [((1 : F), 22686)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22688)

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20985) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 121⟩], residual := [((1 : F), 22687)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22689)

def relationRow1827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22680) * ((1 : F) * rho 22681) = ((1 : F) * rho 22690)

def relationRow1828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22680) * ((1 : F) * rho 22680) = ((1 : F) * rho 22691)

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22681) * ((1 : F) * rho 22681) = ((1 : F) * rho 22692)

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22693) * ((-1 : F) * rho 22691 + (1 : F) * rho 22692) = ((2 : F) * rho 22690)

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22694) * ((2 : F) + (1 : F) * rho 22691 + (-1 : F) * rho 22692) = ((1 : F) * rho 22691 + (1 : F) * rho 22692)

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22693 + (1 : F) * rho 22694) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 122⟩, ⟨(1 : F), 21116, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22695)

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22694) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22696)

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22693) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22697)

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22696) * ((1 : F) * rho 22697) = ((1 : F) * rho 22698)

def relationRow1836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22699) * ((1 : F) + (1 : F) * rho 22698) = ((1 : F) * rho 22696 + (1 : F) * rho 22697)

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22700) * ((1 : F) + (-1 : F) * rho 22698) = ((1 : F) * rho 22695 + (-1 : F) * rho 22696 + (-1 : F) * rho 22697)

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 122⟩], residual := [((1 : F), 22699)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22701)

def relationRow1839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20986) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 122⟩], residual := [((1 : F), 22700)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22702)

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22693) * ((1 : F) * rho 22694) = ((1 : F) * rho 22703)

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22693) * ((1 : F) * rho 22693) = ((1 : F) * rho 22704)

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22694) * ((1 : F) * rho 22694) = ((1 : F) * rho 22705)

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22706) * ((-1 : F) * rho 22704 + (1 : F) * rho 22705) = ((2 : F) * rho 22703)

def relationRow1844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22707) * ((2 : F) + (1 : F) * rho 22704 + (-1 : F) * rho 22705) = ((1 : F) * rho 22704 + (1 : F) * rho 22705)

def relationRow1845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22706 + (1 : F) * rho 22707) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 123⟩, ⟨(1 : F), 21116, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22708)

def relationRow1846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22707) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22709)

def relationRow1847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22706) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22710)

def relationRow1848 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22709) * ((1 : F) * rho 22710) = ((1 : F) * rho 22711)

def relationRow1849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22712) * ((1 : F) + (1 : F) * rho 22711) = ((1 : F) * rho 22709 + (1 : F) * rho 22710)

def relationRow1850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22713) * ((1 : F) + (-1 : F) * rho 22711) = ((1 : F) * rho 22708 + (-1 : F) * rho 22709 + (-1 : F) * rho 22710)

def relationRow1851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 123⟩], residual := [((1 : F), 22712)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22714)

def relationRow1852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20987) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 123⟩], residual := [((1 : F), 22713)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22715)

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22706) * ((1 : F) * rho 22707) = ((1 : F) * rho 22716)

def relationRow1854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22706) * ((1 : F) * rho 22706) = ((1 : F) * rho 22717)

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22707) * ((1 : F) * rho 22707) = ((1 : F) * rho 22718)

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22719) * ((-1 : F) * rho 22717 + (1 : F) * rho 22718) = ((2 : F) * rho 22716)

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22720) * ((2 : F) + (1 : F) * rho 22717 + (-1 : F) * rho 22718) = ((1 : F) * rho 22717 + (1 : F) * rho 22718)

def relationRow1858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22719 + (1 : F) * rho 22720) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 124⟩, ⟨(1 : F), 21116, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22721)

def relationRow1859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22720) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22722)

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22719) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22723)

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22722) * ((1 : F) * rho 22723) = ((1 : F) * rho 22724)

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22725) * ((1 : F) + (1 : F) * rho 22724) = ((1 : F) * rho 22722 + (1 : F) * rho 22723)

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22726) * ((1 : F) + (-1 : F) * rho 22724) = ((1 : F) * rho 22721 + (-1 : F) * rho 22722 + (-1 : F) * rho 22723)

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20988) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 124⟩], residual := [((1 : F), 22725)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22727)

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20988) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 124⟩], residual := [((1 : F), 22726)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22728)

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22719) * ((1 : F) * rho 22720) = ((1 : F) * rho 22729)

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22719) * ((1 : F) * rho 22719) = ((1 : F) * rho 22730)

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22720) * ((1 : F) * rho 22720) = ((1 : F) * rho 22731)

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22732) * ((-1 : F) * rho 22730 + (1 : F) * rho 22731) = ((2 : F) * rho 22729)

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22733) * ((2 : F) + (1 : F) * rho 22730 + (-1 : F) * rho 22731) = ((1 : F) * rho 22730 + (1 : F) * rho 22731)

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22732 + (1 : F) * rho 22733) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 125⟩, ⟨(1 : F), 21116, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22734)

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22733) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22735)

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22732) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22736)

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22735) * ((1 : F) * rho 22736) = ((1 : F) * rho 22737)

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22738) * ((1 : F) + (1 : F) * rho 22737) = ((1 : F) * rho 22735 + (1 : F) * rho 22736)

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22739) * ((1 : F) + (-1 : F) * rho 22737) = ((1 : F) * rho 22734 + (-1 : F) * rho 22735 + (-1 : F) * rho 22736)

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20989) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 125⟩], residual := [((1 : F), 22738)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22740)

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20989) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 125⟩], residual := [((1 : F), 22739)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22741)

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22732) * ((1 : F) * rho 22733) = ((1 : F) * rho 22742)

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22732) * ((1 : F) * rho 22732) = ((1 : F) * rho 22743)

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22733) * ((1 : F) * rho 22733) = ((1 : F) * rho 22744)

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22745) * ((-1 : F) * rho 22743 + (1 : F) * rho 22744) = ((2 : F) * rho 22742)

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22746) * ((2 : F) + (1 : F) * rho 22743 + (-1 : F) * rho 22744) = ((1 : F) * rho 22743 + (1 : F) * rho 22744)

def relationRow1884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22745 + (1 : F) * rho 22746) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 126⟩, ⟨(1 : F), 21116, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22747)

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22746) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22748)

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22745) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22749)

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22748) * ((1 : F) * rho 22749) = ((1 : F) * rho 22750)

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22751) * ((1 : F) + (1 : F) * rho 22750) = ((1 : F) * rho 22748 + (1 : F) * rho 22749)

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22752) * ((1 : F) + (-1 : F) * rho 22750) = ((1 : F) * rho 22747 + (-1 : F) * rho 22748 + (-1 : F) * rho 22749)

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 126⟩], residual := [((1 : F), 22751)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22753)

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20990) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 126⟩], residual := [((1 : F), 22752)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22754)

def relationRow1892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22745) * ((1 : F) * rho 22746) = ((1 : F) * rho 22755)

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22745) * ((1 : F) * rho 22745) = ((1 : F) * rho 22756)

def relationRow1894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22746) * ((1 : F) * rho 22746) = ((1 : F) * rho 22757)

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22758) * ((-1 : F) * rho 22756 + (1 : F) * rho 22757) = ((2 : F) * rho 22755)

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22759) * ((2 : F) + (1 : F) * rho 22756 + (-1 : F) * rho 22757) = ((1 : F) * rho 22756 + (1 : F) * rho 22757)

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22758 + (1 : F) * rho 22759) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 127⟩, ⟨(1 : F), 21116, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22760)

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22759) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22761)

def relationRow1899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22758) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22762)

def relationRow1900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22761) * ((1 : F) * rho 22762) = ((1 : F) * rho 22763)

def relationRow1901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22764) * ((1 : F) + (1 : F) * rho 22763) = ((1 : F) * rho 22761 + (1 : F) * rho 22762)

def relationRow1902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22765) * ((1 : F) + (-1 : F) * rho 22763) = ((1 : F) * rho 22760 + (-1 : F) * rho 22761 + (-1 : F) * rho 22762)

def relationRow1903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 127⟩], residual := [((1 : F), 22764)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22766)

def relationRow1904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20991) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 127⟩], residual := [((1 : F), 22765)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22767)

def relationRow1905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22758) * ((1 : F) * rho 22759) = ((1 : F) * rho 22768)

def relationRow1906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22758) * ((1 : F) * rho 22758) = ((1 : F) * rho 22769)

def relationRow1907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22759) * ((1 : F) * rho 22759) = ((1 : F) * rho 22770)

def relationRow1908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22771) * ((-1 : F) * rho 22769 + (1 : F) * rho 22770) = ((2 : F) * rho 22768)

def relationRow1909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22772) * ((2 : F) + (1 : F) * rho 22769 + (-1 : F) * rho 22770) = ((1 : F) * rho 22769 + (1 : F) * rho 22770)

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22771 + (1 : F) * rho 22772) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 128⟩, ⟨(1 : F), 21116, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22773)

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22772) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22774)

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22771) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22775)

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22774) * ((1 : F) * rho 22775) = ((1 : F) * rho 22776)

def relationRow1914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22777) * ((1 : F) + (1 : F) * rho 22776) = ((1 : F) * rho 22774 + (1 : F) * rho 22775)

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22778) * ((1 : F) + (-1 : F) * rho 22776) = ((1 : F) * rho 22773 + (-1 : F) * rho 22774 + (-1 : F) * rho 22775)

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 128⟩], residual := [((1 : F), 22777)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22779)

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 128⟩], residual := [((1 : F), 22778)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22780)

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22771) * ((1 : F) * rho 22772) = ((1 : F) * rho 22781)

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22771) * ((1 : F) * rho 22771) = ((1 : F) * rho 22782)

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22772) * ((1 : F) * rho 22772) = ((1 : F) * rho 22783)

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22784) * ((-1 : F) * rho 22782 + (1 : F) * rho 22783) = ((2 : F) * rho 22781)

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22785) * ((2 : F) + (1 : F) * rho 22782 + (-1 : F) * rho 22783) = ((1 : F) * rho 22782 + (1 : F) * rho 22783)

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22784 + (1 : F) * rho 22785) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 129⟩, ⟨(1 : F), 21116, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22786)

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22785) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22787)

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22784) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22788)

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22787) * ((1 : F) * rho 22788) = ((1 : F) * rho 22789)

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22790) * ((1 : F) + (1 : F) * rho 22789) = ((1 : F) * rho 22787 + (1 : F) * rho 22788)

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22791) * ((1 : F) + (-1 : F) * rho 22789) = ((1 : F) * rho 22786 + (-1 : F) * rho 22787 + (-1 : F) * rho 22788)

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 129⟩], residual := [((1 : F), 22790)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22792)

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 129⟩], residual := [((1 : F), 22791)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22793)

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22784) * ((1 : F) * rho 22785) = ((1 : F) * rho 22794)

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22784) * ((1 : F) * rho 22784) = ((1 : F) * rho 22795)

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22785) * ((1 : F) * rho 22785) = ((1 : F) * rho 22796)

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22797) * ((-1 : F) * rho 22795 + (1 : F) * rho 22796) = ((2 : F) * rho 22794)

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22798) * ((2 : F) + (1 : F) * rho 22795 + (-1 : F) * rho 22796) = ((1 : F) * rho 22795 + (1 : F) * rho 22796)

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22797 + (1 : F) * rho 22798) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 130⟩, ⟨(1 : F), 21116, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22799)

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22798) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22800)

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22797) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22801)

def relationRow1939 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22800) * ((1 : F) * rho 22801) = ((1 : F) * rho 22802)

def relationRow1940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22803) * ((1 : F) + (1 : F) * rho 22802) = ((1 : F) * rho 22800 + (1 : F) * rho 22801)

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22804) * ((1 : F) + (-1 : F) * rho 22802) = ((1 : F) * rho 22799 + (-1 : F) * rho 22800 + (-1 : F) * rho 22801)

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20994) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 130⟩], residual := [((1 : F), 22803)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22805)

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20994) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 130⟩], residual := [((1 : F), 22804)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22806)

def relationRow1944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22797) * ((1 : F) * rho 22798) = ((1 : F) * rho 22807)

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22797) * ((1 : F) * rho 22797) = ((1 : F) * rho 22808)

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22798) * ((1 : F) * rho 22798) = ((1 : F) * rho 22809)

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22810) * ((-1 : F) * rho 22808 + (1 : F) * rho 22809) = ((2 : F) * rho 22807)

def relationRow1948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22811) * ((2 : F) + (1 : F) * rho 22808 + (-1 : F) * rho 22809) = ((1 : F) * rho 22808 + (1 : F) * rho 22809)

def relationRow1949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22810 + (1 : F) * rho 22811) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 131⟩, ⟨(1 : F), 21116, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22812)

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22811) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22813)

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22810) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22814)

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22813) * ((1 : F) * rho 22814) = ((1 : F) * rho 22815)

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22816) * ((1 : F) + (1 : F) * rho 22815) = ((1 : F) * rho 22813 + (1 : F) * rho 22814)

def relationRow1954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22817) * ((1 : F) + (-1 : F) * rho 22815) = ((1 : F) * rho 22812 + (-1 : F) * rho 22813 + (-1 : F) * rho 22814)

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 131⟩], residual := [((1 : F), 22816)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22818)

def relationRow1956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 131⟩], residual := [((1 : F), 22817)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22819)

def relationRow1957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22810) * ((1 : F) * rho 22811) = ((1 : F) * rho 22820)

def relationRow1958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22810) * ((1 : F) * rho 22810) = ((1 : F) * rho 22821)

def relationRow1959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22811) * ((1 : F) * rho 22811) = ((1 : F) * rho 22822)

def relationRow1960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22823) * ((-1 : F) * rho 22821 + (1 : F) * rho 22822) = ((2 : F) * rho 22820)

def relationRow1961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22824) * ((2 : F) + (1 : F) * rho 22821 + (-1 : F) * rho 22822) = ((1 : F) * rho 22821 + (1 : F) * rho 22822)

def relationRow1962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22823 + (1 : F) * rho 22824) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 132⟩, ⟨(1 : F), 21116, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22825)

def relationRow1963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22824) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22826)

def relationRow1964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22823) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22827)

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22826) * ((1 : F) * rho 22827) = ((1 : F) * rho 22828)

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22829) * ((1 : F) + (1 : F) * rho 22828) = ((1 : F) * rho 22826 + (1 : F) * rho 22827)

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22830) * ((1 : F) + (-1 : F) * rho 22828) = ((1 : F) * rho 22825 + (-1 : F) * rho 22826 + (-1 : F) * rho 22827)

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 132⟩], residual := [((1 : F), 22829)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22831)

def relationRow1969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 132⟩], residual := [((1 : F), 22830)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22832)

def relationRow1970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22823) * ((1 : F) * rho 22824) = ((1 : F) * rho 22833)

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22823) * ((1 : F) * rho 22823) = ((1 : F) * rho 22834)

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22824) * ((1 : F) * rho 22824) = ((1 : F) * rho 22835)

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22836) * ((-1 : F) * rho 22834 + (1 : F) * rho 22835) = ((2 : F) * rho 22833)

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22837) * ((2 : F) + (1 : F) * rho 22834 + (-1 : F) * rho 22835) = ((1 : F) * rho 22834 + (1 : F) * rho 22835)

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22836 + (1 : F) * rho 22837) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 133⟩, ⟨(1 : F), 21116, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22838)

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22837) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22839)

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22836) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22840)

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22839) * ((1 : F) * rho 22840) = ((1 : F) * rho 22841)

def relationRow1979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22842) * ((1 : F) + (1 : F) * rho 22841) = ((1 : F) * rho 22839 + (1 : F) * rho 22840)

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22843) * ((1 : F) + (-1 : F) * rho 22841) = ((1 : F) * rho 22838 + (-1 : F) * rho 22839 + (-1 : F) * rho 22840)

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20997) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 133⟩], residual := [((1 : F), 22842)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22844)

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20997) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 133⟩], residual := [((1 : F), 22843)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22845)

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22836) * ((1 : F) * rho 22837) = ((1 : F) * rho 22846)

def relationRow1984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22836) * ((1 : F) * rho 22836) = ((1 : F) * rho 22847)

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22837) * ((1 : F) * rho 22837) = ((1 : F) * rho 22848)

def relationRow1986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22849) * ((-1 : F) * rho 22847 + (1 : F) * rho 22848) = ((2 : F) * rho 22846)

def relationRow1987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22850) * ((2 : F) + (1 : F) * rho 22847 + (-1 : F) * rho 22848) = ((1 : F) * rho 22847 + (1 : F) * rho 22848)

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22849 + (1 : F) * rho 22850) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 134⟩, ⟨(1 : F), 21116, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22851)

def relationRow1989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22850) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22852)

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22849) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22853)

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22852) * ((1 : F) * rho 22853) = ((1 : F) * rho 22854)

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22855) * ((1 : F) + (1 : F) * rho 22854) = ((1 : F) * rho 22852 + (1 : F) * rho 22853)

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22856) * ((1 : F) + (-1 : F) * rho 22854) = ((1 : F) * rho 22851 + (-1 : F) * rho 22852 + (-1 : F) * rho 22853)

def relationRow1994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 134⟩], residual := [((1 : F), 22855)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22857)

def relationRow1995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20998) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 134⟩], residual := [((1 : F), 22856)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22858)

def relationRow1996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22849) * ((1 : F) * rho 22850) = ((1 : F) * rho 22859)

def relationRow1997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22849) * ((1 : F) * rho 22849) = ((1 : F) * rho 22860)

def relationRow1998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22850) * ((1 : F) * rho 22850) = ((1 : F) * rho 22861)

def relationRow1999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22862) * ((-1 : F) * rho 22860 + (1 : F) * rho 22861) = ((2 : F) * rho 22859)

def relationRow2000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22863) * ((2 : F) + (1 : F) * rho 22860 + (-1 : F) * rho 22861) = ((1 : F) * rho 22860 + (1 : F) * rho 22861)

def relationRow2001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22862 + (1 : F) * rho 22863) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 135⟩, ⟨(1 : F), 21116, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22864)

def relationRow2002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22863) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22865)

def relationRow2003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22862) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22866)

def relationRow2004 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22865) * ((1 : F) * rho 22866) = ((1 : F) * rho 22867)

def relationRow2005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22868) * ((1 : F) + (1 : F) * rho 22867) = ((1 : F) * rho 22865 + (1 : F) * rho 22866)

def relationRow2006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22869) * ((1 : F) + (-1 : F) * rho 22867) = ((1 : F) * rho 22864 + (-1 : F) * rho 22865 + (-1 : F) * rho 22866)

def relationRow2007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 135⟩], residual := [((1 : F), 22868)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22870)

def relationRow2008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20999) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 135⟩], residual := [((1 : F), 22869)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22871)

def relationRow2009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22862) * ((1 : F) * rho 22863) = ((1 : F) * rho 22872)

def relationRow2010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22862) * ((1 : F) * rho 22862) = ((1 : F) * rho 22873)

def relationRow2011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22863) * ((1 : F) * rho 22863) = ((1 : F) * rho 22874)

def relationRow2012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22875) * ((-1 : F) * rho 22873 + (1 : F) * rho 22874) = ((2 : F) * rho 22872)

def relationRow2013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22876) * ((2 : F) + (1 : F) * rho 22873 + (-1 : F) * rho 22874) = ((1 : F) * rho 22873 + (1 : F) * rho 22874)

def relationRow2014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22875 + (1 : F) * rho 22876) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 136⟩, ⟨(1 : F), 21116, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22877)

def relationRow2015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22876) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22878)

def relationRow2016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22875) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22879)

def relationRow2017 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22878) * ((1 : F) * rho 22879) = ((1 : F) * rho 22880)

def relationRow2018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22881) * ((1 : F) + (1 : F) * rho 22880) = ((1 : F) * rho 22878 + (1 : F) * rho 22879)

def relationRow2019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22882) * ((1 : F) + (-1 : F) * rho 22880) = ((1 : F) * rho 22877 + (-1 : F) * rho 22878 + (-1 : F) * rho 22879)

def relationRow2020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 136⟩], residual := [((1 : F), 22881)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22883)

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21000) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 136⟩], residual := [((1 : F), 22882)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22884)

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22875) * ((1 : F) * rho 22876) = ((1 : F) * rho 22885)

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22875) * ((1 : F) * rho 22875) = ((1 : F) * rho 22886)

def relationRow2024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22876) * ((1 : F) * rho 22876) = ((1 : F) * rho 22887)

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22888) * ((-1 : F) * rho 22886 + (1 : F) * rho 22887) = ((2 : F) * rho 22885)

def relationRow2026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22889) * ((2 : F) + (1 : F) * rho 22886 + (-1 : F) * rho 22887) = ((1 : F) * rho 22886 + (1 : F) * rho 22887)

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22888 + (1 : F) * rho 22889) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 137⟩, ⟨(1 : F), 21116, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22890)

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22889) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22891)

def relationRow2029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22888) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22892)

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22891) * ((1 : F) * rho 22892) = ((1 : F) * rho 22893)

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22894) * ((1 : F) + (1 : F) * rho 22893) = ((1 : F) * rho 22891 + (1 : F) * rho 22892)

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22895) * ((1 : F) + (-1 : F) * rho 22893) = ((1 : F) * rho 22890 + (-1 : F) * rho 22891 + (-1 : F) * rho 22892)

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21001) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 137⟩], residual := [((1 : F), 22894)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22896)

def relationRow2034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21001) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 137⟩], residual := [((1 : F), 22895)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22897)

def relationRow2035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22888) * ((1 : F) * rho 22889) = ((1 : F) * rho 22898)

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22888) * ((1 : F) * rho 22888) = ((1 : F) * rho 22899)

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22889) * ((1 : F) * rho 22889) = ((1 : F) * rho 22900)

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22901) * ((-1 : F) * rho 22899 + (1 : F) * rho 22900) = ((2 : F) * rho 22898)

def relationRow2039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22902) * ((2 : F) + (1 : F) * rho 22899 + (-1 : F) * rho 22900) = ((1 : F) * rho 22899 + (1 : F) * rho 22900)

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22901 + (1 : F) * rho 22902) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 138⟩, ⟨(1 : F), 21116, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22903)

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22902) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22904)

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22901) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22905)

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22904) * ((1 : F) * rho 22905) = ((1 : F) * rho 22906)

def relationRow2044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22907) * ((1 : F) + (1 : F) * rho 22906) = ((1 : F) * rho 22904 + (1 : F) * rho 22905)

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22908) * ((1 : F) + (-1 : F) * rho 22906) = ((1 : F) * rho 22903 + (-1 : F) * rho 22904 + (-1 : F) * rho 22905)

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21002) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 138⟩], residual := [((1 : F), 22907)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22909)

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21002) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 138⟩], residual := [((1 : F), 22908)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22910)

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22901) * ((1 : F) * rho 22902) = ((1 : F) * rho 22911)

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22901) * ((1 : F) * rho 22901) = ((1 : F) * rho 22912)

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22902) * ((1 : F) * rho 22902) = ((1 : F) * rho 22913)

def relationRow2051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22914) * ((-1 : F) * rho 22912 + (1 : F) * rho 22913) = ((2 : F) * rho 22911)

def relationRow2052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22915) * ((2 : F) + (1 : F) * rho 22912 + (-1 : F) * rho 22913) = ((1 : F) * rho 22912 + (1 : F) * rho 22913)

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22914 + (1 : F) * rho 22915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 139⟩, ⟨(1 : F), 21116, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22916)

def relationRow2054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22915) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22917)

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22914) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22918)

def relationRow2056 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22917) * ((1 : F) * rho 22918) = ((1 : F) * rho 22919)

def relationRow2057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22920) * ((1 : F) + (1 : F) * rho 22919) = ((1 : F) * rho 22917 + (1 : F) * rho 22918)

def relationRow2058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22921) * ((1 : F) + (-1 : F) * rho 22919) = ((1 : F) * rho 22916 + (-1 : F) * rho 22917 + (-1 : F) * rho 22918)

def relationRow2059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 139⟩], residual := [((1 : F), 22920)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22922)

def relationRow2060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21003) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 139⟩], residual := [((1 : F), 22921)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22923)

def relationRow2061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22914) * ((1 : F) * rho 22915) = ((1 : F) * rho 22924)

def relationRow2062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22914) * ((1 : F) * rho 22914) = ((1 : F) * rho 22925)

def relationRow2063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22915) * ((1 : F) * rho 22915) = ((1 : F) * rho 22926)

def relationRow2064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22927) * ((-1 : F) * rho 22925 + (1 : F) * rho 22926) = ((2 : F) * rho 22924)

def relationRow2065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22928) * ((2 : F) + (1 : F) * rho 22925 + (-1 : F) * rho 22926) = ((1 : F) * rho 22925 + (1 : F) * rho 22926)

def relationRow2066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22927 + (1 : F) * rho 22928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 140⟩, ⟨(1 : F), 21116, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22929)

def relationRow2067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22928) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22930)

def relationRow2068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22927) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22931)

def relationRow2069 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22930) * ((1 : F) * rho 22931) = ((1 : F) * rho 22932)

def relationRow2070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22933) * ((1 : F) + (1 : F) * rho 22932) = ((1 : F) * rho 22930 + (1 : F) * rho 22931)

def relationRow2071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22934) * ((1 : F) + (-1 : F) * rho 22932) = ((1 : F) * rho 22929 + (-1 : F) * rho 22930 + (-1 : F) * rho 22931)

def relationRow2072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 140⟩], residual := [((1 : F), 22933)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22935)

def relationRow2073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21004) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 140⟩], residual := [((1 : F), 22934)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22936)

def relationRow2074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22927) * ((1 : F) * rho 22928) = ((1 : F) * rho 22937)

def relationRow2075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22927) * ((1 : F) * rho 22927) = ((1 : F) * rho 22938)

def relationRow2076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22928) * ((1 : F) * rho 22928) = ((1 : F) * rho 22939)

def relationRow2077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22940) * ((-1 : F) * rho 22938 + (1 : F) * rho 22939) = ((2 : F) * rho 22937)

def relationRow2078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22941) * ((2 : F) + (1 : F) * rho 22938 + (-1 : F) * rho 22939) = ((1 : F) * rho 22938 + (1 : F) * rho 22939)

def relationRow2079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22940 + (1 : F) * rho 22941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 141⟩, ⟨(1 : F), 21116, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22942)

def relationRow2080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22941) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22943)

def relationRow2081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22944)

def relationRow2082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22943) * ((1 : F) * rho 22944) = ((1 : F) * rho 22945)

def relationRow2083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22946) * ((1 : F) + (1 : F) * rho 22945) = ((1 : F) * rho 22943 + (1 : F) * rho 22944)

def relationRow2084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22947) * ((1 : F) + (-1 : F) * rho 22945) = ((1 : F) * rho 22942 + (-1 : F) * rho 22943 + (-1 : F) * rho 22944)

def relationRow2085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 141⟩], residual := [((1 : F), 22946)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22948)

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 141⟩], residual := [((1 : F), 22947)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22949)

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22940) * ((1 : F) * rho 22941) = ((1 : F) * rho 22950)

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22940) * ((1 : F) * rho 22940) = ((1 : F) * rho 22951)

def relationRow2089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22941) * ((1 : F) * rho 22941) = ((1 : F) * rho 22952)

def relationRow2090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22953) * ((-1 : F) * rho 22951 + (1 : F) * rho 22952) = ((2 : F) * rho 22950)

def relationRow2091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22954) * ((2 : F) + (1 : F) * rho 22951 + (-1 : F) * rho 22952) = ((1 : F) * rho 22951 + (1 : F) * rho 22952)

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22953 + (1 : F) * rho 22954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 142⟩, ⟨(1 : F), 21116, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22955)

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22956)

def relationRow2094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22957)

def relationRow2095 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22956) * ((1 : F) * rho 22957) = ((1 : F) * rho 22958)

def relationRow2096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22959) * ((1 : F) + (1 : F) * rho 22958) = ((1 : F) * rho 22956 + (1 : F) * rho 22957)

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22960) * ((1 : F) + (-1 : F) * rho 22958) = ((1 : F) * rho 22955 + (-1 : F) * rho 22956 + (-1 : F) * rho 22957)

def relationRow2098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 142⟩], residual := [((1 : F), 22959)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22961)

def relationRow2099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 142⟩], residual := [((1 : F), 22960)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22962)

def relationRow2100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22953) * ((1 : F) * rho 22954) = ((1 : F) * rho 22963)

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22953) * ((1 : F) * rho 22953) = ((1 : F) * rho 22964)

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22954) * ((1 : F) * rho 22954) = ((1 : F) * rho 22965)

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22966) * ((-1 : F) * rho 22964 + (1 : F) * rho 22965) = ((2 : F) * rho 22963)

def relationRow2104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22967) * ((2 : F) + (1 : F) * rho 22964 + (-1 : F) * rho 22965) = ((1 : F) * rho 22964 + (1 : F) * rho 22965)

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22966 + (1 : F) * rho 22967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 143⟩, ⟨(1 : F), 21116, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22968)

def relationRow2106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22969)

def relationRow2107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22966) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22970)

def relationRow2108 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22969) * ((1 : F) * rho 22970) = ((1 : F) * rho 22971)

def relationRow2109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22972) * ((1 : F) + (1 : F) * rho 22971) = ((1 : F) * rho 22969 + (1 : F) * rho 22970)

def relationRow2110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22973) * ((1 : F) + (-1 : F) * rho 22971) = ((1 : F) * rho 22968 + (-1 : F) * rho 22969 + (-1 : F) * rho 22970)

def relationRow2111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21007) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 143⟩], residual := [((1 : F), 22972)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22974)

def relationRow2112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21007) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 143⟩], residual := [((1 : F), 22973)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22975)

def relationRow2113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22966) * ((1 : F) * rho 22967) = ((1 : F) * rho 22976)

def relationRow2114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22966) * ((1 : F) * rho 22966) = ((1 : F) * rho 22977)

def relationRow2115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22967) * ((1 : F) * rho 22967) = ((1 : F) * rho 22978)

def relationRow2116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22979) * ((-1 : F) * rho 22977 + (1 : F) * rho 22978) = ((2 : F) * rho 22976)

def relationRow2117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22980) * ((2 : F) + (1 : F) * rho 22977 + (-1 : F) * rho 22978) = ((1 : F) * rho 22977 + (1 : F) * rho 22978)

def relationRow2118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22979 + (1 : F) * rho 22980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 144⟩, ⟨(1 : F), 21116, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22981)

def relationRow2119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22980) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22982)

def relationRow2120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22979) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22983)

def relationRow2121 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22982) * ((1 : F) * rho 22983) = ((1 : F) * rho 22984)

def relationRow2122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22985) * ((1 : F) + (1 : F) * rho 22984) = ((1 : F) * rho 22982 + (1 : F) * rho 22983)

def relationRow2123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22986) * ((1 : F) + (-1 : F) * rho 22984) = ((1 : F) * rho 22981 + (-1 : F) * rho 22982 + (-1 : F) * rho 22983)

def relationRow2124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 144⟩], residual := [((1 : F), 22985)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22987)

def relationRow2125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21008) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 144⟩], residual := [((1 : F), 22986)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22988)

def relationRow2126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22979) * ((1 : F) * rho 22980) = ((1 : F) * rho 22989)

def relationRow2127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22979) * ((1 : F) * rho 22979) = ((1 : F) * rho 22990)

def relationRow2128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22980) * ((1 : F) * rho 22980) = ((1 : F) * rho 22991)

def relationRow2129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22992) * ((-1 : F) * rho 22990 + (1 : F) * rho 22991) = ((2 : F) * rho 22989)

def relationRow2130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22993) * ((2 : F) + (1 : F) * rho 22990 + (-1 : F) * rho 22991) = ((1 : F) * rho 22990 + (1 : F) * rho 22991)

def relationRow2131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22992 + (1 : F) * rho 22993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 145⟩, ⟨(1 : F), 21116, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22994)

def relationRow2132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22993) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22995)

def relationRow2133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22992) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 22996)

def relationRow2134 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 22995) * ((1 : F) * rho 22996) = ((1 : F) * rho 22997)

def relationRow2135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22998) * ((1 : F) + (1 : F) * rho 22997) = ((1 : F) * rho 22995 + (1 : F) * rho 22996)

def relationRow2136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22999) * ((1 : F) + (-1 : F) * rho 22997) = ((1 : F) * rho 22994 + (-1 : F) * rho 22995 + (-1 : F) * rho 22996)

def relationRow2137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 145⟩], residual := [((1 : F), 22998)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23000)

def relationRow2138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 145⟩], residual := [((1 : F), 22999)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23001)

def relationRow2139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22992) * ((1 : F) * rho 22993) = ((1 : F) * rho 23002)

def relationRow2140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22992) * ((1 : F) * rho 22992) = ((1 : F) * rho 23003)

def relationRow2141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 22993) * ((1 : F) * rho 22993) = ((1 : F) * rho 23004)

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23005) * ((-1 : F) * rho 23003 + (1 : F) * rho 23004) = ((2 : F) * rho 23002)

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23006) * ((2 : F) + (1 : F) * rho 23003 + (-1 : F) * rho 23004) = ((1 : F) * rho 23003 + (1 : F) * rho 23004)

def relationRow2144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23005 + (1 : F) * rho 23006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 146⟩, ⟨(1 : F), 21116, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23007)

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23006) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23008)

def relationRow2146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23005) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23009)

def relationRow2147 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23008) * ((1 : F) * rho 23009) = ((1 : F) * rho 23010)

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23011) * ((1 : F) + (1 : F) * rho 23010) = ((1 : F) * rho 23008 + (1 : F) * rho 23009)

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23012) * ((1 : F) + (-1 : F) * rho 23010) = ((1 : F) * rho 23007 + (-1 : F) * rho 23008 + (-1 : F) * rho 23009)

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21010) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 146⟩], residual := [((1 : F), 23011)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23013)

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21010) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 146⟩], residual := [((1 : F), 23012)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23014)

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23005) * ((1 : F) * rho 23006) = ((1 : F) * rho 23015)

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23005) * ((1 : F) * rho 23005) = ((1 : F) * rho 23016)

def relationRow2154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23006) * ((1 : F) * rho 23006) = ((1 : F) * rho 23017)

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23018) * ((-1 : F) * rho 23016 + (1 : F) * rho 23017) = ((2 : F) * rho 23015)

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23019) * ((2 : F) + (1 : F) * rho 23016 + (-1 : F) * rho 23017) = ((1 : F) * rho 23016 + (1 : F) * rho 23017)

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23018 + (1 : F) * rho 23019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 147⟩, ⟨(1 : F), 21116, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23020)

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23021)

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23022)

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23021) * ((1 : F) * rho 23022) = ((1 : F) * rho 23023)

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23024) * ((1 : F) + (1 : F) * rho 23023) = ((1 : F) * rho 23021 + (1 : F) * rho 23022)

def relationRow2162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23025) * ((1 : F) + (-1 : F) * rho 23023) = ((1 : F) * rho 23020 + (-1 : F) * rho 23021 + (-1 : F) * rho 23022)

def relationRow2163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21011) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 147⟩], residual := [((1 : F), 23024)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23026)

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21011) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 147⟩], residual := [((1 : F), 23025)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23027)

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23018) * ((1 : F) * rho 23019) = ((1 : F) * rho 23028)

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23018) * ((1 : F) * rho 23018) = ((1 : F) * rho 23029)

def relationRow2167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23019) * ((1 : F) * rho 23019) = ((1 : F) * rho 23030)

def relationRow2168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23031) * ((-1 : F) * rho 23029 + (1 : F) * rho 23030) = ((2 : F) * rho 23028)

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23032) * ((2 : F) + (1 : F) * rho 23029 + (-1 : F) * rho 23030) = ((1 : F) * rho 23029 + (1 : F) * rho 23030)

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23031 + (1 : F) * rho 23032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 148⟩, ⟨(1 : F), 21116, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23033)

def relationRow2171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23034)

def relationRow2172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23035)

def relationRow2173 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23034) * ((1 : F) * rho 23035) = ((1 : F) * rho 23036)

def relationRow2174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23037) * ((1 : F) + (1 : F) * rho 23036) = ((1 : F) * rho 23034 + (1 : F) * rho 23035)

def relationRow2175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23038) * ((1 : F) + (-1 : F) * rho 23036) = ((1 : F) * rho 23033 + (-1 : F) * rho 23034 + (-1 : F) * rho 23035)

def relationRow2176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 148⟩], residual := [((1 : F), 23037)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23039)

def relationRow2177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21012) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 148⟩], residual := [((1 : F), 23038)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23040)

def relationRow2178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23031) * ((1 : F) * rho 23032) = ((1 : F) * rho 23041)

def relationRow2179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23031) * ((1 : F) * rho 23031) = ((1 : F) * rho 23042)

def relationRow2180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23032) * ((1 : F) * rho 23032) = ((1 : F) * rho 23043)

def relationRow2181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23044) * ((-1 : F) * rho 23042 + (1 : F) * rho 23043) = ((2 : F) * rho 23041)

def relationRow2182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23045) * ((2 : F) + (1 : F) * rho 23042 + (-1 : F) * rho 23043) = ((1 : F) * rho 23042 + (1 : F) * rho 23043)

def relationRow2183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23044 + (1 : F) * rho 23045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 149⟩, ⟨(1 : F), 21116, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23046)

def relationRow2184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23047)

def relationRow2185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23048)

def relationRow2186 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23047) * ((1 : F) * rho 23048) = ((1 : F) * rho 23049)

def relationRow2187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23050) * ((1 : F) + (1 : F) * rho 23049) = ((1 : F) * rho 23047 + (1 : F) * rho 23048)

def relationRow2188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23051) * ((1 : F) + (-1 : F) * rho 23049) = ((1 : F) * rho 23046 + (-1 : F) * rho 23047 + (-1 : F) * rho 23048)

def relationRow2189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 149⟩], residual := [((1 : F), 23050)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23052)

def relationRow2190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21013) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 149⟩], residual := [((1 : F), 23051)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23053)

def relationRow2191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23044) * ((1 : F) * rho 23045) = ((1 : F) * rho 23054)

def relationRow2192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23044) * ((1 : F) * rho 23044) = ((1 : F) * rho 23055)

def relationRow2193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23045) * ((1 : F) * rho 23045) = ((1 : F) * rho 23056)

def relationRow2194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23057) * ((-1 : F) * rho 23055 + (1 : F) * rho 23056) = ((2 : F) * rho 23054)

def relationRow2195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23058) * ((2 : F) + (1 : F) * rho 23055 + (-1 : F) * rho 23056) = ((1 : F) * rho 23055 + (1 : F) * rho 23056)

def relationRow2196 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23059)

def relationRow2197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23059) * ((1 : F) * rho 23057 + (1 : F) * rho 23058) = ((1 : F) * rho 23060)

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23058) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23061)

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23062)

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23061) * ((1 : F) * rho 23062) = ((1 : F) * rho 23063)

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23064) * ((1 : F) + (1 : F) * rho 23063) = ((1 : F) * rho 23061 + (1 : F) * rho 23062)

def relationRow2202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23065) * ((1 : F) + (-1 : F) * rho 23063) = ((1 : F) * rho 23060 + (-1 : F) * rho 23061 + (-1 : F) * rho 23062)

def relationRow2203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21014) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23064)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23066)

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21014) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23065)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23067)

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23057) * ((1 : F) * rho 23058) = ((1 : F) * rho 23068)

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23057) * ((1 : F) * rho 23057) = ((1 : F) * rho 23069)

def relationRow2207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23058) * ((1 : F) * rho 23058) = ((1 : F) * rho 23070)

def relationRow2208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23071) * ((-1 : F) * rho 23069 + (1 : F) * rho 23070) = ((2 : F) * rho 23068)

def relationRow2209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23072) * ((2 : F) + (1 : F) * rho 23069 + (-1 : F) * rho 23070) = ((1 : F) * rho 23069 + (1 : F) * rho 23070)

def relationRow2210 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23073)

def relationRow2211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23073) * ((1 : F) * rho 23071 + (1 : F) * rho 23072) = ((1 : F) * rho 23074)

def relationRow2212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23075)

def relationRow2213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23071) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23076)

def relationRow2214 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23075) * ((1 : F) * rho 23076) = ((1 : F) * rho 23077)

def relationRow2215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23078) * ((1 : F) + (1 : F) * rho 23077) = ((1 : F) * rho 23075 + (1 : F) * rho 23076)

def relationRow2216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23079) * ((1 : F) + (-1 : F) * rho 23077) = ((1 : F) * rho 23074 + (-1 : F) * rho 23075 + (-1 : F) * rho 23076)

def relationRow2217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21015) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((1 : F), 23078)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23080)

def relationRow2218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21015) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((1 : F), 23079)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23081)

def relationRow2219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23071) * ((1 : F) * rho 23072) = ((1 : F) * rho 23082)

def relationRow2220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23071) * ((1 : F) * rho 23071) = ((1 : F) * rho 23083)

def relationRow2221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23072) * ((1 : F) * rho 23072) = ((1 : F) * rho 23084)

def relationRow2222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23085) * ((-1 : F) * rho 23083 + (1 : F) * rho 23084) = ((2 : F) * rho 23082)

def relationRow2223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23086) * ((2 : F) + (1 : F) * rho 23083 + (-1 : F) * rho 23084) = ((1 : F) * rho 23083 + (1 : F) * rho 23084)

def relationRow2224 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23087)

def relationRow2225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23087) * ((1 : F) * rho 23085 + (1 : F) * rho 23086) = ((1 : F) * rho 23088)

def relationRow2226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23086) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23089)

def relationRow2227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23085) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23090)

def relationRow2228 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23089) * ((1 : F) * rho 23090) = ((1 : F) * rho 23091)

def relationRow2229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23092) * ((1 : F) + (1 : F) * rho 23091) = ((1 : F) * rho 23089 + (1 : F) * rho 23090)

def relationRow2230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23093) * ((1 : F) + (-1 : F) * rho 23091) = ((1 : F) * rho 23088 + (-1 : F) * rho 23089 + (-1 : F) * rho 23090)

def relationRow2231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((1 : F), 23092)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23094)

def relationRow2232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21016) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((1 : F), 23093)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23095)

def relationRow2233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23085) * ((1 : F) * rho 23086) = ((1 : F) * rho 23096)

def relationRow2234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23085) * ((1 : F) * rho 23085) = ((1 : F) * rho 23097)

def relationRow2235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23086) * ((1 : F) * rho 23086) = ((1 : F) * rho 23098)

def relationRow2236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23099) * ((-1 : F) * rho 23097 + (1 : F) * rho 23098) = ((2 : F) * rho 23096)

def relationRow2237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23100) * ((2 : F) + (1 : F) * rho 23097 + (-1 : F) * rho 23098) = ((1 : F) * rho 23097 + (1 : F) * rho 23098)

def relationRow2238 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23101)

def relationRow2239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23101) * ((1 : F) * rho 23099 + (1 : F) * rho 23100) = ((1 : F) * rho 23102)

def relationRow2240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23100) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23103)

def relationRow2241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23099) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23104)

def relationRow2242 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23103) * ((1 : F) * rho 23104) = ((1 : F) * rho 23105)

def relationRow2243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23106) * ((1 : F) + (1 : F) * rho 23105) = ((1 : F) * rho 23103 + (1 : F) * rho 23104)

def relationRow2244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23107) * ((1 : F) + (-1 : F) * rho 23105) = ((1 : F) * rho 23102 + (-1 : F) * rho 23103 + (-1 : F) * rho 23104)

def relationRow2245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((1 : F), 23106)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23108)

def relationRow2246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21017) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((1 : F), 23107)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23109)

def relationRow2247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23099) * ((1 : F) * rho 23100) = ((1 : F) * rho 23110)

def relationRow2248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23099) * ((1 : F) * rho 23099) = ((1 : F) * rho 23111)

def relationRow2249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23100) * ((1 : F) * rho 23100) = ((1 : F) * rho 23112)

def relationRow2250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23113) * ((-1 : F) * rho 23111 + (1 : F) * rho 23112) = ((2 : F) * rho 23110)

def relationRow2251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23114) * ((2 : F) + (1 : F) * rho 23111 + (-1 : F) * rho 23112) = ((1 : F) * rho 23111 + (1 : F) * rho 23112)

def relationRow2252 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23115)

def relationRow2253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23115) * ((1 : F) * rho 23113 + (1 : F) * rho 23114) = ((1 : F) * rho 23116)

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23114) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23117)

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23113) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23118)

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23117) * ((1 : F) * rho 23118) = ((1 : F) * rho 23119)

def relationRow2257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23120) * ((1 : F) + (1 : F) * rho 23119) = ((1 : F) * rho 23117 + (1 : F) * rho 23118)

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23121) * ((1 : F) + (-1 : F) * rho 23119) = ((1 : F) * rho 23116 + (-1 : F) * rho 23117 + (-1 : F) * rho 23118)

def relationRow2259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((1 : F), 23120)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23122)

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21018) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((1 : F), 23121)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23123)

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23113) * ((1 : F) * rho 23114) = ((1 : F) * rho 23124)

def relationRow2262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23113) * ((1 : F) * rho 23113) = ((1 : F) * rho 23125)

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23114) * ((1 : F) * rho 23114) = ((1 : F) * rho 23126)

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23127) * ((-1 : F) * rho 23125 + (1 : F) * rho 23126) = ((2 : F) * rho 23124)

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23128) * ((2 : F) + (1 : F) * rho 23125 + (-1 : F) * rho 23126) = ((1 : F) * rho 23125 + (1 : F) * rho 23126)

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23129)

def relationRow2267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23129) * ((1 : F) * rho 23127 + (1 : F) * rho 23128) = ((1 : F) * rho 23130)

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23128) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23131)

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23127) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23132)

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23131) * ((1 : F) * rho 23132) = ((1 : F) * rho 23133)

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23134) * ((1 : F) + (1 : F) * rho 23133) = ((1 : F) * rho 23131 + (1 : F) * rho 23132)

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23135) * ((1 : F) + (-1 : F) * rho 23133) = ((1 : F) * rho 23130 + (-1 : F) * rho 23131 + (-1 : F) * rho 23132)

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((1 : F), 23134)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23136)

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21019) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((1 : F), 23135)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23137)

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23127) * ((1 : F) * rho 23128) = ((1 : F) * rho 23138)

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23127) * ((1 : F) * rho 23127) = ((1 : F) * rho 23139)

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23128) * ((1 : F) * rho 23128) = ((1 : F) * rho 23140)

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23141) * ((-1 : F) * rho 23139 + (1 : F) * rho 23140) = ((2 : F) * rho 23138)

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23142) * ((2 : F) + (1 : F) * rho 23139 + (-1 : F) * rho 23140) = ((1 : F) * rho 23139 + (1 : F) * rho 23140)

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23143)

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23143) * ((1 : F) * rho 23141 + (1 : F) * rho 23142) = ((1 : F) * rho 23144)

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23142) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23145)

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23141) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23146)

def relationRow2284 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23145) * ((1 : F) * rho 23146) = ((1 : F) * rho 23147)

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23148) * ((1 : F) + (1 : F) * rho 23147) = ((1 : F) * rho 23145 + (1 : F) * rho 23146)

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23149) * ((1 : F) + (-1 : F) * rho 23147) = ((1 : F) * rho 23144 + (-1 : F) * rho 23145 + (-1 : F) * rho 23146)

def relationRow2287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((1 : F), 23148)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23150)

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21020) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((1 : F), 23149)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23151)

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23141) * ((1 : F) * rho 23142) = ((1 : F) * rho 23152)

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23141) * ((1 : F) * rho 23141) = ((1 : F) * rho 23153)

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23142) * ((1 : F) * rho 23142) = ((1 : F) * rho 23154)

def relationRow2292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23155) * ((-1 : F) * rho 23153 + (1 : F) * rho 23154) = ((2 : F) * rho 23152)

def relationRow2293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23156) * ((2 : F) + (1 : F) * rho 23153 + (-1 : F) * rho 23154) = ((1 : F) * rho 23153 + (1 : F) * rho 23154)

def relationRow2294 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23157)

def relationRow2295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23157) * ((1 : F) * rho 23155 + (1 : F) * rho 23156) = ((1 : F) * rho 23158)

def relationRow2296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23156) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23159)

def relationRow2297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23155) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23160)

def relationRow2298 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23159) * ((1 : F) * rho 23160) = ((1 : F) * rho 23161)

def relationRow2299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23162) * ((1 : F) + (1 : F) * rho 23161) = ((1 : F) * rho 23159 + (1 : F) * rho 23160)

def relationRow2300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23163) * ((1 : F) + (-1 : F) * rho 23161) = ((1 : F) * rho 23158 + (-1 : F) * rho 23159 + (-1 : F) * rho 23160)

def relationRow2301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((1 : F), 23162)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23164)

def relationRow2302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21021) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((1 : F), 23163)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23165)

def relationRow2303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23155) * ((1 : F) * rho 23156) = ((1 : F) * rho 23166)

def relationRow2304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23155) * ((1 : F) * rho 23155) = ((1 : F) * rho 23167)

def relationRow2305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23156) * ((1 : F) * rho 23156) = ((1 : F) * rho 23168)

def relationRow2306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23169) * ((-1 : F) * rho 23167 + (1 : F) * rho 23168) = ((2 : F) * rho 23166)

def relationRow2307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23170) * ((2 : F) + (1 : F) * rho 23167 + (-1 : F) * rho 23168) = ((1 : F) * rho 23167 + (1 : F) * rho 23168)

def relationRow2308 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23171)

def relationRow2309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23171) * ((1 : F) * rho 23169 + (1 : F) * rho 23170) = ((1 : F) * rho 23172)

def relationRow2310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23170) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23173)

def relationRow2311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23169) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23174)

def relationRow2312 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23173) * ((1 : F) * rho 23174) = ((1 : F) * rho 23175)

def relationRow2313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23176) * ((1 : F) + (1 : F) * rho 23175) = ((1 : F) * rho 23173 + (1 : F) * rho 23174)

def relationRow2314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23177) * ((1 : F) + (-1 : F) * rho 23175) = ((1 : F) * rho 23172 + (-1 : F) * rho 23173 + (-1 : F) * rho 23174)

def relationRow2315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((1 : F), 23176)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23178)

def relationRow2316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21022) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((1 : F), 23177)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23179)

def relationRow2317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23169) * ((1 : F) * rho 23170) = ((1 : F) * rho 23180)

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23169) * ((1 : F) * rho 23169) = ((1 : F) * rho 23181)

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23170) * ((1 : F) * rho 23170) = ((1 : F) * rho 23182)

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23183) * ((-1 : F) * rho 23181 + (1 : F) * rho 23182) = ((2 : F) * rho 23180)

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23184) * ((2 : F) + (1 : F) * rho 23181 + (-1 : F) * rho 23182) = ((1 : F) * rho 23181 + (1 : F) * rho 23182)

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165), ((1 : F), 23178), ((1 : F), 23179)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23185)

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23185) * ((1 : F) * rho 23183 + (1 : F) * rho 23184) = ((1 : F) * rho 23186)

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23184) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164), ((1 : F), 23178)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23187)

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23183) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165), ((1 : F), 23179)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23188)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23187) * ((1 : F) * rho 23188) = ((1 : F) * rho 23189)

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23190) * ((1 : F) + (1 : F) * rho 23189) = ((1 : F) * rho 23187 + (1 : F) * rho 23188)

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23191) * ((1 : F) + (-1 : F) * rho 23189) = ((1 : F) * rho 23186 + (-1 : F) * rho 23187 + (-1 : F) * rho 23188)

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21023) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((-1 : F), 23178), ((1 : F), 23190)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23192)

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21023) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((-1 : F), 23179), ((1 : F), 23191)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23193)

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23183) * ((1 : F) * rho 23184) = ((1 : F) * rho 23194)

def relationRow2332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23183) * ((1 : F) * rho 23183) = ((1 : F) * rho 23195)

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23184) * ((1 : F) * rho 23184) = ((1 : F) * rho 23196)

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23197) * ((-1 : F) * rho 23195 + (1 : F) * rho 23196) = ((2 : F) * rho 23194)

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23198) * ((2 : F) + (1 : F) * rho 23195 + (-1 : F) * rho 23196) = ((1 : F) * rho 23195 + (1 : F) * rho 23196)

def relationRow2336 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165), ((1 : F), 23178), ((1 : F), 23179), ((1 : F), 23192), ((1 : F), 23193)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23199)

def relationRow2337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23199) * ((1 : F) * rho 23197 + (1 : F) * rho 23198) = ((1 : F) * rho 23200)

def relationRow2338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23198) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164), ((1 : F), 23178), ((1 : F), 23192)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23201)

def relationRow2339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23197) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165), ((1 : F), 23179), ((1 : F), 23193)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23202)

def relationRow2340 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23201) * ((1 : F) * rho 23202) = ((1 : F) * rho 23203)

def relationRow2341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23204) * ((1 : F) + (1 : F) * rho 23203) = ((1 : F) * rho 23201 + (1 : F) * rho 23202)

def relationRow2342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23205) * ((1 : F) + (-1 : F) * rho 23203) = ((1 : F) * rho 23200 + (-1 : F) * rho 23201 + (-1 : F) * rho 23202)

def relationRow2343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((-1 : F), 23178), ((-1 : F), 23192), ((1 : F), 23204)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23206)

def relationRow2344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((-1 : F), 23179), ((-1 : F), 23193), ((1 : F), 23205)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23207)

def relationRow2345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23197) * ((1 : F) * rho 23198) = ((1 : F) * rho 23208)

def relationRow2346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23197) * ((1 : F) * rho 23197) = ((1 : F) * rho 23209)

def relationRow2347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23198) * ((1 : F) * rho 23198) = ((1 : F) * rho 23210)

def relationRow2348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23211) * ((-1 : F) * rho 23209 + (1 : F) * rho 23210) = ((2 : F) * rho 23208)

def relationRow2349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23212) * ((2 : F) + (1 : F) * rho 23209 + (-1 : F) * rho 23210) = ((1 : F) * rho 23209 + (1 : F) * rho 23210)

def relationRow2350 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165), ((1 : F), 23178), ((1 : F), 23179), ((1 : F), 23192), ((1 : F), 23193), ((1 : F), 23206), ((1 : F), 23207)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23213)

def relationRow2351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23213) * ((1 : F) * rho 23211 + (1 : F) * rho 23212) = ((1 : F) * rho 23214)

def relationRow2352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23212) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164), ((1 : F), 23178), ((1 : F), 23192), ((1 : F), 23206)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23215)

def relationRow2353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23211) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165), ((1 : F), 23179), ((1 : F), 23193), ((1 : F), 23207)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23216)

def relationRow2354 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23215) * ((1 : F) * rho 23216) = ((1 : F) * rho 23217)

def relationRow2355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23218) * ((1 : F) + (1 : F) * rho 23217) = ((1 : F) * rho 23215 + (1 : F) * rho 23216)

def relationRow2356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23219) * ((1 : F) + (-1 : F) * rho 23217) = ((1 : F) * rho 23214 + (-1 : F) * rho 23215 + (-1 : F) * rho 23216)

def relationRow2357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((-1 : F), 23178), ((-1 : F), 23192), ((-1 : F), 23206), ((1 : F), 23218)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23220)

def relationRow2358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21025) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((-1 : F), 23179), ((-1 : F), 23193), ((-1 : F), 23207), ((1 : F), 23219)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23221)

def relationRow2359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23211) * ((1 : F) * rho 23212) = ((1 : F) * rho 23222)

def relationRow2360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23211) * ((1 : F) * rho 23211) = ((1 : F) * rho 23223)

def relationRow2361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23212) * ((1 : F) * rho 23212) = ((1 : F) * rho 23224)

def relationRow2362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23225) * ((-1 : F) * rho 23223 + (1 : F) * rho 23224) = ((2 : F) * rho 23222)

def relationRow2363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23226) * ((2 : F) + (1 : F) * rho 23223 + (-1 : F) * rho 23224) = ((1 : F) * rho 23223 + (1 : F) * rho 23224)

def relationRow2364 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165), ((1 : F), 23178), ((1 : F), 23179), ((1 : F), 23192), ((1 : F), 23193), ((1 : F), 23206), ((1 : F), 23207), ((1 : F), 23220), ((1 : F), 23221)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23227)

def relationRow2365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23227) * ((1 : F) * rho 23225 + (1 : F) * rho 23226) = ((1 : F) * rho 23228)

def relationRow2366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23226) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164), ((1 : F), 23178), ((1 : F), 23192), ((1 : F), 23206), ((1 : F), 23220)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23229)

def relationRow2367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23225) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165), ((1 : F), 23179), ((1 : F), 23193), ((1 : F), 23207), ((1 : F), 23221)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23230)

def relationRow2368 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23229) * ((1 : F) * rho 23230) = ((1 : F) * rho 23231)

def relationRow2369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23232) * ((1 : F) + (1 : F) * rho 23231) = ((1 : F) * rho 23229 + (1 : F) * rho 23230)

def relationRow2370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23233) * ((1 : F) + (-1 : F) * rho 23231) = ((1 : F) * rho 23228 + (-1 : F) * rho 23229 + (-1 : F) * rho 23230)

def relationRow2371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((-1 : F), 23178), ((-1 : F), 23192), ((-1 : F), 23206), ((-1 : F), 23220), ((1 : F), 23232)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23234)

def relationRow2372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21026) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((-1 : F), 23179), ((-1 : F), 23193), ((-1 : F), 23207), ((-1 : F), 23221), ((1 : F), 23233)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23235)

def relationRow2373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23225) * ((1 : F) * rho 23226) = ((1 : F) * rho 23236)

def relationRow2374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23225) * ((1 : F) * rho 23225) = ((1 : F) * rho 23237)

def relationRow2375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23226) * ((1 : F) * rho 23226) = ((1 : F) * rho 23238)

def relationRow2376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23239) * ((-1 : F) * rho 23237 + (1 : F) * rho 23238) = ((2 : F) * rho 23236)

def relationRow2377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23240) * ((2 : F) + (1 : F) * rho 23237 + (-1 : F) * rho 23238) = ((1 : F) * rho 23237 + (1 : F) * rho 23238)

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165), ((1 : F), 23178), ((1 : F), 23179), ((1 : F), 23192), ((1 : F), 23193), ((1 : F), 23206), ((1 : F), 23207), ((1 : F), 23220), ((1 : F), 23221), ((1 : F), 23234), ((1 : F), 23235)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23241)

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23241) * ((1 : F) * rho 23239 + (1 : F) * rho 23240) = ((1 : F) * rho 23242)

def relationRow2380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23240) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164), ((1 : F), 23178), ((1 : F), 23192), ((1 : F), 23206), ((1 : F), 23220), ((1 : F), 23234)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23243)

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23239) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165), ((1 : F), 23179), ((1 : F), 23193), ((1 : F), 23207), ((1 : F), 23221), ((1 : F), 23235)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23244)

def relationRow2382 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23243) * ((1 : F) * rho 23244) = ((1 : F) * rho 23245)

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23246) * ((1 : F) + (1 : F) * rho 23245) = ((1 : F) * rho 23243 + (1 : F) * rho 23244)

def relationRow2384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23247) * ((1 : F) + (-1 : F) * rho 23245) = ((1 : F) * rho 23242 + (-1 : F) * rho 23243 + (-1 : F) * rho 23244)

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((-1 : F), 23178), ((-1 : F), 23192), ((-1 : F), 23206), ((-1 : F), 23220), ((-1 : F), 23234), ((1 : F), 23246)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23248)

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21027) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((-1 : F), 23179), ((-1 : F), 23193), ((-1 : F), 23207), ((-1 : F), 23221), ((-1 : F), 23235), ((1 : F), 23247)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23249)

def relationRow2387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23239) * ((1 : F) * rho 23240) = ((1 : F) * rho 23250)

def relationRow2388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23239) * ((1 : F) * rho 23239) = ((1 : F) * rho 23251)

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23240) * ((1 : F) * rho 23240) = ((1 : F) * rho 23252)

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23253) * ((-1 : F) * rho 23251 + (1 : F) * rho 23252) = ((2 : F) * rho 23250)

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23254) * ((2 : F) + (1 : F) * rho 23251 + (-1 : F) * rho 23252) = ((1 : F) * rho 23251 + (1 : F) * rho 23252)

def relationRow2392 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165), ((1 : F), 23178), ((1 : F), 23179), ((1 : F), 23192), ((1 : F), 23193), ((1 : F), 23206), ((1 : F), 23207), ((1 : F), 23220), ((1 : F), 23221), ((1 : F), 23234), ((1 : F), 23235), ((1 : F), 23248), ((1 : F), 23249)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23255)

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23255) * ((1 : F) * rho 23253 + (1 : F) * rho 23254) = ((1 : F) * rho 23256)

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23254) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164), ((1 : F), 23178), ((1 : F), 23192), ((1 : F), 23206), ((1 : F), 23220), ((1 : F), 23234), ((1 : F), 23248)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23257)

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23253) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165), ((1 : F), 23179), ((1 : F), 23193), ((1 : F), 23207), ((1 : F), 23221), ((1 : F), 23235), ((1 : F), 23249)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23258)

def relationRow2396 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23257) * ((1 : F) * rho 23258) = ((1 : F) * rho 23259)

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23260) * ((1 : F) + (1 : F) * rho 23259) = ((1 : F) * rho 23257 + (1 : F) * rho 23258)

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23261) * ((1 : F) + (-1 : F) * rho 23259) = ((1 : F) * rho 23256 + (-1 : F) * rho 23257 + (-1 : F) * rho 23258)

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((-1 : F), 23178), ((-1 : F), 23192), ((-1 : F), 23206), ((-1 : F), 23220), ((-1 : F), 23234), ((-1 : F), 23248), ((1 : F), 23260)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23262)

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21028) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((-1 : F), 23179), ((-1 : F), 23193), ((-1 : F), 23207), ((-1 : F), 23221), ((-1 : F), 23235), ((-1 : F), 23249), ((1 : F), 23261)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23263)

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23253) * ((1 : F) * rho 23254) = ((1 : F) * rho 23264)

def relationRow2402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23253) * ((1 : F) * rho 23253) = ((1 : F) * rho 23265)

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23254) * ((1 : F) * rho 23254) = ((1 : F) * rho 23266)

def relationRow2404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23267) * ((-1 : F) * rho 23265 + (1 : F) * rho 23266) = ((2 : F) * rho 23264)

def relationRow2405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23268) * ((2 : F) + (1 : F) * rho 23265 + (-1 : F) * rho 23266) = ((1 : F) * rho 23265 + (1 : F) * rho 23266)

def relationRow2406 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23067), ((1 : F), 23080), ((1 : F), 23081), ((1 : F), 23094), ((1 : F), 23095), ((1 : F), 23108), ((1 : F), 23109), ((1 : F), 23122), ((1 : F), 23123), ((1 : F), 23136), ((1 : F), 23137), ((1 : F), 23150), ((1 : F), 23151), ((1 : F), 23164), ((1 : F), 23165), ((1 : F), 23178), ((1 : F), 23179), ((1 : F), 23192), ((1 : F), 23193), ((1 : F), 23206), ((1 : F), 23207), ((1 : F), 23220), ((1 : F), 23221), ((1 : F), 23234), ((1 : F), 23235), ((1 : F), 23248), ((1 : F), 23249), ((1 : F), 23262), ((1 : F), 23263)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23269)

def relationRow2407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23269) * ((1 : F) * rho 23267 + (1 : F) * rho 23268) = ((1 : F) * rho 23270)

def relationRow2408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23268) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩], residual := [((1 : F), 23066), ((1 : F), 23080), ((1 : F), 23094), ((1 : F), 23108), ((1 : F), 23122), ((1 : F), 23136), ((1 : F), 23150), ((1 : F), 23164), ((1 : F), 23178), ((1 : F), 23192), ((1 : F), 23206), ((1 : F), 23220), ((1 : F), 23234), ((1 : F), 23248), ((1 : F), 23262)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23271)

def relationRow2409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23267) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩], residual := [((1 : F), 23067), ((1 : F), 23081), ((1 : F), 23095), ((1 : F), 23109), ((1 : F), 23123), ((1 : F), 23137), ((1 : F), 23151), ((1 : F), 23165), ((1 : F), 23179), ((1 : F), 23193), ((1 : F), 23207), ((1 : F), 23221), ((1 : F), 23235), ((1 : F), 23249), ((1 : F), 23263)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23272)

def relationRow2410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23271) * ((1 : F) * rho 23272) = ((1 : F) * rho 23273)

def relationRow2411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23274) * ((1 : F) + (1 : F) * rho 23273) = ((1 : F) * rho 23271 + (1 : F) * rho 23272)

def relationRow2412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23275) * ((1 : F) + (-1 : F) * rho 23273) = ((1 : F) * rho 23270 + (-1 : F) * rho 23271 + (-1 : F) * rho 23272)

def relationRow2413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩], residual := [((-1 : F), 23066), ((-1 : F), 23080), ((-1 : F), 23094), ((-1 : F), 23108), ((-1 : F), 23122), ((-1 : F), 23136), ((-1 : F), 23150), ((-1 : F), 23164), ((-1 : F), 23178), ((-1 : F), 23192), ((-1 : F), 23206), ((-1 : F), 23220), ((-1 : F), 23234), ((-1 : F), 23248), ((-1 : F), 23262), ((1 : F), 23274)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23276)

def relationRow2414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21029) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩], residual := [((-1 : F), 23067), ((-1 : F), 23081), ((-1 : F), 23095), ((-1 : F), 23109), ((-1 : F), 23123), ((-1 : F), 23137), ((-1 : F), 23151), ((-1 : F), 23165), ((-1 : F), 23179), ((-1 : F), 23193), ((-1 : F), 23207), ((-1 : F), 23221), ((-1 : F), 23235), ((-1 : F), 23249), ((-1 : F), 23263), ((1 : F), 23275)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23277)

def relationRow2415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23267) * ((1 : F) * rho 23268) = ((1 : F) * rho 23278)

def relationRow2416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23267) * ((1 : F) * rho 23267) = ((1 : F) * rho 23279)

def relationRow2417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23268) * ((1 : F) * rho 23268) = ((1 : F) * rho 23280)

def relationRow2418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23281) * ((-1 : F) * rho 23279 + (1 : F) * rho 23280) = ((2 : F) * rho 23278)

def relationRow2419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23282) * ((2 : F) + (1 : F) * rho 23279 + (-1 : F) * rho 23280) = ((1 : F) * rho 23279 + (1 : F) * rho 23280)

def relationRow2420 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 16⟩, ⟨(1 : F), 23067, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23283)

def relationRow2421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23283) * ((1 : F) * rho 23281 + (1 : F) * rho 23282) = ((1 : F) * rho 23284)

def relationRow2422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23282) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23285)

def relationRow2423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23281) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23286)

def relationRow2424 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23285) * ((1 : F) * rho 23286) = ((1 : F) * rho 23287)

def relationRow2425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23288) * ((1 : F) + (1 : F) * rho 23287) = ((1 : F) * rho 23285 + (1 : F) * rho 23286)

def relationRow2426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23289) * ((1 : F) + (-1 : F) * rho 23287) = ((1 : F) * rho 23284 + (-1 : F) * rho 23285 + (-1 : F) * rho 23286)

def relationRow2427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 16⟩], residual := [((1 : F), 23288)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23290)

def relationRow2428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21030) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 16⟩], residual := [((1 : F), 23289)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23291)

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23281) * ((1 : F) * rho 23282) = ((1 : F) * rho 23292)

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23281) * ((1 : F) * rho 23281) = ((1 : F) * rho 23293)

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23282) * ((1 : F) * rho 23282) = ((1 : F) * rho 23294)

def relationRow2432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23295) * ((-1 : F) * rho 23293 + (1 : F) * rho 23294) = ((2 : F) * rho 23292)

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23296) * ((2 : F) + (1 : F) * rho 23293 + (-1 : F) * rho 23294) = ((1 : F) * rho 23293 + (1 : F) * rho 23294)

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 17⟩, ⟨(1 : F), 23067, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23297)

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23297) * ((1 : F) * rho 23295 + (1 : F) * rho 23296) = ((1 : F) * rho 23298)

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23296) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23299)

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23295) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23300)

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23299) * ((1 : F) * rho 23300) = ((1 : F) * rho 23301)

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23302) * ((1 : F) + (1 : F) * rho 23301) = ((1 : F) * rho 23299 + (1 : F) * rho 23300)

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23303) * ((1 : F) + (-1 : F) * rho 23301) = ((1 : F) * rho 23298 + (-1 : F) * rho 23299 + (-1 : F) * rho 23300)

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 17⟩], residual := [((1 : F), 23302)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23304)

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21031) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 17⟩], residual := [((1 : F), 23303)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23305)

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23295) * ((1 : F) * rho 23296) = ((1 : F) * rho 23306)

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23295) * ((1 : F) * rho 23295) = ((1 : F) * rho 23307)

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23296) * ((1 : F) * rho 23296) = ((1 : F) * rho 23308)

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23309) * ((-1 : F) * rho 23307 + (1 : F) * rho 23308) = ((2 : F) * rho 23306)

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23310) * ((2 : F) + (1 : F) * rho 23307 + (-1 : F) * rho 23308) = ((1 : F) * rho 23307 + (1 : F) * rho 23308)

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 18⟩, ⟨(1 : F), 23067, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23311)

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23311) * ((1 : F) * rho 23309 + (1 : F) * rho 23310) = ((1 : F) * rho 23312)

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23310) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23313)

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23309) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 18⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23314)

def relationRow2452 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23313) * ((1 : F) * rho 23314) = ((1 : F) * rho 23315)

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23316) * ((1 : F) + (1 : F) * rho 23315) = ((1 : F) * rho 23313 + (1 : F) * rho 23314)

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23317) * ((1 : F) + (-1 : F) * rho 23315) = ((1 : F) * rho 23312 + (-1 : F) * rho 23313 + (-1 : F) * rho 23314)

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 18⟩], residual := [((1 : F), 23316)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23318)

def relationRow2456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21032) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 18⟩], residual := [((1 : F), 23317)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23319)

def relationRow2457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23309) * ((1 : F) * rho 23310) = ((1 : F) * rho 23320)

def relationRow2458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23309) * ((1 : F) * rho 23309) = ((1 : F) * rho 23321)

def relationRow2459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23310) * ((1 : F) * rho 23310) = ((1 : F) * rho 23322)

def relationRow2460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23323) * ((-1 : F) * rho 23321 + (1 : F) * rho 23322) = ((2 : F) * rho 23320)

def relationRow2461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23324) * ((2 : F) + (1 : F) * rho 23321 + (-1 : F) * rho 23322) = ((1 : F) * rho 23321 + (1 : F) * rho 23322)

def relationRow2462 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 19⟩, ⟨(1 : F), 23067, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23325)

def relationRow2463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23325) * ((1 : F) * rho 23323 + (1 : F) * rho 23324) = ((1 : F) * rho 23326)

def relationRow2464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23324) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23327)

def relationRow2465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23323) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 19⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23328)

def relationRow2466 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23327) * ((1 : F) * rho 23328) = ((1 : F) * rho 23329)

def relationRow2467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23330) * ((1 : F) + (1 : F) * rho 23329) = ((1 : F) * rho 23327 + (1 : F) * rho 23328)

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23331) * ((1 : F) + (-1 : F) * rho 23329) = ((1 : F) * rho 23326 + (-1 : F) * rho 23327 + (-1 : F) * rho 23328)

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 19⟩], residual := [((1 : F), 23330)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23332)

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21033) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 19⟩], residual := [((1 : F), 23331)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23333)

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23323) * ((1 : F) * rho 23324) = ((1 : F) * rho 23334)

def relationRow2472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23323) * ((1 : F) * rho 23323) = ((1 : F) * rho 23335)

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23324) * ((1 : F) * rho 23324) = ((1 : F) * rho 23336)

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23337) * ((-1 : F) * rho 23335 + (1 : F) * rho 23336) = ((2 : F) * rho 23334)

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23338) * ((2 : F) + (1 : F) * rho 23335 + (-1 : F) * rho 23336) = ((1 : F) * rho 23335 + (1 : F) * rho 23336)

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 20⟩, ⟨(1 : F), 23067, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23339)

def relationRow2477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23339) * ((1 : F) * rho 23337 + (1 : F) * rho 23338) = ((1 : F) * rho 23340)

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23338) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23341)

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23337) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 20⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23342)

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23341) * ((1 : F) * rho 23342) = ((1 : F) * rho 23343)

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23344) * ((1 : F) + (1 : F) * rho 23343) = ((1 : F) * rho 23341 + (1 : F) * rho 23342)

def relationRow2482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23345) * ((1 : F) + (-1 : F) * rho 23343) = ((1 : F) * rho 23340 + (-1 : F) * rho 23341 + (-1 : F) * rho 23342)

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 20⟩], residual := [((1 : F), 23344)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23346)

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21034) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 20⟩], residual := [((1 : F), 23345)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23347)

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23337) * ((1 : F) * rho 23338) = ((1 : F) * rho 23348)

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23337) * ((1 : F) * rho 23337) = ((1 : F) * rho 23349)

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23338) * ((1 : F) * rho 23338) = ((1 : F) * rho 23350)

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23351) * ((-1 : F) * rho 23349 + (1 : F) * rho 23350) = ((2 : F) * rho 23348)

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23352) * ((2 : F) + (1 : F) * rho 23349 + (-1 : F) * rho 23350) = ((1 : F) * rho 23349 + (1 : F) * rho 23350)

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 21⟩, ⟨(1 : F), 23067, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23353)

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23353) * ((1 : F) * rho 23351 + (1 : F) * rho 23352) = ((1 : F) * rho 23354)

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23352) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23355)

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23351) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 21⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23356)

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23355) * ((1 : F) * rho 23356) = ((1 : F) * rho 23357)

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23358) * ((1 : F) + (1 : F) * rho 23357) = ((1 : F) * rho 23355 + (1 : F) * rho 23356)

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23359) * ((1 : F) + (-1 : F) * rho 23357) = ((1 : F) * rho 23354 + (-1 : F) * rho 23355 + (-1 : F) * rho 23356)

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 21⟩], residual := [((1 : F), 23358)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23360)

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21035) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 21⟩], residual := [((1 : F), 23359)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23361)

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23351) * ((1 : F) * rho 23352) = ((1 : F) * rho 23362)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23351) * ((1 : F) * rho 23351) = ((1 : F) * rho 23363)

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23352) * ((1 : F) * rho 23352) = ((1 : F) * rho 23364)

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23365) * ((-1 : F) * rho 23363 + (1 : F) * rho 23364) = ((2 : F) * rho 23362)

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23366) * ((2 : F) + (1 : F) * rho 23363 + (-1 : F) * rho 23364) = ((1 : F) * rho 23363 + (1 : F) * rho 23364)

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 22⟩, ⟨(1 : F), 23067, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23367)

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23367) * ((1 : F) * rho 23365 + (1 : F) * rho 23366) = ((1 : F) * rho 23368)

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23366) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23369)

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23365) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 22⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23370)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23369) * ((1 : F) * rho 23370) = ((1 : F) * rho 23371)

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23372) * ((1 : F) + (1 : F) * rho 23371) = ((1 : F) * rho 23369 + (1 : F) * rho 23370)

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23373) * ((1 : F) + (-1 : F) * rho 23371) = ((1 : F) * rho 23368 + (-1 : F) * rho 23369 + (-1 : F) * rho 23370)

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21036) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 22⟩], residual := [((1 : F), 23372)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23374)

def relationRow2512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21036) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 22⟩], residual := [((1 : F), 23373)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23375)

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23365) * ((1 : F) * rho 23366) = ((1 : F) * rho 23376)

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23365) * ((1 : F) * rho 23365) = ((1 : F) * rho 23377)

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23366) * ((1 : F) * rho 23366) = ((1 : F) * rho 23378)

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23379) * ((-1 : F) * rho 23377 + (1 : F) * rho 23378) = ((2 : F) * rho 23376)

def relationRow2517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23380) * ((2 : F) + (1 : F) * rho 23377 + (-1 : F) * rho 23378) = ((1 : F) * rho 23377 + (1 : F) * rho 23378)

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 23⟩, ⟨(1 : F), 23067, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23381)

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23381) * ((1 : F) * rho 23379 + (1 : F) * rho 23380) = ((1 : F) * rho 23382)

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23380) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23383)

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23379) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 23⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23384)

def relationRow2522 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23383) * ((1 : F) * rho 23384) = ((1 : F) * rho 23385)

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23386) * ((1 : F) + (1 : F) * rho 23385) = ((1 : F) * rho 23383 + (1 : F) * rho 23384)

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23387) * ((1 : F) + (-1 : F) * rho 23385) = ((1 : F) * rho 23382 + (-1 : F) * rho 23383 + (-1 : F) * rho 23384)

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 23⟩], residual := [((1 : F), 23386)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23388)

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 23⟩], residual := [((1 : F), 23387)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23389)

def relationRow2527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23379) * ((1 : F) * rho 23380) = ((1 : F) * rho 23390)

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23379) * ((1 : F) * rho 23379) = ((1 : F) * rho 23391)

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23380) * ((1 : F) * rho 23380) = ((1 : F) * rho 23392)

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23393) * ((-1 : F) * rho 23391 + (1 : F) * rho 23392) = ((2 : F) * rho 23390)

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23394) * ((2 : F) + (1 : F) * rho 23391 + (-1 : F) * rho 23392) = ((1 : F) * rho 23391 + (1 : F) * rho 23392)

def relationRow2532 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 24⟩, ⟨(1 : F), 23067, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23395)

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23395) * ((1 : F) * rho 23393 + (1 : F) * rho 23394) = ((1 : F) * rho 23396)

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23394) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23397)

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23393) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 24⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23398)

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23397) * ((1 : F) * rho 23398) = ((1 : F) * rho 23399)

def relationRow2537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23400) * ((1 : F) + (1 : F) * rho 23399) = ((1 : F) * rho 23397 + (1 : F) * rho 23398)

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23401) * ((1 : F) + (-1 : F) * rho 23399) = ((1 : F) * rho 23396 + (-1 : F) * rho 23397 + (-1 : F) * rho 23398)

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 24⟩], residual := [((1 : F), 23400)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23402)

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 24⟩], residual := [((1 : F), 23401)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23403)

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23393) * ((1 : F) * rho 23394) = ((1 : F) * rho 23404)

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23393) * ((1 : F) * rho 23393) = ((1 : F) * rho 23405)

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23394) * ((1 : F) * rho 23394) = ((1 : F) * rho 23406)

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23407) * ((-1 : F) * rho 23405 + (1 : F) * rho 23406) = ((2 : F) * rho 23404)

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23408) * ((2 : F) + (1 : F) * rho 23405 + (-1 : F) * rho 23406) = ((1 : F) * rho 23405 + (1 : F) * rho 23406)

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 25⟩, ⟨(1 : F), 23067, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23409)

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23409) * ((1 : F) * rho 23407 + (1 : F) * rho 23408) = ((1 : F) * rho 23410)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23408) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23411)

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23407) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 25⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23412)

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23411) * ((1 : F) * rho 23412) = ((1 : F) * rho 23413)

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23414) * ((1 : F) + (1 : F) * rho 23413) = ((1 : F) * rho 23411 + (1 : F) * rho 23412)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23415) * ((1 : F) + (-1 : F) * rho 23413) = ((1 : F) * rho 23410 + (-1 : F) * rho 23411 + (-1 : F) * rho 23412)

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21039) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 25⟩], residual := [((1 : F), 23414)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23416)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21039) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 25⟩], residual := [((1 : F), 23415)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23417)

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23407) * ((1 : F) * rho 23408) = ((1 : F) * rho 23418)

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23407) * ((1 : F) * rho 23407) = ((1 : F) * rho 23419)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23408) * ((1 : F) * rho 23408) = ((1 : F) * rho 23420)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23421) * ((-1 : F) * rho 23419 + (1 : F) * rho 23420) = ((2 : F) * rho 23418)

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23422) * ((2 : F) + (1 : F) * rho 23419 + (-1 : F) * rho 23420) = ((1 : F) * rho 23419 + (1 : F) * rho 23420)

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 26⟩, ⟨(1 : F), 23067, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23423)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23423) * ((1 : F) * rho 23421 + (1 : F) * rho 23422) = ((1 : F) * rho 23424)

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23422) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23425)

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23421) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 26⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23426)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23425) * ((1 : F) * rho 23426) = ((1 : F) * rho 23427)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23428) * ((1 : F) + (1 : F) * rho 23427) = ((1 : F) * rho 23425 + (1 : F) * rho 23426)

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23429) * ((1 : F) + (-1 : F) * rho 23427) = ((1 : F) * rho 23424 + (-1 : F) * rho 23425 + (-1 : F) * rho 23426)

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21040) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 26⟩], residual := [((1 : F), 23428)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23430)

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21040) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 26⟩], residual := [((1 : F), 23429)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23431)

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23421) * ((1 : F) * rho 23422) = ((1 : F) * rho 23432)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23421) * ((1 : F) * rho 23421) = ((1 : F) * rho 23433)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23422) * ((1 : F) * rho 23422) = ((1 : F) * rho 23434)

def relationRow2572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23435) * ((-1 : F) * rho 23433 + (1 : F) * rho 23434) = ((2 : F) * rho 23432)

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23436) * ((2 : F) + (1 : F) * rho 23433 + (-1 : F) * rho 23434) = ((1 : F) * rho 23433 + (1 : F) * rho 23434)

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 27⟩, ⟨(1 : F), 23067, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23437)

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23437) * ((1 : F) * rho 23435 + (1 : F) * rho 23436) = ((1 : F) * rho 23438)

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23436) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23439)

def relationRow2577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23435) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 27⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23440)

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23439) * ((1 : F) * rho 23440) = ((1 : F) * rho 23441)

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23442) * ((1 : F) + (1 : F) * rho 23441) = ((1 : F) * rho 23439 + (1 : F) * rho 23440)

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23443) * ((1 : F) + (-1 : F) * rho 23441) = ((1 : F) * rho 23438 + (-1 : F) * rho 23439 + (-1 : F) * rho 23440)

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 27⟩], residual := [((1 : F), 23442)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23444)

def relationRow2582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21041) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 27⟩], residual := [((1 : F), 23443)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23445)

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23435) * ((1 : F) * rho 23436) = ((1 : F) * rho 23446)

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23435) * ((1 : F) * rho 23435) = ((1 : F) * rho 23447)

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23436) * ((1 : F) * rho 23436) = ((1 : F) * rho 23448)

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23449) * ((-1 : F) * rho 23447 + (1 : F) * rho 23448) = ((2 : F) * rho 23446)

def relationRow2587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23450) * ((2 : F) + (1 : F) * rho 23447 + (-1 : F) * rho 23448) = ((1 : F) * rho 23447 + (1 : F) * rho 23448)

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 28⟩, ⟨(1 : F), 23067, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23451)

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23451) * ((1 : F) * rho 23449 + (1 : F) * rho 23450) = ((1 : F) * rho 23452)

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23450) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23453)

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23449) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 28⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23454)

def relationRow2592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23453) * ((1 : F) * rho 23454) = ((1 : F) * rho 23455)

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23456) * ((1 : F) + (1 : F) * rho 23455) = ((1 : F) * rho 23453 + (1 : F) * rho 23454)

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23457) * ((1 : F) + (-1 : F) * rho 23455) = ((1 : F) * rho 23452 + (-1 : F) * rho 23453 + (-1 : F) * rho 23454)

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 28⟩], residual := [((1 : F), 23456)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23458)

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21042) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 28⟩], residual := [((1 : F), 23457)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23459)

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23449) * ((1 : F) * rho 23450) = ((1 : F) * rho 23460)

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23449) * ((1 : F) * rho 23449) = ((1 : F) * rho 23461)

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23450) * ((1 : F) * rho 23450) = ((1 : F) * rho 23462)

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23463) * ((-1 : F) * rho 23461 + (1 : F) * rho 23462) = ((2 : F) * rho 23460)

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23464) * ((2 : F) + (1 : F) * rho 23461 + (-1 : F) * rho 23462) = ((1 : F) * rho 23461 + (1 : F) * rho 23462)

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 29⟩, ⟨(1 : F), 23067, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23465)

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23465) * ((1 : F) * rho 23463 + (1 : F) * rho 23464) = ((1 : F) * rho 23466)

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23464) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23467)

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23463) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 29⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23468)

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23467) * ((1 : F) * rho 23468) = ((1 : F) * rho 23469)

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23470) * ((1 : F) + (1 : F) * rho 23469) = ((1 : F) * rho 23467 + (1 : F) * rho 23468)

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23471) * ((1 : F) + (-1 : F) * rho 23469) = ((1 : F) * rho 23466 + (-1 : F) * rho 23467 + (-1 : F) * rho 23468)

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 29⟩], residual := [((1 : F), 23470)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23472)

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21043) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 29⟩], residual := [((1 : F), 23471)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23473)

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23463) * ((1 : F) * rho 23464) = ((1 : F) * rho 23474)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23463) * ((1 : F) * rho 23463) = ((1 : F) * rho 23475)

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23464) * ((1 : F) * rho 23464) = ((1 : F) * rho 23476)

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23477) * ((-1 : F) * rho 23475 + (1 : F) * rho 23476) = ((2 : F) * rho 23474)

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23478) * ((2 : F) + (1 : F) * rho 23475 + (-1 : F) * rho 23476) = ((1 : F) * rho 23475 + (1 : F) * rho 23476)

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 30⟩, ⟨(1 : F), 23067, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23479)

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23479) * ((1 : F) * rho 23477 + (1 : F) * rho 23478) = ((1 : F) * rho 23480)

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23478) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23481)

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23477) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 30⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23482)

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23481) * ((1 : F) * rho 23482) = ((1 : F) * rho 23483)

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23484) * ((1 : F) + (1 : F) * rho 23483) = ((1 : F) * rho 23481 + (1 : F) * rho 23482)

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23485) * ((1 : F) + (-1 : F) * rho 23483) = ((1 : F) * rho 23480 + (-1 : F) * rho 23481 + (-1 : F) * rho 23482)

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 30⟩], residual := [((1 : F), 23484)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23486)

def relationRow2624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21044) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 30⟩], residual := [((1 : F), 23485)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23487)

def relationRow2625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23477) * ((1 : F) * rho 23478) = ((1 : F) * rho 23488)

def relationRow2626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23477) * ((1 : F) * rho 23477) = ((1 : F) * rho 23489)

def relationRow2627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23478) * ((1 : F) * rho 23478) = ((1 : F) * rho 23490)

def relationRow2628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23491) * ((-1 : F) * rho 23489 + (1 : F) * rho 23490) = ((2 : F) * rho 23488)

def relationRow2629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23492) * ((2 : F) + (1 : F) * rho 23489 + (-1 : F) * rho 23490) = ((1 : F) * rho 23489 + (1 : F) * rho 23490)

def relationRow2630 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 31⟩, ⟨(1 : F), 23067, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23493)

def relationRow2631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23493) * ((1 : F) * rho 23491 + (1 : F) * rho 23492) = ((1 : F) * rho 23494)

def relationRow2632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23492) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23495)

def relationRow2633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23491) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 31⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23496)

def relationRow2634 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23495) * ((1 : F) * rho 23496) = ((1 : F) * rho 23497)

def relationRow2635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23498) * ((1 : F) + (1 : F) * rho 23497) = ((1 : F) * rho 23495 + (1 : F) * rho 23496)

def relationRow2636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23499) * ((1 : F) + (-1 : F) * rho 23497) = ((1 : F) * rho 23494 + (-1 : F) * rho 23495 + (-1 : F) * rho 23496)

def relationRow2637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 31⟩], residual := [((1 : F), 23498)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23500)

def relationRow2638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21045) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 31⟩], residual := [((1 : F), 23499)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23501)

def relationRow2639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23491) * ((1 : F) * rho 23492) = ((1 : F) * rho 23502)

def relationRow2640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23491) * ((1 : F) * rho 23491) = ((1 : F) * rho 23503)

def relationRow2641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23492) * ((1 : F) * rho 23492) = ((1 : F) * rho 23504)

def relationRow2642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23505) * ((-1 : F) * rho 23503 + (1 : F) * rho 23504) = ((2 : F) * rho 23502)

def relationRow2643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23506) * ((2 : F) + (1 : F) * rho 23503 + (-1 : F) * rho 23504) = ((1 : F) * rho 23503 + (1 : F) * rho 23504)

def relationRow2644 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 32⟩, ⟨(1 : F), 23067, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23507)

def relationRow2645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23507) * ((1 : F) * rho 23505 + (1 : F) * rho 23506) = ((1 : F) * rho 23508)

def relationRow2646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23506) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23509)

def relationRow2647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23505) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 32⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23510)

def relationRow2648 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23509) * ((1 : F) * rho 23510) = ((1 : F) * rho 23511)

def relationRow2649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23512) * ((1 : F) + (1 : F) * rho 23511) = ((1 : F) * rho 23509 + (1 : F) * rho 23510)

def relationRow2650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23513) * ((1 : F) + (-1 : F) * rho 23511) = ((1 : F) * rho 23508 + (-1 : F) * rho 23509 + (-1 : F) * rho 23510)

def relationRow2651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21046) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 32⟩], residual := [((1 : F), 23512)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23514)

def relationRow2652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21046) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 32⟩], residual := [((1 : F), 23513)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23515)

def relationRow2653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23505) * ((1 : F) * rho 23506) = ((1 : F) * rho 23516)

def relationRow2654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23505) * ((1 : F) * rho 23505) = ((1 : F) * rho 23517)

def relationRow2655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23506) * ((1 : F) * rho 23506) = ((1 : F) * rho 23518)

def relationRow2656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23519) * ((-1 : F) * rho 23517 + (1 : F) * rho 23518) = ((2 : F) * rho 23516)

def relationRow2657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23520) * ((2 : F) + (1 : F) * rho 23517 + (-1 : F) * rho 23518) = ((1 : F) * rho 23517 + (1 : F) * rho 23518)

def relationRow2658 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 33⟩, ⟨(1 : F), 23067, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23521)

def relationRow2659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23521) * ((1 : F) * rho 23519 + (1 : F) * rho 23520) = ((1 : F) * rho 23522)

def relationRow2660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23520) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23523)

def relationRow2661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23519) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 33⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23524)

def relationRow2662 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23523) * ((1 : F) * rho 23524) = ((1 : F) * rho 23525)

def relationRow2663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23526) * ((1 : F) + (1 : F) * rho 23525) = ((1 : F) * rho 23523 + (1 : F) * rho 23524)

def relationRow2664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23527) * ((1 : F) + (-1 : F) * rho 23525) = ((1 : F) * rho 23522 + (-1 : F) * rho 23523 + (-1 : F) * rho 23524)

def relationRow2665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 33⟩], residual := [((1 : F), 23526)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23528)

def relationRow2666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21047) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 33⟩], residual := [((1 : F), 23527)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23529)

def relationRow2667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23519) * ((1 : F) * rho 23520) = ((1 : F) * rho 23530)

def relationRow2668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23519) * ((1 : F) * rho 23519) = ((1 : F) * rho 23531)

def relationRow2669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23520) * ((1 : F) * rho 23520) = ((1 : F) * rho 23532)

def relationRow2670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23533) * ((-1 : F) * rho 23531 + (1 : F) * rho 23532) = ((2 : F) * rho 23530)

def relationRow2671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23534) * ((2 : F) + (1 : F) * rho 23531 + (-1 : F) * rho 23532) = ((1 : F) * rho 23531 + (1 : F) * rho 23532)

def relationRow2672 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 34⟩, ⟨(1 : F), 23067, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23535)

def relationRow2673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23535) * ((1 : F) * rho 23533 + (1 : F) * rho 23534) = ((1 : F) * rho 23536)

def relationRow2674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23534) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23537)

def relationRow2675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23533) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 34⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23538)

def relationRow2676 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23537) * ((1 : F) * rho 23538) = ((1 : F) * rho 23539)

def relationRow2677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23540) * ((1 : F) + (1 : F) * rho 23539) = ((1 : F) * rho 23537 + (1 : F) * rho 23538)

def relationRow2678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23541) * ((1 : F) + (-1 : F) * rho 23539) = ((1 : F) * rho 23536 + (-1 : F) * rho 23537 + (-1 : F) * rho 23538)

def relationRow2679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 34⟩], residual := [((1 : F), 23540)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23542)

def relationRow2680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21048) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 34⟩], residual := [((1 : F), 23541)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23543)

def relationRow2681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23533) * ((1 : F) * rho 23534) = ((1 : F) * rho 23544)

def relationRow2682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23533) * ((1 : F) * rho 23533) = ((1 : F) * rho 23545)

def relationRow2683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23534) * ((1 : F) * rho 23534) = ((1 : F) * rho 23546)

def relationRow2684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23547) * ((-1 : F) * rho 23545 + (1 : F) * rho 23546) = ((2 : F) * rho 23544)

def relationRow2685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23548) * ((2 : F) + (1 : F) * rho 23545 + (-1 : F) * rho 23546) = ((1 : F) * rho 23545 + (1 : F) * rho 23546)

def relationRow2686 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 35⟩, ⟨(1 : F), 23067, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23549)

def relationRow2687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23549) * ((1 : F) * rho 23547 + (1 : F) * rho 23548) = ((1 : F) * rho 23550)

def relationRow2688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23548) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23551)

def relationRow2689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23547) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 35⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23552)

def relationRow2690 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23551) * ((1 : F) * rho 23552) = ((1 : F) * rho 23553)

def relationRow2691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23554) * ((1 : F) + (1 : F) * rho 23553) = ((1 : F) * rho 23551 + (1 : F) * rho 23552)

def relationRow2692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23555) * ((1 : F) + (-1 : F) * rho 23553) = ((1 : F) * rho 23550 + (-1 : F) * rho 23551 + (-1 : F) * rho 23552)

def relationRow2693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21049) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 35⟩], residual := [((1 : F), 23554)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23556)

def relationRow2694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21049) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 35⟩], residual := [((1 : F), 23555)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23557)

def relationRow2695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23547) * ((1 : F) * rho 23548) = ((1 : F) * rho 23558)

def relationRow2696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23547) * ((1 : F) * rho 23547) = ((1 : F) * rho 23559)

def relationRow2697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23548) * ((1 : F) * rho 23548) = ((1 : F) * rho 23560)

def relationRow2698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23561) * ((-1 : F) * rho 23559 + (1 : F) * rho 23560) = ((2 : F) * rho 23558)

def relationRow2699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23562) * ((2 : F) + (1 : F) * rho 23559 + (-1 : F) * rho 23560) = ((1 : F) * rho 23559 + (1 : F) * rho 23560)

def relationRow2700 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 36⟩, ⟨(1 : F), 23067, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23563)

def relationRow2701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23563) * ((1 : F) * rho 23561 + (1 : F) * rho 23562) = ((1 : F) * rho 23564)

def relationRow2702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23562) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23565)

def relationRow2703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23561) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 36⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23566)

def relationRow2704 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23565) * ((1 : F) * rho 23566) = ((1 : F) * rho 23567)

def relationRow2705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23568) * ((1 : F) + (1 : F) * rho 23567) = ((1 : F) * rho 23565 + (1 : F) * rho 23566)

def relationRow2706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23569) * ((1 : F) + (-1 : F) * rho 23567) = ((1 : F) * rho 23564 + (-1 : F) * rho 23565 + (-1 : F) * rho 23566)

def relationRow2707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21050) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 36⟩], residual := [((1 : F), 23568)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23570)

def relationRow2708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21050) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 36⟩], residual := [((1 : F), 23569)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23571)

def relationRow2709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23561) * ((1 : F) * rho 23562) = ((1 : F) * rho 23572)

def relationRow2710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23561) * ((1 : F) * rho 23561) = ((1 : F) * rho 23573)

def relationRow2711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23562) * ((1 : F) * rho 23562) = ((1 : F) * rho 23574)

def relationRow2712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23575) * ((-1 : F) * rho 23573 + (1 : F) * rho 23574) = ((2 : F) * rho 23572)

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23576) * ((2 : F) + (1 : F) * rho 23573 + (-1 : F) * rho 23574) = ((1 : F) * rho 23573 + (1 : F) * rho 23574)

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 37⟩, ⟨(1 : F), 23067, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23577)

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23577) * ((1 : F) * rho 23575 + (1 : F) * rho 23576) = ((1 : F) * rho 23578)

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23576) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23579)

def relationRow2717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23575) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 37⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23580)

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23579) * ((1 : F) * rho 23580) = ((1 : F) * rho 23581)

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23582) * ((1 : F) + (1 : F) * rho 23581) = ((1 : F) * rho 23579 + (1 : F) * rho 23580)

def relationRow2720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23583) * ((1 : F) + (-1 : F) * rho 23581) = ((1 : F) * rho 23578 + (-1 : F) * rho 23579 + (-1 : F) * rho 23580)

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 37⟩], residual := [((1 : F), 23582)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23584)

def relationRow2722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 37⟩], residual := [((1 : F), 23583)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23585)

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23575) * ((1 : F) * rho 23576) = ((1 : F) * rho 23586)

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23575) * ((1 : F) * rho 23575) = ((1 : F) * rho 23587)

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23576) * ((1 : F) * rho 23576) = ((1 : F) * rho 23588)

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23589) * ((-1 : F) * rho 23587 + (1 : F) * rho 23588) = ((2 : F) * rho 23586)

def relationRow2727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23590) * ((2 : F) + (1 : F) * rho 23587 + (-1 : F) * rho 23588) = ((1 : F) * rho 23587 + (1 : F) * rho 23588)

def relationRow2728 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 38⟩, ⟨(1 : F), 23067, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23591)

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23591) * ((1 : F) * rho 23589 + (1 : F) * rho 23590) = ((1 : F) * rho 23592)

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23590) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23593)

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23589) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 38⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23594)

def relationRow2732 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23593) * ((1 : F) * rho 23594) = ((1 : F) * rho 23595)

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23596) * ((1 : F) + (1 : F) * rho 23595) = ((1 : F) * rho 23593 + (1 : F) * rho 23594)

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23597) * ((1 : F) + (-1 : F) * rho 23595) = ((1 : F) * rho 23592 + (-1 : F) * rho 23593 + (-1 : F) * rho 23594)

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21052) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 38⟩], residual := [((1 : F), 23596)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23598)

def relationRow2736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21052) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 38⟩], residual := [((1 : F), 23597)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23599)

def relationRow2737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23589) * ((1 : F) * rho 23590) = ((1 : F) * rho 23600)

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23589) * ((1 : F) * rho 23589) = ((1 : F) * rho 23601)

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23590) * ((1 : F) * rho 23590) = ((1 : F) * rho 23602)

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23603) * ((-1 : F) * rho 23601 + (1 : F) * rho 23602) = ((2 : F) * rho 23600)

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23604) * ((2 : F) + (1 : F) * rho 23601 + (-1 : F) * rho 23602) = ((1 : F) * rho 23601 + (1 : F) * rho 23602)

def relationRow2742 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 39⟩, ⟨(1 : F), 23067, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23605)

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23605) * ((1 : F) * rho 23603 + (1 : F) * rho 23604) = ((1 : F) * rho 23606)

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23604) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23607)

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23603) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 39⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23608)

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23607) * ((1 : F) * rho 23608) = ((1 : F) * rho 23609)

def relationRow2747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23610) * ((1 : F) + (1 : F) * rho 23609) = ((1 : F) * rho 23607 + (1 : F) * rho 23608)

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23611) * ((1 : F) + (-1 : F) * rho 23609) = ((1 : F) * rho 23606 + (-1 : F) * rho 23607 + (-1 : F) * rho 23608)

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21053) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 39⟩], residual := [((1 : F), 23610)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23612)

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21053) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 39⟩], residual := [((1 : F), 23611)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23613)

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23603) * ((1 : F) * rho 23604) = ((1 : F) * rho 23614)

def relationRow2752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23603) * ((1 : F) * rho 23603) = ((1 : F) * rho 23615)

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23604) * ((1 : F) * rho 23604) = ((1 : F) * rho 23616)

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23617) * ((-1 : F) * rho 23615 + (1 : F) * rho 23616) = ((2 : F) * rho 23614)

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23618) * ((2 : F) + (1 : F) * rho 23615 + (-1 : F) * rho 23616) = ((1 : F) * rho 23615 + (1 : F) * rho 23616)

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 40⟩, ⟨(1 : F), 23067, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23619)

def relationRow2757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23619) * ((1 : F) * rho 23617 + (1 : F) * rho 23618) = ((1 : F) * rho 23620)

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23618) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23621)

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23617) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 40⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23622)

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23621) * ((1 : F) * rho 23622) = ((1 : F) * rho 23623)

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23624) * ((1 : F) + (1 : F) * rho 23623) = ((1 : F) * rho 23621 + (1 : F) * rho 23622)

def relationRow2762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23625) * ((1 : F) + (-1 : F) * rho 23623) = ((1 : F) * rho 23620 + (-1 : F) * rho 23621 + (-1 : F) * rho 23622)

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 40⟩], residual := [((1 : F), 23624)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23626)

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21054) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 40⟩], residual := [((1 : F), 23625)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23627)

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23617) * ((1 : F) * rho 23618) = ((1 : F) * rho 23628)

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23617) * ((1 : F) * rho 23617) = ((1 : F) * rho 23629)

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23618) * ((1 : F) * rho 23618) = ((1 : F) * rho 23630)

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23631) * ((-1 : F) * rho 23629 + (1 : F) * rho 23630) = ((2 : F) * rho 23628)

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23632) * ((2 : F) + (1 : F) * rho 23629 + (-1 : F) * rho 23630) = ((1 : F) * rho 23629 + (1 : F) * rho 23630)

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 41⟩, ⟨(1 : F), 23067, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23633)

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23633) * ((1 : F) * rho 23631 + (1 : F) * rho 23632) = ((1 : F) * rho 23634)

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23632) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23635)

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23631) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 41⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23636)

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23635) * ((1 : F) * rho 23636) = ((1 : F) * rho 23637)

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23638) * ((1 : F) + (1 : F) * rho 23637) = ((1 : F) * rho 23635 + (1 : F) * rho 23636)

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23639) * ((1 : F) + (-1 : F) * rho 23637) = ((1 : F) * rho 23634 + (-1 : F) * rho 23635 + (-1 : F) * rho 23636)

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 41⟩], residual := [((1 : F), 23638)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23640)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21055) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 41⟩], residual := [((1 : F), 23639)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23641)

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23631) * ((1 : F) * rho 23632) = ((1 : F) * rho 23642)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23631) * ((1 : F) * rho 23631) = ((1 : F) * rho 23643)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23632) * ((1 : F) * rho 23632) = ((1 : F) * rho 23644)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23645) * ((-1 : F) * rho 23643 + (1 : F) * rho 23644) = ((2 : F) * rho 23642)

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23646) * ((2 : F) + (1 : F) * rho 23643 + (-1 : F) * rho 23644) = ((1 : F) * rho 23643 + (1 : F) * rho 23644)

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 42⟩, ⟨(1 : F), 23067, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23647)

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23647) * ((1 : F) * rho 23645 + (1 : F) * rho 23646) = ((1 : F) * rho 23648)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23646) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23649)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23645) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 42⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23650)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23649) * ((1 : F) * rho 23650) = ((1 : F) * rho 23651)

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23652) * ((1 : F) + (1 : F) * rho 23651) = ((1 : F) * rho 23649 + (1 : F) * rho 23650)

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23653) * ((1 : F) + (-1 : F) * rho 23651) = ((1 : F) * rho 23648 + (-1 : F) * rho 23649 + (-1 : F) * rho 23650)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 42⟩], residual := [((1 : F), 23652)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23654)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21056) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 42⟩], residual := [((1 : F), 23653)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23655)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23645) * ((1 : F) * rho 23646) = ((1 : F) * rho 23656)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23645) * ((1 : F) * rho 23645) = ((1 : F) * rho 23657)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23646) * ((1 : F) * rho 23646) = ((1 : F) * rho 23658)

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23659) * ((-1 : F) * rho 23657 + (1 : F) * rho 23658) = ((2 : F) * rho 23656)

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23660) * ((2 : F) + (1 : F) * rho 23657 + (-1 : F) * rho 23658) = ((1 : F) * rho 23657 + (1 : F) * rho 23658)

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 43⟩, ⟨(1 : F), 23067, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23661)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23661) * ((1 : F) * rho 23659 + (1 : F) * rho 23660) = ((1 : F) * rho 23662)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23660) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23663)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23659) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 43⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23664)

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23663) * ((1 : F) * rho 23664) = ((1 : F) * rho 23665)

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23666) * ((1 : F) + (1 : F) * rho 23665) = ((1 : F) * rho 23663 + (1 : F) * rho 23664)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23667) * ((1 : F) + (-1 : F) * rho 23665) = ((1 : F) * rho 23662 + (-1 : F) * rho 23663 + (-1 : F) * rho 23664)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 43⟩], residual := [((1 : F), 23666)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23668)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21057) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 43⟩], residual := [((1 : F), 23667)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23669)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23659) * ((1 : F) * rho 23660) = ((1 : F) * rho 23670)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23659) * ((1 : F) * rho 23659) = ((1 : F) * rho 23671)

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23660) * ((1 : F) * rho 23660) = ((1 : F) * rho 23672)

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23673) * ((-1 : F) * rho 23671 + (1 : F) * rho 23672) = ((2 : F) * rho 23670)

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23674) * ((2 : F) + (1 : F) * rho 23671 + (-1 : F) * rho 23672) = ((1 : F) * rho 23671 + (1 : F) * rho 23672)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 44⟩, ⟨(1 : F), 23067, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23675)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23675) * ((1 : F) * rho 23673 + (1 : F) * rho 23674) = ((1 : F) * rho 23676)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23674) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23677)

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23673) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 44⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23678)

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23677) * ((1 : F) * rho 23678) = ((1 : F) * rho 23679)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23680) * ((1 : F) + (1 : F) * rho 23679) = ((1 : F) * rho 23677 + (1 : F) * rho 23678)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23681) * ((1 : F) + (-1 : F) * rho 23679) = ((1 : F) * rho 23676 + (-1 : F) * rho 23677 + (-1 : F) * rho 23678)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21058) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 44⟩], residual := [((1 : F), 23680)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23682)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21058) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 44⟩], residual := [((1 : F), 23681)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23683)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23673) * ((1 : F) * rho 23674) = ((1 : F) * rho 23684)

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23673) * ((1 : F) * rho 23673) = ((1 : F) * rho 23685)

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23674) * ((1 : F) * rho 23674) = ((1 : F) * rho 23686)

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23687) * ((-1 : F) * rho 23685 + (1 : F) * rho 23686) = ((2 : F) * rho 23684)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23688) * ((2 : F) + (1 : F) * rho 23685 + (-1 : F) * rho 23686) = ((1 : F) * rho 23685 + (1 : F) * rho 23686)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 45⟩, ⟨(1 : F), 23067, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23689)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23689) * ((1 : F) * rho 23687 + (1 : F) * rho 23688) = ((1 : F) * rho 23690)

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23688) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23691)

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23687) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 45⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23692)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23691) * ((1 : F) * rho 23692) = ((1 : F) * rho 23693)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23694) * ((1 : F) + (1 : F) * rho 23693) = ((1 : F) * rho 23691 + (1 : F) * rho 23692)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23695) * ((1 : F) + (-1 : F) * rho 23693) = ((1 : F) * rho 23690 + (-1 : F) * rho 23691 + (-1 : F) * rho 23692)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21059) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 45⟩], residual := [((1 : F), 23694)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23696)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21059) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 45⟩], residual := [((1 : F), 23695)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23697)

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23687) * ((1 : F) * rho 23688) = ((1 : F) * rho 23698)

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23687) * ((1 : F) * rho 23687) = ((1 : F) * rho 23699)

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23688) * ((1 : F) * rho 23688) = ((1 : F) * rho 23700)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23701) * ((-1 : F) * rho 23699 + (1 : F) * rho 23700) = ((2 : F) * rho 23698)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23702) * ((2 : F) + (1 : F) * rho 23699 + (-1 : F) * rho 23700) = ((1 : F) * rho 23699 + (1 : F) * rho 23700)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 46⟩, ⟨(1 : F), 23067, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23703)

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23703) * ((1 : F) * rho 23701 + (1 : F) * rho 23702) = ((1 : F) * rho 23704)

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23702) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23705)

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23701) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 46⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23706)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23705) * ((1 : F) * rho 23706) = ((1 : F) * rho 23707)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23708) * ((1 : F) + (1 : F) * rho 23707) = ((1 : F) * rho 23705 + (1 : F) * rho 23706)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23709) * ((1 : F) + (-1 : F) * rho 23707) = ((1 : F) * rho 23704 + (-1 : F) * rho 23705 + (-1 : F) * rho 23706)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 46⟩], residual := [((1 : F), 23708)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23710)

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21060) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 46⟩], residual := [((1 : F), 23709)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23711)

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23701) * ((1 : F) * rho 23702) = ((1 : F) * rho 23712)

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23701) * ((1 : F) * rho 23701) = ((1 : F) * rho 23713)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23702) * ((1 : F) * rho 23702) = ((1 : F) * rho 23714)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23715) * ((-1 : F) * rho 23713 + (1 : F) * rho 23714) = ((2 : F) * rho 23712)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23716) * ((2 : F) + (1 : F) * rho 23713 + (-1 : F) * rho 23714) = ((1 : F) * rho 23713 + (1 : F) * rho 23714)

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 47⟩, ⟨(1 : F), 23067, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23717)

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23717) * ((1 : F) * rho 23715 + (1 : F) * rho 23716) = ((1 : F) * rho 23718)

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23716) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23719)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23715) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 47⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23720)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23719) * ((1 : F) * rho 23720) = ((1 : F) * rho 23721)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23722) * ((1 : F) + (1 : F) * rho 23721) = ((1 : F) * rho 23719 + (1 : F) * rho 23720)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23723) * ((1 : F) + (-1 : F) * rho 23721) = ((1 : F) * rho 23718 + (-1 : F) * rho 23719 + (-1 : F) * rho 23720)

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 47⟩], residual := [((1 : F), 23722)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23724)

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21061) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 47⟩], residual := [((1 : F), 23723)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23725)

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23715) * ((1 : F) * rho 23716) = ((1 : F) * rho 23726)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23715) * ((1 : F) * rho 23715) = ((1 : F) * rho 23727)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23716) * ((1 : F) * rho 23716) = ((1 : F) * rho 23728)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23729) * ((-1 : F) * rho 23727 + (1 : F) * rho 23728) = ((2 : F) * rho 23726)

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23730) * ((2 : F) + (1 : F) * rho 23727 + (-1 : F) * rho 23728) = ((1 : F) * rho 23727 + (1 : F) * rho 23728)

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 48⟩, ⟨(1 : F), 23067, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23731)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23731) * ((1 : F) * rho 23729 + (1 : F) * rho 23730) = ((1 : F) * rho 23732)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23730) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23733)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23729) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23734)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23733) * ((1 : F) * rho 23734) = ((1 : F) * rho 23735)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23736) * ((1 : F) + (1 : F) * rho 23735) = ((1 : F) * rho 23733 + (1 : F) * rho 23734)

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23737) * ((1 : F) + (-1 : F) * rho 23735) = ((1 : F) * rho 23732 + (-1 : F) * rho 23733 + (-1 : F) * rho 23734)

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21062) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 48⟩], residual := [((1 : F), 23736)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23738)

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21062) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 48⟩], residual := [((1 : F), 23737)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23739)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23729) * ((1 : F) * rho 23730) = ((1 : F) * rho 23740)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23729) * ((1 : F) * rho 23729) = ((1 : F) * rho 23741)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23730) * ((1 : F) * rho 23730) = ((1 : F) * rho 23742)

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23743) * ((-1 : F) * rho 23741 + (1 : F) * rho 23742) = ((2 : F) * rho 23740)

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23744) * ((2 : F) + (1 : F) * rho 23741 + (-1 : F) * rho 23742) = ((1 : F) * rho 23741 + (1 : F) * rho 23742)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 49⟩, ⟨(1 : F), 23067, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23745)

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23745) * ((1 : F) * rho 23743 + (1 : F) * rho 23744) = ((1 : F) * rho 23746)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23744) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23747)

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23743) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23748)

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23747) * ((1 : F) * rho 23748) = ((1 : F) * rho 23749)

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23750) * ((1 : F) + (1 : F) * rho 23749) = ((1 : F) * rho 23747 + (1 : F) * rho 23748)

def relationRow2888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23751) * ((1 : F) + (-1 : F) * rho 23749) = ((1 : F) * rho 23746 + (-1 : F) * rho 23747 + (-1 : F) * rho 23748)

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21063) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 49⟩], residual := [((1 : F), 23750)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23752)

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21063) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 49⟩], residual := [((1 : F), 23751)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23753)

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23743) * ((1 : F) * rho 23744) = ((1 : F) * rho 23754)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23743) * ((1 : F) * rho 23743) = ((1 : F) * rho 23755)

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23744) * ((1 : F) * rho 23744) = ((1 : F) * rho 23756)

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23757) * ((-1 : F) * rho 23755 + (1 : F) * rho 23756) = ((2 : F) * rho 23754)

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23758) * ((2 : F) + (1 : F) * rho 23755 + (-1 : F) * rho 23756) = ((1 : F) * rho 23755 + (1 : F) * rho 23756)

def relationRow2896 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 50⟩, ⟨(1 : F), 23067, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23759)

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23759) * ((1 : F) * rho 23757 + (1 : F) * rho 23758) = ((1 : F) * rho 23760)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23758) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23761)

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23757) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23762)

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23761) * ((1 : F) * rho 23762) = ((1 : F) * rho 23763)

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23764) * ((1 : F) + (1 : F) * rho 23763) = ((1 : F) * rho 23761 + (1 : F) * rho 23762)

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23765) * ((1 : F) + (-1 : F) * rho 23763) = ((1 : F) * rho 23760 + (-1 : F) * rho 23761 + (-1 : F) * rho 23762)

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 50⟩], residual := [((1 : F), 23764)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23766)

def relationRow2904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21064) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 50⟩], residual := [((1 : F), 23765)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23767)

def relationRow2905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23757) * ((1 : F) * rho 23758) = ((1 : F) * rho 23768)

def relationRow2906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23757) * ((1 : F) * rho 23757) = ((1 : F) * rho 23769)

def relationRow2907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23758) * ((1 : F) * rho 23758) = ((1 : F) * rho 23770)

def relationRow2908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23771) * ((-1 : F) * rho 23769 + (1 : F) * rho 23770) = ((2 : F) * rho 23768)

def relationRow2909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23772) * ((2 : F) + (1 : F) * rho 23769 + (-1 : F) * rho 23770) = ((1 : F) * rho 23769 + (1 : F) * rho 23770)

def relationRow2910 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 51⟩, ⟨(1 : F), 23067, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23773)

def relationRow2911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23773) * ((1 : F) * rho 23771 + (1 : F) * rho 23772) = ((1 : F) * rho 23774)

def relationRow2912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23772) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23775)

def relationRow2913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23771) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23776)

def relationRow2914 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23775) * ((1 : F) * rho 23776) = ((1 : F) * rho 23777)

def relationRow2915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23778) * ((1 : F) + (1 : F) * rho 23777) = ((1 : F) * rho 23775 + (1 : F) * rho 23776)

def relationRow2916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23779) * ((1 : F) + (-1 : F) * rho 23777) = ((1 : F) * rho 23774 + (-1 : F) * rho 23775 + (-1 : F) * rho 23776)

def relationRow2917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21065) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 51⟩], residual := [((1 : F), 23778)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23780)

def relationRow2918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21065) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 51⟩], residual := [((1 : F), 23779)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23781)

def relationRow2919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23771) * ((1 : F) * rho 23772) = ((1 : F) * rho 23782)

def relationRow2920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23771) * ((1 : F) * rho 23771) = ((1 : F) * rho 23783)

def relationRow2921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23772) * ((1 : F) * rho 23772) = ((1 : F) * rho 23784)

def relationRow2922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23785) * ((-1 : F) * rho 23783 + (1 : F) * rho 23784) = ((2 : F) * rho 23782)

def relationRow2923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23786) * ((2 : F) + (1 : F) * rho 23783 + (-1 : F) * rho 23784) = ((1 : F) * rho 23783 + (1 : F) * rho 23784)

def relationRow2924 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 52⟩, ⟨(1 : F), 23067, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23787)

def relationRow2925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23787) * ((1 : F) * rho 23785 + (1 : F) * rho 23786) = ((1 : F) * rho 23788)

def relationRow2926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23786) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23789)

def relationRow2927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23785) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23790)

def relationRow2928 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23789) * ((1 : F) * rho 23790) = ((1 : F) * rho 23791)

def relationRow2929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23792) * ((1 : F) + (1 : F) * rho 23791) = ((1 : F) * rho 23789 + (1 : F) * rho 23790)

def relationRow2930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23793) * ((1 : F) + (-1 : F) * rho 23791) = ((1 : F) * rho 23788 + (-1 : F) * rho 23789 + (-1 : F) * rho 23790)

def relationRow2931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21066) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 52⟩], residual := [((1 : F), 23792)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23794)

def relationRow2932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21066) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 52⟩], residual := [((1 : F), 23793)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23795)

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23785) * ((1 : F) * rho 23786) = ((1 : F) * rho 23796)

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23785) * ((1 : F) * rho 23785) = ((1 : F) * rho 23797)

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23786) * ((1 : F) * rho 23786) = ((1 : F) * rho 23798)

def relationRow2936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23799) * ((-1 : F) * rho 23797 + (1 : F) * rho 23798) = ((2 : F) * rho 23796)

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23800) * ((2 : F) + (1 : F) * rho 23797 + (-1 : F) * rho 23798) = ((1 : F) * rho 23797 + (1 : F) * rho 23798)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 53⟩, ⟨(1 : F), 23067, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23801)

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23801) * ((1 : F) * rho 23799 + (1 : F) * rho 23800) = ((1 : F) * rho 23802)

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23800) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23803)

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23799) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23804)

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23803) * ((1 : F) * rho 23804) = ((1 : F) * rho 23805)

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23806) * ((1 : F) + (1 : F) * rho 23805) = ((1 : F) * rho 23803 + (1 : F) * rho 23804)

def relationRow2944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23807) * ((1 : F) + (-1 : F) * rho 23805) = ((1 : F) * rho 23802 + (-1 : F) * rho 23803 + (-1 : F) * rho 23804)

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 53⟩], residual := [((1 : F), 23806)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23808)

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21067) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 53⟩], residual := [((1 : F), 23807)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23809)

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23799) * ((1 : F) * rho 23800) = ((1 : F) * rho 23810)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23799) * ((1 : F) * rho 23799) = ((1 : F) * rho 23811)

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23800) * ((1 : F) * rho 23800) = ((1 : F) * rho 23812)

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23813) * ((-1 : F) * rho 23811 + (1 : F) * rho 23812) = ((2 : F) * rho 23810)

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23814) * ((2 : F) + (1 : F) * rho 23811 + (-1 : F) * rho 23812) = ((1 : F) * rho 23811 + (1 : F) * rho 23812)

def relationRow2952 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 54⟩, ⟨(1 : F), 23067, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23815)

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23815) * ((1 : F) * rho 23813 + (1 : F) * rho 23814) = ((1 : F) * rho 23816)

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23814) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23817)

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23813) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23818)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23817) * ((1 : F) * rho 23818) = ((1 : F) * rho 23819)

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23820) * ((1 : F) + (1 : F) * rho 23819) = ((1 : F) * rho 23817 + (1 : F) * rho 23818)

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23821) * ((1 : F) + (-1 : F) * rho 23819) = ((1 : F) * rho 23816 + (-1 : F) * rho 23817 + (-1 : F) * rho 23818)

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 54⟩], residual := [((1 : F), 23820)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23822)

def relationRow2960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21068) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 54⟩], residual := [((1 : F), 23821)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23823)

def relationRow2961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23813) * ((1 : F) * rho 23814) = ((1 : F) * rho 23824)

def relationRow2962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23813) * ((1 : F) * rho 23813) = ((1 : F) * rho 23825)

def relationRow2963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23814) * ((1 : F) * rho 23814) = ((1 : F) * rho 23826)

def relationRow2964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23827) * ((-1 : F) * rho 23825 + (1 : F) * rho 23826) = ((2 : F) * rho 23824)

def relationRow2965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23828) * ((2 : F) + (1 : F) * rho 23825 + (-1 : F) * rho 23826) = ((1 : F) * rho 23825 + (1 : F) * rho 23826)

def relationRow2966 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 55⟩, ⟨(1 : F), 23067, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23829)

def relationRow2967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23829) * ((1 : F) * rho 23827 + (1 : F) * rho 23828) = ((1 : F) * rho 23830)

def relationRow2968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23828) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23831)

def relationRow2969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23827) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23832)

def relationRow2970 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23831) * ((1 : F) * rho 23832) = ((1 : F) * rho 23833)

def relationRow2971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23834) * ((1 : F) + (1 : F) * rho 23833) = ((1 : F) * rho 23831 + (1 : F) * rho 23832)

def relationRow2972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23835) * ((1 : F) + (-1 : F) * rho 23833) = ((1 : F) * rho 23830 + (-1 : F) * rho 23831 + (-1 : F) * rho 23832)

def relationRow2973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 55⟩], residual := [((1 : F), 23834)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23836)

def relationRow2974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21069) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 55⟩], residual := [((1 : F), 23835)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23837)

def relationRow2975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23827) * ((1 : F) * rho 23828) = ((1 : F) * rho 23838)

def relationRow2976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23827) * ((1 : F) * rho 23827) = ((1 : F) * rho 23839)

def relationRow2977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23828) * ((1 : F) * rho 23828) = ((1 : F) * rho 23840)

def relationRow2978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23841) * ((-1 : F) * rho 23839 + (1 : F) * rho 23840) = ((2 : F) * rho 23838)

def relationRow2979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23842) * ((2 : F) + (1 : F) * rho 23839 + (-1 : F) * rho 23840) = ((1 : F) * rho 23839 + (1 : F) * rho 23840)

def relationRow2980 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 56⟩, ⟨(1 : F), 23067, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23843)

def relationRow2981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23843) * ((1 : F) * rho 23841 + (1 : F) * rho 23842) = ((1 : F) * rho 23844)

def relationRow2982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23842) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23845)

def relationRow2983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23841) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23846)

def relationRow2984 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23845) * ((1 : F) * rho 23846) = ((1 : F) * rho 23847)

def relationRow2985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23848) * ((1 : F) + (1 : F) * rho 23847) = ((1 : F) * rho 23845 + (1 : F) * rho 23846)

def relationRow2986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23849) * ((1 : F) + (-1 : F) * rho 23847) = ((1 : F) * rho 23844 + (-1 : F) * rho 23845 + (-1 : F) * rho 23846)

def relationRow2987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 56⟩], residual := [((1 : F), 23848)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23850)

def relationRow2988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21070) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 56⟩], residual := [((1 : F), 23849)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23851)

def relationRow2989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23841) * ((1 : F) * rho 23842) = ((1 : F) * rho 23852)

def relationRow2990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23841) * ((1 : F) * rho 23841) = ((1 : F) * rho 23853)

def relationRow2991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23842) * ((1 : F) * rho 23842) = ((1 : F) * rho 23854)

def relationRow2992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23855) * ((-1 : F) * rho 23853 + (1 : F) * rho 23854) = ((2 : F) * rho 23852)

def relationRow2993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23856) * ((2 : F) + (1 : F) * rho 23853 + (-1 : F) * rho 23854) = ((1 : F) * rho 23853 + (1 : F) * rho 23854)

def relationRow2994 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 57⟩, ⟨(1 : F), 23067, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23857)

def relationRow2995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23857) * ((1 : F) * rho 23855 + (1 : F) * rho 23856) = ((1 : F) * rho 23858)

def relationRow2996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23856) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23859)

def relationRow2997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23855) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23860)

def relationRow2998 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23859) * ((1 : F) * rho 23860) = ((1 : F) * rho 23861)

def relationRow2999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23862) * ((1 : F) + (1 : F) * rho 23861) = ((1 : F) * rho 23859 + (1 : F) * rho 23860)

def relationRow3000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23863) * ((1 : F) + (-1 : F) * rho 23861) = ((1 : F) * rho 23858 + (-1 : F) * rho 23859 + (-1 : F) * rho 23860)

def relationRow3001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21071) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 57⟩], residual := [((1 : F), 23862)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23864)

def relationRow3002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21071) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 57⟩], residual := [((1 : F), 23863)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23865)

def relationRow3003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23855) * ((1 : F) * rho 23856) = ((1 : F) * rho 23866)

def relationRow3004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23855) * ((1 : F) * rho 23855) = ((1 : F) * rho 23867)

def relationRow3005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23856) * ((1 : F) * rho 23856) = ((1 : F) * rho 23868)

def relationRow3006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23869) * ((-1 : F) * rho 23867 + (1 : F) * rho 23868) = ((2 : F) * rho 23866)

def relationRow3007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23870) * ((2 : F) + (1 : F) * rho 23867 + (-1 : F) * rho 23868) = ((1 : F) * rho 23867 + (1 : F) * rho 23868)

def relationRow3008 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 58⟩, ⟨(1 : F), 23067, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23871)

def relationRow3009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23871) * ((1 : F) * rho 23869 + (1 : F) * rho 23870) = ((1 : F) * rho 23872)

def relationRow3010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23870) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23873)

def relationRow3011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23869) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23874)

def relationRow3012 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23873) * ((1 : F) * rho 23874) = ((1 : F) * rho 23875)

def relationRow3013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23876) * ((1 : F) + (1 : F) * rho 23875) = ((1 : F) * rho 23873 + (1 : F) * rho 23874)

def relationRow3014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23877) * ((1 : F) + (-1 : F) * rho 23875) = ((1 : F) * rho 23872 + (-1 : F) * rho 23873 + (-1 : F) * rho 23874)

def relationRow3015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 58⟩], residual := [((1 : F), 23876)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23878)

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21072) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 58⟩], residual := [((1 : F), 23877)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23879)

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23869) * ((1 : F) * rho 23870) = ((1 : F) * rho 23880)

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23869) * ((1 : F) * rho 23869) = ((1 : F) * rho 23881)

def relationRow3019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23870) * ((1 : F) * rho 23870) = ((1 : F) * rho 23882)

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23883) * ((-1 : F) * rho 23881 + (1 : F) * rho 23882) = ((2 : F) * rho 23880)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23884) * ((2 : F) + (1 : F) * rho 23881 + (-1 : F) * rho 23882) = ((1 : F) * rho 23881 + (1 : F) * rho 23882)

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 59⟩, ⟨(1 : F), 23067, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23885)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23885) * ((1 : F) * rho 23883 + (1 : F) * rho 23884) = ((1 : F) * rho 23886)

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23884) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23887)

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23883) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23888)

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23887) * ((1 : F) * rho 23888) = ((1 : F) * rho 23889)

def relationRow3027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23890) * ((1 : F) + (1 : F) * rho 23889) = ((1 : F) * rho 23887 + (1 : F) * rho 23888)

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23891) * ((1 : F) + (-1 : F) * rho 23889) = ((1 : F) * rho 23886 + (-1 : F) * rho 23887 + (-1 : F) * rho 23888)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 59⟩], residual := [((1 : F), 23890)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23892)

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21073) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 59⟩], residual := [((1 : F), 23891)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23893)

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23883) * ((1 : F) * rho 23884) = ((1 : F) * rho 23894)

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23883) * ((1 : F) * rho 23883) = ((1 : F) * rho 23895)

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23884) * ((1 : F) * rho 23884) = ((1 : F) * rho 23896)

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23897) * ((-1 : F) * rho 23895 + (1 : F) * rho 23896) = ((2 : F) * rho 23894)

def relationRow3035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23898) * ((2 : F) + (1 : F) * rho 23895 + (-1 : F) * rho 23896) = ((1 : F) * rho 23895 + (1 : F) * rho 23896)

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 60⟩, ⟨(1 : F), 23067, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23899)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23899) * ((1 : F) * rho 23897 + (1 : F) * rho 23898) = ((1 : F) * rho 23900)

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23898) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23901)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23897) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23902)

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23901) * ((1 : F) * rho 23902) = ((1 : F) * rho 23903)

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23904) * ((1 : F) + (1 : F) * rho 23903) = ((1 : F) * rho 23901 + (1 : F) * rho 23902)

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23905) * ((1 : F) + (-1 : F) * rho 23903) = ((1 : F) * rho 23900 + (-1 : F) * rho 23901 + (-1 : F) * rho 23902)

def relationRow3043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21074) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 60⟩], residual := [((1 : F), 23904)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23906)

def relationRow3044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21074) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 60⟩], residual := [((1 : F), 23905)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23907)

def relationRow3045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23897) * ((1 : F) * rho 23898) = ((1 : F) * rho 23908)

def relationRow3046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23897) * ((1 : F) * rho 23897) = ((1 : F) * rho 23909)

def relationRow3047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23898) * ((1 : F) * rho 23898) = ((1 : F) * rho 23910)

def relationRow3048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23911) * ((-1 : F) * rho 23909 + (1 : F) * rho 23910) = ((2 : F) * rho 23908)

def relationRow3049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23912) * ((2 : F) + (1 : F) * rho 23909 + (-1 : F) * rho 23910) = ((1 : F) * rho 23909 + (1 : F) * rho 23910)

def relationRow3050 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 61⟩, ⟨(1 : F), 23067, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23913)

def relationRow3051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23913) * ((1 : F) * rho 23911 + (1 : F) * rho 23912) = ((1 : F) * rho 23914)

def relationRow3052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23912) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23915)

def relationRow3053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23911) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23916)

def relationRow3054 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23915) * ((1 : F) * rho 23916) = ((1 : F) * rho 23917)

def relationRow3055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23918) * ((1 : F) + (1 : F) * rho 23917) = ((1 : F) * rho 23915 + (1 : F) * rho 23916)

def relationRow3056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23919) * ((1 : F) + (-1 : F) * rho 23917) = ((1 : F) * rho 23914 + (-1 : F) * rho 23915 + (-1 : F) * rho 23916)

def relationRow3057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 61⟩], residual := [((1 : F), 23918)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23920)

def relationRow3058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21075) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 61⟩], residual := [((1 : F), 23919)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23921)

def relationRow3059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23911) * ((1 : F) * rho 23912) = ((1 : F) * rho 23922)

def relationRow3060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23911) * ((1 : F) * rho 23911) = ((1 : F) * rho 23923)

def relationRow3061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23912) * ((1 : F) * rho 23912) = ((1 : F) * rho 23924)

def relationRow3062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23925) * ((-1 : F) * rho 23923 + (1 : F) * rho 23924) = ((2 : F) * rho 23922)

def relationRow3063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23926) * ((2 : F) + (1 : F) * rho 23923 + (-1 : F) * rho 23924) = ((1 : F) * rho 23923 + (1 : F) * rho 23924)

def relationRow3064 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 62⟩, ⟨(1 : F), 23067, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23927)

def relationRow3065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23927) * ((1 : F) * rho 23925 + (1 : F) * rho 23926) = ((1 : F) * rho 23928)

def relationRow3066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23926) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23929)

def relationRow3067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23925) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23930)

def relationRow3068 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23929) * ((1 : F) * rho 23930) = ((1 : F) * rho 23931)

def relationRow3069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23932) * ((1 : F) + (1 : F) * rho 23931) = ((1 : F) * rho 23929 + (1 : F) * rho 23930)

def relationRow3070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23933) * ((1 : F) + (-1 : F) * rho 23931) = ((1 : F) * rho 23928 + (-1 : F) * rho 23929 + (-1 : F) * rho 23930)

def relationRow3071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 62⟩], residual := [((1 : F), 23932)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23934)

def relationRow3072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21076) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 62⟩], residual := [((1 : F), 23933)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23935)

def relationRow3073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23925) * ((1 : F) * rho 23926) = ((1 : F) * rho 23936)

def relationRow3074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23925) * ((1 : F) * rho 23925) = ((1 : F) * rho 23937)

def relationRow3075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23926) * ((1 : F) * rho 23926) = ((1 : F) * rho 23938)

def relationRow3076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23939) * ((-1 : F) * rho 23937 + (1 : F) * rho 23938) = ((2 : F) * rho 23936)

def relationRow3077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23940) * ((2 : F) + (1 : F) * rho 23937 + (-1 : F) * rho 23938) = ((1 : F) * rho 23937 + (1 : F) * rho 23938)

def relationRow3078 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 63⟩, ⟨(1 : F), 23067, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23941)

def relationRow3079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23941) * ((1 : F) * rho 23939 + (1 : F) * rho 23940) = ((1 : F) * rho 23942)

def relationRow3080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23940) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23943)

def relationRow3081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23939) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23944)

def relationRow3082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23943) * ((1 : F) * rho 23944) = ((1 : F) * rho 23945)

def relationRow3083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23946) * ((1 : F) + (1 : F) * rho 23945) = ((1 : F) * rho 23943 + (1 : F) * rho 23944)

def relationRow3084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23947) * ((1 : F) + (-1 : F) * rho 23945) = ((1 : F) * rho 23942 + (-1 : F) * rho 23943 + (-1 : F) * rho 23944)

def relationRow3085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 63⟩], residual := [((1 : F), 23946)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23948)

def relationRow3086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21077) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 63⟩], residual := [((1 : F), 23947)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23949)

def relationRow3087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23939) * ((1 : F) * rho 23940) = ((1 : F) * rho 23950)

def relationRow3088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23939) * ((1 : F) * rho 23939) = ((1 : F) * rho 23951)

def relationRow3089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23940) * ((1 : F) * rho 23940) = ((1 : F) * rho 23952)

def relationRow3090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23953) * ((-1 : F) * rho 23951 + (1 : F) * rho 23952) = ((2 : F) * rho 23950)

def relationRow3091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23954) * ((2 : F) + (1 : F) * rho 23951 + (-1 : F) * rho 23952) = ((1 : F) * rho 23951 + (1 : F) * rho 23952)

def relationRow3092 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 64⟩, ⟨(1 : F), 23067, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23955)

def relationRow3093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23955) * ((1 : F) * rho 23953 + (1 : F) * rho 23954) = ((1 : F) * rho 23956)

def relationRow3094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23954) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23957)

def relationRow3095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23953) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23958)

def relationRow3096 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23957) * ((1 : F) * rho 23958) = ((1 : F) * rho 23959)

def relationRow3097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23960) * ((1 : F) + (1 : F) * rho 23959) = ((1 : F) * rho 23957 + (1 : F) * rho 23958)

def relationRow3098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23961) * ((1 : F) + (-1 : F) * rho 23959) = ((1 : F) * rho 23956 + (-1 : F) * rho 23957 + (-1 : F) * rho 23958)

def relationRow3099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21078) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 64⟩], residual := [((1 : F), 23960)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23962)

def relationRow3100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21078) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 64⟩], residual := [((1 : F), 23961)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23963)

def relationRow3101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23953) * ((1 : F) * rho 23954) = ((1 : F) * rho 23964)

def relationRow3102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23953) * ((1 : F) * rho 23953) = ((1 : F) * rho 23965)

def relationRow3103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23954) * ((1 : F) * rho 23954) = ((1 : F) * rho 23966)

def relationRow3104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23967) * ((-1 : F) * rho 23965 + (1 : F) * rho 23966) = ((2 : F) * rho 23964)

def relationRow3105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23968) * ((2 : F) + (1 : F) * rho 23965 + (-1 : F) * rho 23966) = ((1 : F) * rho 23965 + (1 : F) * rho 23966)

def relationRow3106 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 65⟩, ⟨(1 : F), 23067, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23969)

def relationRow3107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23969) * ((1 : F) * rho 23967 + (1 : F) * rho 23968) = ((1 : F) * rho 23970)

def relationRow3108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23968) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23971)

def relationRow3109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23967) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23972)

def relationRow3110 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23971) * ((1 : F) * rho 23972) = ((1 : F) * rho 23973)

def relationRow3111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23974) * ((1 : F) + (1 : F) * rho 23973) = ((1 : F) * rho 23971 + (1 : F) * rho 23972)

def relationRow3112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23975) * ((1 : F) + (-1 : F) * rho 23973) = ((1 : F) * rho 23970 + (-1 : F) * rho 23971 + (-1 : F) * rho 23972)

def relationRow3113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21079) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 65⟩], residual := [((1 : F), 23974)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23976)

def relationRow3114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21079) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 65⟩], residual := [((1 : F), 23975)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23977)

def relationRow3115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23967) * ((1 : F) * rho 23968) = ((1 : F) * rho 23978)

def relationRow3116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23967) * ((1 : F) * rho 23967) = ((1 : F) * rho 23979)

def relationRow3117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23968) * ((1 : F) * rho 23968) = ((1 : F) * rho 23980)

def relationRow3118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23981) * ((-1 : F) * rho 23979 + (1 : F) * rho 23980) = ((2 : F) * rho 23978)

def relationRow3119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23982) * ((2 : F) + (1 : F) * rho 23979 + (-1 : F) * rho 23980) = ((1 : F) * rho 23979 + (1 : F) * rho 23980)

def relationRow3120 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 66⟩, ⟨(1 : F), 23067, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23983)

def relationRow3121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23983) * ((1 : F) * rho 23981 + (1 : F) * rho 23982) = ((1 : F) * rho 23984)

def relationRow3122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23982) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23985)

def relationRow3123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23981) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23986)

def relationRow3124 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23985) * ((1 : F) * rho 23986) = ((1 : F) * rho 23987)

def relationRow3125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23988) * ((1 : F) + (1 : F) * rho 23987) = ((1 : F) * rho 23985 + (1 : F) * rho 23986)

def relationRow3126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23989) * ((1 : F) + (-1 : F) * rho 23987) = ((1 : F) * rho 23984 + (-1 : F) * rho 23985 + (-1 : F) * rho 23986)

def relationRow3127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 66⟩], residual := [((1 : F), 23988)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23990)

def relationRow3128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 66⟩], residual := [((1 : F), 23989)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23991)

def relationRow3129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23981) * ((1 : F) * rho 23982) = ((1 : F) * rho 23992)

def relationRow3130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23981) * ((1 : F) * rho 23981) = ((1 : F) * rho 23993)

def relationRow3131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23982) * ((1 : F) * rho 23982) = ((1 : F) * rho 23994)

def relationRow3132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23995) * ((-1 : F) * rho 23993 + (1 : F) * rho 23994) = ((2 : F) * rho 23992)

def relationRow3133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23996) * ((2 : F) + (1 : F) * rho 23993 + (-1 : F) * rho 23994) = ((1 : F) * rho 23993 + (1 : F) * rho 23994)

def relationRow3134 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 67⟩, ⟨(1 : F), 23067, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23997)

def relationRow3135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23997) * ((1 : F) * rho 23995 + (1 : F) * rho 23996) = ((1 : F) * rho 23998)

def relationRow3136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23996) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 23999)

def relationRow3137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23995) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24000)

def relationRow3138 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 23999) * ((1 : F) * rho 24000) = ((1 : F) * rho 24001)

def relationRow3139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24002) * ((1 : F) + (1 : F) * rho 24001) = ((1 : F) * rho 23999 + (1 : F) * rho 24000)

def relationRow3140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24003) * ((1 : F) + (-1 : F) * rho 24001) = ((1 : F) * rho 23998 + (-1 : F) * rho 23999 + (-1 : F) * rho 24000)

def relationRow3141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 67⟩], residual := [((1 : F), 24002)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24004)

def relationRow3142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21081) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 67⟩], residual := [((1 : F), 24003)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24005)

def relationRow3143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23995) * ((1 : F) * rho 23996) = ((1 : F) * rho 24006)

def relationRow3144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23995) * ((1 : F) * rho 23995) = ((1 : F) * rho 24007)

def relationRow3145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 23996) * ((1 : F) * rho 23996) = ((1 : F) * rho 24008)

def relationRow3146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24009) * ((-1 : F) * rho 24007 + (1 : F) * rho 24008) = ((2 : F) * rho 24006)

def relationRow3147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24010) * ((2 : F) + (1 : F) * rho 24007 + (-1 : F) * rho 24008) = ((1 : F) * rho 24007 + (1 : F) * rho 24008)

def relationRow3148 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 68⟩, ⟨(1 : F), 23067, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24011)

def relationRow3149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24011) * ((1 : F) * rho 24009 + (1 : F) * rho 24010) = ((1 : F) * rho 24012)

def relationRow3150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24010) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24013)

def relationRow3151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24009) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24014)

def relationRow3152 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24013) * ((1 : F) * rho 24014) = ((1 : F) * rho 24015)

def relationRow3153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24016) * ((1 : F) + (1 : F) * rho 24015) = ((1 : F) * rho 24013 + (1 : F) * rho 24014)

def relationRow3154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24017) * ((1 : F) + (-1 : F) * rho 24015) = ((1 : F) * rho 24012 + (-1 : F) * rho 24013 + (-1 : F) * rho 24014)

def relationRow3155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 68⟩], residual := [((1 : F), 24016)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24018)

def relationRow3156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21082) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 68⟩], residual := [((1 : F), 24017)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24019)

def relationRow3157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24009) * ((1 : F) * rho 24010) = ((1 : F) * rho 24020)

def relationRow3158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24009) * ((1 : F) * rho 24009) = ((1 : F) * rho 24021)

def relationRow3159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24010) * ((1 : F) * rho 24010) = ((1 : F) * rho 24022)

def relationRow3160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24023) * ((-1 : F) * rho 24021 + (1 : F) * rho 24022) = ((2 : F) * rho 24020)

def relationRow3161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24024) * ((2 : F) + (1 : F) * rho 24021 + (-1 : F) * rho 24022) = ((1 : F) * rho 24021 + (1 : F) * rho 24022)

def relationRow3162 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 69⟩, ⟨(1 : F), 23067, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24025)

def relationRow3163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24025) * ((1 : F) * rho 24023 + (1 : F) * rho 24024) = ((1 : F) * rho 24026)

def relationRow3164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24024) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24027)

def relationRow3165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24023) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24028)

def relationRow3166 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24027) * ((1 : F) * rho 24028) = ((1 : F) * rho 24029)

def relationRow3167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24030) * ((1 : F) + (1 : F) * rho 24029) = ((1 : F) * rho 24027 + (1 : F) * rho 24028)

def relationRow3168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24031) * ((1 : F) + (-1 : F) * rho 24029) = ((1 : F) * rho 24026 + (-1 : F) * rho 24027 + (-1 : F) * rho 24028)

def relationRow3169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21083) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 69⟩], residual := [((1 : F), 24030)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24032)

def relationRow3170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21083) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 69⟩], residual := [((1 : F), 24031)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24033)

def relationRow3171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24023) * ((1 : F) * rho 24024) = ((1 : F) * rho 24034)

def relationRow3172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24023) * ((1 : F) * rho 24023) = ((1 : F) * rho 24035)

def relationRow3173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24024) * ((1 : F) * rho 24024) = ((1 : F) * rho 24036)

def relationRow3174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24037) * ((-1 : F) * rho 24035 + (1 : F) * rho 24036) = ((2 : F) * rho 24034)

def relationRow3175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24038) * ((2 : F) + (1 : F) * rho 24035 + (-1 : F) * rho 24036) = ((1 : F) * rho 24035 + (1 : F) * rho 24036)

def relationRow3176 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 70⟩, ⟨(1 : F), 23067, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24039)

def relationRow3177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24039) * ((1 : F) * rho 24037 + (1 : F) * rho 24038) = ((1 : F) * rho 24040)

def relationRow3178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24038) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24041)

def relationRow3179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24037) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24042)

def relationRow3180 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24041) * ((1 : F) * rho 24042) = ((1 : F) * rho 24043)

def relationRow3181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24044) * ((1 : F) + (1 : F) * rho 24043) = ((1 : F) * rho 24041 + (1 : F) * rho 24042)

def relationRow3182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24045) * ((1 : F) + (-1 : F) * rho 24043) = ((1 : F) * rho 24040 + (-1 : F) * rho 24041 + (-1 : F) * rho 24042)

def relationRow3183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21084) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 70⟩], residual := [((1 : F), 24044)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24046)

def relationRow3184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21084) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 70⟩], residual := [((1 : F), 24045)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24047)

def relationRow3185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24037) * ((1 : F) * rho 24038) = ((1 : F) * rho 24048)

def relationRow3186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24037) * ((1 : F) * rho 24037) = ((1 : F) * rho 24049)

def relationRow3187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24038) * ((1 : F) * rho 24038) = ((1 : F) * rho 24050)

def relationRow3188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24051) * ((-1 : F) * rho 24049 + (1 : F) * rho 24050) = ((2 : F) * rho 24048)

def relationRow3189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24052) * ((2 : F) + (1 : F) * rho 24049 + (-1 : F) * rho 24050) = ((1 : F) * rho 24049 + (1 : F) * rho 24050)

def relationRow3190 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 71⟩, ⟨(1 : F), 23067, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24053)

def relationRow3191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24053) * ((1 : F) * rho 24051 + (1 : F) * rho 24052) = ((1 : F) * rho 24054)

def relationRow3192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24052) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24055)

def relationRow3193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24051) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24056)

def relationRow3194 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24055) * ((1 : F) * rho 24056) = ((1 : F) * rho 24057)

def relationRow3195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24058) * ((1 : F) + (1 : F) * rho 24057) = ((1 : F) * rho 24055 + (1 : F) * rho 24056)

def relationRow3196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24059) * ((1 : F) + (-1 : F) * rho 24057) = ((1 : F) * rho 24054 + (-1 : F) * rho 24055 + (-1 : F) * rho 24056)

def relationRow3197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21085) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 71⟩], residual := [((1 : F), 24058)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24060)

def relationRow3198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21085) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 71⟩], residual := [((1 : F), 24059)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24061)

def relationRow3199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24051) * ((1 : F) * rho 24052) = ((1 : F) * rho 24062)

def relationRow3200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24051) * ((1 : F) * rho 24051) = ((1 : F) * rho 24063)

def relationRow3201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24052) * ((1 : F) * rho 24052) = ((1 : F) * rho 24064)

def relationRow3202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24065) * ((-1 : F) * rho 24063 + (1 : F) * rho 24064) = ((2 : F) * rho 24062)

def relationRow3203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24066) * ((2 : F) + (1 : F) * rho 24063 + (-1 : F) * rho 24064) = ((1 : F) * rho 24063 + (1 : F) * rho 24064)

def relationRow3204 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 72⟩, ⟨(1 : F), 23067, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24067)

def relationRow3205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24067) * ((1 : F) * rho 24065 + (1 : F) * rho 24066) = ((1 : F) * rho 24068)

def relationRow3206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24066) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24069)

def relationRow3207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24065) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24070)

def relationRow3208 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24069) * ((1 : F) * rho 24070) = ((1 : F) * rho 24071)

def relationRow3209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24072) * ((1 : F) + (1 : F) * rho 24071) = ((1 : F) * rho 24069 + (1 : F) * rho 24070)

def relationRow3210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24073) * ((1 : F) + (-1 : F) * rho 24071) = ((1 : F) * rho 24068 + (-1 : F) * rho 24069 + (-1 : F) * rho 24070)

def relationRow3211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21086) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 72⟩], residual := [((1 : F), 24072)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24074)

def relationRow3212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21086) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 72⟩], residual := [((1 : F), 24073)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24075)

def relationRow3213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24065) * ((1 : F) * rho 24066) = ((1 : F) * rho 24076)

def relationRow3214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24065) * ((1 : F) * rho 24065) = ((1 : F) * rho 24077)

def relationRow3215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24066) * ((1 : F) * rho 24066) = ((1 : F) * rho 24078)

def relationRow3216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24079) * ((-1 : F) * rho 24077 + (1 : F) * rho 24078) = ((2 : F) * rho 24076)

def relationRow3217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24080) * ((2 : F) + (1 : F) * rho 24077 + (-1 : F) * rho 24078) = ((1 : F) * rho 24077 + (1 : F) * rho 24078)

def relationRow3218 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 73⟩, ⟨(1 : F), 23067, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24081)

def relationRow3219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24081) * ((1 : F) * rho 24079 + (1 : F) * rho 24080) = ((1 : F) * rho 24082)

def relationRow3220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24080) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24083)

def relationRow3221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24079) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24084)

def relationRow3222 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24083) * ((1 : F) * rho 24084) = ((1 : F) * rho 24085)

def relationRow3223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24086) * ((1 : F) + (1 : F) * rho 24085) = ((1 : F) * rho 24083 + (1 : F) * rho 24084)

def relationRow3224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24087) * ((1 : F) + (-1 : F) * rho 24085) = ((1 : F) * rho 24082 + (-1 : F) * rho 24083 + (-1 : F) * rho 24084)

def relationRow3225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21087) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 73⟩], residual := [((1 : F), 24086)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24088)

def relationRow3226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21087) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 73⟩], residual := [((1 : F), 24087)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24089)

def relationRow3227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24079) * ((1 : F) * rho 24080) = ((1 : F) * rho 24090)

def relationRow3228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24079) * ((1 : F) * rho 24079) = ((1 : F) * rho 24091)

def relationRow3229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24080) * ((1 : F) * rho 24080) = ((1 : F) * rho 24092)

def relationRow3230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24093) * ((-1 : F) * rho 24091 + (1 : F) * rho 24092) = ((2 : F) * rho 24090)

def relationRow3231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24094) * ((2 : F) + (1 : F) * rho 24091 + (-1 : F) * rho 24092) = ((1 : F) * rho 24091 + (1 : F) * rho 24092)

def relationRow3232 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 74⟩, ⟨(1 : F), 23067, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24095)

def relationRow3233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24095) * ((1 : F) * rho 24093 + (1 : F) * rho 24094) = ((1 : F) * rho 24096)

def relationRow3234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24097)

def relationRow3235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24093) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24098)

def relationRow3236 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24097) * ((1 : F) * rho 24098) = ((1 : F) * rho 24099)

def relationRow3237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24100) * ((1 : F) + (1 : F) * rho 24099) = ((1 : F) * rho 24097 + (1 : F) * rho 24098)

def relationRow3238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24101) * ((1 : F) + (-1 : F) * rho 24099) = ((1 : F) * rho 24096 + (-1 : F) * rho 24097 + (-1 : F) * rho 24098)

def relationRow3239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21088) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 74⟩], residual := [((1 : F), 24100)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24102)

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21088) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 74⟩], residual := [((1 : F), 24101)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24103)

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24093) * ((1 : F) * rho 24094) = ((1 : F) * rho 24104)

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24093) * ((1 : F) * rho 24093) = ((1 : F) * rho 24105)

def relationRow3243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24094) * ((1 : F) * rho 24094) = ((1 : F) * rho 24106)

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24107) * ((-1 : F) * rho 24105 + (1 : F) * rho 24106) = ((2 : F) * rho 24104)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24108) * ((2 : F) + (1 : F) * rho 24105 + (-1 : F) * rho 24106) = ((1 : F) * rho 24105 + (1 : F) * rho 24106)

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 75⟩, ⟨(1 : F), 23067, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24109)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24109) * ((1 : F) * rho 24107 + (1 : F) * rho 24108) = ((1 : F) * rho 24110)

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24111)

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24112)

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24111) * ((1 : F) * rho 24112) = ((1 : F) * rho 24113)

def relationRow3251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24114) * ((1 : F) + (1 : F) * rho 24113) = ((1 : F) * rho 24111 + (1 : F) * rho 24112)

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24115) * ((1 : F) + (-1 : F) * rho 24113) = ((1 : F) * rho 24110 + (-1 : F) * rho 24111 + (-1 : F) * rho 24112)

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21089) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 75⟩], residual := [((1 : F), 24114)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24116)

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21089) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 75⟩], residual := [((1 : F), 24115)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24117)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24107) * ((1 : F) * rho 24108) = ((1 : F) * rho 24118)

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24107) * ((1 : F) * rho 24107) = ((1 : F) * rho 24119)

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24108) * ((1 : F) * rho 24108) = ((1 : F) * rho 24120)

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24121) * ((-1 : F) * rho 24119 + (1 : F) * rho 24120) = ((2 : F) * rho 24118)

def relationRow3259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24122) * ((2 : F) + (1 : F) * rho 24119 + (-1 : F) * rho 24120) = ((1 : F) * rho 24119 + (1 : F) * rho 24120)

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 76⟩, ⟨(1 : F), 23067, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24123)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24123) * ((1 : F) * rho 24121 + (1 : F) * rho 24122) = ((1 : F) * rho 24124)

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24122) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24125)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24121) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24126)

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24125) * ((1 : F) * rho 24126) = ((1 : F) * rho 24127)

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24128) * ((1 : F) + (1 : F) * rho 24127) = ((1 : F) * rho 24125 + (1 : F) * rho 24126)

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24129) * ((1 : F) + (-1 : F) * rho 24127) = ((1 : F) * rho 24124 + (-1 : F) * rho 24125 + (-1 : F) * rho 24126)

def relationRow3267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21090) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 76⟩], residual := [((1 : F), 24128)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24130)

def relationRow3268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21090) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 76⟩], residual := [((1 : F), 24129)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24131)

def relationRow3269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24121) * ((1 : F) * rho 24122) = ((1 : F) * rho 24132)

def relationRow3270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24121) * ((1 : F) * rho 24121) = ((1 : F) * rho 24133)

def relationRow3271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24122) * ((1 : F) * rho 24122) = ((1 : F) * rho 24134)

def relationRow3272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24135) * ((-1 : F) * rho 24133 + (1 : F) * rho 24134) = ((2 : F) * rho 24132)

def relationRow3273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24136) * ((2 : F) + (1 : F) * rho 24133 + (-1 : F) * rho 24134) = ((1 : F) * rho 24133 + (1 : F) * rho 24134)

def relationRow3274 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 77⟩, ⟨(1 : F), 23067, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24137)

def relationRow3275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24137) * ((1 : F) * rho 24135 + (1 : F) * rho 24136) = ((1 : F) * rho 24138)

def relationRow3276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24136) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24139)

def relationRow3277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24135) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24140)

def relationRow3278 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24139) * ((1 : F) * rho 24140) = ((1 : F) * rho 24141)

def relationRow3279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24142) * ((1 : F) + (1 : F) * rho 24141) = ((1 : F) * rho 24139 + (1 : F) * rho 24140)

def relationRow3280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24143) * ((1 : F) + (-1 : F) * rho 24141) = ((1 : F) * rho 24138 + (-1 : F) * rho 24139 + (-1 : F) * rho 24140)

def relationRow3281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21091) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 77⟩], residual := [((1 : F), 24142)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24144)

def relationRow3282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21091) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 77⟩], residual := [((1 : F), 24143)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24145)

def relationRow3283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24135) * ((1 : F) * rho 24136) = ((1 : F) * rho 24146)

def relationRow3284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24135) * ((1 : F) * rho 24135) = ((1 : F) * rho 24147)

def relationRow3285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24136) * ((1 : F) * rho 24136) = ((1 : F) * rho 24148)

def relationRow3286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24149) * ((-1 : F) * rho 24147 + (1 : F) * rho 24148) = ((2 : F) * rho 24146)

def relationRow3287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24150) * ((2 : F) + (1 : F) * rho 24147 + (-1 : F) * rho 24148) = ((1 : F) * rho 24147 + (1 : F) * rho 24148)

def relationRow3288 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 78⟩, ⟨(1 : F), 23067, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24151)

def relationRow3289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24151) * ((1 : F) * rho 24149 + (1 : F) * rho 24150) = ((1 : F) * rho 24152)

def relationRow3290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24150) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24153)

def relationRow3291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24149) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24154)

def relationRow3292 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24153) * ((1 : F) * rho 24154) = ((1 : F) * rho 24155)

def relationRow3293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24156) * ((1 : F) + (1 : F) * rho 24155) = ((1 : F) * rho 24153 + (1 : F) * rho 24154)

def relationRow3294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24157) * ((1 : F) + (-1 : F) * rho 24155) = ((1 : F) * rho 24152 + (-1 : F) * rho 24153 + (-1 : F) * rho 24154)

def relationRow3295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21092) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 78⟩], residual := [((1 : F), 24156)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24158)

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21092) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 78⟩], residual := [((1 : F), 24157)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24159)

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24149) * ((1 : F) * rho 24150) = ((1 : F) * rho 24160)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24149) * ((1 : F) * rho 24149) = ((1 : F) * rho 24161)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24150) * ((1 : F) * rho 24150) = ((1 : F) * rho 24162)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24163) * ((-1 : F) * rho 24161 + (1 : F) * rho 24162) = ((2 : F) * rho 24160)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24164) * ((2 : F) + (1 : F) * rho 24161 + (-1 : F) * rho 24162) = ((1 : F) * rho 24161 + (1 : F) * rho 24162)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 79⟩, ⟨(1 : F), 23067, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24165)

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24165) * ((1 : F) * rho 24163 + (1 : F) * rho 24164) = ((1 : F) * rho 24166)

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24164) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24167)

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24163) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24168)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24167) * ((1 : F) * rho 24168) = ((1 : F) * rho 24169)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24170) * ((1 : F) + (1 : F) * rho 24169) = ((1 : F) * rho 24167 + (1 : F) * rho 24168)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24171) * ((1 : F) + (-1 : F) * rho 24169) = ((1 : F) * rho 24166 + (-1 : F) * rho 24167 + (-1 : F) * rho 24168)

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21093) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 79⟩], residual := [((1 : F), 24170)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24172)

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21093) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 79⟩], residual := [((1 : F), 24171)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24173)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24163) * ((1 : F) * rho 24164) = ((1 : F) * rho 24174)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24163) * ((1 : F) * rho 24163) = ((1 : F) * rho 24175)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24164) * ((1 : F) * rho 24164) = ((1 : F) * rho 24176)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24177) * ((-1 : F) * rho 24175 + (1 : F) * rho 24176) = ((2 : F) * rho 24174)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24178) * ((2 : F) + (1 : F) * rho 24175 + (-1 : F) * rho 24176) = ((1 : F) * rho 24175 + (1 : F) * rho 24176)

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 80⟩, ⟨(1 : F), 23067, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24179)

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24179) * ((1 : F) * rho 24177 + (1 : F) * rho 24178) = ((1 : F) * rho 24180)

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24178) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24181)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24177) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24182)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24181) * ((1 : F) * rho 24182) = ((1 : F) * rho 24183)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24184) * ((1 : F) + (1 : F) * rho 24183) = ((1 : F) * rho 24181 + (1 : F) * rho 24182)

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24185) * ((1 : F) + (-1 : F) * rho 24183) = ((1 : F) * rho 24180 + (-1 : F) * rho 24181 + (-1 : F) * rho 24182)

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 80⟩], residual := [((1 : F), 24184)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24186)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21094) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 80⟩], residual := [((1 : F), 24185)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24187)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24177) * ((1 : F) * rho 24178) = ((1 : F) * rho 24188)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24177) * ((1 : F) * rho 24177) = ((1 : F) * rho 24189)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24178) * ((1 : F) * rho 24178) = ((1 : F) * rho 24190)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24191) * ((-1 : F) * rho 24189 + (1 : F) * rho 24190) = ((2 : F) * rho 24188)

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24192) * ((2 : F) + (1 : F) * rho 24189 + (-1 : F) * rho 24190) = ((1 : F) * rho 24189 + (1 : F) * rho 24190)

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 81⟩, ⟨(1 : F), 23067, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24193)

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24193) * ((1 : F) * rho 24191 + (1 : F) * rho 24192) = ((1 : F) * rho 24194)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24192) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24195)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24191) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24196)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24195) * ((1 : F) * rho 24196) = ((1 : F) * rho 24197)

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24198) * ((1 : F) + (1 : F) * rho 24197) = ((1 : F) * rho 24195 + (1 : F) * rho 24196)

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24199) * ((1 : F) + (-1 : F) * rho 24197) = ((1 : F) * rho 24194 + (-1 : F) * rho 24195 + (-1 : F) * rho 24196)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 81⟩], residual := [((1 : F), 24198)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24200)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21095) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 81⟩], residual := [((1 : F), 24199)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24201)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24191) * ((1 : F) * rho 24192) = ((1 : F) * rho 24202)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24191) * ((1 : F) * rho 24191) = ((1 : F) * rho 24203)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24192) * ((1 : F) * rho 24192) = ((1 : F) * rho 24204)

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24205) * ((-1 : F) * rho 24203 + (1 : F) * rho 24204) = ((2 : F) * rho 24202)

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24206) * ((2 : F) + (1 : F) * rho 24203 + (-1 : F) * rho 24204) = ((1 : F) * rho 24203 + (1 : F) * rho 24204)

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 82⟩, ⟨(1 : F), 23067, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24207)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24207) * ((1 : F) * rho 24205 + (1 : F) * rho 24206) = ((1 : F) * rho 24208)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24206) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24209)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24205) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24210)

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24209) * ((1 : F) * rho 24210) = ((1 : F) * rho 24211)

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24212) * ((1 : F) + (1 : F) * rho 24211) = ((1 : F) * rho 24209 + (1 : F) * rho 24210)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24213) * ((1 : F) + (-1 : F) * rho 24211) = ((1 : F) * rho 24208 + (-1 : F) * rho 24209 + (-1 : F) * rho 24210)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21096) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 82⟩], residual := [((1 : F), 24212)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24214)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21096) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 82⟩], residual := [((1 : F), 24213)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24215)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24205) * ((1 : F) * rho 24206) = ((1 : F) * rho 24216)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24205) * ((1 : F) * rho 24205) = ((1 : F) * rho 24217)

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24206) * ((1 : F) * rho 24206) = ((1 : F) * rho 24218)

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24219) * ((-1 : F) * rho 24217 + (1 : F) * rho 24218) = ((2 : F) * rho 24216)

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24220) * ((2 : F) + (1 : F) * rho 24217 + (-1 : F) * rho 24218) = ((1 : F) * rho 24217 + (1 : F) * rho 24218)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 83⟩, ⟨(1 : F), 23067, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24221)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24221) * ((1 : F) * rho 24219 + (1 : F) * rho 24220) = ((1 : F) * rho 24222)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24220) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24223)

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24219) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24224)

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24223) * ((1 : F) * rho 24224) = ((1 : F) * rho 24225)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24226) * ((1 : F) + (1 : F) * rho 24225) = ((1 : F) * rho 24223 + (1 : F) * rho 24224)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24227) * ((1 : F) + (-1 : F) * rho 24225) = ((1 : F) * rho 24222 + (-1 : F) * rho 24223 + (-1 : F) * rho 24224)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21097) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 83⟩], residual := [((1 : F), 24226)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24228)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21097) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 83⟩], residual := [((1 : F), 24227)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24229)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24219) * ((1 : F) * rho 24220) = ((1 : F) * rho 24230)

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24219) * ((1 : F) * rho 24219) = ((1 : F) * rho 24231)

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24220) * ((1 : F) * rho 24220) = ((1 : F) * rho 24232)

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24233) * ((-1 : F) * rho 24231 + (1 : F) * rho 24232) = ((2 : F) * rho 24230)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24234) * ((2 : F) + (1 : F) * rho 24231 + (-1 : F) * rho 24232) = ((1 : F) * rho 24231 + (1 : F) * rho 24232)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 84⟩, ⟨(1 : F), 23067, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24235)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24235) * ((1 : F) * rho 24233 + (1 : F) * rho 24234) = ((1 : F) * rho 24236)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24234) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24237)

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24233) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24238)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24237) * ((1 : F) * rho 24238) = ((1 : F) * rho 24239)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24240) * ((1 : F) + (1 : F) * rho 24239) = ((1 : F) * rho 24237 + (1 : F) * rho 24238)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24241) * ((1 : F) + (-1 : F) * rho 24239) = ((1 : F) * rho 24236 + (-1 : F) * rho 24237 + (-1 : F) * rho 24238)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21098) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 84⟩], residual := [((1 : F), 24240)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24242)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21098) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 84⟩], residual := [((1 : F), 24241)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24243)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24233) * ((1 : F) * rho 24234) = ((1 : F) * rho 24244)

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24233) * ((1 : F) * rho 24233) = ((1 : F) * rho 24245)

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24234) * ((1 : F) * rho 24234) = ((1 : F) * rho 24246)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24247) * ((-1 : F) * rho 24245 + (1 : F) * rho 24246) = ((2 : F) * rho 24244)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24248) * ((2 : F) + (1 : F) * rho 24245 + (-1 : F) * rho 24246) = ((1 : F) * rho 24245 + (1 : F) * rho 24246)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 85⟩, ⟨(1 : F), 23067, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24249)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24249) * ((1 : F) * rho 24247 + (1 : F) * rho 24248) = ((1 : F) * rho 24250)

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24248) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24251)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24247) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24252)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24251) * ((1 : F) * rho 24252) = ((1 : F) * rho 24253)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24254) * ((1 : F) + (1 : F) * rho 24253) = ((1 : F) * rho 24251 + (1 : F) * rho 24252)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24255) * ((1 : F) + (-1 : F) * rho 24253) = ((1 : F) * rho 24250 + (-1 : F) * rho 24251 + (-1 : F) * rho 24252)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21099) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 85⟩], residual := [((1 : F), 24254)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24256)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21099) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 85⟩], residual := [((1 : F), 24255)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24257)

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24247) * ((1 : F) * rho 24248) = ((1 : F) * rho 24258)

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24247) * ((1 : F) * rho 24247) = ((1 : F) * rho 24259)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24248) * ((1 : F) * rho 24248) = ((1 : F) * rho 24260)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24261) * ((-1 : F) * rho 24259 + (1 : F) * rho 24260) = ((2 : F) * rho 24258)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24262) * ((2 : F) + (1 : F) * rho 24259 + (-1 : F) * rho 24260) = ((1 : F) * rho 24259 + (1 : F) * rho 24260)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 86⟩, ⟨(1 : F), 23067, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24263)

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24263) * ((1 : F) * rho 24261 + (1 : F) * rho 24262) = ((1 : F) * rho 24264)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24262) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24265)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24261) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24266)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24265) * ((1 : F) * rho 24266) = ((1 : F) * rho 24267)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24268) * ((1 : F) + (1 : F) * rho 24267) = ((1 : F) * rho 24265 + (1 : F) * rho 24266)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24269) * ((1 : F) + (-1 : F) * rho 24267) = ((1 : F) * rho 24264 + (-1 : F) * rho 24265 + (-1 : F) * rho 24266)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21100) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 86⟩], residual := [((1 : F), 24268)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24270)

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21100) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 86⟩], residual := [((1 : F), 24269)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24271)

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24261) * ((1 : F) * rho 24262) = ((1 : F) * rho 24272)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24261) * ((1 : F) * rho 24261) = ((1 : F) * rho 24273)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24262) * ((1 : F) * rho 24262) = ((1 : F) * rho 24274)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24275) * ((-1 : F) * rho 24273 + (1 : F) * rho 24274) = ((2 : F) * rho 24272)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24276) * ((2 : F) + (1 : F) * rho 24273 + (-1 : F) * rho 24274) = ((1 : F) * rho 24273 + (1 : F) * rho 24274)

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 87⟩, ⟨(1 : F), 23067, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24277)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24277) * ((1 : F) * rho 24275 + (1 : F) * rho 24276) = ((1 : F) * rho 24278)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24276) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24279)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24275) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24280)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24279) * ((1 : F) * rho 24280) = ((1 : F) * rho 24281)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24282) * ((1 : F) + (1 : F) * rho 24281) = ((1 : F) * rho 24279 + (1 : F) * rho 24280)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24283) * ((1 : F) + (-1 : F) * rho 24281) = ((1 : F) * rho 24278 + (-1 : F) * rho 24279 + (-1 : F) * rho 24280)

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21101) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 87⟩], residual := [((1 : F), 24282)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24284)

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21101) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 87⟩], residual := [((1 : F), 24283)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24285)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24275) * ((1 : F) * rho 24276) = ((1 : F) * rho 24286)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24275) * ((1 : F) * rho 24275) = ((1 : F) * rho 24287)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24276) * ((1 : F) * rho 24276) = ((1 : F) * rho 24288)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24289) * ((-1 : F) * rho 24287 + (1 : F) * rho 24288) = ((2 : F) * rho 24286)

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24290) * ((2 : F) + (1 : F) * rho 24287 + (-1 : F) * rho 24288) = ((1 : F) * rho 24287 + (1 : F) * rho 24288)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 88⟩, ⟨(1 : F), 23067, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24291)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24291) * ((1 : F) * rho 24289 + (1 : F) * rho 24290) = ((1 : F) * rho 24292)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24290) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24293)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24289) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24294)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24293) * ((1 : F) * rho 24294) = ((1 : F) * rho 24295)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24296) * ((1 : F) + (1 : F) * rho 24295) = ((1 : F) * rho 24293 + (1 : F) * rho 24294)

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24297) * ((1 : F) + (-1 : F) * rho 24295) = ((1 : F) * rho 24292 + (-1 : F) * rho 24293 + (-1 : F) * rho 24294)

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21102) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 88⟩], residual := [((1 : F), 24296)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24298)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21102) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 88⟩], residual := [((1 : F), 24297)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24299)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24289) * ((1 : F) * rho 24290) = ((1 : F) * rho 24300)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24289) * ((1 : F) * rho 24289) = ((1 : F) * rho 24301)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24290) * ((1 : F) * rho 24290) = ((1 : F) * rho 24302)

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24303) * ((-1 : F) * rho 24301 + (1 : F) * rho 24302) = ((2 : F) * rho 24300)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24304) * ((2 : F) + (1 : F) * rho 24301 + (-1 : F) * rho 24302) = ((1 : F) * rho 24301 + (1 : F) * rho 24302)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 89⟩, ⟨(1 : F), 23067, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24305)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24305) * ((1 : F) * rho 24303 + (1 : F) * rho 24304) = ((1 : F) * rho 24306)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24304) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24307)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24303) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24308)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24307) * ((1 : F) * rho 24308) = ((1 : F) * rho 24309)

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24310) * ((1 : F) + (1 : F) * rho 24309) = ((1 : F) * rho 24307 + (1 : F) * rho 24308)

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24311) * ((1 : F) + (-1 : F) * rho 24309) = ((1 : F) * rho 24306 + (-1 : F) * rho 24307 + (-1 : F) * rho 24308)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 89⟩], residual := [((1 : F), 24310)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24312)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21103) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 89⟩], residual := [((1 : F), 24311)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24313)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24303) * ((1 : F) * rho 24304) = ((1 : F) * rho 24314)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24303) * ((1 : F) * rho 24303) = ((1 : F) * rho 24315)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24304) * ((1 : F) * rho 24304) = ((1 : F) * rho 24316)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24317) * ((-1 : F) * rho 24315 + (1 : F) * rho 24316) = ((2 : F) * rho 24314)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24318) * ((2 : F) + (1 : F) * rho 24315 + (-1 : F) * rho 24316) = ((1 : F) * rho 24315 + (1 : F) * rho 24316)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 90⟩, ⟨(1 : F), 23067, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24319)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24319) * ((1 : F) * rho 24317 + (1 : F) * rho 24318) = ((1 : F) * rho 24320)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24318) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24321)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24317) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24322)

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24321) * ((1 : F) * rho 24322) = ((1 : F) * rho 24323)

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24324) * ((1 : F) + (1 : F) * rho 24323) = ((1 : F) * rho 24321 + (1 : F) * rho 24322)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24325) * ((1 : F) + (-1 : F) * rho 24323) = ((1 : F) * rho 24320 + (-1 : F) * rho 24321 + (-1 : F) * rho 24322)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21104) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 90⟩], residual := [((1 : F), 24324)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24326)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21104) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 90⟩], residual := [((1 : F), 24325)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24327)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24317) * ((1 : F) * rho 24318) = ((1 : F) * rho 24328)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24317) * ((1 : F) * rho 24317) = ((1 : F) * rho 24329)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24318) * ((1 : F) * rho 24318) = ((1 : F) * rho 24330)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24331) * ((-1 : F) * rho 24329 + (1 : F) * rho 24330) = ((2 : F) * rho 24328)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24332) * ((2 : F) + (1 : F) * rho 24329 + (-1 : F) * rho 24330) = ((1 : F) * rho 24329 + (1 : F) * rho 24330)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 91⟩, ⟨(1 : F), 23067, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24333)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24333) * ((1 : F) * rho 24331 + (1 : F) * rho 24332) = ((1 : F) * rho 24334)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24332) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24335)

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24331) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24336)

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24335) * ((1 : F) * rho 24336) = ((1 : F) * rho 24337)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24338) * ((1 : F) + (1 : F) * rho 24337) = ((1 : F) * rho 24335 + (1 : F) * rho 24336)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24339) * ((1 : F) + (-1 : F) * rho 24337) = ((1 : F) * rho 24334 + (-1 : F) * rho 24335 + (-1 : F) * rho 24336)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21105) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 91⟩], residual := [((1 : F), 24338)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24340)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21105) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 91⟩], residual := [((1 : F), 24339)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24341)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24331) * ((1 : F) * rho 24332) = ((1 : F) * rho 24342)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24331) * ((1 : F) * rho 24331) = ((1 : F) * rho 24343)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24332) * ((1 : F) * rho 24332) = ((1 : F) * rho 24344)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24345) * ((-1 : F) * rho 24343 + (1 : F) * rho 24344) = ((2 : F) * rho 24342)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24346) * ((2 : F) + (1 : F) * rho 24343 + (-1 : F) * rho 24344) = ((1 : F) * rho 24343 + (1 : F) * rho 24344)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 92⟩, ⟨(1 : F), 23067, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24347)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24347) * ((1 : F) * rho 24345 + (1 : F) * rho 24346) = ((1 : F) * rho 24348)

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24346) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24349)

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24345) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24350)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24349) * ((1 : F) * rho 24350) = ((1 : F) * rho 24351)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24352) * ((1 : F) + (1 : F) * rho 24351) = ((1 : F) * rho 24349 + (1 : F) * rho 24350)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24353) * ((1 : F) + (-1 : F) * rho 24351) = ((1 : F) * rho 24348 + (-1 : F) * rho 24349 + (-1 : F) * rho 24350)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21106) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 92⟩], residual := [((1 : F), 24352)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24354)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21106) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 92⟩], residual := [((1 : F), 24353)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24355)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24345) * ((1 : F) * rho 24346) = ((1 : F) * rho 24356)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24345) * ((1 : F) * rho 24345) = ((1 : F) * rho 24357)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24346) * ((1 : F) * rho 24346) = ((1 : F) * rho 24358)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24359) * ((-1 : F) * rho 24357 + (1 : F) * rho 24358) = ((2 : F) * rho 24356)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24360) * ((2 : F) + (1 : F) * rho 24357 + (-1 : F) * rho 24358) = ((1 : F) * rho 24357 + (1 : F) * rho 24358)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 93⟩, ⟨(1 : F), 23067, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24361)

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24361) * ((1 : F) * rho 24359 + (1 : F) * rho 24360) = ((1 : F) * rho 24362)

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24360) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24363)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24359) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24364)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24363) * ((1 : F) * rho 24364) = ((1 : F) * rho 24365)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24366) * ((1 : F) + (1 : F) * rho 24365) = ((1 : F) * rho 24363 + (1 : F) * rho 24364)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24367) * ((1 : F) + (-1 : F) * rho 24365) = ((1 : F) * rho 24362 + (-1 : F) * rho 24363 + (-1 : F) * rho 24364)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 93⟩], residual := [((1 : F), 24366)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24368)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21107) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 93⟩], residual := [((1 : F), 24367)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24369)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24359) * ((1 : F) * rho 24360) = ((1 : F) * rho 24370)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24359) * ((1 : F) * rho 24359) = ((1 : F) * rho 24371)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24360) * ((1 : F) * rho 24360) = ((1 : F) * rho 24372)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24373) * ((-1 : F) * rho 24371 + (1 : F) * rho 24372) = ((2 : F) * rho 24370)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24374) * ((2 : F) + (1 : F) * rho 24371 + (-1 : F) * rho 24372) = ((1 : F) * rho 24371 + (1 : F) * rho 24372)

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 94⟩, ⟨(1 : F), 23067, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24375)

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24375) * ((1 : F) * rho 24373 + (1 : F) * rho 24374) = ((1 : F) * rho 24376)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24374) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24377)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24373) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24378)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24377) * ((1 : F) * rho 24378) = ((1 : F) * rho 24379)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24380) * ((1 : F) + (1 : F) * rho 24379) = ((1 : F) * rho 24377 + (1 : F) * rho 24378)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24381) * ((1 : F) + (-1 : F) * rho 24379) = ((1 : F) * rho 24376 + (-1 : F) * rho 24377 + (-1 : F) * rho 24378)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 94⟩], residual := [((1 : F), 24380)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24382)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21108) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 94⟩], residual := [((1 : F), 24381)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24383)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24373) * ((1 : F) * rho 24374) = ((1 : F) * rho 24384)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24373) * ((1 : F) * rho 24373) = ((1 : F) * rho 24385)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24374) * ((1 : F) * rho 24374) = ((1 : F) * rho 24386)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24387) * ((-1 : F) * rho 24385 + (1 : F) * rho 24386) = ((2 : F) * rho 24384)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24388) * ((2 : F) + (1 : F) * rho 24385 + (-1 : F) * rho 24386) = ((1 : F) * rho 24385 + (1 : F) * rho 24386)

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 95⟩, ⟨(1 : F), 23067, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24389)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24389) * ((1 : F) * rho 24387 + (1 : F) * rho 24388) = ((1 : F) * rho 24390)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24388) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24391)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24387) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24392)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24391) * ((1 : F) * rho 24392) = ((1 : F) * rho 24393)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24394) * ((1 : F) + (1 : F) * rho 24393) = ((1 : F) * rho 24391 + (1 : F) * rho 24392)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24395) * ((1 : F) + (-1 : F) * rho 24393) = ((1 : F) * rho 24390 + (-1 : F) * rho 24391 + (-1 : F) * rho 24392)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21109) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 95⟩], residual := [((1 : F), 24394)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24396)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21109) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 95⟩], residual := [((1 : F), 24395)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24397)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24387) * ((1 : F) * rho 24388) = ((1 : F) * rho 24398)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24387) * ((1 : F) * rho 24387) = ((1 : F) * rho 24399)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24388) * ((1 : F) * rho 24388) = ((1 : F) * rho 24400)

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24401) * ((-1 : F) * rho 24399 + (1 : F) * rho 24400) = ((2 : F) * rho 24398)

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24402) * ((2 : F) + (1 : F) * rho 24399 + (-1 : F) * rho 24400) = ((1 : F) * rho 24399 + (1 : F) * rho 24400)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 96⟩, ⟨(1 : F), 23067, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24403)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24403) * ((1 : F) * rho 24401 + (1 : F) * rho 24402) = ((1 : F) * rho 24404)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24402) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24405)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24401) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24406)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24405) * ((1 : F) * rho 24406) = ((1 : F) * rho 24407)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24408) * ((1 : F) + (1 : F) * rho 24407) = ((1 : F) * rho 24405 + (1 : F) * rho 24406)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24409) * ((1 : F) + (-1 : F) * rho 24407) = ((1 : F) * rho 24404 + (-1 : F) * rho 24405 + (-1 : F) * rho 24406)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21110) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 96⟩], residual := [((1 : F), 24408)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24410)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21110) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 96⟩], residual := [((1 : F), 24409)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24411)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24401) * ((1 : F) * rho 24402) = ((1 : F) * rho 24412)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24401) * ((1 : F) * rho 24401) = ((1 : F) * rho 24413)

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24402) * ((1 : F) * rho 24402) = ((1 : F) * rho 24414)

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24415) * ((-1 : F) * rho 24413 + (1 : F) * rho 24414) = ((2 : F) * rho 24412)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24416) * ((2 : F) + (1 : F) * rho 24413 + (-1 : F) * rho 24414) = ((1 : F) * rho 24413 + (1 : F) * rho 24414)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 97⟩, ⟨(1 : F), 23067, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24417)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24417) * ((1 : F) * rho 24415 + (1 : F) * rho 24416) = ((1 : F) * rho 24418)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24416) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24419)

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24415) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24420)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24419) * ((1 : F) * rho 24420) = ((1 : F) * rho 24421)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24422) * ((1 : F) + (1 : F) * rho 24421) = ((1 : F) * rho 24419 + (1 : F) * rho 24420)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24423) * ((1 : F) + (-1 : F) * rho 24421) = ((1 : F) * rho 24418 + (-1 : F) * rho 24419 + (-1 : F) * rho 24420)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21111) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 97⟩], residual := [((1 : F), 24422)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24424)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21111) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 97⟩], residual := [((1 : F), 24423)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24425)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24415) * ((1 : F) * rho 24416) = ((1 : F) * rho 24426)

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24415) * ((1 : F) * rho 24415) = ((1 : F) * rho 24427)

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24416) * ((1 : F) * rho 24416) = ((1 : F) * rho 24428)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24429) * ((-1 : F) * rho 24427 + (1 : F) * rho 24428) = ((2 : F) * rho 24426)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24430) * ((2 : F) + (1 : F) * rho 24427 + (-1 : F) * rho 24428) = ((1 : F) * rho 24427 + (1 : F) * rho 24428)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 98⟩, ⟨(1 : F), 23067, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24431)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24431) * ((1 : F) * rho 24429 + (1 : F) * rho 24430) = ((1 : F) * rho 24432)

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24430) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24433)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24429) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24434)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24433) * ((1 : F) * rho 24434) = ((1 : F) * rho 24435)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24436) * ((1 : F) + (1 : F) * rho 24435) = ((1 : F) * rho 24433 + (1 : F) * rho 24434)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24437) * ((1 : F) + (-1 : F) * rho 24435) = ((1 : F) * rho 24432 + (-1 : F) * rho 24433 + (-1 : F) * rho 24434)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21112) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 98⟩], residual := [((1 : F), 24436)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24438)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21112) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 98⟩], residual := [((1 : F), 24437)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24439)

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24429) * ((1 : F) * rho 24430) = ((1 : F) * rho 24440)

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24429) * ((1 : F) * rho 24429) = ((1 : F) * rho 24441)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24430) * ((1 : F) * rho 24430) = ((1 : F) * rho 24442)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24443) * ((-1 : F) * rho 24441 + (1 : F) * rho 24442) = ((2 : F) * rho 24440)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24444) * ((2 : F) + (1 : F) * rho 24441 + (-1 : F) * rho 24442) = ((1 : F) * rho 24441 + (1 : F) * rho 24442)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 99⟩, ⟨(1 : F), 23067, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24445)

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24445) * ((1 : F) * rho 24443 + (1 : F) * rho 24444) = ((1 : F) * rho 24446)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24444) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24447)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24443) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24448)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24447) * ((1 : F) * rho 24448) = ((1 : F) * rho 24449)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24450) * ((1 : F) + (1 : F) * rho 24449) = ((1 : F) * rho 24447 + (1 : F) * rho 24448)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24451) * ((1 : F) + (-1 : F) * rho 24449) = ((1 : F) * rho 24446 + (-1 : F) * rho 24447 + (-1 : F) * rho 24448)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21113) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 99⟩], residual := [((1 : F), 24450)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24452)

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21113) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 99⟩], residual := [((1 : F), 24451)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24453)

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24443) * ((1 : F) * rho 24444) = ((1 : F) * rho 24454)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24443) * ((1 : F) * rho 24443) = ((1 : F) * rho 24455)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24444) * ((1 : F) * rho 24444) = ((1 : F) * rho 24456)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24457) * ((-1 : F) * rho 24455 + (1 : F) * rho 24456) = ((2 : F) * rho 24454)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24458) * ((2 : F) + (1 : F) * rho 24455 + (-1 : F) * rho 24456) = ((1 : F) * rho 24455 + (1 : F) * rho 24456)

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23066, 14, 100⟩, ⟨(1 : F), 23067, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24459)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24459) * ((1 : F) * rho 24457 + (1 : F) * rho 24458) = ((1 : F) * rho 24460)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24458) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 21115, 13, 150⟩, ⟨(1 : F), 23066, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24461)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24457) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 21116, 13, 150⟩, ⟨(1 : F), 23067, 14, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24462)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 24461) * ((1 : F) * rho 24462) = ((1 : F) * rho 24463)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24464) * ((1 : F) + (1 : F) * rho 24463) = ((1 : F) * rho 24461 + (1 : F) * rho 24462)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24465) * ((1 : F) + (-1 : F) * rho 24463) = ((1 : F) * rho 24460 + (-1 : F) * rho 24461 + (-1 : F) * rho 24462)

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21114) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 21115, 13, 150⟩, ⟨(-1 : F), 23066, 14, 100⟩], residual := [((1 : F), 24464)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24466)

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21114) * (Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 21116, 13, 150⟩, ⟨(-1 : F), 23067, 14, 100⟩], residual := [((1 : F), 24465)] } : Shieldd.GnarkFormal.StructuredLC F))) = ((1 : F) * rho 24467)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24457) * ((1 : F) * rho 24458) = ((1 : F) * rho 24468)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24457) * ((1 : F) * rho 24457) = ((1 : F) * rho 24469)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24458) * ((1 : F) * rho 24458) = ((1 : F) * rho 24470)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24471) * ((-1 : F) * rho 24469 + (1 : F) * rho 24470) = ((2 : F) * rho 24468)

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 24472) * ((2 : F) + (1 : F) * rho 24469 + (-1 : F) * rho 24470) = ((1 : F) * rho 24469 + (1 : F) * rho 24470)

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
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec10 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "d2a8a0a3c894f21a617e808e50f72bee3fd648199973b614fa71118f2b10ad75",
wireRoleSha256Hex := "1ac1c87bafbb8ece8096e83a49d500b24fa350a84d0bb82c70640dcd3be8e5af",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg10
