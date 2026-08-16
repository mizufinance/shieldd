import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs76

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70728645331636005845955853481456173824423025261815640495794713771683911711 : F), 4471, 5, 104⟩], residual := [((3849675737925589197735019624171943935321757003561538613467023528613068961194 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 4472, 5, 104⟩], residual := [((1941023112738792087759518588422184313690349214124975377334047218279478471684 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5162 (rho : Nat -> F) : Prop :=
    (relationLc539 rho) * (relationLc540 rho) = ((1 : F) * rho 4988)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (870901631624161299705194428011840871652220133061991854911033555436089011147 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 4471, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 4472, 5, 104⟩], residual := [((7412609117164229528822969573135742243461271675528505483220415605157658858895 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4989) * ((1 : F) + (1 : F) * rho 4988) = (relationLc541 rho)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), runs := [⟨(7882639146651220202710205985838279601010877374432215097788101337438221032111 : F), 4472, 5, 104⟩, ⟨(870901631624161299705194428011840871652220133061991854911033555436089011147 : F), 4471, 5, 104⟩], residual := [((7093751429237556699716420726389886403139576281293596920039655962704937241800 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4990) * ((1 : F) + (-1 : F) * rho 4988) = (relationLc542 rho)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 104⟩], residual := [((1 : F), 4989), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4321) * (relationLc543 rho) = ((1 : F) * rho 4991)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 104⟩], residual := [((1 : F), 4990), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4321) * (relationLc544 rho) = ((1 : F) * rho 4992)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3546625568890307552429781112965157521414034546288725889720048435578600870691 : F), 4471, 5, 105⟩], residual := [((3641561160744654101980428707475397674969401685942908491841455433655815966411 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 4472, 5, 105⟩], residual := [((53281046953101587019996253253964797544104105448128132979505592122682632620 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5167 (rho : Nat -> F) : Prop :=
    (relationLc545 rho) * (relationLc546 rho) = ((1 : F) * rho 4993)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 4472, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 4471, 5, 105⟩], residual := [((6086644177183875512750199711247361954903971754222842680869633117214845808329 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4994) * ((1 : F) + (1 : F) * rho 4993) = (relationLc547 rho)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), runs := [⟨(2386909988703298762218359654549967039958725005018759706983062395170453890267 : F), 4471, 5, 105⟩, ⟨(2530878685468906170638072277626701346711884453115099798136744894419342589276 : F), 4472, 5, 105⟩], residual := [((5192696380881666400047528432814522329011430279087660137392524050310623674625 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4995) * ((1 : F) + (-1 : F) * rho 4993) = (relationLc548 rho)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 105⟩], residual := [((1 : F), 4994), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4322) * (relationLc549 rho) = ((1 : F) * rho 4996)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 105⟩], residual := [((1 : F), 4995), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4322) * (relationLc550 rho) = ((1 : F) * rho 4997)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6093675132429608477253576651610943723695035162911829703009140894413768944674 : F), 4471, 5, 106⟩], residual := [((8330546601821949920201601220938265663568849234920871178117421013499419460076 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 4472, 5, 106⟩], residual := [((391322330339802460333800737188691082541887248304729356954627494111230659300 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5172 (rho : Nat -> F) : Prop :=
    (relationLc551 rho) * (relationLc552 rho) = ((1 : F) * rho 4998)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 4471, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 4472, 5, 106⟩], residual := [((7393395407854023411091582679568674789999292340810752758585856224541780859240 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4999) * ((1 : F) + (1 : F) * rho 4998) = (relationLc553 rho)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), runs := [⟨(6618382865286124595390341677175614559248741728392115495010164426034730697701 : F), 4472, 5, 106⟩, ⟨(6682916648736557902788449466958959262075803469983761892025369624899261706063 : F), 4471, 5, 106⟩], residual := [((5026433861106741348064021267558229747633023398503418350298356857583390965788 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5000) * ((1 : F) + (-1 : F) * rho 4998) = (relationLc554 rho)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 106⟩], residual := [((1 : F), 4999), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4323) * (relationLc555 rho) = ((1 : F) * rho 5001)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 106⟩], residual := [((1 : F), 5000), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4323) * (relationLc556 rho) = ((1 : F) * rho 5002)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(802582390533381949833150380230236228225956897101666263149282361578301616566 : F), 4471, 5, 107⟩], residual := [((301177235079165349316100773274654351297626884263148844712974855155222594888 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 4472, 5, 107⟩], residual := [((7231027462758172055494906444410861491254239427148220797738845800669850299482 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5177 (rho : Nat -> F) : Prop :=
    (relationLc557 rho) * (relationLc558 rho) = ((1 : F) * rho 5003)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 4471, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 4472, 5, 107⟩], residual := [((4855161421785303569807324485724651660960225257006979121174716220175099345960 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5004) * ((1 : F) + (1 : F) * rho 5003) = (relationLc559 rho)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), runs := [⟨(4033816910564605065918863799087057888448741707224235607406054670390731490749 : F), 4472, 5, 107⟩, ⟨(8174381075187400267760064410418155778069832712847859187834576392998241089840 : F), 4471, 5, 107⟩], residual := [((1979505228092697509473422246330153137094423318560622343963421556056542786252 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5005) * ((1 : F) + (-1 : F) * rho 5003) = (relationLc560 rho)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 107⟩], residual := [((1 : F), 5004), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4324) * (relationLc561 rho) = ((1 : F) * rho 5006)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 107⟩], residual := [((1 : F), 5005), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4324) * (relationLc562 rho) = ((1 : F) * rho 5007)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7624065903200243638354300770793445598122083197862726896881685444818578659288 : F), 4471, 5, 108⟩], residual := [((2473281285945615650691691557769240725948841087680849542550863992393045657832 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 4472, 5, 108⟩], residual := [((3879334020592600288572858919104859690562216137460805342262589189264534393246 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5182 (rho : Nat -> F) : Prop :=
    (relationLc563 rho) * (relationLc564 rho) = ((1 : F) * rho 5008)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 4471, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 4472, 5, 108⟩], residual := [((1316904976256330820388323739593138760888018570678747851142411031342034814781 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5009) * ((1 : F) + (1 : F) * rho 5008) = (relationLc565 rho)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), runs := [⟨(3432300110046941659778769447419977172987868443373683893999805738449347803695 : F), 4472, 5, 108⟩, ⟨(4689535799650003343570110973961066172997327667865958738192014493115939912835 : F), 4471, 5, 108⟩], residual := [((7317039261451264127133351821947730106715782680475838190118540373161436087981 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5010) * ((1 : F) + (-1 : F) * rho 5008) = (relationLc566 rho)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 108⟩], residual := [((1 : F), 5009), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4325) * (relationLc567 rho) = ((1 : F) * rho 5011)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 108⟩], residual := [((1 : F), 5010), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4325) * (relationLc568 rho) = ((1 : F) * rho 5012)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5697226797425408696682955818762580396708522097437636922536503052789060670599 : F), 4471, 5, 109⟩], residual := [((2057964420300062478676558685521731441678344679088738649894578146609593047726 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
