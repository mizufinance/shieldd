import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 38⟩], residual := [((1 : F), 831), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 427) * (relationLc140 rho) = ((1 : F) * rho 833)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 38⟩], residual := [((1 : F), 832), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 427) * (relationLc141 rho) = ((1 : F) * rho 834)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6851041951327243387512226029580676563206460261303054980106520016312838818068 : F), 643, 5, 39⟩], residual := [((5625948356277050937605767324990821790138621231524871348249025852390193352441 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 644, 5, 39⟩], residual := [((5506536983148588278035547452639438713624475135322671880361231065871551612347 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow835 (rho : Nat -> F) : Prop :=
    (relationLc142 rho) * (relationLc143 rho) = ((1 : F) * rho 835)

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 644, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 643, 5, 39⟩], residual := [((4524469923419190946556573400628146572858444700121511471197062528754524846776 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 836) * ((1 : F) + (1 : F) * rho 835) = (relationLc144 rho)

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 643, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 644, 5, 39⟩], residual := [((1217206436292017981022552716809883346826035226885696400175337118509822877645 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 837) * ((1 : F) + (-1 : F) * rho 835) = (relationLc145 rho)

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 39⟩], residual := [((1 : F), 836), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 428) * (relationLc146 rho) = ((1 : F) * rho 838)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 39⟩], residual := [((1 : F), 837), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 428) * (relationLc147 rho) = ((1 : F) * rho 839)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7098743746914528074372261743870963273231762366595081045297142840325502699424 : F), 643, 5, 40⟩], residual := [((4285892835685150526560730799514924118621251315106145650608058537384751369697 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 644, 5, 40⟩], residual := [((3653590084692112383855665984351148017836001900964783012750892421676001135841 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow840 (rho : Nat -> F) : Prop :=
    (relationLc148 rho) * (relationLc149 rho) = ((1 : F) * rho 840)

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 644, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 643, 5, 40⟩], residual := [((1765417211544845499954426352501823115124486939280227897877138777961077635602 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 841) * ((1 : F) + (1 : F) * rho 840) = (relationLc150 rho)

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 643, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 644, 5, 40⟩], residual := [((1976268427830012793256453488918289467450833971776894407169893678514394063294 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 842) * ((1 : F) + (-1 : F) * rho 840) = (relationLc151 rho)

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 40⟩], residual := [((1 : F), 841), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 429) * (relationLc152 rho) = ((1 : F) * rho 843)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 40⟩], residual := [((1 : F), 842), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 429) * (relationLc153 rho) = ((1 : F) * rho 844)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6294769094120738928003751614839576318705476028069096523080255637125544872849 : F), 643, 5, 41⟩], residual := [((8140898060858675308002895340480692227414214491757160020149746006694194474231 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 644, 5, 41⟩], residual := [((5580396712216061392885586432199552188834379574657718001005757087374630662271 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow845 (rho : Nat -> F) : Prop :=
    (relationLc154 rho) * (relationLc155 rho) = ((1 : F) * rho 845)

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 643, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 644, 5, 41⟩], residual := [((1678121913841160761515971885977327822033744964688015913086071092038673524745 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 846) * ((1 : F) + (1 : F) * rho 845) = (relationLc156 rho)

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 644, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 643, 5, 41⟩], residual := [((3855292725907336398959314862944560581261754556515518386048510705009842166777 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 847) * ((1 : F) + (-1 : F) * rho 845) = (relationLc157 rho)

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 41⟩], residual := [((1 : F), 846), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 430) * (relationLc158 rho) = ((1 : F) * rho 848)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 41⟩], residual := [((1 : F), 847), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 430) * (relationLc159 rho) = ((1 : F) * rho 849)

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6620513463604564345073214666075664367426910284512917265234041975043402793122 : F), 643, 5, 42⟩], residual := [((7436751760925585561427031009792801331603819545045592089676057923928892304817 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 644, 5, 42⟩], residual := [((2939932435192350759588327226030855504706999133093673382039325191886460435704 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow850 (rho : Nat -> F) : Prop :=
    (relationLc160 rho) * (relationLc161 rho) = ((1 : F) * rho 850)

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 644, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 643, 5, 42⟩], residual := [((1561538740238133810228018557130394999851623280057903127517534636011163755207 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 851) * ((1 : F) + (1 : F) * rho 850) = (relationLc162 rho)

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 643, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 644, 5, 42⟩], residual := [((4318398590547212567492043087642932115135287577929445735669465112623843421085 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 852) * ((1 : F) + (-1 : F) * rho 850) = (relationLc163 rho)

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 42⟩], residual := [((1 : F), 851), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 431) * (relationLc164 rho) = ((1 : F) * rho 853)

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 42⟩], residual := [((1 : F), 852), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 431) * (relationLc165 rho) = ((1 : F) * rho 854)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3310904423929894049077323221082868180583670879235524239193955991098358373090 : F), 643, 5, 43⟩], residual := [((3232926487688007175090435311618900017574627868136506147532084414887399693165 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 644, 5, 43⟩], residual := [((115865106503725756394155385793040437931618580738367618357081553739839235807 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow855 (rho : Nat -> F) : Prop :=
    (relationLc166 rho) * (relationLc167 rho) = ((1 : F) * rho 855)

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 643, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 644, 5, 43⟩], residual := [((4927567058590423375496213695940230269283984480661664657093946453458061248413 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 856) * ((1 : F) + (1 : F) * rho 855) = (relationLc168 rho)

def relationLc169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (780971775079260258991889930864327822057086920022250689252937467789492067549 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 644, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 643, 5, 43⟩], residual := [((7088496348690373749644021251488578224873131914528074940621077929673412345621 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 857) * ((1 : F) + (-1 : F) * rho 855) = (relationLc169 rho)

def relationLc170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 43⟩], residual := [((1 : F), 856), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 432) * (relationLc170 rho) = ((1 : F) * rho 858)

def relationLc171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 43⟩], residual := [((1 : F), 857), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
