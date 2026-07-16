import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs33

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 126⟩], residual := [((1 : F), 1272), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 515) * (relationLc669 rho) = ((1 : F) * rho 1274)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4210338047616543447273385293294278738927418340968561284444901637314757980568 : F), 643, 5, 127⟩], residual := [((5599173175305029093857675563983357620921335308092099200608476829539299771746 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 644, 5, 127⟩], residual := [((1886302405977408210176258832999268153771071622111803705136755149885082286852 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1275 (rho : Nat -> F) : Prop :=
    (relationLc670 rho) * (relationLc671 rho) = ((1 : F) * rho 1275)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 643, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 644, 5, 127⟩], residual := [((2955942777197845989440379588437379419115829940991957456037737492483556179300 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1276) * ((1 : F) + (1 : F) * rho 1275) = (relationLc672 rho)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 644, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 643, 5, 127⟩], residual := [((5049482500381104309602691558246119940976295160567214749353297109646860544351 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1277) * ((1 : F) + (-1 : F) * rho 1275) = (relationLc673 rho)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 127⟩], residual := [((1 : F), 1276), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 516) * (relationLc674 rho) = ((1 : F) * rho 1278)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 127⟩], residual := [((1 : F), 1277), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 516) * (relationLc675 rho) = ((1 : F) * rho 1279)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(838691096789783780472541906586159054451779714658135429326098829581846498358 : F), 643, 5, 128⟩], residual := [((6588902320993931564988646377236650803127817365080650683393934620716548709747 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 644, 5, 128⟩], residual := [((4952483004250997971749540658364233860896636171455687389058085018972173211007 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1280 (rho : Nat -> F) : Prop :=
    (relationLc676 rho) * (relationLc677 rho) = ((1 : F) * rho 1280)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 644, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 643, 5, 128⟩], residual := [((4476675636878850533490169450765952561306384278391713783002629545175033048423 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1281) * ((1 : F) + (1 : F) * rho 1280) = (relationLc678 rho)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 643, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 644, 5, 128⟩], residual := [((7647827669172644662886965756134684003543262383295144992506832279323114589207 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1282) * ((1 : F) + (-1 : F) * rho 1280) = (relationLc679 rho)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 128⟩], residual := [((1 : F), 1281), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 517) * (relationLc680 rho) = ((1 : F) * rho 1283)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 128⟩], residual := [((1 : F), 1282), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 517) * (relationLc681 rho) = ((1 : F) * rho 1284)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(60686073666138672712646509847085540566869124432538462074413154801758850224 : F), 643, 5, 129⟩], residual := [((7685511838003006910675467505402586227211930931384438029506287195050743340590 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 644, 5, 129⟩], residual := [((7651149945137784260037696174887480627322260576405659257595676350912255454778 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1285 (rho : Nat -> F) : Prop :=
    (relationLc682 rho) * (relationLc683 rho) = ((1 : F) * rho 1285)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 643, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 644, 5, 129⟩], residual := [((5761307147214909791217511131507902866476755141460966515628563884026775378151 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1286) * ((1 : F) + (1 : F) * rho 1285) = (relationLc684 rho)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 644, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 643, 5, 129⟩], residual := [((4296161046492241860192320594808898909681739761672667588519640491597609982232 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1287) * ((1 : F) + (-1 : F) * rho 1285) = (relationLc685 rho)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 129⟩], residual := [((1 : F), 1286), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 518) * (relationLc686 rho) = ((1 : F) * rho 1288)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 129⟩], residual := [((1 : F), 1287), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 518) * (relationLc687 rho) = ((1 : F) * rho 1289)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5637442059617530031733508199502717655196246814490163608850120842121846378018 : F), 643, 5, 130⟩], residual := [((3370373104906405996357804578875008528753908699718600085380184646065439792112 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 644, 5, 130⟩], residual := [((1530619322736829261678322058831880249561339657141014345976718527756396149027 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1290 (rho : Nat -> F) : Prop :=
    (relationLc688 rho) * (relationLc689 rho) = ((1 : F) * rho 1290)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 644, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 643, 5, 130⟩], residual := [((7549916416290019572636308784345135691660335081598617133672825053819371167712 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * ((1 : F) + (1 : F) * rho 1290) = (relationLc690 rho)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 643, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 644, 5, 130⟩], residual := [((1816284342805863792972798700452658695524458744767105688590751471315014751115 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1292) * ((1 : F) + (-1 : F) * rho 1290) = (relationLc691 rho)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 130⟩], residual := [((1 : F), 1291), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 519) * (relationLc692 rho) = ((1 : F) * rho 1293)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 130⟩], residual := [((1 : F), 1292), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 519) * (relationLc693 rho) = ((1 : F) * rho 1294)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2892646731023369218770694204930725248522413652523299902006745690955898559168 : F), 643, 5, 131⟩], residual := [((557130947857075324171719009056405385955322894519741390351651476308106466873 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 644, 5, 131⟩], residual := [((2100863090428335478779790270701919888843349139919717756764976507900421972592 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1295 (rho : Nat -> F) : Prop :=
    (relationLc694 rho) * (relationLc695 rho) = ((1 : F) * rho 1295)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 644, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 643, 5, 131⟩], residual := [((653106038043019754040723869086632004743130492877253234593477243190422012527 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1296) * ((1 : F) + (1 : F) * rho 1295) = (relationLc696 rho)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 643, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 644, 5, 131⟩], residual := [((6066483422434670241764702242346216592568017228925939246595506061294148532448 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1297) * ((1 : F) + (-1 : F) * rho 1295) = (relationLc697 rho)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 131⟩], residual := [((1 : F), 1296), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 520) * (relationLc698 rho) = ((1 : F) * rho 1298)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 131⟩], residual := [((1 : F), 1297), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 520) * (relationLc699 rho) = ((1 : F) * rho 1299)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
