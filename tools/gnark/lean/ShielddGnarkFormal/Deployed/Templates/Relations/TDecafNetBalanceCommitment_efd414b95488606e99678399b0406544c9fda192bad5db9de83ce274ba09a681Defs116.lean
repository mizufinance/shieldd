import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs115

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow6121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4457) * (relationLc1451 rho) = ((1 : F) * rho 5947)

def relationLc1452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 91⟩], residual := [((1 : F), 5946), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4457) * (relationLc1452 rho) = ((1 : F) * rho 5948)

def relationLc1453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 92⟩, ⟨(1 : F), 5220, 8, 92⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6123 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1453 rho) = ((1 : F) * rho 5949)

def relationLc1454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5795376365332425280251108321101108099365152824664954485845090213493474225511 : F), 4471, 5, 149⟩, ⟨(5795376365332425280251108321101108099365152824664954485845090213493474225511 : F), 5219, 8, 92⟩], residual := [((2804388294726016125662420118254808533838138442815855271791669649881650081475 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), runs := [⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 4472, 5, 149⟩, ⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 5220, 8, 92⟩], residual := [((2902823778148234976100277600948068094267423525193951070508650400515105641806 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6124 (rho : Nat -> F) : Prop :=
    (relationLc1454 rho) * (relationLc1455 rho) = ((1 : F) * rho 5950)

def relationLc1456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), runs := [⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 4472, 5, 149⟩, ⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 5220, 8, 92⟩, ⟨(3448466306987922263614383402131330016976447875891964797858321066322296943384 : F), 4471, 5, 149⟩, ⟨(3448466306987922263614383402131330016976447875891964797858321066322296943384 : F), 5219, 8, 92⟩], residual := [((5671053344592727771906963833821946238787773899323490641818704286979229043571 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6125 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1456 rho) = ((1 : F) * rho 5951)

def relationRow6126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5952) * ((1 : F) + (1 : F) * rho 5950) = ((1 : F) * rho 5951)

def relationLc1457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), runs := [⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 4471, 5, 149⟩, ⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 5219, 8, 92⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 4472, 5, 149⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 5220, 8, 92⟩], residual := [((2773408404835642652341861104959600292588125435830573186116529168938180195470 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6127 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1457 rho) = ((1 : F) * rho 5953)

def relationRow6128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5954) * ((1 : F) + (-1 : F) * rho 5950) = ((5651874202160757312366379641783052914178892391592013179945617231228741236268 : F) * rho 5949 + (1 : F) * rho 5953)

def relationLc1458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 92⟩], residual := [((1 : F), 5952), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4458) * (relationLc1458 rho) = ((1 : F) * rho 5955)

def relationLc1459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 92⟩], residual := [((1 : F), 5954), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4458) * (relationLc1459 rho) = ((1 : F) * rho 5956)

def relationLc1460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 93⟩, ⟨(1 : F), 5220, 8, 93⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6131 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1460 rho) = ((1 : F) * rho 5957)

def relationLc1461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 4471, 5, 149⟩, ⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 5219, 8, 93⟩], residual := [((5601485619389641128729184567002420572067936942603615555204830633048519319217 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), runs := [⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 4472, 5, 149⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 5220, 8, 93⟩], residual := [((8201628241980808648367014804422567103406614700569427414153625827007033516096 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6132 (rho : Nat -> F) : Prop :=
    (relationLc1461 rho) * (relationLc1462 rho) = ((1 : F) * rho 5958)

def relationLc1463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), runs := [⟨(2416772477807176936961022868245741931807687643073911419383531377235193867027 : F), 4471, 5, 149⟩, ⟨(2416772477807176936961022868245741931807687643073911419383531377235193867027 : F), 5219, 8, 93⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 4472, 5, 149⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 5220, 8, 93⟩], residual := [((1978452197506266677604550734876224268318213547823483511718485120057340746806 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6133 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1463 rho) = ((1 : F) * rho 5959)

def relationRow6134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5960) * ((1 : F) + (1 : F) * rho 5958) = ((1 : F) * rho 5959)

def relationLc1464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), runs := [⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 4472, 5, 149⟩, ⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 5220, 8, 93⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 4471, 5, 149⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 5219, 8, 93⟩], residual := [((6466009551922103746644274203905322263057685787330580316216748335860068492235 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6135 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1464 rho) = ((1 : F) * rho 5961)

def relationRow6136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5962) * ((1 : F) + (-1 : F) * rho 5958) = ((4996348938828880780023261034552127470779633716413344158202017656428281775352 : F) * rho 5957 + (1 : F) * rho 5961)

def relationLc1465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 93⟩], residual := [((1 : F), 5960), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4459) * (relationLc1465 rho) = ((1 : F) * rho 5963)

def relationLc1466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 93⟩], residual := [((1 : F), 5962), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4459) * (relationLc1466 rho) = ((1 : F) * rho 5964)

def relationLc1467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 94⟩, ⟨(1 : F), 5220, 8, 94⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6139 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1467 rho) = ((1 : F) * rho 5965)

def relationLc1468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 4471, 5, 149⟩, ⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 5219, 8, 94⟩], residual := [((2291848306146904448449527014905496286647056653699481663383632137549226627925 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 4472, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 5220, 8, 94⟩], residual := [((6378915408891041453484610792489999331570369577930014658719925711199666616324 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6140 (rho : Nat -> F) : Prop :=
    (relationLc1468 rho) * (relationLc1469 rho) = ((1 : F) * rho 5966)

def relationLc1470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 4472, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 5220, 8, 94⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 4471, 5, 149⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 5219, 8, 94⟩], residual := [((4677364479696824080456115307318514279825491842592336608554691172134405775560 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6141 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1470 rho) = ((1 : F) * rho 5967)

def relationRow6142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5968) * ((1 : F) + (1 : F) * rho 5966) = ((1 : F) * rho 5967)

def relationLc1471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), runs := [⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 4472, 5, 149⟩, ⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 5220, 8, 94⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 4471, 5, 149⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 5219, 8, 94⟩], residual := [((3767097269731546343792709631463032251550407492561727219380542283783003463481 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6143 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1471 rho) = ((1 : F) * rho 5969)

def relationRow6144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5970) * ((1 : F) + (-1 : F) * rho 5966) = ((3269486125078447257552046140835745480464772095593325886654245603520625955593 : F) * rho 5965 + (1 : F) * rho 5969)

def relationLc1472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 94⟩], residual := [((1 : F), 5968), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4460) * (relationLc1472 rho) = ((1 : F) * rho 5971)

def relationLc1473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 94⟩], residual := [((1 : F), 5970), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4460) * (relationLc1473 rho) = ((1 : F) * rho 5972)

def relationLc1474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 95⟩, ⟨(1 : F), 5220, 8, 95⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6147 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1474 rho) = ((1 : F) * rho 5973)

def relationLc1475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 4471, 5, 149⟩, ⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 5219, 8, 95⟩], residual := [((5531294256398319965953230848414062600628135281356110451193038651571188380940 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), runs := [⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 4472, 5, 149⟩, ⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 5220, 8, 95⟩], residual := [((2570807001276145449324531511902523303421864657760087009493837657773969935704 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6148 (rho : Nat -> F) : Prop :=
    (relationLc1475 rho) * (relationLc1476 rho) = ((1 : F) * rho 5974)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
