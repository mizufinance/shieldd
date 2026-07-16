import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs66

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow2265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 873) * (relationLc1348 rho) = ((1 : F) * rho 2265)

def relationLc1349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 77⟩], residual := [((1 : F), 2264), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 873) * (relationLc1349 rho) = ((1 : F) * rho 2266)

def relationLc1350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 78⟩, ⟨(1 : F), 1650, 8, 78⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2267 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1350 rho) = ((1 : F) * rho 2267)

def relationLc1351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6608514003544936428128296391383222622263995074964421705274547728945744600374 : F), 901, 5, 149⟩, ⟨(6608514003544936428128296391383222622263995074964421705274547728945744600374 : F), 1649, 8, 78⟩], residual := [((2494493880114136375937464094236986813929821556645170667056295195131356723997 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), runs := [⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 902, 5, 149⟩, ⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 1650, 8, 78⟩], residual := [((2070901315292787702406687565408067050291591758372033748537273467943474765058 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2268 (rho : Nat -> F) : Prop :=
    (relationLc1351 rho) * (relationLc1352 rho) = ((1 : F) * rho 2268)

def relationLc1353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), runs := [⟨(611552855140327603083208253242555566521751092399387731279429143038378337872 : F), 901, 5, 149⟩, ⟨(611552855140327603083208253242555566521751092399387731279429143038378337872 : F), 1649, 8, 78⟩, ⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 902, 5, 149⟩, ⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 1650, 8, 78⟩], residual := [((1599329139929239054501320484785808070818371908625462541568058585833275888966 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2269 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1353 rho) = ((1 : F) * rho 2269)

def relationRow2270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2270) * ((1 : F) + (1 : F) * rho 2268) = ((1 : F) * rho 2269)

def relationLc1354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), runs := [⟨(1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), 902, 5, 149⟩, ⟨(1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), 1650, 8, 78⟩, ⟨(7832908894288042821165616685538990964854148242754676096655804312879030901169 : F), 901, 5, 149⟩, ⟨(7832908894288042821165616685538990964854148242754676096655804312879030901169 : F), 1649, 8, 78⟩], residual := [((6845132609499131369747504453995738460557527426528601286367174870084133350075 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2271 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1354 rho) = ((1 : F) * rho 2271)

def relationRow2272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2272) * ((1 : F) + (-1 : F) * rho 2268) = ((7829346792394128392825093018367767754142387644647206100020819928466556748213 : F) * rho 2267 + (1 : F) * rho 2271)

def relationLc1355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 78⟩], residual := [((1 : F), 2270), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 874) * (relationLc1355 rho) = ((1 : F) * rho 2273)

def relationLc1356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 78⟩], residual := [((1 : F), 2272), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 874) * (relationLc1356 rho) = ((1 : F) * rho 2274)

def relationLc1357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 79⟩, ⟨(1 : F), 1650, 8, 79⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2275 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1357 rho) = ((1 : F) * rho 2275)

def relationLc1358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(684324457497238755171635954129350070085453930296528200955383192234114522070 : F), 901, 5, 149⟩, ⟨(684324457497238755171635954129350070085453930296528200955383192234114522070 : F), 1649, 8, 79⟩], residual := [((6327656689886066240785449211006082544101674608080640733798216470321894989715 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), runs := [⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 902, 5, 149⟩, ⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 1650, 8, 79⟩], residual := [((3870954308191713971872500864422005677763758200325916030540011082079875431642 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2276 (rho : Nat -> F) : Prop :=
    (relationLc1358 rho) * (relationLc1359 rho) = ((1 : F) * rho 2276)

def relationLc1360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), runs := [⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 902, 5, 149⟩, ⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 1650, 8, 79⟩, ⟨(4439089567212760500649554994617419808637872756754369376683914634620681888818 : F), 901, 5, 149⟩, ⟨(4439089567212760500649554994617419808637872756754369376683914634620681888818 : F), 1649, 8, 79⟩], residual := [((1810151555994345118229717893349587519004634719777879465070827343583772775759 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2277 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1360 rho) = ((1 : F) * rho 2277)

def relationRow2278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2278) * ((1 : F) + (1 : F) * rho 2276) = ((1 : F) * rho 2277)

def relationLc1361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), runs := [⟨(4005372182215609923599269944164126722738026578399694451251318821296727350223 : F), 901, 5, 149⟩, ⟨(4005372182215609923599269944164126722738026578399694451251318821296727350223 : F), 1649, 8, 79⟩, ⟨(7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), 902, 5, 149⟩, ⟨(7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), 1650, 8, 79⟩], residual := [((6634310193434025306019107045431959012371264615376184362864406112333636463282 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2279 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1361 rho) = ((1 : F) * rho 2279)

def relationRow2280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2280) * ((1 : F) + (-1 : F) * rho 2276) = ((5702006127262138911284204334642107486656367519809747843755005951930364658100 : F) * rho 2275 + (1 : F) * rho 2279)

def relationLc1362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 79⟩], residual := [((1 : F), 2278), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 875) * (relationLc1362 rho) = ((1 : F) * rho 2281)

def relationLc1363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 79⟩], residual := [((1 : F), 2280), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 875) * (relationLc1363 rho) = ((1 : F) * rho 2282)

def relationLc1364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 80⟩, ⟨(1 : F), 1650, 8, 80⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2283 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1364 rho) = ((1 : F) * rho 2283)

def relationLc1365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4375063643003305053442312238432707704433669407694920205066138913017602702375 : F), 901, 5, 149⟩, ⟨(4375063643003305053442312238432707704433669407694920205066138913017602702375 : F), 1649, 8, 80⟩], residual := [((6827565584601986065097078658718696289843280211445254743478131538328482764782 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), runs := [⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 902, 5, 149⟩, ⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 1650, 8, 80⟩], residual := [((5611454971280825110232058586781909309252677113250095359038853620826121304010 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2284 (rho : Nat -> F) : Prop :=
    (relationLc1365 rho) * (relationLc1366 rho) = ((1 : F) * rho 2284)

def relationLc1367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), runs := [⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 902, 5, 149⟩, ⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 1650, 8, 80⟩, ⟨(3255123647791336139979832684865989033507441408648469121457026773121774894719 : F), 901, 5, 149⟩, ⟨(3255123647791336139979832684865989033507441408648469121457026773121774894719 : F), 1649, 8, 80⟩], residual := [((6438314879147747076871747575725727555874899418474158279920803968735411012147 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2285 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1367 rho) = ((1 : F) * rho 2285)

def relationRow2286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2286) * ((1 : F) + (1 : F) * rho 2284) = ((1 : F) * rho 2285)

def relationLc1368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), runs := [⟨(5189338101637034284268992253915557497868457926505594706478206682795634344322 : F), 901, 5, 149⟩, ⟨(5189338101637034284268992253915557497868457926505594706478206682795634344322 : F), 1649, 8, 80⟩, ⟨(6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), 902, 5, 149⟩, ⟨(6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), 1650, 8, 80⟩], residual := [((2006146870280623347377077363055818975500999916679905548014429487181998226894 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2287 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1368 rho) = ((1 : F) * rho 2287)

def relationRow2288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2288) * ((1 : F) + (-1 : F) * rho 2284) = ((5009688156055652420060599938520460602773557558397751911980544346273869627954 : F) * rho 2283 + (1 : F) * rho 2287)

def relationLc1369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 80⟩], residual := [((1 : F), 2286), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 876) * (relationLc1369 rho) = ((1 : F) * rho 2289)

def relationLc1370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 80⟩], residual := [((1 : F), 2288), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 876) * (relationLc1370 rho) = ((1 : F) * rho 2290)

def relationLc1371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 81⟩, ⟨(1 : F), 1650, 8, 81⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2291 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1371 rho) = ((1 : F) * rho 2291)

def relationLc1372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4730509882521047420802994018605617450553735111988990510060762860448417509752 : F), 901, 5, 149⟩, ⟨(4730509882521047420802994018605617450553735111988990510060762860448417509752 : F), 1649, 8, 81⟩], residual := [((868458302266357929784260556585626706789160668591807608447688166148445876163 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), runs := [⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 902, 5, 149⟩, ⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 1650, 8, 81⟩], residual := [((3372081631784657270900224132622969995639050554760602369398767258362887176631 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2292 (rho : Nat -> F) : Prop :=
    (relationLc1372 rho) * (relationLc1373 rho) = ((1 : F) * rho 2292)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
