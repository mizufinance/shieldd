import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs69

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), runs := [⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 772, 5, 149⟩, ⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 1520, 8, 92⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 773, 5, 149⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 1521, 8, 92⟩], residual := [((2773408404835642652341861104959600292588125435830573186116529168938180195470 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1451 rho) = ((1 : F) * rho 2254)

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2255) * ((1 : F) + (-1 : F) * rho 2251) = ((5651874202160757312366379641783052914178892391592013179945617231228741236268 : F) * rho 2250 + (1 : F) * rho 2254)

def relationLc1452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 92⟩], residual := [((1 : F), 2253), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 759) * (relationLc1452 rho) = ((1 : F) * rho 2256)

def relationLc1453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 92⟩], residual := [((1 : F), 2255), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 759) * (relationLc1453 rho) = ((1 : F) * rho 2257)

def relationLc1454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 93⟩, ⟨(1 : F), 1521, 8, 93⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2258 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1454 rho) = ((1 : F) * rho 2258)

def relationLc1455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 772, 5, 149⟩, ⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 1520, 8, 93⟩], residual := [((5601485619389641128729184567002420572067936942603615555204830633048519319217 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), runs := [⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 773, 5, 149⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 1521, 8, 93⟩], residual := [((8201628241980808648367014804422567103406614700569427414153625827007033516096 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2259 (rho : Nat -> F) : Prop :=
    (relationLc1455 rho) * (relationLc1456 rho) = ((1 : F) * rho 2259)

def relationLc1457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), runs := [⟨(2416772477807176936961022868245741931807687643073911419383531377235193867027 : F), 772, 5, 149⟩, ⟨(2416772477807176936961022868245741931807687643073911419383531377235193867027 : F), 1520, 8, 93⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 773, 5, 149⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 1521, 8, 93⟩], residual := [((1978452197506266677604550734876224268318213547823483511718485120057340746806 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2260 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1457 rho) = ((1 : F) * rho 2260)

def relationRow2261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2261) * ((1 : F) + (1 : F) * rho 2259) = ((1 : F) * rho 2260)

def relationLc1458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), runs := [⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 773, 5, 149⟩, ⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 1521, 8, 93⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 772, 5, 149⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 1520, 8, 93⟩], residual := [((6466009551922103746644274203905322263057685787330580316216748335860068492235 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2262 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1458 rho) = ((1 : F) * rho 2262)

def relationRow2263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2263) * ((1 : F) + (-1 : F) * rho 2259) = ((4996348938828880780023261034552127470779633716413344158202017656428281775352 : F) * rho 2258 + (1 : F) * rho 2262)

def relationLc1459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 93⟩], residual := [((1 : F), 2261), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 760) * (relationLc1459 rho) = ((1 : F) * rho 2264)

def relationLc1460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 93⟩], residual := [((1 : F), 2263), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 760) * (relationLc1460 rho) = ((1 : F) * rho 2265)

def relationLc1461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 94⟩, ⟨(1 : F), 1521, 8, 94⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1461 rho) = ((1 : F) * rho 2266)

def relationLc1462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 772, 5, 149⟩, ⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 1520, 8, 94⟩], residual := [((2291848306146904448449527014905496286647056653699481663383632137549226627925 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 773, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 1521, 8, 94⟩], residual := [((6378915408891041453484610792489999331570369577930014658719925711199666616324 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2267 (rho : Nat -> F) : Prop :=
    (relationLc1462 rho) * (relationLc1463 rho) = ((1 : F) * rho 2267)

def relationLc1464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 773, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 1521, 8, 94⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 772, 5, 149⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 1520, 8, 94⟩], residual := [((4677364479696824080456115307318514279825491842592336608554691172134405775560 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2268 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1464 rho) = ((1 : F) * rho 2268)

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2269) * ((1 : F) + (1 : F) * rho 2267) = ((1 : F) * rho 2268)

def relationLc1465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), runs := [⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 773, 5, 149⟩, ⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 1521, 8, 94⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 772, 5, 149⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 1520, 8, 94⟩], residual := [((3767097269731546343792709631463032251550407492561727219380542283783003463481 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1465 rho) = ((1 : F) * rho 2270)

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2271) * ((1 : F) + (-1 : F) * rho 2267) = ((3269486125078447257552046140835745480464772095593325886654245603520625955593 : F) * rho 2266 + (1 : F) * rho 2270)

def relationLc1466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 94⟩], residual := [((1 : F), 2269), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 761) * (relationLc1466 rho) = ((1 : F) * rho 2272)

def relationLc1467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 94⟩], residual := [((1 : F), 2271), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 761) * (relationLc1467 rho) = ((1 : F) * rho 2273)

def relationLc1468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 95⟩, ⟨(1 : F), 1521, 8, 95⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1468 rho) = ((1 : F) * rho 2274)

def relationLc1469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 772, 5, 149⟩, ⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 1520, 8, 95⟩], residual := [((5531294256398319965953230848414062600628135281356110451193038651571188380940 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), runs := [⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 773, 5, 149⟩, ⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 1521, 8, 95⟩], residual := [((2570807001276145449324531511902523303421864657760087009493837657773969935704 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2275 (rho : Nat -> F) : Prop :=
    (relationLc1469 rho) * (relationLc1470 rho) = ((1 : F) * rho 2275)

def relationLc1471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), runs := [⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 773, 5, 149⟩, ⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 1521, 8, 95⟩, ⟨(837830745026968237423835190512321529772325628897387301638787230114395216226 : F), 772, 5, 149⟩, ⟨(837830745026968237423835190512321529772325628897387301638787230114395216226 : F), 1520, 8, 95⟩], residual := [((6119815029836556037983158482495769450696490408038757353122107864397857228893 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2276 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1471 rho) = ((1 : F) * rho 2276)

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2277) * ((1 : F) + (1 : F) * rho 2275) = ((1 : F) * rho 2276)

def relationLc1472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3568808739303646622143553451199103509568756253328842217167126653240016101563 : F), runs := [⟨(3568808739303646622143553451199103509568756253328842217167126653240016101563 : F), 773, 5, 149⟩, ⟨(3568808739303646622143553451199103509568756253328842217167126653240016101563 : F), 1521, 8, 95⟩, ⟨(7606631004401402186824989748269225001603573706256676526296446225803014022815 : F), 772, 5, 149⟩, ⟨(7606631004401402186824989748269225001603573706256676526296446225803014022815 : F), 1520, 8, 95⟩], residual := [((2324646719591814386265666456285777080679408927115306474813125591519552010148 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1472 rho) = ((1 : F) * rho 2278)

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2279) * ((1 : F) + (-1 : F) * rho 2275) = ((5713483755151692039529106678094764551579468710722608912406894032791788353704 : F) * rho 2274 + (1 : F) * rho 2278)

def relationLc1473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 95⟩], residual := [((1 : F), 2277), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 762) * (relationLc1473 rho) = ((1 : F) * rho 2280)

def relationLc1474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 95⟩], residual := [((1 : F), 2279), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 762) * (relationLc1474 rho) = ((1 : F) * rho 2281)

def relationLc1475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 96⟩, ⟨(1 : F), 1521, 8, 96⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1475 rho) = ((1 : F) * rho 2282)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
