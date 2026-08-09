import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs65

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), runs := [⟨(1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), 773, 5, 149⟩, ⟨(1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), 1521, 8, 78⟩, ⟨(7832908894288042821165616685538990964854148242754676096655804312879030901169 : F), 772, 5, 149⟩, ⟨(7832908894288042821165616685538990964854148242754676096655804312879030901169 : F), 1520, 8, 78⟩], residual := [((6845132609499131369747504453995738460557527426528601286367174870084133350075 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1353 rho) = ((1 : F) * rho 2142)

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2143) * ((1 : F) + (-1 : F) * rho 2139) = ((7829346792394128392825093018367767754142387644647206100020819928466556748213 : F) * rho 2138 + (1 : F) * rho 2142)

def relationLc1354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 78⟩], residual := [((1 : F), 2141), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 745) * (relationLc1354 rho) = ((1 : F) * rho 2144)

def relationLc1355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 78⟩], residual := [((1 : F), 2143), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 745) * (relationLc1355 rho) = ((1 : F) * rho 2145)

def relationLc1356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 79⟩, ⟨(1 : F), 1521, 8, 79⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2146 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1356 rho) = ((1 : F) * rho 2146)

def relationLc1357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(684324457497238755171635954129350070085453930296528200955383192234114522070 : F), 772, 5, 149⟩, ⟨(684324457497238755171635954129350070085453930296528200955383192234114522070 : F), 1520, 8, 79⟩], residual := [((6327656689886066240785449211006082544101674608080640733798216470321894989715 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), runs := [⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 773, 5, 149⟩, ⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 1521, 8, 79⟩], residual := [((3870954308191713971872500864422005677763758200325916030540011082079875431642 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2147 (rho : Nat -> F) : Prop :=
    (relationLc1357 rho) * (relationLc1358 rho) = ((1 : F) * rho 2147)

def relationLc1359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), runs := [⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 773, 5, 149⟩, ⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 1521, 8, 79⟩, ⟨(4439089567212760500649554994617419808637872756754369376683914634620681888818 : F), 772, 5, 149⟩, ⟨(4439089567212760500649554994617419808637872756754369376683914634620681888818 : F), 1520, 8, 79⟩], residual := [((1810151555994345118229717893349587519004634719777879465070827343583772775759 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1359 rho) = ((1 : F) * rho 2148)

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2149) * ((1 : F) + (1 : F) * rho 2147) = ((1 : F) * rho 2148)

def relationLc1360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), runs := [⟨(4005372182215609923599269944164126722738026578399694451251318821296727350223 : F), 772, 5, 149⟩, ⟨(4005372182215609923599269944164126722738026578399694451251318821296727350223 : F), 1520, 8, 79⟩, ⟨(7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), 773, 5, 149⟩, ⟨(7181545189378992013614175598756858853357404572098685360864142138607726469759 : F), 1521, 8, 79⟩], residual := [((6634310193434025306019107045431959012371264615376184362864406112333636463282 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1360 rho) = ((1 : F) * rho 2150)

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2151) * ((1 : F) + (-1 : F) * rho 2147) = ((5702006127262138911284204334642107486656367519809747843755005951930364658100 : F) * rho 2146 + (1 : F) * rho 2150)

def relationLc1361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 79⟩], residual := [((1 : F), 2149), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 746) * (relationLc1361 rho) = ((1 : F) * rho 2152)

def relationLc1362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 79⟩], residual := [((1 : F), 2151), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 746) * (relationLc1362 rho) = ((1 : F) * rho 2153)

def relationLc1363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 80⟩, ⟨(1 : F), 1521, 8, 80⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2154 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1363 rho) = ((1 : F) * rho 2154)

def relationLc1364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4375063643003305053442312238432707704433669407694920205066138913017602702375 : F), 772, 5, 149⟩, ⟨(4375063643003305053442312238432707704433669407694920205066138913017602702375 : F), 1520, 8, 80⟩], residual := [((6827565584601986065097078658718696289843280211445254743478131538328482764782 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), runs := [⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 773, 5, 149⟩, ⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 1521, 8, 80⟩], residual := [((5611454971280825110232058586781909309252677113250095359038853620826121304010 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2155 (rho : Nat -> F) : Prop :=
    (relationLc1364 rho) * (relationLc1365 rho) = ((1 : F) * rho 2155)

def relationLc1366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), runs := [⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 773, 5, 149⟩, ⟨(1754564508264316280080767253654471569266116149749282790523517573152094733235 : F), 1521, 8, 80⟩, ⟨(3255123647791336139979832684865989033507441408648469121457026773121774894719 : F), 772, 5, 149⟩, ⟨(3255123647791336139979832684865989033507441408648469121457026773121774894719 : F), 1520, 8, 80⟩], residual := [((6438314879147747076871747575725727555874899418474158279920803968735411012147 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1366 rho) = ((1 : F) * rho 2156)

def relationRow2157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2157) * ((1 : F) + (1 : F) * rho 2155) = ((1 : F) * rho 2156)

def relationLc1367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), runs := [⟨(5189338101637034284268992253915557497868457926505594706478206682795634344322 : F), 772, 5, 149⟩, ⟨(5189338101637034284268992253915557497868457926505594706478206682795634344322 : F), 1520, 8, 80⟩, ⟨(6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), 773, 5, 149⟩, ⟨(6689897241164054144168057685127074962109783185404781037411715882765314505806 : F), 1521, 8, 80⟩], residual := [((2006146870280623347377077363055818975500999916679905548014429487181998226894 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2158 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1367 rho) = ((1 : F) * rho 2158)

def relationRow2159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2159) * ((1 : F) + (-1 : F) * rho 2155) = ((5009688156055652420060599938520460602773557558397751911980544346273869627954 : F) * rho 2154 + (1 : F) * rho 2158)

def relationLc1368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 80⟩], residual := [((1 : F), 2157), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 747) * (relationLc1368 rho) = ((1 : F) * rho 2160)

def relationLc1369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 80⟩], residual := [((1 : F), 2159), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 747) * (relationLc1369 rho) = ((1 : F) * rho 2161)

def relationLc1370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 81⟩, ⟨(1 : F), 1521, 8, 81⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2162 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1370 rho) = ((1 : F) * rho 2162)

def relationLc1371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4730509882521047420802994018605617450553735111988990510060762860448417509752 : F), 772, 5, 149⟩, ⟨(4730509882521047420802994018605617450553735111988990510060762860448417509752 : F), 1520, 8, 81⟩], residual := [((868458302266357929784260556585626706789160668591807608447688166148445876163 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), runs := [⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 773, 5, 149⟩, ⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 1521, 8, 81⟩], residual := [((3372081631784657270900224132622969995639050554760602369398767258362887176631 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2163 (rho : Nat -> F) : Prop :=
    (relationLc1371 rho) * (relationLc1372 rho) = ((1 : F) * rho 2163)

def relationLc1373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), runs := [⟨(2863905773352258312430188590311456228261990948132985882262740755286287811416 : F), 772, 5, 149⟩, ⟨(2863905773352258312430188590311456228261990948132985882262740755286287811416 : F), 1520, 8, 81⟩, ⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 773, 5, 149⟩, ⟨(3963348669445143823427405314053286362507305758458305350955318338551254885297 : F), 1521, 8, 81⟩], residual := [((2637217354460130603026123934561744867851870030273039648730604825148676589411 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2164 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1373 rho) = ((1 : F) * rho 2164)

def relationRow2165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2165) * ((1 : F) + (1 : F) * rho 2163) = ((1 : F) * rho 2164)

def relationLc1374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4481113079983226600821419624728260168868593576695758476979915117366154353744 : F), runs := [⟨(4481113079983226600821419624728260168868593576695758476979915117366154353744 : F), 773, 5, 149⟩, ⟨(4481113079983226600821419624728260168868593576695758476979915117366154353744 : F), 1521, 8, 81⟩, ⟨(5580555976076112111818636348470090303113908387021077945672492700631121427625 : F), 772, 5, 149⟩, ⟨(5580555976076112111818636348470090303113908387021077945672492700631121427625 : F), 1520, 8, 81⟩], residual := [((5807244394968239821222701004219801663524029304881024179204628630768732649630 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2166 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1374 rho) = ((1 : F) * rho 2166)

def relationRow2167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2167) * ((1 : F) + (-1 : F) * rho 2163) = ((6827254442797402135857593904364742590769296706591291233218059093837542696713 : F) * rho 2162 + (1 : F) * rho 2166)

def relationLc1375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 81⟩], residual := [((1 : F), 2165), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 748) * (relationLc1375 rho) = ((1 : F) * rho 2168)

def relationLc1376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 81⟩], residual := [((1 : F), 2167), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 748) * (relationLc1376 rho) = ((1 : F) * rho 2169)

def relationLc1377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 82⟩, ⟨(1 : F), 1521, 8, 82⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2170 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1377 rho) = ((1 : F) * rho 2170)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
