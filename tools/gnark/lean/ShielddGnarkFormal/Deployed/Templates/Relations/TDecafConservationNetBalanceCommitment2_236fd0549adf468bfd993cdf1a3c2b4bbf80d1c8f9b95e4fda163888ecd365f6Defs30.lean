import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs29

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationRow1268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 617) * (relationLc508 rho) = ((1 : F) * rho 1268)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4920634597453729470497276033723860871868168242313442289183256650013527717679 : F), 772, 5, 100⟩], residual := [((4626745019808028474406318375278772853019104908690802467751832003320946726890 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 773, 5, 100⟩], residual := [((1812710690615895904665028200357513336220875045165683915006673056890740711713 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1269 (rho : Nat -> F) : Prop :=
    (relationLc509 rho) * (relationLc510 rho) = ((1 : F) * rho 1269)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 773, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 772, 5, 100⟩], residual := [((4807959045020924952280022516084198244515018472129832594975685590254152244894 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1270) * ((1 : F) + (1 : F) * rho 1269) = (relationLc511 rho)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 772, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 773, 5, 100⟩], residual := [((7401604082556730843000467773897076577612167912707208666091783693653806068302 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1271) * ((1 : F) + (-1 : F) * rho 1269) = (relationLc512 rho)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 100⟩], residual := [((1 : F), 1270), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 618) * (relationLc513 rho) = ((1 : F) * rho 1272)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 100⟩], residual := [((1 : F), 1271), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 618) * (relationLc514 rho) = ((1 : F) * rho 1273)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1078993665523434524257958077337601540950101808496742976783528403246920352908 : F), 772, 5, 101⟩], residual := [((823084015082302969527154052266362481686811507015307064117458449818406088680 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 773, 5, 101⟩], residual := [((7353748195044715267242176378873029003058579609036147045828436948989465785086 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1274 (rho : Nat -> F) : Prop :=
    (relationLc515 rho) * (relationLc516 rho) = ((1 : F) * rho 1274)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 772, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 773, 5, 101⟩], residual := [((1606978823045494052648976471530230821652700025596974611809660872552400247390 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1275) * ((1 : F) + (1 : F) * rho 1274) = (relationLc517 rho)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 773, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 772, 5, 101⟩], residual := [((4750482084188545041401667779031003007895951429389608634353645245531634083193 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1276) * ((1 : F) + (-1 : F) * rho 1274) = (relationLc518 rho)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 101⟩], residual := [((1 : F), 1275), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 619) * (relationLc519 rho) = ((1 : F) * rho 1277)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 101⟩], residual := [((1 : F), 1276), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 619) * (relationLc520 rho) = ((1 : F) * rho 1278)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(691693513808884431421072815479419189580617355296708369026904311720105287973 : F), 772, 5, 102⟩], residual := [((5502407241275366785198947200495648354657049278557447780906902241116252984322 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 773, 5, 102⟩], residual := [((828484706252769730150688220633464626988098972723937455082843417882853430892 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1279 (rho : Nat -> F) : Prop :=
    (relationLc521 rho) * (relationLc522 rho) = ((1 : F) * rho 1279)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 772, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 773, 5, 102⟩], residual := [((877825407008002323330903040613531472200958071689901219682580548300500637131 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1280) * ((1 : F) + (1 : F) * rho 1279) = (relationLc523 rho)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 773, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 772, 5, 102⟩], residual := [((452150687677016637463878931623421468313053131473087730687133811634658462017 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1281) * ((1 : F) + (-1 : F) * rho 1279) = (relationLc524 rho)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 102⟩], residual := [((1 : F), 1280), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 620) * (relationLc525 rho) = ((1 : F) * rho 1282)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 102⟩], residual := [((1 : F), 1281), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 620) * (relationLc526 rho) = ((1 : F) * rho 1283)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7914807530524885708351045862503002891249080478560501693284144165946917766545 : F), 772, 5, 103⟩], residual := [((1946015522711203035077681386057863035562597248159926509677692218674505207648 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 773, 5, 103⟩], residual := [((5923278766128168909822928038938298115726159468542647411850771736548739413546 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1284 (rho : Nat -> F) : Prop :=
    (relationLc527 rho) * (relationLc528 rho) = ((1 : F) * rho 1284)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 772, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 773, 5, 103⟩], residual := [((2393517371224057475598767755490752466572833330491862013581151689344166966111 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1285) * ((1 : F) + (1 : F) * rho 1284) = (relationLc529 rho)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 773, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 772, 5, 103⟩], residual := [((6073563674875127024286341449713039304834548910222470325962732122386154671318 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1286) * ((1 : F) + (-1 : F) * rho 1284) = (relationLc530 rho)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 103⟩], residual := [((1 : F), 1285), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 621) * (relationLc531 rho) = ((1 : F) * rho 1287)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 103⟩], residual := [((1 : F), 1286), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 621) * (relationLc532 rho) = ((1 : F) * rho 1288)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70728645331636005845955853481456173824423025261815640495794713771683911711 : F), 772, 5, 104⟩], residual := [((3849675737925589197735019624171943935321757003561538613467023528613068961194 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 773, 5, 104⟩], residual := [((1941023112738792087759518588422184313690349214124975377334047218279478471684 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1289 (rho : Nat -> F) : Prop :=
    (relationLc533 rho) * (relationLc534 rho) = ((1 : F) * rho 1289)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 772, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 773, 5, 104⟩], residual := [((7412609117164229528822969573135742243461271675528505483220415605157658858895 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1290) * ((1 : F) + (1 : F) * rho 1289) = (relationLc535 rho)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 773, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 772, 5, 104⟩], residual := [((7093751429237556699716420726389886403139576281293596920039655962704937241800 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * ((1 : F) + (-1 : F) * rho 1289) = (relationLc536 rho)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 104⟩], residual := [((1 : F), 1290), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 622) * (relationLc537 rho) = ((1 : F) * rho 1292)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 104⟩], residual := [((1 : F), 1291), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 622) * (relationLc538 rho) = ((1 : F) * rho 1293)

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3546625568890307552429781112965157521414034546288725889720048435578600870691 : F), 772, 5, 105⟩], residual := [((3641561160744654101980428707475397674969401685942908491841455433655815966411 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
