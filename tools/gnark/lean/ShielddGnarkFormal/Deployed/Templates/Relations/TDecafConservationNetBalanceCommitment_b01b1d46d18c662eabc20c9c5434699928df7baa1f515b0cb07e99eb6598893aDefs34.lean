import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs33

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow1841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1841) * ((1 : F) + (-1 : F) * rho 1839) = (relationLc427 rho)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 85⟩], residual := [((1 : F), 1840), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1248) * (relationLc428 rho) = ((1 : F) * rho 1842)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 85⟩], residual := [((1 : F), 1841), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1248) * (relationLc429 rho) = ((1 : F) * rho 1843)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5136355408088823848380298907192109436725459726037246232910375821561195593353 : F), 1417, 5, 86⟩], residual := [((2611100482824114006245115601434017430973292698326338130396425226922156943726 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 1418, 5, 86⟩], residual := [((2272129727976203298914268281854209667183811247876660331271125666493598116711 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1844 (rho : Nat -> F) : Prop :=
    (relationLc430 rho) * (relationLc431 rho) = ((1 : F) * rho 1844)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 1417, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 1418, 5, 86⟩], residual := [((2351261151169456687158297482081722848352132490538904662721831711509357671705 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1845) * ((1 : F) + (1 : F) * rho 1844) = (relationLc432 rho)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 1418, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 1417, 5, 86⟩], residual := [((2126667239470426975551962373181578965579653558109478616252051257173623862140 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1846) * ((1 : F) + (-1 : F) * rho 1844) = (relationLc433 rho)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 86⟩], residual := [((1 : F), 1845), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1249) * (relationLc434 rho) = ((1 : F) * rho 1847)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 86⟩], residual := [((1 : F), 1846), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1249) * (relationLc435 rho) = ((1 : F) * rho 1848)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4418852977224770152591096516384543647203330862365503154501454336913776525175 : F), 1417, 5, 87⟩], residual := [((6779178030968711842249743153625088570791812570627935517398024913751615203784 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 1418, 5, 87⟩], residual := [((1987000012826922153879303641749304799232264613349527339475391649828152890957 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1849 (rho : Nat -> F) : Prop :=
    (relationLc436 rho) * (relationLc437 rho) = ((1 : F) * rho 1849)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 1417, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 1418, 5, 87⟩], residual := [((1483303091736036243602313383303149607703550291240206711425448177266981273260 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1850) * ((1 : F) + (1 : F) * rho 1849) = (relationLc438 rho)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 1418, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 1417, 5, 87⟩], residual := [((5393540997757384135922094956469153110265121217192373436435271647228896221265 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1851) * ((1 : F) + (-1 : F) * rho 1849) = (relationLc439 rho)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 87⟩], residual := [((1 : F), 1850), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1250) * (relationLc440 rho) = ((1 : F) * rho 1852)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 87⟩], residual := [((1 : F), 1851), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1250) * (relationLc441 rho) = ((1 : F) * rho 1853)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5375936855481590355238938239111503186359762223217444101067118469216669974860 : F), 1417, 5, 88⟩], residual := [((8349992352894336397286049549294094941313636293580104003715550349357468061291 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 1418, 5, 88⟩], residual := [((1098535011563206193165444734712135173754813443596463541291089264247307410025 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1854 (rho : Nat -> F) : Prop :=
    (relationLc442 rho) * (relationLc443 rho) = ((1 : F) * rho 1854)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 1417, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 1418, 5, 88⟩], residual := [((3505217268054862234625648474169739977437232200473681348648923200837287354956 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1855) * ((1 : F) + (1 : F) * rho 1854) = (relationLc444 rho)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 1418, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 1417, 5, 88⟩], residual := [((8293193919133116207758552850567614612645909525260865701014858860699193787594 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1856) * ((1 : F) + (-1 : F) * rho 1854) = (relationLc445 rho)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 88⟩], residual := [((1 : F), 1855), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1251) * (relationLc446 rho) = ((1 : F) * rho 1857)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 88⟩], residual := [((1 : F), 1856), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1251) * (relationLc447 rho) = ((1 : F) * rho 1858)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3823607092857852708937139548162746378948106584882997334386088312642642803196 : F), 1417, 5, 89⟩], residual := [((2714867256836121125762997299912007949873577945419247880190964543050829418714 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 1418, 5, 89⟩], residual := [((153619350881935069255170802654791930868437919462984532110063843936837673131 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1859 (rho : Nat -> F) : Prop :=
    (relationLc448 rho) * (relationLc449 rho) = ((1 : F) * rho 1859)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 1418, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 1417, 5, 89⟩], residual := [((6427067557758498906772590915175712958461086607324996606842554687902980394689 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1860) * ((1 : F) + (1 : F) * rho 1859) = (relationLc450 rho)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 1417, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 1418, 5, 89⟩], residual := [((3876741618514416278461783650230897767764892882020524582623223690088409389108 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1861) * ((1 : F) + (-1 : F) * rho 1859) = (relationLc451 rho)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 89⟩], residual := [((1 : F), 1860), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1252) * (relationLc452 rho) = ((1 : F) * rho 1862)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 89⟩], residual := [((1 : F), 1861), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1252) * (relationLc453 rho) = ((1 : F) * rho 1863)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6416479357088254657520161588104593595472283347383011131200786479746401541836 : F), 1417, 5, 90⟩], residual := [((3508873915858526940235648772377232092827021329264054008160272580437511763978 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 1418, 5, 90⟩], residual := [((2940901819092813228064965544316270339445514597067106215421335395874380782690 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1864 (rho : Nat -> F) : Prop :=
    (relationLc454 rho) * (relationLc455 rho) = ((1 : F) * rho 1864)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 1418, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 1417, 5, 90⟩], residual := [((4719844734204465699684458530028763165015822110634550322860914591685009643264 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1865) * ((1 : F) + (1 : F) * rho 1864) = (relationLc456 rho)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 1417, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 1418, 5, 90⟩], residual := [((4912185246871204805586551051906400968288822316213296896595252732458601366687 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1866) * ((1 : F) + (-1 : F) * rho 1864) = (relationLc457 rho)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 90⟩], residual := [((1 : F), 1865), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1253) * (relationLc458 rho) = ((1 : F) * rho 1867)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
