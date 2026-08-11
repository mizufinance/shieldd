import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs17

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 773, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 772, 5, 37⟩], residual := [((2774290533394242825295743553548727573359930681222589540563055996855396108663 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 956) * ((1 : F) + (-1 : F) * rho 954) = (relationLc134 rho)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 37⟩], residual := [((1 : F), 955), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 555) * (relationLc135 rho) = ((1 : F) * rho 957)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 37⟩], residual := [((1 : F), 956), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 555) * (relationLc136 rho) = ((1 : F) * rho 958)

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2737678186161388677269696828163781497179972610597210243682127578480079744698 : F), 772, 5, 38⟩], residual := [((4132867600766331403468103911488601771844507652049295357377441988694180895684 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 773, 5, 38⟩], residual := [((7498517742460767153649827542380903921917650101548680978290247340174508338531 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow959 (rho : Nat -> F) : Prop :=
    (relationLc137 rho) * (relationLc138 rho) = ((1 : F) * rho 959)

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 772, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 773, 5, 38⟩], residual := [((7279060737957597695817259165600945770905782660361947530077898448738301404076 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 960) * ((1 : F) + (1 : F) * rho 959) = (relationLc139 rho)

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 773, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 772, 5, 38⟩], residual := [((3082099749828277877997320958604797045431260535131321563258860151504806457122 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 961) * ((1 : F) + (-1 : F) * rho 959) = (relationLc140 rho)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 38⟩], residual := [((1 : F), 960), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 556) * (relationLc141 rho) = ((1 : F) * rho 962)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 38⟩], residual := [((1 : F), 961), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 556) * (relationLc142 rho) = ((1 : F) * rho 963)

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6851041951327243387512226029580676563206460261303054980106520016312838818068 : F), 772, 5, 39⟩], residual := [((5625948356277050937605767324990821790138621231524871348249025852390193352441 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 773, 5, 39⟩], residual := [((5506536983148588278035547452639438713624475135322671880361231065871551612347 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow964 (rho : Nat -> F) : Prop :=
    (relationLc143 rho) * (relationLc144 rho) = ((1 : F) * rho 964)

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 773, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 772, 5, 39⟩], residual := [((4524469923419190946556573400628146572858444700121511471197062528754524846776 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 965) * ((1 : F) + (1 : F) * rho 964) = (relationLc145 rho)

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 772, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 773, 5, 39⟩], residual := [((1217206436292017981022552716809883346826035226885696400175337118509822877645 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 966) * ((1 : F) + (-1 : F) * rho 964) = (relationLc146 rho)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 39⟩], residual := [((1 : F), 965), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 557) * (relationLc147 rho) = ((1 : F) * rho 967)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 39⟩], residual := [((1 : F), 966), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 557) * (relationLc148 rho) = ((1 : F) * rho 968)

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7098743746914528074372261743870963273231762366595081045297142840325502699424 : F), 772, 5, 40⟩], residual := [((4285892835685150526560730799514924118621251315106145650608058537384751369697 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 773, 5, 40⟩], residual := [((3653590084692112383855665984351148017836001900964783012750892421676001135841 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow969 (rho : Nat -> F) : Prop :=
    (relationLc149 rho) * (relationLc150 rho) = ((1 : F) * rho 969)

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 773, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 772, 5, 40⟩], residual := [((1765417211544845499954426352501823115124486939280227897877138777961077635602 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 970) * ((1 : F) + (1 : F) * rho 969) = (relationLc151 rho)

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 772, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 773, 5, 40⟩], residual := [((1976268427830012793256453488918289467450833971776894407169893678514394063294 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 971) * ((1 : F) + (-1 : F) * rho 969) = (relationLc152 rho)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 40⟩], residual := [((1 : F), 970), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 558) * (relationLc153 rho) = ((1 : F) * rho 972)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 40⟩], residual := [((1 : F), 971), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 558) * (relationLc154 rho) = ((1 : F) * rho 973)

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6294769094120738928003751614839576318705476028069096523080255637125544872849 : F), 772, 5, 41⟩], residual := [((8140898060858675308002895340480692227414214491757160020149746006694194474231 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 773, 5, 41⟩], residual := [((5580396712216061392885586432199552188834379574657718001005757087374630662271 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow974 (rho : Nat -> F) : Prop :=
    (relationLc155 rho) * (relationLc156 rho) = ((1 : F) * rho 974)

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 772, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 773, 5, 41⟩], residual := [((1678121913841160761515971885977327822033744964688015913086071092038673524745 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 975) * ((1 : F) + (1 : F) * rho 974) = (relationLc157 rho)

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 773, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 772, 5, 41⟩], residual := [((3855292725907336398959314862944560581261754556515518386048510705009842166777 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 976) * ((1 : F) + (-1 : F) * rho 974) = (relationLc158 rho)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 41⟩], residual := [((1 : F), 975), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 559) * (relationLc159 rho) = ((1 : F) * rho 977)

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 41⟩], residual := [((1 : F), 976), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 559) * (relationLc160 rho) = ((1 : F) * rho 978)

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6620513463604564345073214666075664367426910284512917265234041975043402793122 : F), 772, 5, 42⟩], residual := [((7436751760925585561427031009792801331603819545045592089676057923928892304817 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 773, 5, 42⟩], residual := [((2939932435192350759588327226030855504706999133093673382039325191886460435704 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow979 (rho : Nat -> F) : Prop :=
    (relationLc161 rho) * (relationLc162 rho) = ((1 : F) * rho 979)

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 773, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 772, 5, 42⟩], residual := [((1561538740238133810228018557130394999851623280057903127517534636011163755207 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 980) * ((1 : F) + (1 : F) * rho 979) = (relationLc163 rho)

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 772, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 773, 5, 42⟩], residual := [((4318398590547212567492043087642932115135287577929445735669465112623843421085 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 981) * ((1 : F) + (-1 : F) * rho 979) = (relationLc164 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
