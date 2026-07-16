import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs41

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 126⟩], residual := [((1 : F), 2046), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1289) * (relationLc675 rho) = ((1 : F) * rho 2048)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4210338047616543447273385293294278738927418340968561284444901637314757980568 : F), 1417, 5, 127⟩], residual := [((5599173175305029093857675563983357620921335308092099200608476829539299771746 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 1418, 5, 127⟩], residual := [((1886302405977408210176258832999268153771071622111803705136755149885082286852 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2049 (rho : Nat -> F) : Prop :=
    (relationLc676 rho) * (relationLc677 rho) = ((1 : F) * rho 2049)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 1417, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 1418, 5, 127⟩], residual := [((2955942777197845989440379588437379419115829940991957456037737492483556179300 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2050) * ((1 : F) + (1 : F) * rho 2049) = (relationLc678 rho)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 1418, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 1417, 5, 127⟩], residual := [((5049482500381104309602691558246119940976295160567214749353297109646860544351 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2051) * ((1 : F) + (-1 : F) * rho 2049) = (relationLc679 rho)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 127⟩], residual := [((1 : F), 2050), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1290) * (relationLc680 rho) = ((1 : F) * rho 2052)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 127⟩], residual := [((1 : F), 2051), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1290) * (relationLc681 rho) = ((1 : F) * rho 2053)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(838691096789783780472541906586159054451779714658135429326098829581846498358 : F), 1417, 5, 128⟩], residual := [((6588902320993931564988646377236650803127817365080650683393934620716548709747 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 1418, 5, 128⟩], residual := [((4952483004250997971749540658364233860896636171455687389058085018972173211007 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2054 (rho : Nat -> F) : Prop :=
    (relationLc682 rho) * (relationLc683 rho) = ((1 : F) * rho 2054)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 1418, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 1417, 5, 128⟩], residual := [((4476675636878850533490169450765952561306384278391713783002629545175033048423 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * ((1 : F) + (1 : F) * rho 2054) = (relationLc684 rho)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 1417, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 1418, 5, 128⟩], residual := [((7647827669172644662886965756134684003543262383295144992506832279323114589207 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * ((1 : F) + (-1 : F) * rho 2054) = (relationLc685 rho)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 128⟩], residual := [((1 : F), 2055), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * (relationLc686 rho) = ((1 : F) * rho 2057)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 128⟩], residual := [((1 : F), 2056), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * (relationLc687 rho) = ((1 : F) * rho 2058)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(60686073666138672712646509847085540566869124432538462074413154801758850224 : F), 1417, 5, 129⟩], residual := [((7685511838003006910675467505402586227211930931384438029506287195050743340590 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 1418, 5, 129⟩], residual := [((7651149945137784260037696174887480627322260576405659257595676350912255454778 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2059 (rho : Nat -> F) : Prop :=
    (relationLc688 rho) * (relationLc689 rho) = ((1 : F) * rho 2059)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 1417, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 1418, 5, 129⟩], residual := [((5761307147214909791217511131507902866476755141460966515628563884026775378151 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2060) * ((1 : F) + (1 : F) * rho 2059) = (relationLc690 rho)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 1418, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 1417, 5, 129⟩], residual := [((4296161046492241860192320594808898909681739761672667588519640491597609982232 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2061) * ((1 : F) + (-1 : F) * rho 2059) = (relationLc691 rho)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 129⟩], residual := [((1 : F), 2060), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1292) * (relationLc692 rho) = ((1 : F) * rho 2062)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 129⟩], residual := [((1 : F), 2061), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1292) * (relationLc693 rho) = ((1 : F) * rho 2063)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5637442059617530031733508199502717655196246814490163608850120842121846378018 : F), 1417, 5, 130⟩], residual := [((3370373104906405996357804578875008528753908699718600085380184646065439792112 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 1418, 5, 130⟩], residual := [((1530619322736829261678322058831880249561339657141014345976718527756396149027 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2064 (rho : Nat -> F) : Prop :=
    (relationLc694 rho) * (relationLc695 rho) = ((1 : F) * rho 2064)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 1418, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 1417, 5, 130⟩], residual := [((7549916416290019572636308784345135691660335081598617133672825053819371167712 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2065) * ((1 : F) + (1 : F) * rho 2064) = (relationLc696 rho)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 1417, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 1418, 5, 130⟩], residual := [((1816284342805863792972798700452658695524458744767105688590751471315014751115 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2066) * ((1 : F) + (-1 : F) * rho 2064) = (relationLc697 rho)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 130⟩], residual := [((1 : F), 2065), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1293) * (relationLc698 rho) = ((1 : F) * rho 2067)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 130⟩], residual := [((1 : F), 2066), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1293) * (relationLc699 rho) = ((1 : F) * rho 2068)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2892646731023369218770694204930725248522413652523299902006745690955898559168 : F), 1417, 5, 131⟩], residual := [((557130947857075324171719009056405385955322894519741390351651476308106466873 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 1418, 5, 131⟩], residual := [((2100863090428335478779790270701919888843349139919717756764976507900421972592 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2069 (rho : Nat -> F) : Prop :=
    (relationLc700 rho) * (relationLc701 rho) = ((1 : F) * rho 2069)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 1418, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 1417, 5, 131⟩], residual := [((653106038043019754040723869086632004743130492877253234593477243190422012527 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2070) * ((1 : F) + (1 : F) * rho 2069) = (relationLc702 rho)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 1417, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 1418, 5, 131⟩], residual := [((6066483422434670241764702242346216592568017228925939246595506061294148532448 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2071) * ((1 : F) + (-1 : F) * rho 2069) = (relationLc703 rho)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 131⟩], residual := [((1 : F), 2070), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1294) * (relationLc704 rho) = ((1 : F) * rho 2072)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 131⟩], residual := [((1 : F), 2071), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1294) * (relationLc705 rho) = ((1 : F) * rho 2073)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
