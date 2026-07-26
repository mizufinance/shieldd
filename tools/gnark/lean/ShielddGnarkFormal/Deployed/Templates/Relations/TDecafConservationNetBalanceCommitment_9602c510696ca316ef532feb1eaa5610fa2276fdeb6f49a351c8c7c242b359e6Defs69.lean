import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs68

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), runs := [⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 644, 5, 149⟩, ⟨(5864885288406666581186586772475160992403953261814631089116747176724321330716 : F), 1392, 8, 93⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 643, 5, 149⟩, ⟨(6027689271621193487287802070535804599568211692080152408551702078682215372014 : F), 1391, 8, 93⟩], residual := [((6466009551922103746644274203905322263057685787330580316216748335860068492235 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2133 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1457 rho) = ((1 : F) * rho 2133)

def relationRow2134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2134) * ((1 : F) + (-1 : F) * rho 2130) = ((4996348938828880780023261034552127470779633716413344158202017656428281775352 : F) * rho 2129 + (1 : F) * rho 2133)

def relationLc1458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 93⟩], residual := [((1 : F), 2132), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 631) * (relationLc1458 rho) = ((1 : F) * rho 2135)

def relationLc1459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 93⟩], residual := [((1 : F), 2134), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 631) * (relationLc1459 rho) = ((1 : F) * rho 2136)

def relationLc1460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 94⟩, ⟨(1 : F), 1392, 8, 94⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2137 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1460 rho) = ((1 : F) * rho 2137)

def relationLc1461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 643, 5, 149⟩, ⟨(8172949235390102498771900239037686348711764669444278188324224876846579830488 : F), 1391, 8, 94⟩], residual := [((2291848306146904448449527014905496286647056653699481663383632137549226627925 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 644, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 1392, 8, 94⟩], residual := [((6378915408891041453484610792489999331570369577930014658719925711199666616324 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2138 (rho : Nat -> F) : Prop :=
    (relationLc1461 rho) * (relationLc1462 rho) = ((1 : F) * rho 2138)

def relationLc1463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), runs := [⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 644, 5, 149⟩, ⟨(2514857472370197755194646005525823698508853960596342289202109878754445993616 : F), 1392, 8, 94⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 643, 5, 149⟩, ⟨(754628652708249502357400135309921781955918134996983597452135724766179961977 : F), 1391, 8, 94⟩], residual := [((4677364479696824080456115307318514279825491842592336608554691172134405775560 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2139 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1463 rho) = ((1 : F) * rho 2139)

def relationRow2140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2140) * ((1 : F) + (1 : F) * rho 2138) = ((1 : F) * rho 2139)

def relationLc1464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), runs := [⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 644, 5, 149⟩, ⟨(5929604277058172669054178933255722832867045374557721538733123577162963245425 : F), 1392, 8, 94⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 643, 5, 149⟩, ⟨(7689833096720120921891424803471624749419981200157080230483097731151229277064 : F), 1391, 8, 94⟩], residual := [((3767097269731546343792709631463032251550407492561727219380542283783003463481 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2141 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1464 rho) = ((1 : F) * rho 2141)

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2142) * ((1 : F) + (-1 : F) * rho 2138) = ((3269486125078447257552046140835745480464772095593325886654245603520625955593 : F) * rho 2137 + (1 : F) * rho 2141)

def relationLc1465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 94⟩], residual := [((1 : F), 2140), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 632) * (relationLc1465 rho) = ((1 : F) * rho 2143)

def relationLc1466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 94⟩], residual := [((1 : F), 2142), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 632) * (relationLc1466 rho) = ((1 : F) * rho 2144)

def relationLc1467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 95⟩, ⟨(1 : F), 1392, 8, 95⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1467 rho) = ((1 : F) * rho 2145)

def relationLc1468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 643, 5, 149⟩, ⟨(6192617647388288407007453842040928560801823687941953698141418856282585745487 : F), 1391, 8, 95⟩], residual := [((5531294256398319965953230848414062600628135281356110451193038651571188380940 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), runs := [⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 644, 5, 149⟩, ⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 1392, 8, 95⟩], residual := [((2570807001276145449324531511902523303421864657760087009493837657773969935704 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2146 (rho : Nat -> F) : Prop :=
    (relationLc1468 rho) * (relationLc1469 rho) = ((1 : F) * rho 2146)

def relationLc1470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), runs := [⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 644, 5, 149⟩, ⟨(4875653010124723802105271487582443021807143081825221610768106802677393137478 : F), 1392, 8, 95⟩, ⟨(837830745026968237423835190512321529772325628897387301638787230114395216226 : F), 643, 5, 149⟩, ⟨(837830745026968237423835190512321529772325628897387301638787230114395216226 : F), 1391, 8, 95⟩], residual := [((6119815029836556037983158482495769450696490408038757353122107864397857228893 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2147 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1470 rho) = ((1 : F) * rho 2147)

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2148) * ((1 : F) + (1 : F) * rho 2146) = ((1 : F) * rho 2147)

def relationLc1471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3568808739303646622143553451199103509568756253328842217167126653240016101563 : F), runs := [⟨(3568808739303646622143553451199103509568756253328842217167126653240016101563 : F), 644, 5, 149⟩, ⟨(3568808739303646622143553451199103509568756253328842217167126653240016101563 : F), 1392, 8, 95⟩, ⟨(7606631004401402186824989748269225001603573706256676526296446225803014022815 : F), 643, 5, 149⟩, ⟨(7606631004401402186824989748269225001603573706256676526296446225803014022815 : F), 1391, 8, 95⟩], residual := [((2324646719591814386265666456285777080679408927115306474813125591519552010148 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1471 rho) = ((1 : F) * rho 2149)

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2150) * ((1 : F) + (-1 : F) * rho 2146) = ((5713483755151692039529106678094764551579468710722608912406894032791788353704 : F) * rho 2145 + (1 : F) * rho 2149)

def relationLc1472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 95⟩], residual := [((1 : F), 2148), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 633) * (relationLc1472 rho) = ((1 : F) * rho 2151)

def relationLc1473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 95⟩], residual := [((1 : F), 2150), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 633) * (relationLc1473 rho) = ((1 : F) * rho 2152)

def relationLc1474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 96⟩, ⟨(1 : F), 1392, 8, 96⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1474 rho) = ((1 : F) * rho 2153)

def relationLc1475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5101400651441189407483351544755435501663024206878720700596611963380843413851 : F), 643, 5, 149⟩, ⟨(5101400651441189407483351544755435501663024206878720700596611963380843413851 : F), 1391, 8, 96⟩], residual := [((7981528139320114171798714864559238512156499148515537947774068280127163008260 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7179761945373182665345787383507852275205996006885247412066571252852218245855 : F), runs := [⟨(7179761945373182665345787383507852275205996006885247412066571252852218245855 : F), 644, 5, 149⟩, ⟨(7179761945373182665345787383507852275205996006885247412066571252852218245855 : F), 1392, 8, 96⟩], residual := [((6137069378560425525105402465535383648320524364227647625661240755946255236748 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2154 (rho : Nat -> F) : Prop :=
    (relationLc1475 rho) * (relationLc1476 rho) = ((1 : F) * rho 2154)

def relationLc1477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7179761945373182665345787383507852275205996006885247412066571252852218245855 : F), runs := [⟨(4762005878824215829825631321512654478131353721275819073046772322870151862794 : F), 643, 5, 149⟩, ⟨(4762005878824215829825631321512654478131353721275819073046772322870151862794 : F), 1391, 8, 96⟩, ⟨(7179761945373182665345787383507852275205996006885247412066571252852218245855 : F), 644, 5, 149⟩, ⟨(7179761945373182665345787383507852275205996006885247412066571252852218245855 : F), 1392, 8, 96⟩], residual := [((2972688831071837780483714302418888123151130968801947930493135679059695321215 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1477 rho) = ((1 : F) * rho 2155)

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2156) * ((1 : F) + (1 : F) * rho 2154) = ((1 : F) * rho 2155)

def relationLc1478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1264699804055187758903037555273694256169903328268816415868662203065190993186 : F), runs := [⟨(1264699804055187758903037555273694256169903328268816415868662203065190993186 : F), 644, 5, 149⟩, ⟨(1264699804055187758903037555273694256169903328268816415868662203065190993186 : F), 1392, 8, 96⟩, ⟨(3682455870604154594423193617268892053244545613878244754888461133047257376247 : F), 643, 5, 149⟩, ⟨(3682455870604154594423193617268892053244545613878244754888461133047257376247 : F), 1391, 8, 96⟩], residual := [((5471772918356532643765110636362658408224768366352115897442097776857713917826 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1478 rho) = ((1 : F) * rho 2157)

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2158) * ((1 : F) + (-1 : F) * rho 2154) = ((3497306074769028070922593766238960221961450393007002657178110119804960869608 : F) * rho 2153 + (1 : F) * rho 2157)

def relationLc1479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 96⟩], residual := [((1 : F), 2156), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 634) * (relationLc1479 rho) = ((1 : F) * rho 2159)

def relationLc1480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 96⟩], residual := [((1 : F), 2158), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 634) * (relationLc1480 rho) = ((1 : F) * rho 2160)

def relationLc1481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 97⟩, ⟨(1 : F), 1392, 8, 97⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1481 rho) = ((1 : F) * rho 2161)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
