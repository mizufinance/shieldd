import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), runs := [⟨(4050453566029802487640162376882847442198263544638170202432496257980845052932 : F), 901, 5, 36⟩, ⟨(5532791646807612969605125576270923286086223009798940255565422443231946147891 : F), 902, 5, 36⟩], residual := [((1468266587366020547962196980067709992417674251428878356814024974633442009707 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1080) * ((1 : F) + (-1 : F) * rho 1078) = (relationLc129 rho)

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 36⟩], residual := [((1 : F), 1079), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 683) * (relationLc130 rho) = ((1 : F) * rho 1081)

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 36⟩], residual := [((1 : F), 1080), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 683) * (relationLc131 rho) = ((1 : F) * rho 1082)

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6283895545862393095119965201646467110329652983511832728991419956531422149476 : F), 901, 5, 37⟩], residual := [((3039369665499206513300262959978301119607022780697997916752288188525709772530 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 902, 5, 37⟩], residual := [((2969546671238196845433085713839439493723105804139421825031325348217664786501 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1083 (rho : Nat -> F) : Prop :=
    (relationLc132 rho) * (relationLc133 rho) = ((1 : F) * rho 1083)

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 901, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 902, 5, 37⟩], residual := [((664468361535149379861427219455196664439587125317374602214438452175514203106 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1084) * ((1 : F) + (1 : F) * rho 1083) = (relationLc134 rho)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 902, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 901, 5, 37⟩], residual := [((2774290533394242825295743553548727573359930681222589540563055996855396108663 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1085) * ((1 : F) + (-1 : F) * rho 1083) = (relationLc135 rho)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 37⟩], residual := [((1 : F), 1084), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 684) * (relationLc136 rho) = ((1 : F) * rho 1086)

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 37⟩], residual := [((1 : F), 1085), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 684) * (relationLc137 rho) = ((1 : F) * rho 1087)

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2737678186161388677269696828163781497179972610597210243682127578480079744698 : F), 901, 5, 38⟩], residual := [((4132867600766331403468103911488601771844507652049295357377441988694180895684 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 902, 5, 38⟩], residual := [((7498517742460767153649827542380903921917650101548680978290247340174508338531 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1088 (rho : Nat -> F) : Prop :=
    (relationLc138 rho) * (relationLc139 rho) = ((1 : F) * rho 1088)

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 901, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 902, 5, 38⟩], residual := [((7279060737957597695817259165600945770905782660361947530077898448738301404076 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1089) * ((1 : F) + (1 : F) * rho 1088) = (relationLc140 rho)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 902, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 901, 5, 38⟩], residual := [((3082099749828277877997320958604797045431260535131321563258860151504806457122 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1090) * ((1 : F) + (-1 : F) * rho 1088) = (relationLc141 rho)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 38⟩], residual := [((1 : F), 1089), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 685) * (relationLc142 rho) = ((1 : F) * rho 1091)

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 38⟩], residual := [((1 : F), 1090), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 685) * (relationLc143 rho) = ((1 : F) * rho 1092)

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6851041951327243387512226029580676563206460261303054980106520016312838818068 : F), 901, 5, 39⟩], residual := [((5625948356277050937605767324990821790138621231524871348249025852390193352441 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 902, 5, 39⟩], residual := [((5506536983148588278035547452639438713624475135322671880361231065871551612347 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1093 (rho : Nat -> F) : Prop :=
    (relationLc144 rho) * (relationLc145 rho) = ((1 : F) * rho 1093)

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 902, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 901, 5, 39⟩], residual := [((4524469923419190946556573400628146572858444700121511471197062528754524846776 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1094) * ((1 : F) + (1 : F) * rho 1093) = (relationLc146 rho)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 901, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 902, 5, 39⟩], residual := [((1217206436292017981022552716809883346826035226885696400175337118509822877645 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1095) * ((1 : F) + (-1 : F) * rho 1093) = (relationLc147 rho)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 39⟩], residual := [((1 : F), 1094), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 686) * (relationLc148 rho) = ((1 : F) * rho 1096)

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 39⟩], residual := [((1 : F), 1095), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 686) * (relationLc149 rho) = ((1 : F) * rho 1097)

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7098743746914528074372261743870963273231762366595081045297142840325502699424 : F), 901, 5, 40⟩], residual := [((4285892835685150526560730799514924118621251315106145650608058537384751369697 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 902, 5, 40⟩], residual := [((3653590084692112383855665984351148017836001900964783012750892421676001135841 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1098 (rho : Nat -> F) : Prop :=
    (relationLc150 rho) * (relationLc151 rho) = ((1 : F) * rho 1098)

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 902, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 901, 5, 40⟩], residual := [((1765417211544845499954426352501823115124486939280227897877138777961077635602 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1099) * ((1 : F) + (1 : F) * rho 1098) = (relationLc152 rho)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 901, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 902, 5, 40⟩], residual := [((1976268427830012793256453488918289467450833971776894407169893678514394063294 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1100) * ((1 : F) + (-1 : F) * rho 1098) = (relationLc153 rho)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 40⟩], residual := [((1 : F), 1099), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 687) * (relationLc154 rho) = ((1 : F) * rho 1101)

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 40⟩], residual := [((1 : F), 1100), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 687) * (relationLc155 rho) = ((1 : F) * rho 1102)

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6294769094120738928003751614839576318705476028069096523080255637125544872849 : F), 901, 5, 41⟩], residual := [((8140898060858675308002895340480692227414214491757160020149746006694194474231 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 902, 5, 41⟩], residual := [((5580396712216061392885586432199552188834379574657718001005757087374630662271 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1103 (rho : Nat -> F) : Prop :=
    (relationLc156 rho) * (relationLc157 rho) = ((1 : F) * rho 1103)

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 901, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 902, 5, 41⟩], residual := [((1678121913841160761515971885977327822033744964688015913086071092038673524745 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1104) * ((1 : F) + (1 : F) * rho 1103) = (relationLc158 rho)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 902, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 901, 5, 41⟩], residual := [((3855292725907336398959314862944560581261754556515518386048510705009842166777 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1105) * ((1 : F) + (-1 : F) * rho 1103) = (relationLc159 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
