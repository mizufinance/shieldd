import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs24

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 643, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 644, 5, 80⟩], residual := [((2097823421411133641718346929441207001036360077221231926809283591927105358478 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1041) * ((1 : F) + (1 : F) * rho 1040) = (relationLc390 rho)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (266805561571440038952344688370206412847477517502668222842684800588801881099 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 644, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 643, 5, 80⟩], residual := [((7156659604401674101485674441783385700652346515239236480341183771885033964843 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1042) * ((1 : F) + (-1 : F) * rho 1040) = (relationLc391 rho)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 80⟩], residual := [((1 : F), 1041), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 469) * (relationLc392 rho) = ((1 : F) * rho 1043)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 80⟩], residual := [((1 : F), 1042), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 469) * (relationLc393 rho) = ((1 : F) * rho 1044)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5663018777285089982435397108840719075063297114330899914382066446590364582820 : F), 643, 5, 81⟩], residual := [((7241489129537350028433671145539132305356745343740389372420375792788400282293 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 644, 5, 81⟩], residual := [((6296074471188920498578902325951369452071369649752532851678645340251594379617 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1045 (rho : Nat -> F) : Prop :=
    (relationLc394 rho) * (relationLc395 rho) = ((1 : F) * rho 1045)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 644, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 643, 5, 81⟩], residual := [((7810703830861309028716951966145462734355288314321248151342790217922599609211 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1046) * ((1 : F) + (1 : F) * rho 1045) = (relationLc396 rho)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 643, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 644, 5, 81⟩], residual := [((8143570471291784308841720686283516984606370439462923330862196974772273558909 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1047) * ((1 : F) + (-1 : F) * rho 1045) = (relationLc397 rho)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 81⟩], residual := [((1 : F), 1046), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 470) * (relationLc398 rho) = ((1 : F) * rho 1048)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 81⟩], residual := [((1 : F), 1047), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 470) * (relationLc399 rho) = ((1 : F) * rho 1049)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3914565427641117244189454063719983052752621533884624128663013209796813144897 : F), 643, 5, 82⟩], residual := [((1323539847187872835636989736368324867744990043289828708562459794025724920301 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 644, 5, 82⟩], residual := [((8436004649678894087299560875656917017676721043171229406390442772792332251652 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1050 (rho : Nat -> F) : Prop :=
    (relationLc400 rho) * (relationLc401 rho) = ((1 : F) * rho 1050)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 643, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 644, 5, 82⟩], residual := [((7712472026953054938989462011238495227951923645699659494862252436715343417494 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1051) * ((1 : F) + (1 : F) * rho 1050) = (relationLc402 rho)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 644, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 643, 5, 82⟩], residual := [((220840181899383875213108556762541505897556613366774248652100658169207957757 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1052) * ((1 : F) + (-1 : F) * rho 1050) = (relationLc403 rho)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 82⟩], residual := [((1 : F), 1051), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 471) * (relationLc404 rho) = ((1 : F) * rho 1053)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 82⟩], residual := [((1 : F), 1052), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 471) * (relationLc405 rho) = ((1 : F) * rho 1054)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(627740318950309327946996468828026742551451918995059176892065125282306450716 : F), 643, 5, 83⟩], residual := [((7211293510459350172785006942246633938261333537791431809515587646949191037429 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 644, 5, 83⟩], residual := [((4769022442830879114934556410742082488410242864854866099513339385828788592158 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1055 (rho : Nat -> F) : Prop :=
    (relationLc406 rho) * (relationLc407 rho) = ((1 : F) * rho 1055)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 643, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 644, 5, 83⟩], residual := [((5554080563767788439318024133284644442307466680604925451923594584539091067487 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1056) * ((1 : F) + (1 : F) * rho 1055) = (relationLc408 rho)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 644, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 643, 5, 83⟩], residual := [((3520552764009872659525435691222176153719820605366532401789092776293896045242 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1057) * ((1 : F) + (-1 : F) * rho 1055) = (relationLc409 rho)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 83⟩], residual := [((1 : F), 1056), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 472) * (relationLc410 rho) = ((1 : F) * rho 1058)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 83⟩], residual := [((1 : F), 1057), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 472) * (relationLc411 rho) = ((1 : F) * rho 1059)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6387613852256700294512156166113168610891938667929187114329681467616500330608 : F), 643, 5, 84⟩], residual := [((7122528614958769322837530840502174944534457123466231063334496420703843830519 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 644, 5, 84⟩], residual := [((678650799073836045536480883465610795007635701186691596893019548847085989668 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1060 (rho : Nat -> F) : Prop :=
    (relationLc412 rho) * (relationLc413 rho) = ((1 : F) * rho 1060)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 644, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 643, 5, 84⟩], residual := [((3023431161416084699903694663518387414748628120909489252925148026993227262805 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1061) * ((1 : F) + (1 : F) * rho 1060) = (relationLc414 rho)

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 643, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 644, 5, 84⟩], residual := [((2053261783412565618836788473684054838107152222039993036884965312918189660439 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1062) * ((1 : F) + (-1 : F) * rho 1060) = (relationLc415 rho)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 84⟩], residual := [((1 : F), 1061), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 473) * (relationLc416 rho) = ((1 : F) * rho 1063)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 84⟩], residual := [((1 : F), 1062), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 473) * (relationLc417 rho) = ((1 : F) * rho 1064)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5276663585927424617001321006326063876074837805776841490242179655177179723382 : F), 643, 5, 85⟩], residual := [((5171730787501844126787071739480348325133924484638196337244514296783160562849 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 644, 5, 85⟩], residual := [((8151365977808896800973445184695245244422242745255100859603407196467141767996 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1065 (rho : Nat -> F) : Prop :=
    (relationLc418 rho) * (relationLc419 rho) = ((1 : F) * rho 1065)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 644, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 643, 5, 85⟩], residual := [((6078999580162968627962574270151575208687127425096319938057330165684641107683 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1066) * ((1 : F) + (1 : F) * rho 1065) = (relationLc420 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
