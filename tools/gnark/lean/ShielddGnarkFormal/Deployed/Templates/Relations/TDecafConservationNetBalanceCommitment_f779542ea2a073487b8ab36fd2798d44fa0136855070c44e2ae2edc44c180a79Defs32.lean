import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs31

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 902, 5, 104⟩], residual := [((1941023112738792087759518588422184313690349214124975377334047218279478471684 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1418 (rho : Nat -> F) : Prop :=
    (relationLc534 rho) * (relationLc535 rho) = ((1 : F) * rho 1418)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 901, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 902, 5, 104⟩], residual := [((7412609117164229528822969573135742243461271675528505483220415605157658858895 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1419) * ((1 : F) + (1 : F) * rho 1418) = (relationLc536 rho)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 902, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 901, 5, 104⟩], residual := [((7093751429237556699716420726389886403139576281293596920039655962704937241800 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1420) * ((1 : F) + (-1 : F) * rho 1418) = (relationLc537 rho)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 104⟩], residual := [((1 : F), 1419), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 751) * (relationLc538 rho) = ((1 : F) * rho 1421)

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 104⟩], residual := [((1 : F), 1420), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 751) * (relationLc539 rho) = ((1 : F) * rho 1422)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3546625568890307552429781112965157521414034546288725889720048435578600870691 : F), 901, 5, 105⟩], residual := [((3641561160744654101980428707475397674969401685942908491841455433655815966411 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 902, 5, 105⟩], residual := [((53281046953101587019996253253964797544104105448128132979505592122682632620 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1423 (rho : Nat -> F) : Prop :=
    (relationLc540 rho) * (relationLc541 rho) = ((1 : F) * rho 1423)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 902, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 901, 5, 105⟩], residual := [((6086644177183875512750199711247361954903971754222842680869633117214845808329 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1424) * ((1 : F) + (1 : F) * rho 1423) = (relationLc542 rho)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 901, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 902, 5, 105⟩], residual := [((5192696380881666400047528432814522329011430279087660137392524050310623674625 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1425) * ((1 : F) + (-1 : F) * rho 1423) = (relationLc543 rho)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 105⟩], residual := [((1 : F), 1424), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 752) * (relationLc544 rho) = ((1 : F) * rho 1426)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 105⟩], residual := [((1 : F), 1425), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 752) * (relationLc545 rho) = ((1 : F) * rho 1427)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6093675132429608477253576651610943723695035162911829703009140894413768944674 : F), 901, 5, 106⟩], residual := [((8330546601821949920201601220938265663568849234920871178117421013499419460076 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 902, 5, 106⟩], residual := [((391322330339802460333800737188691082541887248304729356954627494111230659300 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1428 (rho : Nat -> F) : Prop :=
    (relationLc546 rho) * (relationLc547 rho) = ((1 : F) * rho 1428)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 901, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 902, 5, 106⟩], residual := [((7393395407854023411091582679568674789999292340810752758585856224541780859240 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1429) * ((1 : F) + (1 : F) * rho 1428) = (relationLc548 rho)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 902, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 901, 5, 106⟩], residual := [((5026433861106741348064021267558229747633023398503418350298356857583390965788 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1430) * ((1 : F) + (-1 : F) * rho 1428) = (relationLc549 rho)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 106⟩], residual := [((1 : F), 1429), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 753) * (relationLc550 rho) = ((1 : F) * rho 1431)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 106⟩], residual := [((1 : F), 1430), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 753) * (relationLc551 rho) = ((1 : F) * rho 1432)

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(802582390533381949833150380230236228225956897101666263149282361578301616566 : F), 901, 5, 107⟩], residual := [((301177235079165349316100773274654351297626884263148844712974855155222594888 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 902, 5, 107⟩], residual := [((7231027462758172055494906444410861491254239427148220797738845800669850299482 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1433 (rho : Nat -> F) : Prop :=
    (relationLc552 rho) * (relationLc553 rho) = ((1 : F) * rho 1433)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 901, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 902, 5, 107⟩], residual := [((4855161421785303569807324485724651660960225257006979121174716220175099345960 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1434) * ((1 : F) + (1 : F) * rho 1433) = (relationLc554 rho)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 902, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 901, 5, 107⟩], residual := [((1979505228092697509473422246330153137094423318560622343963421556056542786252 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1435) * ((1 : F) + (-1 : F) * rho 1433) = (relationLc555 rho)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 107⟩], residual := [((1 : F), 1434), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 754) * (relationLc556 rho) = ((1 : F) * rho 1436)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 107⟩], residual := [((1 : F), 1435), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 754) * (relationLc557 rho) = ((1 : F) * rho 1437)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7624065903200243638354300770793445598122083197862726896881685444818578659288 : F), 901, 5, 108⟩], residual := [((2473281285945615650691691557769240725948841087680849542550863992393045657832 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 902, 5, 108⟩], residual := [((3879334020592600288572858919104859690562216137460805342262589189264534393246 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1438 (rho : Nat -> F) : Prop :=
    (relationLc558 rho) * (relationLc559 rho) = ((1 : F) * rho 1438)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 901, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 902, 5, 108⟩], residual := [((1316904976256330820388323739593138760888018570678747851142411031342034814781 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1439) * ((1 : F) + (1 : F) * rho 1438) = (relationLc560 rho)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 902, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 901, 5, 108⟩], residual := [((7317039261451264127133351821947730106715782680475838190118540373161436087981 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1440) * ((1 : F) + (-1 : F) * rho 1438) = (relationLc561 rho)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 108⟩], residual := [((1 : F), 1439), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 755) * (relationLc562 rho) = ((1 : F) * rho 1441)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 108⟩], residual := [((1 : F), 1440), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 755) * (relationLc563 rho) = ((1 : F) * rho 1442)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5697226797425408696682955818762580396708522097437636922536503052789060670599 : F), 901, 5, 109⟩], residual := [((2057964420300062478676558685521731441678344679088738649894578146609593047726 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 902, 5, 109⟩], residual := [((4074135452690516428383827978533676491907187469793374165982961018377576480445 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1443 (rho : Nat -> F) : Prop :=
    (relationLc564 rho) * (relationLc565 rho) = ((1 : F) * rho 1443)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
