import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs25

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 643, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 644, 5, 85⟩], residual := [((7921344720180926700499914832459065253776891949228636323781616997502633100102 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1067) * ((1 : F) + (-1 : F) * rho 1065) = (relationLc421 rho)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 85⟩], residual := [((1 : F), 1066), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 474) * (relationLc422 rho) = ((1 : F) * rho 1068)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 85⟩], residual := [((1 : F), 1067), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 474) * (relationLc423 rho) = ((1 : F) * rho 1069)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5136355408088823848380298907192109436725459726037246232910375821561195593353 : F), 643, 5, 86⟩], residual := [((2611100482824114006245115601434017430973292698326338130396425226922156943726 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 644, 5, 86⟩], residual := [((2272129727976203298914268281854209667183811247876660331271125666493598116711 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1070 (rho : Nat -> F) : Prop :=
    (relationLc424 rho) * (relationLc425 rho) = ((1 : F) * rho 1070)

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 643, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 644, 5, 86⟩], residual := [((2351261151169456687158297482081722848352132490538904662721831711509357671705 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1071) * ((1 : F) + (1 : F) * rho 1070) = (relationLc426 rho)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 644, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 643, 5, 86⟩], residual := [((2126667239470426975551962373181578965579653558109478616252051257173623862140 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1072) * ((1 : F) + (-1 : F) * rho 1070) = (relationLc427 rho)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 86⟩], residual := [((1 : F), 1071), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 475) * (relationLc428 rho) = ((1 : F) * rho 1073)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 86⟩], residual := [((1 : F), 1072), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 475) * (relationLc429 rho) = ((1 : F) * rho 1074)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4418852977224770152591096516384543647203330862365503154501454336913776525175 : F), 643, 5, 87⟩], residual := [((6779178030968711842249743153625088570791812570627935517398024913751615203784 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 644, 5, 87⟩], residual := [((1987000012826922153879303641749304799232264613349527339475391649828152890957 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1075 (rho : Nat -> F) : Prop :=
    (relationLc430 rho) * (relationLc431 rho) = ((1 : F) * rho 1075)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 643, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 644, 5, 87⟩], residual := [((1483303091736036243602313383303149607703550291240206711425448177266981273260 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1076) * ((1 : F) + (1 : F) * rho 1075) = (relationLc432 rho)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 644, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 643, 5, 87⟩], residual := [((5393540997757384135922094956469153110265121217192373436435271647228896221265 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1077) * ((1 : F) + (-1 : F) * rho 1075) = (relationLc433 rho)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 87⟩], residual := [((1 : F), 1076), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 476) * (relationLc434 rho) = ((1 : F) * rho 1078)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 87⟩], residual := [((1 : F), 1077), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 476) * (relationLc435 rho) = ((1 : F) * rho 1079)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5375936855481590355238938239111503186359762223217444101067118469216669974860 : F), 643, 5, 88⟩], residual := [((8349992352894336397286049549294094941313636293580104003715550349357468061291 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 644, 5, 88⟩], residual := [((1098535011563206193165444734712135173754813443596463541291089264247307410025 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1080 (rho : Nat -> F) : Prop :=
    (relationLc436 rho) * (relationLc437 rho) = ((1 : F) * rho 1080)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 643, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 644, 5, 88⟩], residual := [((3505217268054862234625648474169739977437232200473681348648923200837287354956 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1081) * ((1 : F) + (1 : F) * rho 1080) = (relationLc438 rho)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 644, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 643, 5, 88⟩], residual := [((8293193919133116207758552850567614612645909525260865701014858860699193787594 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1082) * ((1 : F) + (-1 : F) * rho 1080) = (relationLc439 rho)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 88⟩], residual := [((1 : F), 1081), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 477) * (relationLc440 rho) = ((1 : F) * rho 1083)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 88⟩], residual := [((1 : F), 1082), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 477) * (relationLc441 rho) = ((1 : F) * rho 1084)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3823607092857852708937139548162746378948106584882997334386088312642642803196 : F), 643, 5, 89⟩], residual := [((2714867256836121125762997299912007949873577945419247880190964543050829418714 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 644, 5, 89⟩], residual := [((153619350881935069255170802654791930868437919462984532110063843936837673131 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1085 (rho : Nat -> F) : Prop :=
    (relationLc442 rho) * (relationLc443 rho) = ((1 : F) * rho 1085)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 644, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 643, 5, 89⟩], residual := [((6427067557758498906772590915175712958461086607324996606842554687902980394689 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1086) * ((1 : F) + (1 : F) * rho 1085) = (relationLc444 rho)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 643, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 644, 5, 89⟩], residual := [((3876741618514416278461783650230897767764892882020524582623223690088409389108 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1087) * ((1 : F) + (-1 : F) * rho 1085) = (relationLc445 rho)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 89⟩], residual := [((1 : F), 1086), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 478) * (relationLc446 rho) = ((1 : F) * rho 1088)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 89⟩], residual := [((1 : F), 1087), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 478) * (relationLc447 rho) = ((1 : F) * rho 1089)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6416479357088254657520161588104593595472283347383011131200786479746401541836 : F), 643, 5, 90⟩], residual := [((3508873915858526940235648772377232092827021329264054008160272580437511763978 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 644, 5, 90⟩], residual := [((2940901819092813228064965544316270339445514597067106215421335395874380782690 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1090 (rho : Nat -> F) : Prop :=
    (relationLc448 rho) * (relationLc449 rho) = ((1 : F) * rho 1090)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 644, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 643, 5, 90⟩], residual := [((4719844734204465699684458530028763165015822110634550322860914591685009643264 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1091) * ((1 : F) + (1 : F) * rho 1090) = (relationLc450 rho)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 643, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 644, 5, 90⟩], residual := [((4912185246871204805586551051906400968288822316213296896595252732458601366687 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1092) * ((1 : F) + (-1 : F) * rho 1090) = (relationLc451 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
