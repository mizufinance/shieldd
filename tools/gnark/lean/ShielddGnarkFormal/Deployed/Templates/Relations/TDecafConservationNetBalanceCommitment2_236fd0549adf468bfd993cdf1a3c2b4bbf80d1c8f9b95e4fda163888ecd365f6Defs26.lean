import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs25

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), runs := [⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 773, 5, 79⟩], residual := [((1853501297148141008849076045603364681427994866562041853979622286967772448672 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1164 (rho : Nat -> F) : Prop :=
    (relationLc383 rho) * (relationLc384 rho) = ((1 : F) * rho 1164)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), runs := [⟨(2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), 772, 5, 79⟩, ⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 773, 5, 79⟩], residual := [((729292557028580423140972848367702513589510295691875260988400540188514483773 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1165) * ((1 : F) + (1 : F) * rho 1164) = (relationLc385 rho)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), runs := [⟨(2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), 773, 5, 79⟩, ⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 772, 5, 79⟩], residual := [((8074422292240667367449117422438795867006141960671317101535498003783169667640 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1166) * ((1 : F) + (-1 : F) * rho 1164) = (relationLc386 rho)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 79⟩], residual := [((1 : F), 1165), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 597) * (relationLc387 rho) = ((1 : F) * rho 1167)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 79⟩], residual := [((1 : F), 1166), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 597) * (relationLc388 rho) = ((1 : F) * rho 1168)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3795735311625167371394934382146652731519143535924637553903604266616605091184 : F), 772, 5, 80⟩], residual := [((322246695431496198739229838579143448919593587742704999806205725085902815507 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), runs := [⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 773, 5, 80⟩], residual := [((6148039518142771261227717371829780910508309280481905803564777491926853814140 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1169 (rho : Nat -> F) : Prop :=
    (relationLc389 rho) * (relationLc390 rho) = ((1 : F) * rho 1169)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 772, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 773, 5, 80⟩], residual := [((2097823421411133641718346929441207001036360077221231926809283591927105358478 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1170) * ((1 : F) + (1 : F) * rho 1169) = (relationLc391 rho)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (266805561571440038952344688370206412847477517502668222842684800588801881099 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 773, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 772, 5, 80⟩], residual := [((7156659604401674101485674441783385700652346515239236480341183771885033964843 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1171) * ((1 : F) + (-1 : F) * rho 1169) = (relationLc392 rho)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 80⟩], residual := [((1 : F), 1170), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * (relationLc393 rho) = ((1 : F) * rho 1172)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 80⟩], residual := [((1 : F), 1171), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * (relationLc394 rho) = ((1 : F) * rho 1173)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5663018777285089982435397108840719075063297114330899914382066446590364582820 : F), 772, 5, 81⟩], residual := [((7241489129537350028433671145539132305356745343740389372420375792788400282293 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 773, 5, 81⟩], residual := [((6296074471188920498578902325951369452071369649752532851678645340251594379617 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1174 (rho : Nat -> F) : Prop :=
    (relationLc395 rho) * (relationLc396 rho) = ((1 : F) * rho 1174)

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 773, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 772, 5, 81⟩], residual := [((7810703830861309028716951966145462734355288314321248151342790217922599609211 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1175) * ((1 : F) + (1 : F) * rho 1174) = (relationLc397 rho)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 772, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 773, 5, 81⟩], residual := [((8143570471291784308841720686283516984606370439462923330862196974772273558909 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1176) * ((1 : F) + (-1 : F) * rho 1174) = (relationLc398 rho)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 81⟩], residual := [((1 : F), 1175), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 599) * (relationLc399 rho) = ((1 : F) * rho 1177)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 81⟩], residual := [((1 : F), 1176), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 599) * (relationLc400 rho) = ((1 : F) * rho 1178)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3914565427641117244189454063719983052752621533884624128663013209796813144897 : F), 772, 5, 82⟩], residual := [((1323539847187872835636989736368324867744990043289828708562459794025724920301 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 773, 5, 82⟩], residual := [((8436004649678894087299560875656917017676721043171229406390442772792332251652 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1179 (rho : Nat -> F) : Prop :=
    (relationLc401 rho) * (relationLc402 rho) = ((1 : F) * rho 1179)

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 772, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 773, 5, 82⟩], residual := [((7712472026953054938989462011238495227951923645699659494862252436715343417494 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1180) * ((1 : F) + (1 : F) * rho 1179) = (relationLc403 rho)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 773, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 772, 5, 82⟩], residual := [((220840181899383875213108556762541505897556613366774248652100658169207957757 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * ((1 : F) + (-1 : F) * rho 1179) = (relationLc404 rho)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 82⟩], residual := [((1 : F), 1180), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * (relationLc405 rho) = ((1 : F) * rho 1182)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 82⟩], residual := [((1 : F), 1181), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * (relationLc406 rho) = ((1 : F) * rho 1183)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(627740318950309327946996468828026742551451918995059176892065125282306450716 : F), 772, 5, 83⟩], residual := [((7211293510459350172785006942246633938261333537791431809515587646949191037429 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 773, 5, 83⟩], residual := [((4769022442830879114934556410742082488410242864854866099513339385828788592158 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1184 (rho : Nat -> F) : Prop :=
    (relationLc407 rho) * (relationLc408 rho) = ((1 : F) * rho 1184)

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 772, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 773, 5, 83⟩], residual := [((5554080563767788439318024133284644442307466680604925451923594584539091067487 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * ((1 : F) + (1 : F) * rho 1184) = (relationLc409 rho)

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 773, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 772, 5, 83⟩], residual := [((3520552764009872659525435691222176153719820605366532401789092776293896045242 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * ((1 : F) + (-1 : F) * rho 1184) = (relationLc410 rho)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 83⟩], residual := [((1 : F), 1185), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 601) * (relationLc411 rho) = ((1 : F) * rho 1187)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 83⟩], residual := [((1 : F), 1186), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 601) * (relationLc412 rho) = ((1 : F) * rho 1188)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6387613852256700294512156166113168610891938667929187114329681467616500330608 : F), 772, 5, 84⟩], residual := [((7122528614958769322837530840502174944534457123466231063334496420703843830519 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 773, 5, 84⟩], residual := [((678650799073836045536480883465610795007635701186691596893019548847085989668 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1189 (rho : Nat -> F) : Prop :=
    (relationLc413 rho) * (relationLc414 rho) = ((1 : F) * rho 1189)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
