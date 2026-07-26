import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs36

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 1418, 5, 101⟩], residual := [((7353748195044715267242176378873029003058579609036147045828436948989465785086 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1919 (rho : Nat -> F) : Prop :=
    (relationLc520 rho) * (relationLc521 rho) = ((1 : F) * rho 1919)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 1417, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 1418, 5, 101⟩], residual := [((1606978823045494052648976471530230821652700025596974611809660872552400247390 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1920) * ((1 : F) + (1 : F) * rho 1919) = (relationLc522 rho)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 1418, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 1417, 5, 101⟩], residual := [((4750482084188545041401667779031003007895951429389608634353645245531634083193 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1921) * ((1 : F) + (-1 : F) * rho 1919) = (relationLc523 rho)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 101⟩], residual := [((1 : F), 1920), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1264) * (relationLc524 rho) = ((1 : F) * rho 1922)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 101⟩], residual := [((1 : F), 1921), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1264) * (relationLc525 rho) = ((1 : F) * rho 1923)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(691693513808884431421072815479419189580617355296708369026904311720105287973 : F), 1417, 5, 102⟩], residual := [((5502407241275366785198947200495648354657049278557447780906902241116252984322 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 1418, 5, 102⟩], residual := [((828484706252769730150688220633464626988098972723937455082843417882853430892 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1924 (rho : Nat -> F) : Prop :=
    (relationLc526 rho) * (relationLc527 rho) = ((1 : F) * rho 1924)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 1417, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 1418, 5, 102⟩], residual := [((877825407008002323330903040613531472200958071689901219682580548300500637131 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * ((1 : F) + (1 : F) * rho 1924) = (relationLc528 rho)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 1418, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 1417, 5, 102⟩], residual := [((452150687677016637463878931623421468313053131473087730687133811634658462017 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * ((1 : F) + (-1 : F) * rho 1924) = (relationLc529 rho)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 102⟩], residual := [((1 : F), 1925), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1265) * (relationLc530 rho) = ((1 : F) * rho 1927)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 102⟩], residual := [((1 : F), 1926), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1265) * (relationLc531 rho) = ((1 : F) * rho 1928)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7914807530524885708351045862503002891249080478560501693284144165946917766545 : F), 1417, 5, 103⟩], residual := [((1946015522711203035077681386057863035562597248159926509677692218674505207648 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 1418, 5, 103⟩], residual := [((5923278766128168909822928038938298115726159468542647411850771736548739413546 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1929 (rho : Nat -> F) : Prop :=
    (relationLc532 rho) * (relationLc533 rho) = ((1 : F) * rho 1929)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 1417, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 1418, 5, 103⟩], residual := [((2393517371224057475598767755490752466572833330491862013581151689344166966111 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1930) * ((1 : F) + (1 : F) * rho 1929) = (relationLc534 rho)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 1418, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 1417, 5, 103⟩], residual := [((6073563674875127024286341449713039304834548910222470325962732122386154671318 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1931) * ((1 : F) + (-1 : F) * rho 1929) = (relationLc535 rho)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 103⟩], residual := [((1 : F), 1930), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1266) * (relationLc536 rho) = ((1 : F) * rho 1932)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 103⟩], residual := [((1 : F), 1931), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1266) * (relationLc537 rho) = ((1 : F) * rho 1933)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70728645331636005845955853481456173824423025261815640495794713771683911711 : F), 1417, 5, 104⟩], residual := [((3849675737925589197735019624171943935321757003561538613467023528613068961194 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 1418, 5, 104⟩], residual := [((1941023112738792087759518588422184313690349214124975377334047218279478471684 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1934 (rho : Nat -> F) : Prop :=
    (relationLc538 rho) * (relationLc539 rho) = ((1 : F) * rho 1934)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 1417, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 1418, 5, 104⟩], residual := [((7412609117164229528822969573135742243461271675528505483220415605157658858895 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * ((1 : F) + (1 : F) * rho 1934) = (relationLc540 rho)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 1418, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 1417, 5, 104⟩], residual := [((7093751429237556699716420726389886403139576281293596920039655962704937241800 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * ((1 : F) + (-1 : F) * rho 1934) = (relationLc541 rho)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 104⟩], residual := [((1 : F), 1935), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1267) * (relationLc542 rho) = ((1 : F) * rho 1937)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 104⟩], residual := [((1 : F), 1936), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1267) * (relationLc543 rho) = ((1 : F) * rho 1938)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3546625568890307552429781112965157521414034546288725889720048435578600870691 : F), 1417, 5, 105⟩], residual := [((3641561160744654101980428707475397674969401685942908491841455433655815966411 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 1418, 5, 105⟩], residual := [((53281046953101587019996253253964797544104105448128132979505592122682632620 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1939 (rho : Nat -> F) : Prop :=
    (relationLc544 rho) * (relationLc545 rho) = ((1 : F) * rho 1939)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 1418, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 1417, 5, 105⟩], residual := [((6086644177183875512750199711247361954903971754222842680869633117214845808329 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * ((1 : F) + (1 : F) * rho 1939) = (relationLc546 rho)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 1417, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 1418, 5, 105⟩], residual := [((5192696380881666400047528432814522329011430279087660137392524050310623674625 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * ((1 : F) + (-1 : F) * rho 1939) = (relationLc547 rho)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 105⟩], residual := [((1 : F), 1940), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1268) * (relationLc548 rho) = ((1 : F) * rho 1942)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 105⟩], residual := [((1 : F), 1941), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1268) * (relationLc549 rho) = ((1 : F) * rho 1943)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6093675132429608477253576651610943723695035162911829703009140894413768944674 : F), 1417, 5, 106⟩], residual := [((8330546601821949920201601220938265663568849234920871178117421013499419460076 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 1418, 5, 106⟩], residual := [((391322330339802460333800737188691082541887248304729356954627494111230659300 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1944 (rho : Nat -> F) : Prop :=
    (relationLc550 rho) * (relationLc551 rho) = ((1 : F) * rho 1944)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
