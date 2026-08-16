import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs26

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 773, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 772, 5, 84⟩], residual := [((3023431161416084699903694663518387414748628120909489252925148026993227262805 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * ((1 : F) + (1 : F) * rho 1189) = (relationLc415 rho)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 772, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 773, 5, 84⟩], residual := [((2053261783412565618836788473684054838107152222039993036884965312918189660439 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * ((1 : F) + (-1 : F) * rho 1189) = (relationLc416 rho)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 84⟩], residual := [((1 : F), 1190), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 602) * (relationLc417 rho) = ((1 : F) * rho 1192)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 84⟩], residual := [((1 : F), 1191), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 602) * (relationLc418 rho) = ((1 : F) * rho 1193)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5276663585927424617001321006326063876074837805776841490242179655177179723382 : F), 772, 5, 85⟩], residual := [((5171730787501844126787071739480348325133924484638196337244514296783160562849 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 773, 5, 85⟩], residual := [((8151365977808896800973445184695245244422242745255100859603407196467141767996 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1194 (rho : Nat -> F) : Prop :=
    (relationLc419 rho) * (relationLc420 rho) = ((1 : F) * rho 1194)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 773, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 772, 5, 85⟩], residual := [((6078999580162968627962574270151575208687127425096319938057330165684641107683 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((1 : F) + (1 : F) * rho 1194) = (relationLc421 rho)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 772, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 773, 5, 85⟩], residual := [((7921344720180926700499914832459065253776891949228636323781616997502633100102 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * ((1 : F) + (-1 : F) * rho 1194) = (relationLc422 rho)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 85⟩], residual := [((1 : F), 1195), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 603) * (relationLc423 rho) = ((1 : F) * rho 1197)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 85⟩], residual := [((1 : F), 1196), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 603) * (relationLc424 rho) = ((1 : F) * rho 1198)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5136355408088823848380298907192109436725459726037246232910375821561195593353 : F), 772, 5, 86⟩], residual := [((2611100482824114006245115601434017430973292698326338130396425226922156943726 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 773, 5, 86⟩], residual := [((2272129727976203298914268281854209667183811247876660331271125666493598116711 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1199 (rho : Nat -> F) : Prop :=
    (relationLc425 rho) * (relationLc426 rho) = ((1 : F) * rho 1199)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 772, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 773, 5, 86⟩], residual := [((2351261151169456687158297482081722848352132490538904662721831711509357671705 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * ((1 : F) + (1 : F) * rho 1199) = (relationLc427 rho)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 773, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 772, 5, 86⟩], residual := [((2126667239470426975551962373181578965579653558109478616252051257173623862140 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * ((1 : F) + (-1 : F) * rho 1199) = (relationLc428 rho)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 86⟩], residual := [((1 : F), 1200), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 604) * (relationLc429 rho) = ((1 : F) * rho 1202)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 86⟩], residual := [((1 : F), 1201), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 604) * (relationLc430 rho) = ((1 : F) * rho 1203)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4418852977224770152591096516384543647203330862365503154501454336913776525175 : F), 772, 5, 87⟩], residual := [((6779178030968711842249743153625088570791812570627935517398024913751615203784 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 773, 5, 87⟩], residual := [((1987000012826922153879303641749304799232264613349527339475391649828152890957 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1204 (rho : Nat -> F) : Prop :=
    (relationLc431 rho) * (relationLc432 rho) = ((1 : F) * rho 1204)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 772, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 773, 5, 87⟩], residual := [((1483303091736036243602313383303149607703550291240206711425448177266981273260 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * ((1 : F) + (1 : F) * rho 1204) = (relationLc433 rho)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 773, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 772, 5, 87⟩], residual := [((5393540997757384135922094956469153110265121217192373436435271647228896221265 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * ((1 : F) + (-1 : F) * rho 1204) = (relationLc434 rho)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 87⟩], residual := [((1 : F), 1205), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 605) * (relationLc435 rho) = ((1 : F) * rho 1207)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 87⟩], residual := [((1 : F), 1206), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 605) * (relationLc436 rho) = ((1 : F) * rho 1208)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5375936855481590355238938239111503186359762223217444101067118469216669974860 : F), 772, 5, 88⟩], residual := [((8349992352894336397286049549294094941313636293580104003715550349357468061291 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 773, 5, 88⟩], residual := [((1098535011563206193165444734712135173754813443596463541291089264247307410025 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1209 (rho : Nat -> F) : Prop :=
    (relationLc437 rho) * (relationLc438 rho) = ((1 : F) * rho 1209)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 772, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 773, 5, 88⟩], residual := [((3505217268054862234625648474169739977437232200473681348648923200837287354956 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * ((1 : F) + (1 : F) * rho 1209) = (relationLc439 rho)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 773, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 772, 5, 88⟩], residual := [((8293193919133116207758552850567614612645909525260865701014858860699193787594 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * ((1 : F) + (-1 : F) * rho 1209) = (relationLc440 rho)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 88⟩], residual := [((1 : F), 1210), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 606) * (relationLc441 rho) = ((1 : F) * rho 1212)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 88⟩], residual := [((1 : F), 1211), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 606) * (relationLc442 rho) = ((1 : F) * rho 1213)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3823607092857852708937139548162746378948106584882997334386088312642642803196 : F), 772, 5, 89⟩], residual := [((2714867256836121125762997299912007949873577945419247880190964543050829418714 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 773, 5, 89⟩], residual := [((153619350881935069255170802654791930868437919462984532110063843936837673131 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1214 (rho : Nat -> F) : Prop :=
    (relationLc443 rho) * (relationLc444 rho) = ((1 : F) * rho 1214)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 773, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 772, 5, 89⟩], residual := [((6427067557758498906772590915175712958461086607324996606842554687902980394689 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * ((1 : F) + (1 : F) * rho 1214) = (relationLc445 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
