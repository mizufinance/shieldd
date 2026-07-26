import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs70

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow2377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 887) * (relationLc1446 rho) = ((1 : F) * rho 2377)

def relationLc1447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 91⟩], residual := [((1 : F), 2376), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 887) * (relationLc1447 rho) = ((1 : F) * rho 2378)

def relationLc1448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 92⟩, ⟨(1 : F), 1650, 8, 92⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1448 rho) = ((1 : F) * rho 2379)

def relationLc1449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5795376365332425280251108321101108099365152824664954485845090213493474225511 : F), 901, 5, 149⟩, ⟨(5795376365332425280251108321101108099365152824664954485845090213493474225511 : F), 1649, 8, 92⟩], residual := [((2804388294726016125662420118254808533838138442815855271791669649881650081475 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), runs := [⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 902, 5, 149⟩, ⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 1650, 8, 92⟩], residual := [((2902823778148234976100277600948068094267423525193951070508650400515105641806 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2380 (rho : Nat -> F) : Prop :=
    (relationLc1449 rho) * (relationLc1450 rho) = ((1 : F) * rho 2380)

def relationLc1451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), runs := [⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 902, 5, 149⟩, ⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 1650, 8, 92⟩, ⟨(3448466306987922263614383402131330016976447875891964797858321066322296943384 : F), 901, 5, 149⟩, ⟨(3448466306987922263614383402131330016976447875891964797858321066322296943384 : F), 1649, 8, 92⟩], residual := [((5671053344592727771906963833821946238787773899323490641818704286979229043571 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1451 rho) = ((1 : F) * rho 2381)

def relationRow2382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2382) * ((1 : F) + (1 : F) * rho 2380) = ((1 : F) * rho 2381)

def relationLc1452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), runs := [⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 901, 5, 149⟩, ⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 1649, 8, 92⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 902, 5, 149⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 1650, 8, 92⟩], residual := [((2773408404835642652341861104959600292588125435830573186116529168938180195470 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1452 rho) = ((1 : F) * rho 2383)

def relationRow2384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2384) * ((1 : F) + (-1 : F) * rho 2380) = ((5651874202160757312366379641783052914178892391592013179945617231228741236268 : F) * rho 2379 + (1 : F) * rho 2383)

def relationLc1453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 92⟩], residual := [((1 : F), 2382), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 888) * (relationLc1453 rho) = ((1 : F) * rho 2385)

def relationLc1454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 92⟩], residual := [((1 : F), 2384), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 888) * (relationLc1454 rho) = ((1 : F) * rho 2386)

def relationLc1455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 93⟩, ⟨(1 : F), 1650, 8, 93⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2387 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1455 rho) = ((1 : F) * rho 2387)

def relationLc1456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 901, 5, 149⟩, ⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 1649, 8, 93⟩], residual := [((5601485619389641128729184567002420572067936942603615555204830633048519319217 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), runs := [⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 902, 5, 149⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 1650, 8, 93⟩], residual := [((8201628241980808648367014804422567103406614700569427414153625827007033516096 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2388 (rho : Nat -> F) : Prop :=
    (relationLc1456 rho) * (relationLc1457 rho) = ((1 : F) * rho 2388)

def relationLc1458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), runs := [⟨(2416772477807176936961022868245741931807687643073911419383531377235193867027 : F), 901, 5, 149⟩, ⟨(2416772477807176936961022868245741931807687643073911419383531377235193867027 : F), 1649, 8, 93⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 902, 5, 149⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 1650, 8, 93⟩], residual := [((1978452197506266677604550734876224268318213547823483511718485120057340746806 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1458 rho) = ((1 : F) * rho 2389)

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2390) * ((1 : F) + (1 : F) * rho 2388) = ((1 : F) * rho 2389)

def relationLc1459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), runs := [⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 902, 5, 149⟩, ⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 1650, 8, 93⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 901, 5, 149⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 1649, 8, 93⟩], residual := [((6466009551922103746644274203905322263057685787330580316216748335860068492235 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1459 rho) = ((1 : F) * rho 2391)

def relationRow2392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2392) * ((1 : F) + (-1 : F) * rho 2388) = ((4996348938828880780023261034552127470779633716413344158202017656428281775352 : F) * rho 2387 + (1 : F) * rho 2391)

def relationLc1460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 93⟩], residual := [((1 : F), 2390), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 889) * (relationLc1460 rho) = ((1 : F) * rho 2393)

def relationLc1461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 93⟩], residual := [((1 : F), 2392), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 889) * (relationLc1461 rho) = ((1 : F) * rho 2394)

def relationLc1462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 94⟩, ⟨(1 : F), 1650, 8, 94⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1462 rho) = ((1 : F) * rho 2395)

def relationLc1463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 901, 5, 149⟩, ⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 1649, 8, 94⟩], residual := [((2291848306146904448449527014905496286647056653699481663383632137549226627925 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 902, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 1650, 8, 94⟩], residual := [((6378915408891041453484610792489999331570369577930014658719925711199666616324 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2396 (rho : Nat -> F) : Prop :=
    (relationLc1463 rho) * (relationLc1464 rho) = ((1 : F) * rho 2396)

def relationLc1465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 902, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 1650, 8, 94⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 901, 5, 149⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 1649, 8, 94⟩], residual := [((4677364479696824080456115307318514279825491842592336608554691172134405775560 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2397 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1465 rho) = ((1 : F) * rho 2397)

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2398) * ((1 : F) + (1 : F) * rho 2396) = ((1 : F) * rho 2397)

def relationLc1466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), runs := [⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 902, 5, 149⟩, ⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 1650, 8, 94⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 901, 5, 149⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 1649, 8, 94⟩], residual := [((3767097269731546343792709631463032251550407492561727219380542283783003463481 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1466 rho) = ((1 : F) * rho 2399)

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2400) * ((1 : F) + (-1 : F) * rho 2396) = ((3269486125078447257552046140835745480464772095593325886654245603520625955593 : F) * rho 2395 + (1 : F) * rho 2399)

def relationLc1467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 94⟩], residual := [((1 : F), 2398), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 890) * (relationLc1467 rho) = ((1 : F) * rho 2401)

def relationLc1468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 94⟩], residual := [((1 : F), 2400), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 890) * (relationLc1468 rho) = ((1 : F) * rho 2402)

def relationLc1469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 95⟩, ⟨(1 : F), 1650, 8, 95⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1469 rho) = ((1 : F) * rho 2403)

def relationLc1470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 901, 5, 149⟩, ⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 1649, 8, 95⟩], residual := [((5531294256398319965953230848414062600628135281356110451193038651571188380940 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), runs := [⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 902, 5, 149⟩, ⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 1650, 8, 95⟩], residual := [((2570807001276145449324531511902523303421864657760087009493837657773969935704 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2404 (rho : Nat -> F) : Prop :=
    (relationLc1470 rho) * (relationLc1471 rho) = ((1 : F) * rho 2404)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
