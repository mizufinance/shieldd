import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs32

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (266805561571440038952344688370206412847477517502668222842684800588801881099 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 1418, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 1417, 5, 80⟩], residual := [((7156659604401674101485674441783385700652346515239236480341183771885033964843 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1816) * ((1 : F) + (-1 : F) * rho 1814) = (relationLc397 rho)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 80⟩], residual := [((1 : F), 1815), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * (relationLc398 rho) = ((1 : F) * rho 1817)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 80⟩], residual := [((1 : F), 1816), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * (relationLc399 rho) = ((1 : F) * rho 1818)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5663018777285089982435397108840719075063297114330899914382066446590364582820 : F), 1417, 5, 81⟩], residual := [((7241489129537350028433671145539132305356745343740389372420375792788400282293 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 1418, 5, 81⟩], residual := [((6296074471188920498578902325951369452071369649752532851678645340251594379617 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1819 (rho : Nat -> F) : Prop :=
    (relationLc400 rho) * (relationLc401 rho) = ((1 : F) * rho 1819)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 1418, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 1417, 5, 81⟩], residual := [((7810703830861309028716951966145462734355288314321248151342790217922599609211 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1820) * ((1 : F) + (1 : F) * rho 1819) = (relationLc402 rho)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 1417, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 1418, 5, 81⟩], residual := [((8143570471291784308841720686283516984606370439462923330862196974772273558909 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1821) * ((1 : F) + (-1 : F) * rho 1819) = (relationLc403 rho)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 81⟩], residual := [((1 : F), 1820), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * (relationLc404 rho) = ((1 : F) * rho 1822)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 81⟩], residual := [((1 : F), 1821), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * (relationLc405 rho) = ((1 : F) * rho 1823)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3914565427641117244189454063719983052752621533884624128663013209796813144897 : F), 1417, 5, 82⟩], residual := [((1323539847187872835636989736368324867744990043289828708562459794025724920301 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 1418, 5, 82⟩], residual := [((8436004649678894087299560875656917017676721043171229406390442772792332251652 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1824 (rho : Nat -> F) : Prop :=
    (relationLc406 rho) * (relationLc407 rho) = ((1 : F) * rho 1824)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 1417, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 1418, 5, 82⟩], residual := [((7712472026953054938989462011238495227951923645699659494862252436715343417494 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1825) * ((1 : F) + (1 : F) * rho 1824) = (relationLc408 rho)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 1418, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 1417, 5, 82⟩], residual := [((220840181899383875213108556762541505897556613366774248652100658169207957757 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1826) * ((1 : F) + (-1 : F) * rho 1824) = (relationLc409 rho)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 82⟩], residual := [((1 : F), 1825), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * (relationLc410 rho) = ((1 : F) * rho 1827)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 82⟩], residual := [((1 : F), 1826), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * (relationLc411 rho) = ((1 : F) * rho 1828)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(627740318950309327946996468828026742551451918995059176892065125282306450716 : F), 1417, 5, 83⟩], residual := [((7211293510459350172785006942246633938261333537791431809515587646949191037429 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 1418, 5, 83⟩], residual := [((4769022442830879114934556410742082488410242864854866099513339385828788592158 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1829 (rho : Nat -> F) : Prop :=
    (relationLc412 rho) * (relationLc413 rho) = ((1 : F) * rho 1829)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 1417, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 1418, 5, 83⟩], residual := [((5554080563767788439318024133284644442307466680604925451923594584539091067487 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1830) * ((1 : F) + (1 : F) * rho 1829) = (relationLc414 rho)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 1418, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 1417, 5, 83⟩], residual := [((3520552764009872659525435691222176153719820605366532401789092776293896045242 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1831) * ((1 : F) + (-1 : F) * rho 1829) = (relationLc415 rho)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 83⟩], residual := [((1 : F), 1830), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1246) * (relationLc416 rho) = ((1 : F) * rho 1832)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 83⟩], residual := [((1 : F), 1831), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1246) * (relationLc417 rho) = ((1 : F) * rho 1833)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6387613852256700294512156166113168610891938667929187114329681467616500330608 : F), 1417, 5, 84⟩], residual := [((7122528614958769322837530840502174944534457123466231063334496420703843830519 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 1418, 5, 84⟩], residual := [((678650799073836045536480883465610795007635701186691596893019548847085989668 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1834 (rho : Nat -> F) : Prop :=
    (relationLc418 rho) * (relationLc419 rho) = ((1 : F) * rho 1834)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 1418, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 1417, 5, 84⟩], residual := [((3023431161416084699903694663518387414748628120909489252925148026993227262805 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1835) * ((1 : F) + (1 : F) * rho 1834) = (relationLc420 rho)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 1417, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 1418, 5, 84⟩], residual := [((2053261783412565618836788473684054838107152222039993036884965312918189660439 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1836) * ((1 : F) + (-1 : F) * rho 1834) = (relationLc421 rho)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 84⟩], residual := [((1 : F), 1835), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1247) * (relationLc422 rho) = ((1 : F) * rho 1837)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 84⟩], residual := [((1 : F), 1836), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1247) * (relationLc423 rho) = ((1 : F) * rho 1838)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5276663585927424617001321006326063876074837805776841490242179655177179723382 : F), 1417, 5, 85⟩], residual := [((5171730787501844126787071739480348325133924484638196337244514296783160562849 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 1418, 5, 85⟩], residual := [((8151365977808896800973445184695245244422242745255100859603407196467141767996 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1839 (rho : Nat -> F) : Prop :=
    (relationLc424 rho) * (relationLc425 rho) = ((1 : F) * rho 1839)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 1418, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 1417, 5, 85⟩], residual := [((6078999580162968627962574270151575208687127425096319938057330165684641107683 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1840) * ((1 : F) + (1 : F) * rho 1839) = (relationLc426 rho)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 1417, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 1418, 5, 85⟩], residual := [((7921344720180926700499914832459065253776891949228636323781616997502633100102 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
