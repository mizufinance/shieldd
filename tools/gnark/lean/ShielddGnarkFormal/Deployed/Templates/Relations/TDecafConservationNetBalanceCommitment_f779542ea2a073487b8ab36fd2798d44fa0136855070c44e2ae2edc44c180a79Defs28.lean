import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs27

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 901, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 902, 5, 83⟩], residual := [((5554080563767788439318024133284644442307466680604925451923594584539091067487 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1314) * ((1 : F) + (1 : F) * rho 1313) = (relationLc410 rho)

def relationLc411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 902, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 901, 5, 83⟩], residual := [((3520552764009872659525435691222176153719820605366532401789092776293896045242 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1315) * ((1 : F) + (-1 : F) * rho 1313) = (relationLc411 rho)

def relationLc412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 83⟩], residual := [((1 : F), 1314), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 730) * (relationLc412 rho) = ((1 : F) * rho 1316)

def relationLc413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 83⟩], residual := [((1 : F), 1315), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 730) * (relationLc413 rho) = ((1 : F) * rho 1317)

def relationLc414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6387613852256700294512156166113168610891938667929187114329681467616500330608 : F), 901, 5, 84⟩], residual := [((7122528614958769322837530840502174944534457123466231063334496420703843830519 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 902, 5, 84⟩], residual := [((678650799073836045536480883465610795007635701186691596893019548847085989668 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1318 (rho : Nat -> F) : Prop :=
    (relationLc414 rho) * (relationLc415 rho) = ((1 : F) * rho 1318)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 902, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 901, 5, 84⟩], residual := [((3023431161416084699903694663518387414748628120909489252925148026993227262805 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1319) * ((1 : F) + (1 : F) * rho 1318) = (relationLc416 rho)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 901, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 902, 5, 84⟩], residual := [((2053261783412565618836788473684054838107152222039993036884965312918189660439 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1320) * ((1 : F) + (-1 : F) * rho 1318) = (relationLc417 rho)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 84⟩], residual := [((1 : F), 1319), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 731) * (relationLc418 rho) = ((1 : F) * rho 1321)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 84⟩], residual := [((1 : F), 1320), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 731) * (relationLc419 rho) = ((1 : F) * rho 1322)

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5276663585927424617001321006326063876074837805776841490242179655177179723382 : F), 901, 5, 85⟩], residual := [((5171730787501844126787071739480348325133924484638196337244514296783160562849 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 902, 5, 85⟩], residual := [((8151365977808896800973445184695245244422242745255100859603407196467141767996 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1323 (rho : Nat -> F) : Prop :=
    (relationLc420 rho) * (relationLc421 rho) = ((1 : F) * rho 1323)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 902, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 901, 5, 85⟩], residual := [((6078999580162968627962574270151575208687127425096319938057330165684641107683 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1324) * ((1 : F) + (1 : F) * rho 1323) = (relationLc422 rho)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 901, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 902, 5, 85⟩], residual := [((7921344720180926700499914832459065253776891949228636323781616997502633100102 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1325) * ((1 : F) + (-1 : F) * rho 1323) = (relationLc423 rho)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 85⟩], residual := [((1 : F), 1324), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 732) * (relationLc424 rho) = ((1 : F) * rho 1326)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 85⟩], residual := [((1 : F), 1325), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 732) * (relationLc425 rho) = ((1 : F) * rho 1327)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5136355408088823848380298907192109436725459726037246232910375821561195593353 : F), 901, 5, 86⟩], residual := [((2611100482824114006245115601434017430973292698326338130396425226922156943726 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 902, 5, 86⟩], residual := [((2272129727976203298914268281854209667183811247876660331271125666493598116711 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1328 (rho : Nat -> F) : Prop :=
    (relationLc426 rho) * (relationLc427 rho) = ((1 : F) * rho 1328)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 901, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 902, 5, 86⟩], residual := [((2351261151169456687158297482081722848352132490538904662721831711509357671705 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1329) * ((1 : F) + (1 : F) * rho 1328) = (relationLc428 rho)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 902, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 901, 5, 86⟩], residual := [((2126667239470426975551962373181578965579653558109478616252051257173623862140 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1330) * ((1 : F) + (-1 : F) * rho 1328) = (relationLc429 rho)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 86⟩], residual := [((1 : F), 1329), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 733) * (relationLc430 rho) = ((1 : F) * rho 1331)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 86⟩], residual := [((1 : F), 1330), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 733) * (relationLc431 rho) = ((1 : F) * rho 1332)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4418852977224770152591096516384543647203330862365503154501454336913776525175 : F), 901, 5, 87⟩], residual := [((6779178030968711842249743153625088570791812570627935517398024913751615203784 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 902, 5, 87⟩], residual := [((1987000012826922153879303641749304799232264613349527339475391649828152890957 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1333 (rho : Nat -> F) : Prop :=
    (relationLc432 rho) * (relationLc433 rho) = ((1 : F) * rho 1333)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 901, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 902, 5, 87⟩], residual := [((1483303091736036243602313383303149607703550291240206711425448177266981273260 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1334) * ((1 : F) + (1 : F) * rho 1333) = (relationLc434 rho)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 902, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 901, 5, 87⟩], residual := [((5393540997757384135922094956469153110265121217192373436435271647228896221265 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1335) * ((1 : F) + (-1 : F) * rho 1333) = (relationLc435 rho)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 87⟩], residual := [((1 : F), 1334), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 734) * (relationLc436 rho) = ((1 : F) * rho 1336)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 87⟩], residual := [((1 : F), 1335), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 734) * (relationLc437 rho) = ((1 : F) * rho 1337)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5375936855481590355238938239111503186359762223217444101067118469216669974860 : F), 901, 5, 88⟩], residual := [((8349992352894336397286049549294094941313636293580104003715550349357468061291 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 902, 5, 88⟩], residual := [((1098535011563206193165444734712135173754813443596463541291089264247307410025 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1338 (rho : Nat -> F) : Prop :=
    (relationLc438 rho) * (relationLc439 rho) = ((1 : F) * rho 1338)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 901, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 902, 5, 88⟩], residual := [((3505217268054862234625648474169739977437232200473681348648923200837287354956 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1339) * ((1 : F) + (1 : F) * rho 1338) = (relationLc440 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
