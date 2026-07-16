import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs64

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), runs := [⟨(4005372182215609923599269944164126722738026578399694451251318821296727350223 : F), 643, 5, 149⟩, ⟨(4005372182215609923599269944164126722738026578399694451251318821296727350223 : F), 1391, 8, 79⟩, ⟨(7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), 644, 5, 149⟩, ⟨(7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), 1392, 8, 79⟩], residual := [((6634310193434025306019107045431959012371264615376184362864406112333636463282 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1359 rho) = ((1 : F) * rho 2021)

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2022) * ((1 : F) + (-1 : F) * rho 2018) = ((5702006127262138911284204334642107486656367519809747843755005951930364658100 : F) * rho 2017 + (1 : F) * rho 2021)

def relationLc1360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 79⟩], residual := [((1 : F), 2020), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 617) * (relationLc1360 rho) = ((1 : F) * rho 2023)

def relationLc1361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 79⟩], residual := [((1 : F), 2022), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 617) * (relationLc1361 rho) = ((1 : F) * rho 2024)

def relationLc1362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 80⟩, ⟨(1 : F), 1392, 8, 80⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1362 rho) = ((1 : F) * rho 2025)

def relationLc1363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4375063643003305053442312238432707704433669407694920205066138913017602702375 : F), 643, 5, 149⟩, ⟨(4375063643003305053442312238432707704433669407694920205066138913017602702375 : F), 1391, 8, 80⟩], residual := [((6827565584601986065097078658718696289843280211445254743478131538328482764782 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), runs := [⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 644, 5, 149⟩, ⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 1392, 8, 80⟩], residual := [((5611454971280825110232058586781909309252677113250095359038853620826121304010 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2026 (rho : Nat -> F) : Prop :=
    (relationLc1363 rho) * (relationLc1364 rho) = ((1 : F) * rho 2026)

def relationLc1365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), runs := [⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 644, 5, 149⟩, ⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 1392, 8, 80⟩, ⟨(3255123647791336139979832684865989033507441408648469121457026773121774894719 : F), 643, 5, 149⟩, ⟨(3255123647791336139979832684865989033507441408648469121457026773121774894719 : F), 1391, 8, 80⟩], residual := [((6438314879147747076871747575725727555874899418474158279920803968735411012147 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1365 rho) = ((1 : F) * rho 2027)

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2028) * ((1 : F) + (1 : F) * rho 2026) = ((1 : F) * rho 2027)

def relationLc1366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), runs := [⟨(5189338101637034284268992253915557497868457926505594706478206682795634344322 : F), 643, 5, 149⟩, ⟨(5189338101637034284268992253915557497868457926505594706478206682795634344322 : F), 1391, 8, 80⟩, ⟨(6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), 644, 5, 149⟩, ⟨(6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), 1392, 8, 80⟩], residual := [((2006146870280623347377077363055818975500999916679905548014429487181998226894 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2029 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1366 rho) = ((1 : F) * rho 2029)

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * ((1 : F) + (-1 : F) * rho 2026) = ((5009688156055652420060599938520460602773557558397751911980544346273869627954 : F) * rho 2025 + (1 : F) * rho 2029)

def relationLc1367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 80⟩], residual := [((1 : F), 2028), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 618) * (relationLc1367 rho) = ((1 : F) * rho 2031)

def relationLc1368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 80⟩], residual := [((1 : F), 2030), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 618) * (relationLc1368 rho) = ((1 : F) * rho 2032)

def relationLc1369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 81⟩, ⟨(1 : F), 1392, 8, 81⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1369 rho) = ((1 : F) * rho 2033)

def relationLc1370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4730509882521047420802994018605617450553735111988990510060762860448417509752 : F), 643, 5, 149⟩, ⟨(4730509882521047420802994018605617450553735111988990510060762860448417509752 : F), 1391, 8, 81⟩], residual := [((868458302266357929784260556585626706789160668591807608447688166148445876163 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), runs := [⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 644, 5, 149⟩, ⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 1392, 8, 81⟩], residual := [((3372081631784657270900224132622969995639050554760602369398767258362887176631 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2034 (rho : Nat -> F) : Prop :=
    (relationLc1370 rho) * (relationLc1371 rho) = ((1 : F) * rho 2034)

def relationLc1372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), runs := [⟨(2863905773352258312430188590311456228261990948132985882262740755286287811416 : F), 643, 5, 149⟩, ⟨(2863905773352258312430188590311456228261990948132985882262740755286287811416 : F), 1391, 8, 81⟩, ⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 644, 5, 149⟩, ⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 1392, 8, 81⟩], residual := [((2637217354460130603026123934561744867851870030273039648730604825148676589411 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2035 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1372 rho) = ((1 : F) * rho 2035)

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * ((1 : F) + (1 : F) * rho 2034) = ((1 : F) * rho 2035)

def relationLc1373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4481113079983226600821419624728260168868593576695758476979915117366154353744 : F), runs := [⟨(4481113079983226600821419624728260168868593576695758476979915117366154353744 : F), 644, 5, 149⟩, ⟨(4481113079983226600821419624728260168868593576695758476979915117366154353744 : F), 1392, 8, 81⟩, ⟨(5580555976076112111818636348470090303113908387021077945672492700631121427625 : F), 643, 5, 149⟩, ⟨(5580555976076112111818636348470090303113908387021077945672492700631121427625 : F), 1391, 8, 81⟩], residual := [((5807244394968239821222701004219801663524029304881024179204628630768732649630 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1373 rho) = ((1 : F) * rho 2037)

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2038) * ((1 : F) + (-1 : F) * rho 2034) = ((6827254442797402135857593904364742590769296706591291233218059093837542696713 : F) * rho 2033 + (1 : F) * rho 2037)

def relationLc1374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 81⟩], residual := [((1 : F), 2036), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 619) * (relationLc1374 rho) = ((1 : F) * rho 2039)

def relationLc1375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 81⟩], residual := [((1 : F), 2038), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 619) * (relationLc1375 rho) = ((1 : F) * rho 2040)

def relationLc1376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 82⟩, ⟨(1 : F), 1392, 8, 82⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1376 rho) = ((1 : F) * rho 2041)

def relationLc1377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(372667203011285581226730154631257164193838363251563845806698475951360601605 : F), 643, 5, 149⟩, ⟨(372667203011285581226730154631257164193838363251563845806698475951360601605 : F), 1391, 8, 82⟩], residual := [((1484768422242819297649949070658412404778643083822250195864189986665927258533 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7542159258655056281906946526991183720469363449441588561022715280995183175685 : F), runs := [⟨(7542159258655056281906946526991183720469363449441588561022715280995183175685 : F), 644, 5, 149⟩, ⟨(7542159258655056281906946526991183720469363449441588561022715280995183175685 : F), 1392, 8, 82⟩], residual := [((2460794889423031563146389053437031986715280836810763609335733415507879232974 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2042 (rho : Nat -> F) : Prop :=
    (relationLc1377 rho) * (relationLc1378 rho) = ((1 : F) * rho 2042)

def relationLc1379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7542159258655056281906946526991183720469363449441588561022715280995183175685 : F), runs := [⟨(7276169017201277557067500180669644779323290237593273653744197081836798281968 : F), 643, 5, 149⟩, ⟨(7276169017201277557067500180669644779323290237593273653744197081836798281968 : F), 1391, 8, 82⟩, ⟨(7542159258655056281906946526991183720469363449441588561022715280995183175685 : F), 644, 5, 149⟩, ⟨(7542159258655056281906946526991183720469363449441588561022715280995183175685 : F), 1392, 8, 82⟩], residual := [((3920408858845028312817205527159185479526600961284197428726020093421005201209 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1379 rho) = ((1 : F) * rho 2043)

def relationRow2044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2044) * ((1 : F) + (1 : F) * rho 2042) = ((1 : F) * rho 2043)

def relationLc1380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902302490773314142341878411790362810906535885712475266912518174922226063356 : F), runs := [⟨(1168292732227092867181324758111901752052609097560790174191036374080610957073 : F), 643, 5, 149⟩, ⟨(1168292732227092867181324758111901752052609097560790174191036374080610957073 : F), 1391, 8, 82⟩, ⟨(902302490773314142341878411790362810906535885712475266912518174922226063356 : F), 644, 5, 149⟩, ⟨(902302490773314142341878411790362810906535885712475266912518174922226063356 : F), 1392, 8, 82⟩], residual := [((4524052890583342111431619411622361051849298373869866399209213362496404037832 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1380 rho) = ((1 : F) * rho 2045)

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * ((1 : F) + (-1 : F) * rho 2042) = ((6373866526427963414725621768879281968416754351880798386831678906914572218612 : F) * rho 2041 + (1 : F) * rho 2045)

def relationLc1381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 82⟩], residual := [((1 : F), 2044), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 620) * (relationLc1381 rho) = ((1 : F) * rho 2047)

def relationLc1382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 82⟩], residual := [((1 : F), 2046), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 620) * (relationLc1382 rho) = ((1 : F) * rho 2048)

def relationLc1383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 83⟩, ⟨(1 : F), 1392, 8, 83⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1383 rho) = ((1 : F) * rho 2049)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
