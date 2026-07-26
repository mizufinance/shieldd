import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs59

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow2429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1345) * (relationLc1044 rho) = ((1 : F) * rho 2429)

def relationLc1045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 33⟩], residual := [((1 : F), 2428), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1345) * (relationLc1045 rho) = ((1 : F) * rho 2430)

def relationLc1046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 34⟩, ⟨(1 : F), 2166, 8, 34⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2431 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1046 rho) = ((1 : F) * rho 2431)

def relationLc1047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2038740454983773278455877865055869688596335536964418197756035178253859779235 : F), 1417, 5, 149⟩, ⟨(2038740454983773278455877865055869688596335536964418197756035178253859779235 : F), 2165, 8, 34⟩], residual := [((3964228108440662983730456674306077439109527380836288005702659201872255219019 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3724674640623000114298083742499641747004822778877862495636058446614146193033 : F), runs := [⟨(3724674640623000114298083742499641747004822778877862495636058446614146193033 : F), 1418, 5, 149⟩, ⟨(3724674640623000114298083742499641747004822778877862495636058446614146193033 : F), 2166, 8, 34⟩], residual := [((7190264019251508773585688967600396304021642644715000714830175014872546109716 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2432 (rho : Nat -> F) : Prop :=
    (relationLc1047 rho) * (relationLc1048 rho) = ((1 : F) * rho 2432)

def relationLc1049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3724674640623000114298083742499641747004822778877862495636058446614146193033 : F), runs := [⟨(3724674640623000114298083742499641747004822778877862495636058446614146193033 : F), 1418, 5, 149⟩, ⟨(3724674640623000114298083742499641747004822778877862495636058446614146193033 : F), 2166, 8, 34⟩, ⟨(6801527367366504142825503791433485130925574120478914833354577634367861813428 : F), 1417, 5, 149⟩, ⟨(6801527367366504142825503791433485130925574120478914833354577634367861813428 : F), 2165, 8, 34⟩], residual := [((6906460354791643457369320319112673143226795837431029108592607602326467497613 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2433 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1049 rho) = ((1 : F) * rho 2433)

def relationRow2434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2434) * ((1 : F) + (1 : F) * rho 2432) = ((1 : F) * rho 2433)

def relationLc1050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4719787108805370309950741196281904784371076556276201332299175009303263046008 : F), runs := [⟨(1642934382061866281423321147348061400450325214675148994580655821549547425613 : F), 1417, 5, 149⟩, ⟨(1642934382061866281423321147348061400450325214675148994580655821549547425613 : F), 2165, 8, 34⟩, ⟨(4719787108805370309950741196281904784371076556276201332299175009303263046008 : F), 1418, 5, 149⟩, ⟨(4719787108805370309950741196281904784371076556276201332299175009303263046008 : F), 2166, 8, 34⟩], residual := [((1538001394636726966879504619668873388149103497723034719342625853590941741428 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2435 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1050 rho) = ((1 : F) * rho 2435)

def relationRow2436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2436) * ((1 : F) + (-1 : F) * rho 2432) = ((2081740258561133832874762595151580346554497564202713501055402625064598767420 : F) * rho 2431 + (1 : F) * rho 2435)

def relationLc1051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 34⟩], residual := [((1 : F), 2434), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1346) * (relationLc1051 rho) = ((1 : F) * rho 2437)

def relationLc1052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 34⟩], residual := [((1 : F), 2436), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1346) * (relationLc1052 rho) = ((1 : F) * rho 2438)

def relationLc1053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 35⟩, ⟨(1 : F), 2166, 8, 35⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1053 rho) = ((1 : F) * rho 2439)

def relationLc1054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7009725054716979139289175362708530049742297927575223779917901330082350371641 : F), 1417, 5, 149⟩, ⟨(7009725054716979139289175362708530049742297927575223779917901330082350371641 : F), 2165, 8, 35⟩], residual := [((6776036120917260375633226519404125397597029156965838872277362955689951535768 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1174905999653533080340603577798985944254266017567149823268548237973523533616 : F), runs := [⟨(1174905999653533080340603577798985944254266017567149823268548237973523533616 : F), 1418, 5, 149⟩, ⟨(1174905999653533080340603577798985944254266017567149823268548237973523533616 : F), 2166, 8, 35⟩], residual := [((259358696893003353074462687268869567940158478483629250526726304218342690361 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2440 (rho : Nat -> F) : Prop :=
    (relationLc1054 rho) * (relationLc1055 rho) = ((1 : F) * rho 2440)

def relationLc1056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1174905999653533080340603577798985944254266017567149823268548237973523533616 : F), runs := [⟨(1174905999653533080340603577798985944254266017567149823268548237973523533616 : F), 1418, 5, 149⟩, ⟨(1174905999653533080340603577798985944254266017567149823268548237973523533616 : F), 2166, 8, 35⟩, ⟨(1981360027689507858162018282694486419815914937840666141661060307222644187889 : F), 1417, 5, 149⟩, ⟨(1981360027689507858162018282694486419815914937840666141661060307222644187889 : F), 2165, 8, 35⟩], residual := [((3082012765510726960635766093343012095433001728509255282058976525991383363558 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1056 rho) = ((1 : F) * rho 2441)

def relationRow2442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2442) * ((1 : F) + (1 : F) * rho 2440) = ((1 : F) * rho 2441)

def relationLc1057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7269555749774837343908221360982560587121633317586914004666685217943885705425 : F), runs := [⟨(6463101721738862566086806656087060111559984397313397686274173148694765051152 : F), 1417, 5, 149⟩, ⟨(6463101721738862566086806656087060111559984397313397686274173148694765051152 : F), 2165, 8, 35⟩, ⟨(7269555749774837343908221360982560587121633317586914004666685217943885705425 : F), 1418, 5, 149⟩, ⟨(7269555749774837343908221360982560587121633317586914004666685217943885705425 : F), 2166, 8, 35⟩], residual := [((5362448983917643463613058845438534435942897606644808545876256929926025875483 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1057 rho) = ((1 : F) * rho 2443)

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2444) * ((1 : F) + (-1 : F) * rho 2440) = ((3156266027343040938502621860493472364070180955407815964929608545196167721505 : F) * rho 2439 + (1 : F) * rho 2443)

def relationLc1058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 35⟩], residual := [((1 : F), 2442), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1347) * (relationLc1058 rho) = ((1 : F) * rho 2445)

def relationLc1059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 35⟩], residual := [((1 : F), 2444), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1347) * (relationLc1059 rho) = ((1 : F) * rho 2446)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 36⟩, ⟨(1 : F), 2166, 8, 36⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2447 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1060 rho) = ((1 : F) * rho 2447)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6028579224337606591443459905021778812168747518565097276810086992500255754658 : F), 1417, 5, 149⟩, ⟨(6028579224337606591443459905021778812168747518565097276810086992500255754658 : F), 2165, 8, 36⟩], residual := [((6381661940768385857326634826811761934878076726829780415823298289526390967490 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), runs := [⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 1418, 5, 149⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 2166, 8, 36⟩], residual := [((1452863053084963223896290692224473309609477121996708903053775524417059294317 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2448 (rho : Nat -> F) : Prop :=
    (relationLc1061 rho) * (relationLc1062 rho) = ((1 : F) * rho 2448)

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), runs := [⟨(4985933094490275429668023278964753142752531367791546144483724375668070482941 : F), 1417, 5, 149⟩, ⟨(4985933094490275429668023278964753142752531367791546144483724375668070482941 : F), 2165, 8, 36⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 1418, 5, 149⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 2166, 8, 36⟩], residual := [((4784122770234899523511542971905252416131679765126573120030500563903044330618 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1063 rho) = ((1 : F) * rho 2449)

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2450) * ((1 : F) + (1 : F) * rho 2448) = ((1 : F) * rho 2449)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (657033325140809550784627867621452315420442719259435789610480919075145464264 : F), runs := [⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 1417, 5, 149⟩, ⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 2165, 8, 36⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 1418, 5, 149⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 2166, 8, 36⟩], residual := [((3660338979193470900737281966876294115244219570027490707904732892014364908423 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1064 rho) = ((1 : F) * rho 2451)

def relationRow2452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2452) * ((1 : F) + (-1 : F) * rho 2448) = ((4328899769349465878883395411343300827332088648532110354873243456592925018677 : F) * rho 2447 + (1 : F) * rho 2451)

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 36⟩], residual := [((1 : F), 2450), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1348) * (relationLc1065 rho) = ((1 : F) * rho 2453)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 36⟩], residual := [((1 : F), 2452), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1348) * (relationLc1066 rho) = ((1 : F) * rho 2454)

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 37⟩, ⟨(1 : F), 2166, 8, 37⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1067 rho) = ((1 : F) * rho 2455)

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 1417, 5, 149⟩, ⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 2165, 8, 37⟩], residual := [((7826491336625565773713388100152299427331399470180970387061441917424441790953 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), runs := [⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 1418, 5, 149⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 2166, 8, 37⟩], residual := [((5918976997624896128603067142306423185695956680637276924820692671152121793628 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2456 (rho : Nat -> F) : Prop :=
    (relationLc1068 rho) * (relationLc1069 rho) = ((1 : F) * rho 2456)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
