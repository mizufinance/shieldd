import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs47

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1639) * ((1 : F) + (-1 : F) * rho 1635) = ((2505204215532442640931436438756214624841764644261090392356668665710035189434 : F) * rho 1634 + (1 : F) * rho 1638)

def relationLc913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩], residual := [((-1 : F), 1520), ((-1 : F), 1528), ((-1 : F), 1536), ((-1 : F), 1544), ((-1 : F), 1552), ((-1 : F), 1560), ((-1 : F), 1568), ((-1 : F), 1576), ((-1 : F), 1584), ((-1 : F), 1592), ((-1 : F), 1600), ((-1 : F), 1608), ((-1 : F), 1616), ((-1 : F), 1624), ((-1 : F), 1632), ((1 : F), 1637), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 682) * (relationLc913 rho) = ((1 : F) * rho 1640)

def relationLc914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩], residual := [((-1 : F), 1521), ((-1 : F), 1529), ((-1 : F), 1537), ((-1 : F), 1545), ((-1 : F), 1553), ((-1 : F), 1561), ((-1 : F), 1569), ((-1 : F), 1577), ((-1 : F), 1585), ((-1 : F), 1593), ((-1 : F), 1601), ((-1 : F), 1609), ((-1 : F), 1617), ((-1 : F), 1625), ((-1 : F), 1633), ((1 : F), 1639), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 682) * (relationLc914 rho) = ((1 : F) * rho 1641)

def relationLc915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 16⟩, ⟨(1 : F), 1521, 8, 16⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc915 rho) = ((1 : F) * rho 1642)

def relationLc916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4216217949008874040520343007176897901843969335803133205887540950324826127329 : F), 772, 5, 149⟩, ⟨(4216217949008874040520343007176897901843969335803133205887540950324826127329 : F), 1520, 8, 16⟩], residual := [((6708904022991781730463731876876371419940587451459017512750467455879957831906 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2156277848635068232427762528343749770532075962258470576409646311435229701269 : F), runs := [⟨(2156277848635068232427762528343749770532075962258470576409646311435229701269 : F), 773, 5, 149⟩, ⟨(2156277848635068232427762528343749770532075962258470576409646311435229701269 : F), 1521, 8, 16⟩], residual := [((5208133706710327476396722005768514910243517737860840078158265782782695728883 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1643 (rho : Nat -> F) : Prop :=
    (relationLc916 rho) * (relationLc917 rho) = ((1 : F) * rho 1643)

def relationLc918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2156277848635068232427762528343749770532075962258470576409646311435229701269 : F), runs := [⟨(2156277848635068232427762528343749770532075962258470576409646311435229701269 : F), 773, 5, 149⟩, ⟨(2156277848635068232427762528343749770532075962258470576409646311435229701269 : F), 1521, 8, 16⟩, ⟨(6232016371209813488808722651953407519476571859448596956528805996090774584558 : F), 772, 5, 149⟩, ⟨(6232016371209813488808722651953407519476571859448596956528805996090774584558 : F), 1520, 8, 16⟩], residual := [((6501761721360740888423673628937647935372814685988161000375686611677009871971 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1644 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc918 rho) = ((1 : F) * rho 1644)

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1645) * ((1 : F) + (1 : F) * rho 1643) = ((1 : F) * rho 1644)

def relationLc919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6288183900793302191821062410437796760843823372895593251525587144482179537772 : F), runs := [⟨(2212445378218556935440102286828139011899327475705466871406427459826634654483 : F), 772, 5, 149⟩, ⟨(2212445378218556935440102286828139011899327475705466871406427459826634654483 : F), 1520, 8, 16⟩, ⟨(6288183900793302191821062410437796760843823372895593251525587144482179537772 : F), 773, 5, 149⟩, ⟨(6288183900793302191821062410437796760843823372895593251525587144482179537772 : F), 1521, 8, 16⟩], residual := [((1942700028067629535825151309843898596003084649165902827559546844240399367070 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc919 rho) = ((1 : F) * rho 1646)

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1647) * ((1 : F) + (-1 : F) * rho 1643) = ((8388294219844881721236485180297157290008647821707067532938452307526004285827 : F) * rho 1642 + (1 : F) * rho 1646)

def relationLc920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 16⟩], residual := [((1 : F), 1645), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 683) * (relationLc920 rho) = ((1 : F) * rho 1648)

def relationLc921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 16⟩], residual := [((1 : F), 1647), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 683) * (relationLc921 rho) = ((1 : F) * rho 1649)

def relationLc922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 17⟩, ⟨(1 : F), 1521, 8, 17⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc922 rho) = ((1 : F) * rho 1650)

def relationLc923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6120117429237088608232024587575782415377834241323717585188328635752475069196 : F), 772, 5, 149⟩, ⟨(6120117429237088608232024587575782415377834241323717585188328635752475069196 : F), 1520, 8, 17⟩], residual := [((6720019885177399554579686267055452133421878157488823619755914786864870808834 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), runs := [⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 773, 5, 149⟩, ⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 1521, 8, 17⟩], residual := [((5073870204141983728015716995378373060831107315064608854149081957566256688877 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1651 (rho : Nat -> F) : Prop :=
    (relationLc923 rho) * (relationLc924 rho) = ((1 : F) * rho 1651)

def relationLc925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), runs := [⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 773, 5, 149⟩, ⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 1521, 8, 17⟩, ⟨(8016018521363910988060116889796183279665700505835162102706223981049640769083 : F), 772, 5, 149⟩, ⟨(8016018521363910988060116889796183279665700505835162102706223981049640769083 : F), 1520, 8, 17⟩], residual := [((7480012913309006556353541932028219293574137869976884165517521774473187114691 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc925 rho) = ((1 : F) * rho 1652)

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1653) * ((1 : F) + (1 : F) * rho 1651) = ((1 : F) * rho 1652)

def relationLc926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7021989783124995459976227207620815143256391913378590130204642043276768925514 : F), runs := [⟨(428443228064459436188708048985363251710198829318901725229009474867768469958 : F), 772, 5, 149⟩, ⟨(428443228064459436188708048985363251710198829318901725229009474867768469958 : F), 1520, 8, 17⟩, ⟨(7021989783124995459976227207620815143256391913378590130204642043276768925514 : F), 773, 5, 149⟩, ⟨(7021989783124995459976227207620815143256391913378590130204642043276768925514 : F), 1521, 8, 17⟩], residual := [((964448836119363867895283006753327237801761465177179662417711681444222124350 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1654 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc926 rho) = ((1 : F) * rho 1654)

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1655) * ((1 : F) + (-1 : F) * rho 1651) = ((994028738238915528083889682175368136409308592456571972501581937772871843569 : F) * rho 1650 + (1 : F) * rho 1654)

def relationLc927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 17⟩], residual := [((1 : F), 1653), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 684) * (relationLc927 rho) = ((1 : F) * rho 1656)

def relationLc928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 17⟩], residual := [((1 : F), 1655), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 684) * (relationLc928 rho) = ((1 : F) * rho 1657)

def relationLc929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 18⟩, ⟨(1 : F), 1521, 8, 18⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1658 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc929 rho) = ((1 : F) * rho 1658)

def relationLc930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4754661941807859398930757476704741251574731252121823202040719202873494889690 : F), 772, 5, 149⟩, ⟨(4754661941807859398930757476704741251574731252121823202040719202873494889690 : F), 1520, 8, 18⟩], residual := [((8163040791851246590117760473641216585125047082690728565069379386233620581167 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), runs := [⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 773, 5, 149⟩, ⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 1521, 8, 18⟩], residual := [((816642964898674276423258287913745654035415865305908106814261201544169097258 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1659 (rho : Nat -> F) : Prop :=
    (relationLc930 rho) * (relationLc931 rho) = ((1 : F) * rho 1659)

def relationLc932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), runs := [⟨(241965697581147870203353095733835730867230080792906756836964844889695693296 : F), 772, 5, 149⟩, ⟨(241965697581147870203353095733835730867230080792906756836964844889695693296 : F), 1520, 8, 18⟩, ⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 773, 5, 149⟩, ⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 1521, 8, 18⟩], residual := [((6569182143768587950461639836919797435440695567224014701527218698468480393282 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1660 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc932 rho) = ((1 : F) * rho 1660)

def relationRow1661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1661) * ((1 : F) + (1 : F) * rho 1659) = ((1 : F) * rho 1660)

def relationLc933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5607958295646476169181278739684562806353492789747634075155559002730864869162 : F), runs := [⟨(5607958295646476169181278739684562806353492789747634075155559002730864869162 : F), 773, 5, 149⟩, ⟨(5607958295646476169181278739684562806353492789747634075155559002730864869162 : F), 1521, 8, 18⟩, ⟨(8202496051847222554045471843047710800508669254361157071098268611027713545745 : F), 772, 5, 149⟩, ⟨(8202496051847222554045471843047710800508669254361157071098268611027713545745 : F), 1520, 8, 18⟩], residual := [((1875279605659782473787185101861749095935203767930049126408014757448928845759 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1662 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc933 rho) = ((1 : F) * rho 1662)

def relationRow1663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1663) * ((1 : F) + (-1 : F) * rho 1659) = ((3078469151363042125270899294830819455889636626199336509616639298076240063175 : F) * rho 1658 + (1 : F) * rho 1662)

def relationLc934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 18⟩], residual := [((1 : F), 1661), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 685) * (relationLc934 rho) = ((1 : F) * rho 1664)

def relationLc935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 18⟩], residual := [((1 : F), 1663), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 685) * (relationLc935 rho) = ((1 : F) * rho 1665)

def relationLc936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 19⟩, ⟨(1 : F), 1521, 8, 19⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1666 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc936 rho) = ((1 : F) * rho 1666)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
