import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs30

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 745) * (relationLc503 rho) = ((1 : F) * rho 1392)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3605524839361144271918695055199142959033412419248830745370955487763212254122 : F), 901, 5, 99⟩], residual := [((1957554654559557926635956667978967011684000442817968116528079732945495238106 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 902, 5, 99⟩], residual := [((6375998786859699105313056747887071494679733307578548571029979559421544043160 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1393 (rho : Nat -> F) : Prop :=
    (relationLc504 rho) * (relationLc505 rho) = ((1 : F) * rho 1393)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 901, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 902, 5, 99⟩], residual := [((8201947504844235829894691518390987036553333528134133360092619588036907740059 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1394) * ((1 : F) + (1 : F) * rho 1393) = (relationLc506 rho)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (596582547986628283560714467731105115571698103544211991425215386162916709755 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 902, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 901, 5, 99⟩], residual := [((7597921896702449483212464138381743706454771565115335864600154054891188369033 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1395) * ((1 : F) + (-1 : F) * rho 1393) = (relationLc507 rho)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 99⟩], residual := [((1 : F), 1394), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 746) * (relationLc508 rho) = ((1 : F) * rho 1396)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 99⟩], residual := [((1 : F), 1395), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 746) * (relationLc509 rho) = ((1 : F) * rho 1397)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4920634597453729470497276033723860871868168242313442289183256650013527717679 : F), 901, 5, 100⟩], residual := [((4626745019808028474406318375278772853019104908690802467751832003320946726890 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 902, 5, 100⟩], residual := [((1812710690615895904665028200357513336220875045165683915006673056890740711713 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1398 (rho : Nat -> F) : Prop :=
    (relationLc510 rho) * (relationLc511 rho) = ((1 : F) * rho 1398)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 902, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 901, 5, 100⟩], residual := [((4807959045020924952280022516084198244515018472129832594975685590254152244894 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1399) * ((1 : F) + (1 : F) * rho 1398) = (relationLc512 rho)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 901, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 902, 5, 100⟩], residual := [((7401604082556730843000467773897076577612167912707208666091783693653806068302 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1400) * ((1 : F) + (-1 : F) * rho 1398) = (relationLc513 rho)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 100⟩], residual := [((1 : F), 1399), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 747) * (relationLc514 rho) = ((1 : F) * rho 1401)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 100⟩], residual := [((1 : F), 1400), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 747) * (relationLc515 rho) = ((1 : F) * rho 1402)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1078993665523434524257958077337601540950101808496742976783528403246920352908 : F), 901, 5, 101⟩], residual := [((823084015082302969527154052266362481686811507015307064117458449818406088680 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 902, 5, 101⟩], residual := [((7353748195044715267242176378873029003058579609036147045828436948989465785086 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1403 (rho : Nat -> F) : Prop :=
    (relationLc516 rho) * (relationLc517 rho) = ((1 : F) * rho 1403)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 901, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 902, 5, 101⟩], residual := [((1606978823045494052648976471530230821652700025596974611809660872552400247390 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1404) * ((1 : F) + (1 : F) * rho 1403) = (relationLc518 rho)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 902, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 901, 5, 101⟩], residual := [((4750482084188545041401667779031003007895951429389608634353645245531634083193 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1405) * ((1 : F) + (-1 : F) * rho 1403) = (relationLc519 rho)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 101⟩], residual := [((1 : F), 1404), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 748) * (relationLc520 rho) = ((1 : F) * rho 1406)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 101⟩], residual := [((1 : F), 1405), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 748) * (relationLc521 rho) = ((1 : F) * rho 1407)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(691693513808884431421072815479419189580617355296708369026904311720105287973 : F), 901, 5, 102⟩], residual := [((5502407241275366785198947200495648354657049278557447780906902241116252984322 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 902, 5, 102⟩], residual := [((828484706252769730150688220633464626988098972723937455082843417882853430892 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1408 (rho : Nat -> F) : Prop :=
    (relationLc522 rho) * (relationLc523 rho) = ((1 : F) * rho 1408)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 901, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 902, 5, 102⟩], residual := [((877825407008002323330903040613531472200958071689901219682580548300500637131 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1409) * ((1 : F) + (1 : F) * rho 1408) = (relationLc524 rho)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 902, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 901, 5, 102⟩], residual := [((452150687677016637463878931623421468313053131473087730687133811634658462017 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1410) * ((1 : F) + (-1 : F) * rho 1408) = (relationLc525 rho)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 102⟩], residual := [((1 : F), 1409), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 749) * (relationLc526 rho) = ((1 : F) * rho 1411)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 102⟩], residual := [((1 : F), 1410), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 749) * (relationLc527 rho) = ((1 : F) * rho 1412)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7914807530524885708351045862503002891249080478560501693284144165946917766545 : F), 901, 5, 103⟩], residual := [((1946015522711203035077681386057863035562597248159926509677692218674505207648 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 902, 5, 103⟩], residual := [((5923278766128168909822928038938298115726159468542647411850771736548739413546 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1413 (rho : Nat -> F) : Prop :=
    (relationLc528 rho) * (relationLc529 rho) = ((1 : F) * rho 1413)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 901, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 902, 5, 103⟩], residual := [((2393517371224057475598767755490752466572833330491862013581151689344166966111 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1414) * ((1 : F) + (1 : F) * rho 1413) = (relationLc530 rho)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 902, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 901, 5, 103⟩], residual := [((6073563674875127024286341449713039304834548910222470325962732122386154671318 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1415) * ((1 : F) + (-1 : F) * rho 1413) = (relationLc531 rho)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 103⟩], residual := [((1 : F), 1414), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 750) * (relationLc532 rho) = ((1 : F) * rho 1416)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 103⟩], residual := [((1 : F), 1415), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 750) * (relationLc533 rho) = ((1 : F) * rho 1417)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70728645331636005845955853481456173824423025261815640495794713771683911711 : F), 901, 5, 104⟩], residual := [((3849675737925589197735019624171943935321757003561538613467023528613068961194 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
