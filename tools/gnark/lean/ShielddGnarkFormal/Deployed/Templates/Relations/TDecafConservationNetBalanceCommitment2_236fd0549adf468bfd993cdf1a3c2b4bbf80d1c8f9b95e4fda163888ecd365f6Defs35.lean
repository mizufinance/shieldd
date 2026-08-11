import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs34

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 125⟩], residual := [((1 : F), 1396), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 643) * (relationLc664 rho) = ((1 : F) * rho 1398)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4850285970051027192039895716418530152588486557718958193397542697720184924781 : F), 772, 5, 126⟩], residual := [((4488689940009567796839231487855606517459699859830932338531421345637855163306 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 773, 5, 126⟩], residual := [((3274420333578042775167377379485662842334097190161090608081461889775381695030 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1399 (rho : Nat -> F) : Prop :=
    (relationLc665 rho) * (relationLc666 rho) = ((1 : F) * rho 1399)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 772, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 773, 5, 126⟩], residual := [((1992884665571550733812405047339726314236090538398136498619780084108234066577 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1400) * ((1 : F) + (1 : F) * rho 1399) = (relationLc667 rho)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 773, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 772, 5, 126⟩], residual := [((664469923585151624636855557439224492288471026599017456903341046506367026208 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1401) * ((1 : F) + (-1 : F) * rho 1399) = (relationLc668 rho)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 126⟩], residual := [((1 : F), 1400), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 644) * (relationLc669 rho) = ((1 : F) * rho 1402)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 126⟩], residual := [((1 : F), 1401), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 644) * (relationLc670 rho) = ((1 : F) * rho 1403)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4210338047616543447273385293294278738927418340968561284444901637314757980568 : F), 772, 5, 127⟩], residual := [((5599173175305029093857675563983357620921335308092099200608476829539299771746 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 773, 5, 127⟩], residual := [((1886302405977408210176258832999268153771071622111803705136755149885082286852 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1404 (rho : Nat -> F) : Prop :=
    (relationLc671 rho) * (relationLc672 rho) = ((1 : F) * rho 1404)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 772, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 773, 5, 127⟩], residual := [((2955942777197845989440379588437379419115829940991957456037737492483556179300 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1405) * ((1 : F) + (1 : F) * rho 1404) = (relationLc673 rho)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 773, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 772, 5, 127⟩], residual := [((5049482500381104309602691558246119940976295160567214749353297109646860544351 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1406) * ((1 : F) + (-1 : F) * rho 1404) = (relationLc674 rho)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 127⟩], residual := [((1 : F), 1405), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 645) * (relationLc675 rho) = ((1 : F) * rho 1407)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 127⟩], residual := [((1 : F), 1406), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 645) * (relationLc676 rho) = ((1 : F) * rho 1408)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(838691096789783780472541906586159054451779714658135429326098829581846498358 : F), 772, 5, 128⟩], residual := [((6588902320993931564988646377236650803127817365080650683393934620716548709747 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 773, 5, 128⟩], residual := [((4952483004250997971749540658364233860896636171455687389058085018972173211007 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1409 (rho : Nat -> F) : Prop :=
    (relationLc677 rho) * (relationLc678 rho) = ((1 : F) * rho 1409)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 773, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 772, 5, 128⟩], residual := [((4476675636878850533490169450765952561306384278391713783002629545175033048423 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1410) * ((1 : F) + (1 : F) * rho 1409) = (relationLc679 rho)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 772, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 773, 5, 128⟩], residual := [((7647827669172644662886965756134684003543262383295144992506832279323114589207 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1411) * ((1 : F) + (-1 : F) * rho 1409) = (relationLc680 rho)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 128⟩], residual := [((1 : F), 1410), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 646) * (relationLc681 rho) = ((1 : F) * rho 1412)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 128⟩], residual := [((1 : F), 1411), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 646) * (relationLc682 rho) = ((1 : F) * rho 1413)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(60686073666138672712646509847085540566869124432538462074413154801758850224 : F), 772, 5, 129⟩], residual := [((7685511838003006910675467505402586227211930931384438029506287195050743340590 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 773, 5, 129⟩], residual := [((7651149945137784260037696174887480627322260576405659257595676350912255454778 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1414 (rho : Nat -> F) : Prop :=
    (relationLc683 rho) * (relationLc684 rho) = ((1 : F) * rho 1414)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 772, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 773, 5, 129⟩], residual := [((5761307147214909791217511131507902866476755141460966515628563884026775378151 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1415) * ((1 : F) + (1 : F) * rho 1414) = (relationLc685 rho)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 773, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 772, 5, 129⟩], residual := [((4296161046492241860192320594808898909681739761672667588519640491597609982232 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1416) * ((1 : F) + (-1 : F) * rho 1414) = (relationLc686 rho)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 129⟩], residual := [((1 : F), 1415), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 647) * (relationLc687 rho) = ((1 : F) * rho 1417)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 129⟩], residual := [((1 : F), 1416), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 647) * (relationLc688 rho) = ((1 : F) * rho 1418)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5637442059617530031733508199502717655196246814490163608850120842121846378018 : F), 772, 5, 130⟩], residual := [((3370373104906405996357804578875008528753908699718600085380184646065439792112 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 773, 5, 130⟩], residual := [((1530619322736829261678322058831880249561339657141014345976718527756396149027 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1419 (rho : Nat -> F) : Prop :=
    (relationLc689 rho) * (relationLc690 rho) = ((1 : F) * rho 1419)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 773, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 772, 5, 130⟩], residual := [((7549916416290019572636308784345135691660335081598617133672825053819371167712 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1420) * ((1 : F) + (1 : F) * rho 1419) = (relationLc691 rho)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 772, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 773, 5, 130⟩], residual := [((1816284342805863792972798700452658695524458744767105688590751471315014751115 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1421) * ((1 : F) + (-1 : F) * rho 1419) = (relationLc692 rho)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 130⟩], residual := [((1 : F), 1420), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 648) * (relationLc693 rho) = ((1 : F) * rho 1422)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 130⟩], residual := [((1 : F), 1421), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 648) * (relationLc694 rho) = ((1 : F) * rho 1423)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
