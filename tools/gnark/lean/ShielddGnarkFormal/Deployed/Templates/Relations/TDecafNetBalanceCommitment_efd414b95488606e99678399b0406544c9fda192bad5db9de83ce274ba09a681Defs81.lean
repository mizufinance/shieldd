import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs80

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 4472, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 4471, 5, 124⟩], residual := [((5115891628300709066674560329518339725692369893455200516464249654126886714506 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5090) * ((1 : F) + (-1 : F) * rho 5088) = (relationLc662 rho)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 124⟩], residual := [((1 : F), 5089), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4341) * (relationLc663 rho) = ((1 : F) * rho 5091)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 124⟩], residual := [((1 : F), 5090), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4341) * (relationLc664 rho) = ((1 : F) * rho 5092)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3206715103925797000728264364812449490358849405873516358360482948930504814837 : F), 4471, 5, 125⟩], residual := [((6859227754302574298256908027992222014651838529698031298197025811544259824003 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 4472, 5, 125⟩], residual := [((3241815838170848415373772779206630000632126979651664629597711437726457647190 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5267 (rho : Nat -> F) : Prop :=
    (relationLc665 rho) * (relationLc666 rho) = ((1 : F) * rho 5093)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 4471, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 4472, 5, 125⟩], residual := [((462808816347966588882768507091553344986854553319789264653202909813091896438 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5094) * ((1 : F) + (1 : F) * rho 5093) = (relationLc667 rho)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 4472, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 4471, 5, 125⟩], residual := [((7065647221781974488727761436401823925252357367033803456277525288342156410852 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5095) * ((1 : F) + (-1 : F) * rho 5093) = (relationLc668 rho)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 125⟩], residual := [((1 : F), 5094), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4342) * (relationLc669 rho) = ((1 : F) * rho 5096)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 125⟩], residual := [((1 : F), 5095), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4342) * (relationLc670 rho) = ((1 : F) * rho 5097)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4850285970051027192039895716418530152588486557718958193397542697720184924781 : F), 4471, 5, 126⟩], residual := [((4488689940009567796839231487855606517459699859830932338531421345637855163306 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 4472, 5, 126⟩], residual := [((3274420333578042775167377379485662842334097190161090608081461889775381695030 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5272 (rho : Nat -> F) : Prop :=
    (relationLc671 rho) * (relationLc672 rho) = ((1 : F) * rho 5098)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 4471, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 4472, 5, 126⟩], residual := [((1992884665571550733812405047339726314236090538398136498619780084108234066577 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5099) * ((1 : F) + (1 : F) * rho 5098) = (relationLc673 rho)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 4472, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 4471, 5, 126⟩], residual := [((664469923585151624636855557439224492288471026599017456903341046506367026208 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5100) * ((1 : F) + (-1 : F) * rho 5098) = (relationLc674 rho)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 126⟩], residual := [((1 : F), 5099), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4343) * (relationLc675 rho) = ((1 : F) * rho 5101)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 126⟩], residual := [((1 : F), 5100), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4343) * (relationLc676 rho) = ((1 : F) * rho 5102)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4210338047616543447273385293294278738927418340968561284444901637314757980568 : F), 4471, 5, 127⟩], residual := [((5599173175305029093857675563983357620921335308092099200608476829539299771746 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 4472, 5, 127⟩], residual := [((1886302405977408210176258832999268153771071622111803705136755149885082286852 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5277 (rho : Nat -> F) : Prop :=
    (relationLc677 rho) * (relationLc678 rho) = ((1 : F) * rho 5103)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 4471, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 4472, 5, 127⟩], residual := [((2955942777197845989440379588437379419115829940991957456037737492483556179300 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5104) * ((1 : F) + (1 : F) * rho 5103) = (relationLc679 rho)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), runs := [⟨(5768002292988528543089241719298121407801194222695730631683161708439235358531 : F), 4472, 5, 127⟩, ⟨(5995968680530186965486782940274754581022152689884401032498307217494736512136 : F), 4471, 5, 127⟩], residual := [((5049482500381104309602691558246119940976295160567214749353297109646860544351 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5105) * ((1 : F) + (-1 : F) * rho 5103) = (relationLc680 rho)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 127⟩], residual := [((1 : F), 5104), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4344) * (relationLc681 rho) = ((1 : F) * rho 5106)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 127⟩], residual := [((1 : F), 5105), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4344) * (relationLc682 rho) = ((1 : F) * rho 5107)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(838691096789783780472541906586159054451779714658135429326098829581846498358 : F), 4471, 5, 128⟩], residual := [((6588902320993931564988646377236650803127817365080650683393934620716548709747 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 4472, 5, 128⟩], residual := [((4952483004250997971749540658364233860896636171455687389058085018972173211007 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5282 (rho : Nat -> F) : Prop :=
    (relationLc683 rho) * (relationLc684 rho) = ((1 : F) * rho 5108)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 4472, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 4471, 5, 128⟩], residual := [((4476675636878850533490169450765952561306384278391713783002629545175033048423 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5109) * ((1 : F) + (1 : F) * rho 5108) = (relationLc685 rho)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), runs := [⟨(4025807008126557244049511192380581815499502352414554285538258677512887306334 : F), 4471, 5, 128⟩, ⟨(6024049573358135732551039485263428975229895679235903900903592915038596079653 : F), 4472, 5, 128⟩], residual := [((7647827669172644662886965756134684003543262383295144992506832279323114589207 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5110) * ((1 : F) + (-1 : F) * rho 5108) = (relationLc686 rho)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 128⟩], residual := [((1 : F), 5109), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * (relationLc687 rho) = ((1 : F) * rho 5111)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 128⟩], residual := [((1 : F), 5110), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4345) * (relationLc688 rho) = ((1 : F) * rho 5112)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(60686073666138672712646509847085540566869124432538462074413154801758850224 : F), 4471, 5, 129⟩], residual := [((7685511838003006910675467505402586227211930931384438029506287195050743340590 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 4472, 5, 129⟩], residual := [((7651149945137784260037696174887480627322260576405659257595676350912255454778 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5287 (rho : Nat -> F) : Prop :=
    (relationLc689 rho) * (relationLc690 rho) = ((1 : F) * rho 5113)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 4471, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 4472, 5, 129⟩], residual := [((5761307147214909791217511131507902866476755141460966515628563884026775378151 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5114) * ((1 : F) + (1 : F) * rho 5113) = (relationLc691 rho)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), runs := [⟨(3427001254840399959881420728717650821915729710037509033932694680605609230690 : F), 4472, 5, 129⟩, ⟨(5172923019699240073733638392461987763015861245192384922665007942376313513603 : F), 4471, 5, 129⟩], residual := [((4296161046492241860192320594808898909681739761672667588519640491597609982232 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
