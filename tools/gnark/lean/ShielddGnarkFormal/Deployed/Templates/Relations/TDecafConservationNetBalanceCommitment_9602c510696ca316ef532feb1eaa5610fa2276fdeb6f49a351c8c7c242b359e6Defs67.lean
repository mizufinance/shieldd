import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs66

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (479375895765995803047959024831515103337937965404779322041708852513676265408 : F), runs := [⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 644, 5, 149⟩, ⟨(479375895765995803047959024831515103337937965404779322041708852513676265408 : F), 1392, 8, 86⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 643, 5, 149⟩, ⟨(6970304823902473781543675802060088900446332452405860762790468919149110037593 : F), 1391, 8, 86⟩], residual := [((8104203116691960400772909328012424514118308906993596622035387573401251803503 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2077 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1408 rho) = ((1 : F) * rho 2077)

def relationRow2078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2078) * ((1 : F) + (-1 : F) * rho 2074) = ((994781029759900839657190111889942527591628917343423743103055684254622936040 : F) * rho 2073 + (1 : F) * rho 2077)

def relationLc1409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 86⟩], residual := [((1 : F), 2076), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 624) * (relationLc1409 rho) = ((1 : F) * rho 2079)

def relationLc1410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 86⟩], residual := [((1 : F), 2078), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 624) * (relationLc1410 rho) = ((1 : F) * rho 2080)

def relationLc1411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 87⟩, ⟨(1 : F), 1392, 8, 87⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2081 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1411 rho) = ((1 : F) * rho 2081)

def relationLc1412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 643, 5, 149⟩, ⟨(7484672257564621342969169117937734368918301089472089009153369084064807912895 : F), 1391, 8, 87⟩], residual := [((2243051054702272080098422278286580301370479718239376175558435749547655338533 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 644, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 1392, 8, 87⟩], residual := [((5412226340998192128754120448899200289331961398841384281591755682960184101952 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2082 (rho : Nat -> F) : Prop :=
    (relationLc1412 rho) * (relationLc1413 rho) = ((1 : F) * rho 2082)

def relationLc1414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), runs := [⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 643, 5, 149⟩, ⟨(1369356659294285918173003827931848390669226440244888878142827715666229038664 : F), 1391, 8, 87⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 644, 5, 149⟩, ⟨(5223704154805626788824590874628175847479664026338309084875661743167402906190 : F), 1392, 8, 87⟩], residual := [((3187946797307268399650523550854902222905663685811130911561670480987092377709 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2083 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1414 rho) = ((1 : F) * rho 2083)

def relationRow2084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2084) * ((1 : F) + (1 : F) * rho 2082) = ((1 : F) * rho 2083)

def relationLc1415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), runs := [⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 644, 5, 149⟩, ⟨(3220757594622743635424234064153370683896235308815754743059571712750006332851 : F), 1392, 8, 87⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 643, 5, 149⟩, ⟨(7075105090134084506075821110849698140706672894909174949792405740251180200377 : F), 1391, 8, 87⟩], residual := [((5256514952121102024598301387926644308470235649342932916373562974930316861332 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2085 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1415 rho) = ((1 : F) * rho 2085)

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2086) * ((1 : F) + (-1 : F) * rho 2082) = ((6593060814099912706997594702560024238148890466583197963018489458833631944854 : F) * rho 2081 + (1 : F) * rho 2085)

def relationLc1416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 87⟩], residual := [((1 : F), 2084), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 625) * (relationLc1416 rho) = ((1 : F) * rho 2087)

def relationLc1417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 87⟩], residual := [((1 : F), 2086), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 625) * (relationLc1417 rho) = ((1 : F) * rho 2088)

def relationLc1418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 88⟩, ⟨(1 : F), 1392, 8, 88⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2089 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1418 rho) = ((1 : F) * rho 2089)

def relationLc1419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 643, 5, 149⟩, ⟨(5826895706475092757243459512385933230547216745435924787067233253579232099562 : F), 1391, 8, 88⟩], residual := [((5432031083734210952568685556973047110028320066777387046666414780905740162675 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), runs := [⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 644, 5, 149⟩, ⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 1392, 8, 88⟩], residual := [((7139782703415344306931719791673397024107800243006857408208968492790013069723 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2090 (rho : Nat -> F) : Prop :=
    (relationLc1419 rho) * (relationLc1420 rho) = ((1 : F) * rho 2090)

def relationLc1421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), runs := [⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 644, 5, 149⟩, ⟨(3415626854020561113337153381151782255963776484738683582312591551072053771997 : F), 1392, 8, 88⟩, ⟨(8214384480478989539622737878071026031914246760485956786249845457377996549620 : F), 643, 5, 149⟩, ⟨(8214384480478989539622737878071026031914246760485956786249845457377996549620 : F), 1391, 8, 88⟩], residual := [((2848070947030623101803078143076415089290404328167445076973664893482421262042 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2091 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1421 rho) = ((1 : F) * rho 2091)

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2092) * ((1 : F) + (1 : F) * rho 2090) = ((1 : F) * rho 2091)

def relationLc1422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5028834895407809310911671557629764275412122850415380245622641904845355467044 : F), runs := [⟨(230077268949380884626087060710520499461652574668107041685387998539412689421 : F), 643, 5, 149⟩, ⟨(230077268949380884626087060710520499461652574668107041685387998539412689421 : F), 1391, 8, 88⟩, ⟨(5028834895407809310911671557629764275412122850415380245622641904845355467044 : F), 644, 5, 149⟩, ⟨(5028834895407809310911671557629764275412122850415380245622641904845355467044 : F), 1392, 8, 88⟩], residual := [((5596390802397747322445746795705131442085495006986618750961568562434987976999 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1422 rho) = ((1 : F) * rho 2093)

def relationRow2094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2094) * ((1 : F) + (-1 : F) * rho 2090) = ((3185549585071180228711066320441261756502123910070576540627203552532641082576 : F) * rho 2089 + (1 : F) * rho 2093)

def relationLc1423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 88⟩], residual := [((1 : F), 2092), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 626) * (relationLc1423 rho) = ((1 : F) * rho 2095)

def relationLc1424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 88⟩], residual := [((1 : F), 2094), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 626) * (relationLc1424 rho) = ((1 : F) * rho 2096)

def relationLc1425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 89⟩, ⟨(1 : F), 1392, 8, 89⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1425 rho) = ((1 : F) * rho 2097)

def relationLc1426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5159619363944830005552780021351084084046576023133866691511147781349334042499 : F), 643, 5, 149⟩, ⟨(5159619363944830005552780021351084084046576023133866691511147781349334042499 : F), 1391, 8, 89⟩], residual := [((7989055757212577824469969974533327584189724790221135014605168378137458897111 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7329216008342562966261951251568013874576061931379146282997501345833022067484 : F), runs := [⟨(7329216008342562966261951251568013874576061931379146282997501345833022067484 : F), 644, 5, 149⟩, ⟨(7329216008342562966261951251568013874576061931379146282997501345833022067484 : F), 1392, 8, 89⟩], residual := [((4267337997283225642471733632135753556093908436229989155369934660842742415056 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2098 (rho : Nat -> F) : Prop :=
    (relationLc1426 rho) * (relationLc1427 rho) = ((1 : F) * rho 2098)

def relationLc1428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7329216008342562966261951251568013874576061931379146282997501345833022067484 : F), runs := [⟨(7329216008342562966261951251568013874576061931379146282997501345833022067484 : F), 644, 5, 149⟩, ⟨(7329216008342562966261951251568013874576061931379146282997501345833022067484 : F), 1392, 8, 89⟩, ⟨(8337154768672408287029311071654393525536901156389457862162984876970229620941 : F), 643, 5, 149⟩, ⟨(8337154768672408287029311071654393525536901156389457862162984876970229620941 : F), 1391, 8, 89⟩], residual := [((6444689965774614178681616377036970546823679838924488590374309635050581490485 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2099 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1428 rho) = ((1 : F) * rho 2099)

def relationRow2100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2100) * ((1 : F) + (1 : F) * rho 2098) = ((1 : F) * rho 2099)

def relationLc1429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1115245741085807457986873687213532656799837403774917544937732110084387171557 : F), runs := [⟨(107306980755962137219513867127153005838998178764605965772248578947179618100 : F), 643, 5, 149⟩, ⟨(107306980755962137219513867127153005838998178764605965772248578947179618100 : F), 1391, 8, 89⟩, ⟨(1115245741085807457986873687213532656799837403774917544937732110084387171557 : F), 644, 5, 149⟩, ⟨(1115245741085807457986873687213532656799837403774917544937732110084387171557 : F), 1392, 8, 89⟩], residual := [((1999771783653756245567208561744575984552219496229575237560923820866827748556 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1429 rho) = ((1 : F) * rho 2101)

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * ((1 : F) + (-1 : F) * rho 2098) = ((7221909027586600829042437384440860868737063752614540317225252766885842449384 : F) * rho 2097 + (1 : F) * rho 2101)

def relationLc1430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 89⟩], residual := [((1 : F), 2100), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 627) * (relationLc1430 rho) = ((1 : F) * rho 2103)

def relationLc1431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 89⟩], residual := [((1 : F), 2102), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 627) * (relationLc1431 rho) = ((1 : F) * rho 2104)

def relationLc1432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 90⟩, ⟨(1 : F), 1392, 8, 90⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1432 rho) = ((1 : F) * rho 2105)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
