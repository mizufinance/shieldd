import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs63

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 4472, 5, 37⟩], residual := [((2969546671238196845433085713839439493723105804139421825031325348217664786501 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4827 (rho : Nat -> F) : Prop :=
    (relationLc137 rho) * (relationLc138 rho) = ((1 : F) * rho 4653)

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 4471, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 4472, 5, 37⟩], residual := [((664468361535149379861427219455196664439587125317374602214438452175514203106 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4654) * ((1 : F) + (1 : F) * rho 4653) = (relationLc139 rho)

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), runs := [⟨(2601666111391673911832680290721113783942375383871827604339211696113777561886 : F), 4472, 5, 37⟩, ⟨(3605358577228703296172179982468605983411223149117143284657452283326916711574 : F), 4471, 5, 37⟩], residual := [((2774290533394242825295743553548727573359930681222589540563055996855396108663 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4655) * ((1 : F) + (-1 : F) * rho 4653) = (relationLc140 rho)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 37⟩], residual := [((1 : F), 4654), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * (relationLc141 rho) = ((1 : F) * rho 4656)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 37⟩], residual := [((1 : F), 4655), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4254) * (relationLc142 rho) = ((1 : F) * rho 4657)

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2737678186161388677269696828163781497179972610597210243682127578480079744698 : F), 4471, 5, 38⟩], residual := [((4132867600766331403468103911488601771844507652049295357377441988694180895684 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 4472, 5, 38⟩], residual := [((7498517742460767153649827542380903921917650101548680978290247340174508338531 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4832 (rho : Nat -> F) : Prop :=
    (relationLc143 rho) * (relationLc144 rho) = ((1 : F) * rho 4658)

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 4471, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 4472, 5, 38⟩], residual := [((7279060737957597695817259165600945770905782660361947530077898448738301404076 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4659) * ((1 : F) + (1 : F) * rho 4658) = (relationLc145 rho)

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), runs := [⟨(1222432129323521768975175834185931683451985429352175803724388992987218774315 : F), 4472, 5, 38⟩, ⟨(4924702724123971549070459258659162329571524890528584547753849902491856725704 : F), 4471, 5, 38⟩], residual := [((3082099749828277877997320958604797045431260535131321563258860151504806457122 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4660) * ((1 : F) + (-1 : F) * rho 4658) = (relationLc146 rho)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 38⟩], residual := [((1 : F), 4659), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4255) * (relationLc147 rho) = ((1 : F) * rho 4661)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 38⟩], residual := [((1 : F), 4660), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4255) * (relationLc148 rho) = ((1 : F) * rho 4662)

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6851041951327243387512226029580676563206460261303054980106520016312838818068 : F), 4471, 5, 39⟩], residual := [((5625948356277050937605767324990821790138621231524871348249025852390193352441 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 4472, 5, 39⟩], residual := [((5506536983148588278035547452639438713624475135322671880361231065871551612347 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4837 (rho : Nat -> F) : Prop :=
    (relationLc149 rho) * (relationLc150 rho) = ((1 : F) * rho 4663)

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 4472, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 4471, 5, 39⟩], residual := [((4524469923419190946556573400628146572858444700121511471197062528754524846776 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4664) * ((1 : F) + (1 : F) * rho 4663) = (relationLc151 rho)

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 4471, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 4472, 5, 39⟩], residual := [((1217206436292017981022552716809883346826035226885696400175337118509822877645 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4665) * ((1 : F) + (-1 : F) * rho 4663) = (relationLc152 rho)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 39⟩], residual := [((1 : F), 4664), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4256) * (relationLc153 rho) = ((1 : F) * rho 4666)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 39⟩], residual := [((1 : F), 4665), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4256) * (relationLc154 rho) = ((1 : F) * rho 4667)

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7098743746914528074372261743870963273231762366595081045297142840325502699424 : F), 4471, 5, 40⟩], residual := [((4285892835685150526560730799514924118621251315106145650608058537384751369697 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 4472, 5, 40⟩], residual := [((3653590084692112383855665984351148017836001900964783012750892421676001135841 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4842 (rho : Nat -> F) : Prop :=
    (relationLc155 rho) * (relationLc156 rho) = ((1 : F) * rho 4668)

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 4472, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 4471, 5, 40⟩], residual := [((1765417211544845499954426352501823115124486939280227897877138777961077635602 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4669) * ((1 : F) + (1 : F) * rho 4668) = (relationLc157 rho)

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 4471, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 4472, 5, 40⟩], residual := [((1976268427830012793256453488918289467450833971776894407169893678514394063294 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4670) * ((1 : F) + (-1 : F) * rho 4668) = (relationLc158 rho)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 40⟩], residual := [((1 : F), 4669), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4257) * (relationLc159 rho) = ((1 : F) * rho 4671)

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 40⟩], residual := [((1 : F), 4670), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4257) * (relationLc160 rho) = ((1 : F) * rho 4672)

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6294769094120738928003751614839576318705476028069096523080255637125544872849 : F), 4471, 5, 41⟩], residual := [((8140898060858675308002895340480692227414214491757160020149746006694194474231 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 4472, 5, 41⟩], residual := [((5580396712216061392885586432199552188834379574657718001005757087374630662271 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4847 (rho : Nat -> F) : Prop :=
    (relationLc161 rho) * (relationLc162 rho) = ((1 : F) * rho 4673)

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 4471, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 4472, 5, 41⟩], residual := [((1678121913841160761515971885977327822033744964688015913086071092038673524745 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4674) * ((1 : F) + (1 : F) * rho 4673) = (relationLc163 rho)

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 4472, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 4471, 5, 41⟩], residual := [((3855292725907336398959314862944560581261754556515518386048510705009842166777 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4675) * ((1 : F) + (-1 : F) * rho 4673) = (relationLc164 rho)

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 41⟩], residual := [((1 : F), 4674), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4258) * (relationLc165 rho) = ((1 : F) * rho 4676)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 41⟩], residual := [((1 : F), 4675), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4258) * (relationLc166 rho) = ((1 : F) * rho 4677)

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6620513463604564345073214666075664367426910284512917265234041975043402793122 : F), 4471, 5, 42⟩], residual := [((7436751760925585561427031009792801331603819545045592089676057923928892304817 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 4472, 5, 42⟩], residual := [((2939932435192350759588327226030855504706999133093673382039325191886460435704 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4852 (rho : Nat -> F) : Prop :=
    (relationLc167 rho) * (relationLc168 rho) = ((1 : F) * rho 4678)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
