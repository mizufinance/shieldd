import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs26

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 902, 5, 78⟩], residual := [((5093929879501997410860379206698084391759764221257360367512026095840836011751 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1288 (rho : Nat -> F) : Prop :=
    (relationLc378 rho) * (relationLc379 rho) = ((1 : F) * rho 1288)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 902, 5, 78⟩, ⟨(3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), 901, 5, 78⟩], residual := [((2008982310918694524024008005298670925223640965110829575737886110198998103170 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1289) * ((1 : F) + (1 : F) * rho 1288) = (relationLc380 rho)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 901, 5, 78⟩, ⟨(3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), 902, 5, 78⟩], residual := [((467410820946480222873688092812096531476934702651941383175111803680609907630 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1290) * ((1 : F) + (-1 : F) * rho 1288) = (relationLc381 rho)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 78⟩], residual := [((1 : F), 1289), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 725) * (relationLc382 rho) = ((1 : F) * rho 1291)

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 78⟩], residual := [((1 : F), 1290), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 725) * (relationLc383 rho) = ((1 : F) * rho 1292)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6935563805973142111680237332913758558188227638958068444512867777283744905304 : F), 901, 5, 79⟩], residual := [((6883481118440751548096691480027843104425543468314445231418185714577611373644 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), runs := [⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 902, 5, 79⟩], residual := [((1853501297148141008849076045603364681427994866562041853979622286967772448672 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1293 (rho : Nat -> F) : Prop :=
    (relationLc384 rho) * (relationLc385 rho) = ((1 : F) * rho 1293)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), runs := [⟨(2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), 901, 5, 79⟩, ⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 902, 5, 79⟩], residual := [((729292557028580423140972848367702513589510295691875260988400540188514483773 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1294) * ((1 : F) + (1 : F) * rho 1293) = (relationLc386 rho)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), runs := [⟨(2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), 902, 5, 79⟩, ⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 901, 5, 79⟩], residual := [((8074422292240667367449117422438795867006141960671317101535498003783169667640 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1295) * ((1 : F) + (-1 : F) * rho 1293) = (relationLc387 rho)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 79⟩], residual := [((1 : F), 1294), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 726) * (relationLc388 rho) = ((1 : F) * rho 1296)

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 79⟩], residual := [((1 : F), 1295), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 726) * (relationLc389 rho) = ((1 : F) * rho 1297)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3795735311625167371394934382146652731519143535924637553903604266616605091184 : F), 901, 5, 80⟩], residual := [((322246695431496198739229838579143448919593587742704999806205725085902815507 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), runs := [⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 902, 5, 80⟩], residual := [((6148039518142771261227717371829780910508309280481905803564777491926853814140 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1298 (rho : Nat -> F) : Prop :=
    (relationLc390 rho) * (relationLc391 rho) = ((1 : F) * rho 1298)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 901, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 902, 5, 80⟩], residual := [((2097823421411133641718346929441207001036360077221231926809283591927105358478 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1299) * ((1 : F) + (1 : F) * rho 1298) = (relationLc392 rho)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (266805561571440038952344688370206412847477517502668222842684800588801881099 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 902, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 901, 5, 80⟩], residual := [((7156659604401674101485674441783385700652346515239236480341183771885033964843 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1300) * ((1 : F) + (-1 : F) * rho 1298) = (relationLc393 rho)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 80⟩], residual := [((1 : F), 1299), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 727) * (relationLc394 rho) = ((1 : F) * rho 1301)

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 80⟩], residual := [((1 : F), 1300), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 727) * (relationLc395 rho) = ((1 : F) * rho 1302)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5663018777285089982435397108840719075063297114330899914382066446590364582820 : F), 901, 5, 81⟩], residual := [((7241489129537350028433671145539132305356745343740389372420375792788400282293 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 902, 5, 81⟩], residual := [((6296074471188920498578902325951369452071369649752532851678645340251594379617 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1303 (rho : Nat -> F) : Prop :=
    (relationLc396 rho) * (relationLc397 rho) = ((1 : F) * rho 1303)

def relationLc398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 902, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 901, 5, 81⟩], residual := [((7810703830861309028716951966145462734355288314321248151342790217922599609211 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1304) * ((1 : F) + (1 : F) * rho 1303) = (relationLc398 rho)

def relationLc399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), runs := [⟨(6563704852151584449462436989802689459073745232267160493302011215946992251890 : F), 901, 5, 81⟩, ⟨(8150039397007939383206805724480982740164121105292428652216348093494153689635 : F), 902, 5, 81⟩], residual := [((8143570471291784308841720686283516984606370439462923330862196974772273558909 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1305) * ((1 : F) + (-1 : F) * rho 1303) = (relationLc399 rho)

def relationLc400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 81⟩], residual := [((1 : F), 1304), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 728) * (relationLc400 rho) = ((1 : F) * rho 1306)

def relationLc401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 81⟩], residual := [((1 : F), 1305), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 728) * (relationLc401 rho) = ((1 : F) * rho 1307)

def relationLc402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3914565427641117244189454063719983052752621533884624128663013209796813144897 : F), 901, 5, 82⟩], residual := [((1323539847187872835636989736368324867744990043289828708562459794025724920301 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 902, 5, 82⟩], residual := [((8436004649678894087299560875656917017676721043171229406390442772792332251652 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1308 (rho : Nat -> F) : Prop :=
    (relationLc402 rho) * (relationLc403 rho) = ((1 : F) * rho 1308)

def relationLc404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 901, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 902, 5, 82⟩], residual := [((7712472026953054938989462011238495227951923645699659494862252436715343417494 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1309) * ((1 : F) + (1 : F) * rho 1308) = (relationLc404 rho)

def relationLc405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), runs := [⟨(4711298448597962688547983937739366398020901357586389332737349019010470500142 : F), 902, 5, 82⟩, ⟨(7404938184287563697077125937129726800332539862357489627334451636193379985876 : F), 901, 5, 82⟩], residual := [((220840181899383875213108556762541505897556613366774248652100658169207957757 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1310) * ((1 : F) + (-1 : F) * rho 1308) = (relationLc405 rho)

def relationLc406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 82⟩], residual := [((1 : F), 1309), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 729) * (relationLc406 rho) = ((1 : F) * rho 1311)

def relationLc407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 82⟩], residual := [((1 : F), 1310), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 729) * (relationLc407 rho) = ((1 : F) * rho 1312)

def relationLc408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(627740318950309327946996468828026742551451918995059176892065125282306450716 : F), 901, 5, 83⟩], residual := [((7211293510459350172785006942246633938261333537791431809515587646949191037429 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 902, 5, 83⟩], residual := [((4769022442830879114934556410742082488410242864854866099513339385828788592158 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1313 (rho : Nat -> F) : Prop :=
    (relationLc408 rho) * (relationLc409 rho) = ((1 : F) * rho 1313)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
