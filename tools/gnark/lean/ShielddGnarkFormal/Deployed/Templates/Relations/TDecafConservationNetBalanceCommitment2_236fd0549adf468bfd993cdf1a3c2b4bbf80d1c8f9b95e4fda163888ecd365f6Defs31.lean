import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs30

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 773, 5, 105⟩], residual := [((53281046953101587019996253253964797544104105448128132979505592122682632620 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1294 (rho : Nat -> F) : Prop :=
    (relationLc539 rho) * (relationLc540 rho) = ((1 : F) * rho 1294)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 773, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 772, 5, 105⟩], residual := [((6086644177183875512750199711247361954903971754222842680869633117214845808329 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1295) * ((1 : F) + (1 : F) * rho 1294) = (relationLc541 rho)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 772, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 773, 5, 105⟩], residual := [((5192696380881666400047528432814522329011430279087660137392524050310623674625 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1296) * ((1 : F) + (-1 : F) * rho 1294) = (relationLc542 rho)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 105⟩], residual := [((1 : F), 1295), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 623) * (relationLc543 rho) = ((1 : F) * rho 1297)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 105⟩], residual := [((1 : F), 1296), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 623) * (relationLc544 rho) = ((1 : F) * rho 1298)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6093675132429608477253576651610943723695035162911829703009140894413768944674 : F), 772, 5, 106⟩], residual := [((8330546601821949920201601220938265663568849234920871178117421013499419460076 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 773, 5, 106⟩], residual := [((391322330339802460333800737188691082541887248304729356954627494111230659300 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1299 (rho : Nat -> F) : Prop :=
    (relationLc545 rho) * (relationLc546 rho) = ((1 : F) * rho 1299)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 772, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 773, 5, 106⟩], residual := [((7393395407854023411091582679568674789999292340810752758585856224541780859240 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1300) * ((1 : F) + (1 : F) * rho 1299) = (relationLc547 rho)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 773, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 772, 5, 106⟩], residual := [((5026433861106741348064021267558229747633023398503418350298356857583390965788 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1301) * ((1 : F) + (-1 : F) * rho 1299) = (relationLc548 rho)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 106⟩], residual := [((1 : F), 1300), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 624) * (relationLc549 rho) = ((1 : F) * rho 1302)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 106⟩], residual := [((1 : F), 1301), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 624) * (relationLc550 rho) = ((1 : F) * rho 1303)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(802582390533381949833150380230236228225956897101666263149282361578301616566 : F), 772, 5, 107⟩], residual := [((301177235079165349316100773274654351297626884263148844712974855155222594888 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 773, 5, 107⟩], residual := [((7231027462758172055494906444410861491254239427148220797738845800669850299482 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1304 (rho : Nat -> F) : Prop :=
    (relationLc551 rho) * (relationLc552 rho) = ((1 : F) * rho 1304)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 772, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 773, 5, 107⟩], residual := [((4855161421785303569807324485724651660960225257006979121174716220175099345960 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1305) * ((1 : F) + (1 : F) * rho 1304) = (relationLc553 rho)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 773, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 772, 5, 107⟩], residual := [((1979505228092697509473422246330153137094423318560622343963421556056542786252 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1306) * ((1 : F) + (-1 : F) * rho 1304) = (relationLc554 rho)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 107⟩], residual := [((1 : F), 1305), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 625) * (relationLc555 rho) = ((1 : F) * rho 1307)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 107⟩], residual := [((1 : F), 1306), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 625) * (relationLc556 rho) = ((1 : F) * rho 1308)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7624065903200243638354300770793445598122083197862726896881685444818578659288 : F), 772, 5, 108⟩], residual := [((2473281285945615650691691557769240725948841087680849542550863992393045657832 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 773, 5, 108⟩], residual := [((3879334020592600288572858919104859690562216137460805342262589189264534393246 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1309 (rho : Nat -> F) : Prop :=
    (relationLc557 rho) * (relationLc558 rho) = ((1 : F) * rho 1309)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 772, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 773, 5, 108⟩], residual := [((1316904976256330820388323739593138760888018570678747851142411031342034814781 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1310) * ((1 : F) + (1 : F) * rho 1309) = (relationLc559 rho)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 773, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 772, 5, 108⟩], residual := [((7317039261451264127133351821947730106715782680475838190118540373161436087981 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1311) * ((1 : F) + (-1 : F) * rho 1309) = (relationLc560 rho)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 108⟩], residual := [((1 : F), 1310), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 626) * (relationLc561 rho) = ((1 : F) * rho 1312)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 108⟩], residual := [((1 : F), 1311), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 626) * (relationLc562 rho) = ((1 : F) * rho 1313)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5697226797425408696682955818762580396708522097437636922536503052789060670599 : F), 772, 5, 109⟩], residual := [((2057964420300062478676558685521731441678344679088738649894578146609593047726 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 773, 5, 109⟩], residual := [((4074135452690516428383827978533676491907187469793374165982961018377576480445 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1314 (rho : Nat -> F) : Prop :=
    (relationLc563 rho) * (relationLc564 rho) = ((1 : F) * rho 1314)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 773, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 772, 5, 109⟩], residual := [((2529041317300384425030327934687045078332479099167386559826625525833479255638 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1315) * ((1 : F) + (1 : F) * rho 1314) = (relationLc565 rho)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 772, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 773, 5, 109⟩], residual := [((4335383369444680411786970470778343211130396716702192189122563460842784900121 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1316) * ((1 : F) + (-1 : F) * rho 1314) = (relationLc566 rho)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 109⟩], residual := [((1 : F), 1315), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 627) * (relationLc567 rho) = ((1 : F) * rho 1317)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 109⟩], residual := [((1 : F), 1316), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 627) * (relationLc568 rho) = ((1 : F) * rho 1318)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5402322627373244180631129875510279080115884451807288805962250842451085778032 : F), 772, 5, 110⟩], residual := [((5382338166221662979551210145488477632563286750859103168636009902012140799819 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 773, 5, 110⟩], residual := [((3998177705207051022712752916424830620235393043808391092204319844709748698871 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1319 (rho : Nat -> F) : Prop :=
    (relationLc569 rho) * (relationLc570 rho) = ((1 : F) * rho 1319)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
