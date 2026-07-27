import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs24

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow1610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1610) * ((1 : F) + (1 : F) * rho 1609) = (relationLc150 rho)

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), runs := [⟨(3569787965695198726109004238421173709811060597111720092900828273537643784608 : F), 1417, 5, 39⟩, ⟨(5908639099137197600074571109458784673075300150758636187821004572118437127081 : F), 1418, 5, 39⟩], residual := [((1217206436292017981022552716809883346826035226885696400175337118509822877645 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1611) * ((1 : F) + (-1 : F) * rho 1609) = (relationLc151 rho)

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 39⟩], residual := [((1 : F), 1610), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * (relationLc152 rho) = ((1 : F) * rho 1612)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 39⟩], residual := [((1 : F), 1611), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * (relationLc153 rho) = ((1 : F) * rho 1613)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7098743746914528074372261743870963273231762366595081045297142840325502699424 : F), 1417, 5, 40⟩], residual := [((4285892835685150526560730799514924118621251315106145650608058537384751369697 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 1418, 5, 40⟩], residual := [((3653590084692112383855665984351148017836001900964783012750892421676001135841 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1614 (rho : Nat -> F) : Prop :=
    (relationLc154 rho) * (relationLc155 rho) = ((1 : F) * rho 1614)

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 1418, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 1417, 5, 40⟩], residual := [((1765417211544845499954426352501823115124486939280227897877138777961077635602 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1615) * ((1 : F) + (1 : F) * rho 1614) = (relationLc156 rho)

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), runs := [⟨(2976052974417175167213898827287229103020874487361493807544280513953583489112 : F), 1417, 5, 40⟩, ⟨(7012846346015646326411924928238328256856665771245609785338253111645543818012 : F), 1418, 5, 40⟩], residual := [((1976268427830012793256453488918289467450833971776894407169893678514394063294 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1616) * ((1 : F) + (-1 : F) * rho 1614) = (relationLc157 rho)

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 40⟩], residual := [((1 : F), 1615), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * (relationLc158 rho) = ((1 : F) * rho 1617)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 40⟩], residual := [((1 : F), 1616), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * (relationLc159 rho) = ((1 : F) * rho 1618)

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6294769094120738928003751614839576318705476028069096523080255637125544872849 : F), 1417, 5, 41⟩], residual := [((8140898060858675308002895340480692227414214491757160020149746006694194474231 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 1418, 5, 41⟩], residual := [((5580396712216061392885586432199552188834379574657718001005757087374630662271 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1619 (rho : Nat -> F) : Prop :=
    (relationLc160 rho) * (relationLc161 rho) = ((1 : F) * rho 1619)

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 1417, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 1418, 5, 41⟩], residual := [((1678121913841160761515971885977327822033744964688015913086071092038673524745 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1620) * ((1 : F) + (1 : F) * rho 1619) = (relationLc162 rho)

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), runs := [⟨(2243877223480858596218325505633114827700157809606629687695179572089668240511 : F), 1418, 5, 41⟩, ⟨(6648860622534197443418997548177274551280887415108425207406949922772176477008 : F), 1417, 5, 41⟩], residual := [((3855292725907336398959314862944560581261754556515518386048510705009842166777 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1621) * ((1 : F) + (-1 : F) * rho 1619) = (relationLc163 rho)

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 41⟩], residual := [((1 : F), 1620), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * (relationLc164 rho) = ((1 : F) * rho 1622)

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 41⟩], residual := [((1 : F), 1621), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * (relationLc165 rho) = ((1 : F) * rho 1623)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6620513463604564345073214666075664367426910284512917265234041975043402793122 : F), 1417, 5, 42⟩], residual := [((7436751760925585561427031009792801331603819545045592089676057923928892304817 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 1418, 5, 42⟩], residual := [((2939932435192350759588327226030855504706999133093673382039325191886460435704 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1624 (rho : Nat -> F) : Prop :=
    (relationLc166 rho) * (relationLc167 rho) = ((1 : F) * rho 1624)

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 1418, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 1417, 5, 42⟩], residual := [((1561538740238133810228018557130394999851623280057903127517534636011163755207 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1625) * ((1 : F) + (1 : F) * rho 1624) = (relationLc168 rho)

def relationLc169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 1417, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 1418, 5, 42⟩], residual := [((4318398590547212567492043087642932115135287577929445735669465112623843421085 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1626) * ((1 : F) + (-1 : F) * rho 1624) = (relationLc169 rho)

def relationLc170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 42⟩], residual := [((1 : F), 1625), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * (relationLc170 rho) = ((1 : F) * rho 1627)

def relationLc171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 42⟩], residual := [((1 : F), 1626), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * (relationLc171 rho) = ((1 : F) * rho 1628)

def relationLc172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3310904423929894049077323221082868180583670879235524239193955991098358373090 : F), 1417, 5, 43⟩], residual := [((3232926487688007175090435311618900017574627868136506147532084414887399693165 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 1418, 5, 43⟩], residual := [((115865106503725756394155385793040437931618580738367618357081553739839235807 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1629 (rho : Nat -> F) : Prop :=
    (relationLc172 rho) * (relationLc173 rho) = ((1 : F) * rho 1629)

def relationLc174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 1417, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 1418, 5, 43⟩], residual := [((4927567058590423375496213695940230269283984480661664657093946453458061248413 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1630) * ((1 : F) + (1 : F) * rho 1629) = (relationLc174 rho)

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (780971775079260258991889930864327822057086920022250689252937467789492067549 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 1418, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 1417, 5, 43⟩], residual := [((7088496348690373749644021251488578224873131914528074940621077929673412345621 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1631) * ((1 : F) + (-1 : F) * rho 1629) = (relationLc175 rho)

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 43⟩], residual := [((1 : F), 1630), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * (relationLc176 rho) = ((1 : F) * rho 1632)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 43⟩], residual := [((1 : F), 1631), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * (relationLc177 rho) = ((1 : F) * rho 1633)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(650753434257975203573851883248475753622073845092733683578003776733255293675 : F), 1417, 5, 44⟩], residual := [((5458092192354468882986918341267721405332821468551780284642132588836982445492 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 1418, 5, 44⟩], residual := [((5657095955849052796901570215817145103839611337387645134473223189811350446069 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1634 (rho : Nat -> F) : Prop :=
    (relationLc178 rho) * (relationLc179 rho) = ((1 : F) * rho 1634)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 1418, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 1417, 5, 44⟩], residual := [((8319984296679295469118673247946009724586115471295364612950212392930254973713 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1635) * ((1 : F) + (1 : F) * rho 1634) = (relationLc180 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
