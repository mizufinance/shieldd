import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs77

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow2933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1408) * (relationLc1485 rho) = ((1 : F) * rho 2933)

def relationLc1486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 96⟩], residual := [((1 : F), 2932), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1408) * (relationLc1486 rho) = ((1 : F) * rho 2934)

def relationLc1487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 97⟩, ⟨(1 : F), 2166, 8, 97⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2935 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1487 rho) = ((1 : F) * rho 2935)

def relationLc1488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1900892461963676509640778516803471664077224137855858051159565579766427638818 : F), 1417, 5, 149⟩, ⟨(1900892461963676509640778516803471664077224137855858051159565579766427638818 : F), 2165, 8, 97⟩], residual := [((4287670697339900789370947690166861455441816137951612202103027632982100060505 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3205778446841165504107412647422570446185838532302611287722449995897633519006 : F), runs := [⟨(3205778446841165504107412647422570446185838532302611287722449995897633519006 : F), 1418, 5, 149⟩, ⟨(3205778446841165504107412647422570446185838532302611287722449995897633519006 : F), 2166, 8, 97⟩], residual := [((4136388419679310950960951468679232432376196009946805418881652989243827062098 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2936 (rho : Nat -> F) : Prop :=
    (relationLc1488 rho) * (relationLc1489 rho) = ((1 : F) * rho 2936)

def relationLc1490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3205778446841165504107412647422570446185838532302611287722449995897633519006 : F), runs := [⟨(3205778446841165504107412647422570446185838532302611287722449995897633519006 : F), 1418, 5, 149⟩, ⟨(3205778446841165504107412647422570446185838532302611287722449995897633519006 : F), 2166, 8, 97⟩, ⟨(6161368615757064578468735830384419737443415875146445724866075505601369212342 : F), 1417, 5, 149⟩, ⟨(6161368615757064578468735830384419737443415875146445724866075505601369212342 : F), 2165, 8, 97⟩], residual := [((3394270195696985021778291261454563608844071744136467992192255746065724196317 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2937 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1490 rho) = ((1 : F) * rho 2937)

def relationRow2938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2938) * ((1 : F) + (1 : F) * rho 2936) = ((1 : F) * rho 2937)

def relationLc1491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5238683302587204920141412291358976085190060802851452540212783460019775720035 : F), runs := [⟨(2283093133671305845780089108397126793932483460007618103069157950316040026699 : F), 1417, 5, 149⟩, ⟨(2283093133671305845780089108397126793932483460007618103069157950316040026699 : F), 2165, 8, 97⟩, ⟨(5238683302587204920141412291358976085190060802851452540212783460019775720035 : F), 1418, 5, 149⟩, ⟨(5238683302587204920141412291358976085190060802851452540212783460019775720035 : F), 2166, 8, 97⟩], residual := [((5050191553731385402470533677326982922531827591017595835742977709851685042724 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2939 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1491 rho) = ((1 : F) * rho 2939)

def relationRow2940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2940) * ((1 : F) + (-1 : F) * rho 2936) = ((922685313169859658327323539025443652253355072294993184653292045581593492307 : F) * rho 2935 + (1 : F) * rho 2939)

def relationLc1492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 97⟩], residual := [((1 : F), 2938), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1409) * (relationLc1492 rho) = ((1 : F) * rho 2941)

def relationLc1493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 97⟩], residual := [((1 : F), 2940), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1409) * (relationLc1493 rho) = ((1 : F) * rho 2942)

def relationLc1494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 98⟩, ⟨(1 : F), 2166, 8, 98⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2943 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1494 rho) = ((1 : F) * rho 2943)

def relationLc1495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4350753457803126617239087690150575952407387343445826335205579906960839554722 : F), 1417, 5, 149⟩, ⟨(4350753457803126617239087690150575952407387343445826335205579906960839554722 : F), 2165, 8, 98⟩], residual := [((7744348585832122768075044097357239165124010007619404673097934308000867538251 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637295467543686737834382267987615682687332247363798918988631490872682703987 : F), runs := [⟨(3637295467543686737834382267987615682687332247363798918988631490872682703987 : F), 1418, 5, 149⟩, ⟨(3637295467543686737834382267987615682687332247363798918988631490872682703987 : F), 2166, 8, 98⟩], residual := [((4744066201361012552590713371123910662718173171646119997147627113007781772154 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2944 (rho : Nat -> F) : Prop :=
    (relationLc1495 rho) * (relationLc1496 rho) = ((1 : F) * rho 2944)

def relationLc1497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3637295467543686737834382267987615682687332247363798918988631490872682703987 : F), runs := [⟨(2391382174518060191774241777672417365203178192287378483687464476900478563037 : F), 1417, 5, 149⟩, ⟨(2391382174518060191774241777672417365203178192287378483687464476900478563037 : F), 2165, 8, 98⟩, ⟨(3637295467543686737834382267987615682687332247363798918988631490872682703987 : F), 1418, 5, 149⟩, ⟨(3637295467543686737834382267987615682687332247363798918988631490872682703987 : F), 2166, 8, 98⟩], residual := [((7986328868085048780486265555216982383681361301222809630133404507816215461524 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2945 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1497 rho) = ((1 : F) * rho 2945)

def relationRow2946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2946) * ((1 : F) + (1 : F) * rho 2944) = ((1 : F) * rho 2945)

def relationLc1498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807166281884683686414442670793930848688567087790264908946601965044726535054 : F), runs := [⟨(4807166281884683686414442670793930848688567087790264908946601965044726535054 : F), 1418, 5, 149⟩, ⟨(4807166281884683686414442670793930848688567087790264908946601965044726535054 : F), 2166, 8, 98⟩, ⟨(6053079574910310232474583161109129166172721142866685344247768979016930676004 : F), 1417, 5, 149⟩, ⟨(6053079574910310232474583161109129166172721142866685344247768979016930676004 : F), 2165, 8, 98⟩], residual := [((458132881343321643762559383564564147694538033931254197801828948101193777517 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2947 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1498 rho) = ((1 : F) * rho 2947)

def relationRow2948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2948) * ((1 : F) + (-1 : F) * rho 2944) = ((6028677642061746929608624045660033047890510439651177402676095967773161267024 : F) * rho 2943 + (1 : F) * rho 2947)

def relationLc1499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 98⟩], residual := [((1 : F), 2946), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1410) * (relationLc1499 rho) = ((1 : F) * rho 2949)

def relationLc1500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 98⟩], residual := [((1 : F), 2948), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1410) * (relationLc1500 rho) = ((1 : F) * rho 2950)

def relationLc1501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 99⟩, ⟨(1 : F), 2166, 8, 99⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2951 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1501 rho) = ((1 : F) * rho 2951)

def relationLc1502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4293681703212942226241860119445843202620766590413090406420978233149069990778 : F), 1417, 5, 149⟩, ⟨(4293681703212942226241860119445843202620766590413090406420978233149069990778 : F), 2165, 8, 99⟩], residual := [((1305409244711178263509137317536703823855434028379551891190204949390309402401 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), runs := [⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 1418, 5, 149⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 2166, 8, 99⟩], residual := [((7669045227694257730776453443358451663824146133794592849966096451796486309872 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2952 (rho : Nat -> F) : Prop :=
    (relationLc1502 rho) * (relationLc1503 rho) = ((1 : F) * rho 2952)

def relationLc1504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), runs := [⟨(211065313773697690845714574818954595516654490806675894571851535063540139993 : F), 1417, 5, 149⟩, ⟨(211065313773697690845714574818954595516654490806675894571851535063540139993 : F), 2165, 8, 99⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 1418, 5, 149⟩, ⟨(6040287128678729511763090676601340065858477829358795237452282720529066134675 : F), 2166, 8, 99⟩], residual := [((1687634193423485956652330228636514267822633673284391909916374707104706944713 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2953 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1504 rho) = ((1 : F) * rho 2953)

def relationRow2954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2954) * ((1 : F) + (1 : F) * rho 2952) = ((1 : F) * rho 2953)

def relationLc1505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), runs := [⟨(2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), 1418, 5, 149⟩, ⟨(2404174620749640912485734262180206465517421505795268590482950735388343104366 : F), 2166, 8, 99⟩, ⟨(8233396435654672733403110363962591935859244844347387933363381920853869099048 : F), 1417, 5, 149⟩, ⟨(8233396435654672733403110363962591935859244844347387933363381920853869099048 : F), 2165, 8, 99⟩], residual := [((6756827556004884467596494710145032263553265661869671918018858748812702294328 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2955 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1505 rho) = ((1 : F) * rho 2955)

def relationRow2956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2956) * ((1 : F) + (-1 : F) * rho 2952) = ((6251352442452427202608805251420294661375132320165471132024134255592606274668 : F) * rho 2951 + (1 : F) * rho 2955)

def relationLc1506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 99⟩], residual := [((1 : F), 2954), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1411) * (relationLc1506 rho) = ((1 : F) * rho 2957)

def relationLc1507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 99⟩], residual := [((1 : F), 2956), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1411) * (relationLc1507 rho) = ((1 : F) * rho 2958)

def relationLc1508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 100⟩, ⟨(1 : F), 2166, 8, 100⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2959 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1508 rho) = ((1 : F) * rho 2959)

def relationLc1509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(599777004534220749120502838015143623707978608149568606760569517361110658934 : F), 1417, 5, 149⟩, ⟨(599777004534220749120502838015143623707978608149568606760569517361110658934 : F), 2165, 8, 100⟩], residual := [((5525282322157049009926327647925022509614376580291064601095875967132583903437 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), runs := [⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 1418, 5, 149⟩, ⟨(3423249253909403246139040301463916746144409278219181153258610840910387912442 : F), 2166, 8, 100⟩], residual := [((4492593394048688590737191085005912262920230107213966480357334310224790308748 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2960 (rho : Nat -> F) : Prop :=
    (relationLc1509 rho) * (relationLc1510 rho) = ((1 : F) * rho 2960)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
