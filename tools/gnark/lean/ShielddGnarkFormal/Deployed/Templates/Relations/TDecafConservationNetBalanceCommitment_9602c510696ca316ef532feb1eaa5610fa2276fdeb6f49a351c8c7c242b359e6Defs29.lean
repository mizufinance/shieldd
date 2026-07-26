import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs28

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1078993665523434524257958077337601540950101808496742976783528403246920352908 : F), 643, 5, 101⟩], residual := [((823084015082302969527154052266362481686811507015307064117458449818406088680 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 644, 5, 101⟩], residual := [((7353748195044715267242176378873029003058579609036147045828436948989465785086 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1145 (rho : Nat -> F) : Prop :=
    (relationLc514 rho) * (relationLc515 rho) = ((1 : F) * rho 1145)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 643, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 644, 5, 101⟩], residual := [((1606978823045494052648976471530230821652700025596974611809660872552400247390 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1146) * ((1 : F) + (1 : F) * rho 1145) = (relationLc516 rho)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 644, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 643, 5, 101⟩], residual := [((4750482084188545041401667779031003007895951429389608634353645245531634083193 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * ((1 : F) + (-1 : F) * rho 1145) = (relationLc517 rho)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 101⟩], residual := [((1 : F), 1146), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 490) * (relationLc518 rho) = ((1 : F) * rho 1148)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 101⟩], residual := [((1 : F), 1147), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 490) * (relationLc519 rho) = ((1 : F) * rho 1149)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(691693513808884431421072815479419189580617355296708369026904311720105287973 : F), 643, 5, 102⟩], residual := [((5502407241275366785198947200495648354657049278557447780906902241116252984322 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 644, 5, 102⟩], residual := [((828484706252769730150688220633464626988098972723937455082843417882853430892 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1150 (rho : Nat -> F) : Prop :=
    (relationLc520 rho) * (relationLc521 rho) = ((1 : F) * rho 1150)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 643, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 644, 5, 102⟩], residual := [((877825407008002323330903040613531472200958071689901219682580548300500637131 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * ((1 : F) + (1 : F) * rho 1150) = (relationLc522 rho)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 644, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 643, 5, 102⟩], residual := [((452150687677016637463878931623421468313053131473087730687133811634658462017 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1152) * ((1 : F) + (-1 : F) * rho 1150) = (relationLc523 rho)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 102⟩], residual := [((1 : F), 1151), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 491) * (relationLc524 rho) = ((1 : F) * rho 1153)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 102⟩], residual := [((1 : F), 1152), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 491) * (relationLc525 rho) = ((1 : F) * rho 1154)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7914807530524885708351045862503002891249080478560501693284144165946917766545 : F), 643, 5, 103⟩], residual := [((1946015522711203035077681386057863035562597248159926509677692218674505207648 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 644, 5, 103⟩], residual := [((5923278766128168909822928038938298115726159468542647411850771736548739413546 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1155 (rho : Nat -> F) : Prop :=
    (relationLc526 rho) * (relationLc527 rho) = ((1 : F) * rho 1155)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 643, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 644, 5, 103⟩], residual := [((2393517371224057475598767755490752466572833330491862013581151689344166966111 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1156) * ((1 : F) + (1 : F) * rho 1155) = (relationLc528 rho)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 644, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 643, 5, 103⟩], residual := [((6073563674875127024286341449713039304834548910222470325962732122386154671318 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1157) * ((1 : F) + (-1 : F) * rho 1155) = (relationLc529 rho)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 103⟩], residual := [((1 : F), 1156), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 492) * (relationLc530 rho) = ((1 : F) * rho 1158)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 103⟩], residual := [((1 : F), 1157), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 492) * (relationLc531 rho) = ((1 : F) * rho 1159)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70728645331636005845955853481456173824423025261815640495794713771683911711 : F), 643, 5, 104⟩], residual := [((3849675737925589197735019624171943935321757003561538613467023528613068961194 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 644, 5, 104⟩], residual := [((1941023112738792087759518588422184313690349214124975377334047218279478471684 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1160 (rho : Nat -> F) : Prop :=
    (relationLc532 rho) * (relationLc533 rho) = ((1 : F) * rho 1160)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 643, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 644, 5, 104⟩], residual := [((7412609117164229528822969573135742243461271675528505483220415605157658858895 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1161) * ((1 : F) + (1 : F) * rho 1160) = (relationLc534 rho)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 644, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 643, 5, 104⟩], residual := [((7093751429237556699716420726389886403139576281293596920039655962704937241800 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1162) * ((1 : F) + (-1 : F) * rho 1160) = (relationLc535 rho)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 104⟩], residual := [((1 : F), 1161), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 493) * (relationLc536 rho) = ((1 : F) * rho 1163)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 104⟩], residual := [((1 : F), 1162), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 493) * (relationLc537 rho) = ((1 : F) * rho 1164)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3546625568890307552429781112965157521414034546288725889720048435578600870691 : F), 643, 5, 105⟩], residual := [((3641561160744654101980428707475397674969401685942908491841455433655815966411 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 644, 5, 105⟩], residual := [((53281046953101587019996253253964797544104105448128132979505592122682632620 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1165 (rho : Nat -> F) : Prop :=
    (relationLc538 rho) * (relationLc539 rho) = ((1 : F) * rho 1165)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 644, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 643, 5, 105⟩], residual := [((6086644177183875512750199711247361954903971754222842680869633117214845808329 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1166) * ((1 : F) + (1 : F) * rho 1165) = (relationLc540 rho)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 643, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 644, 5, 105⟩], residual := [((5192696380881666400047528432814522329011430279087660137392524050310623674625 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1167) * ((1 : F) + (-1 : F) * rho 1165) = (relationLc541 rho)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 105⟩], residual := [((1 : F), 1166), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 494) * (relationLc542 rho) = ((1 : F) * rho 1168)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 105⟩], residual := [((1 : F), 1167), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 494) * (relationLc543 rho) = ((1 : F) * rho 1169)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6093675132429608477253576651610943723695035162911829703009140894413768944674 : F), 643, 5, 106⟩], residual := [((8330546601821949920201601220938265663568849234920871178117421013499419460076 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
