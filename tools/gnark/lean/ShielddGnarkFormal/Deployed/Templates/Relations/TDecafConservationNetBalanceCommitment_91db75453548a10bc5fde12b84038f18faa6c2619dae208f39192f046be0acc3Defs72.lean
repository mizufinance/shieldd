import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs71

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1387) * (relationLc1338 rho) = ((1 : F) * rho 2765)

def relationLc1339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 75⟩], residual := [((1 : F), 2764), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1387) * (relationLc1339 rho) = ((1 : F) * rho 2766)

def relationLc1340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 76⟩, ⟨(1 : F), 2166, 8, 76⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2767 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1340 rho) = ((1 : F) * rho 2767)

def relationLc1341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1370899003643114756781611744109386553094662820774450405259377103704015469292 : F), 1417, 5, 149⟩, ⟨(1370899003643114756781611744109386553094662820774450405259377103704015469292 : F), 2165, 8, 76⟩], residual := [((8141275100190006914658353657066157249113390796072961797440698404213409452259 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6644893773590675935356019136105454186295776267883026808891637538251579701530 : F), runs := [⟨(6644893773590675935356019136105454186295776267883026808891637538251579701530 : F), 1418, 5, 149⟩, ⟨(6644893773590675935356019136105454186295776267883026808891637538251579701530 : F), 2166, 8, 76⟩], residual := [((6555184613843016807734723121542783358669618418595386565712857918117277017435 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2768 (rho : Nat -> F) : Prop :=
    (relationLc1341 rho) * (relationLc1342 rho) = ((1 : F) * rho 2768)

def relationLc1343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6644893773590675935356019136105454186295776267883026808891637538251579701530 : F), runs := [⟨(1358947139763598523979381175766945051572916828767179566627534868149475308058 : F), 1417, 5, 149⟩, ⟨(1358947139763598523979381175766945051572916828767179566627534868149475308058 : F), 2165, 8, 76⟩, ⟨(6644893773590675935356019136105454186295776267883026808891637538251579701530 : F), 1418, 5, 149⟩, ⟨(6644893773590675935356019136105454186295776267883026808891637538251579701530 : F), 2166, 8, 76⟩], residual := [((5775208442131744476759876173776557979147560019705262464413809699231920785234 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1343 rho) = ((1 : F) * rho 2769)

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2770) * ((1 : F) + (1 : F) * rho 2768) = ((1 : F) * rho 2769)

def relationLc1344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799567975837694488892805802676092345080123067271037019043595917665829537511 : F), runs := [⟨(1799567975837694488892805802676092345080123067271037019043595917665829537511 : F), 1418, 5, 149⟩, ⟨(1799567975837694488892805802676092345080123067271037019043595917665829537511 : F), 2166, 8, 76⟩, ⟨(7085514609664771900269443763014601479802982506386884261307698587767933930983 : F), 1417, 5, 149⟩, ⟨(7085514609664771900269443763014601479802982506386884261307698587767933930983 : F), 2165, 8, 76⟩], residual := [((2669253307296625947488948765004988552228339315448801363521423756685488453807 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1344 rho) = ((1 : F) * rho 2771)

def relationRow2772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2772) * ((1 : F) + (-1 : F) * rho 2768) = ((8003840913354274459335400311872399237868693096650206375519172406401055009588 : F) * rho 2767 + (1 : F) * rho 2771)

def relationLc1345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 76⟩], residual := [((1 : F), 2770), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1388) * (relationLc1345 rho) = ((1 : F) * rho 2773)

def relationLc1346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 76⟩], residual := [((1 : F), 2772), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1388) * (relationLc1346 rho) = ((1 : F) * rho 2774)

def relationLc1347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 77⟩, ⟨(1 : F), 2166, 8, 77⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1347 rho) = ((1 : F) * rho 2775)

def relationLc1348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2456928273209305601077878727342202695161789831744454394805814375542024714974 : F), 1417, 5, 149⟩, ⟨(2456928273209305601077878727342202695161789831744454394805814375542024714974 : F), 2165, 8, 77⟩], residual := [((225960549042405015589554413610048305587383928935673200746613718328758695144 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5334004567915182446805514930710721924036148541606086840559039522898988352764 : F), runs := [⟨(5334004567915182446805514930710721924036148541606086840559039522898988352764 : F), 1418, 5, 149⟩, ⟨(5334004567915182446805514930710721924036148541606086840559039522898988352764 : F), 2166, 8, 77⟩], residual := [((2377565731515325974346402149423536618830307292694298078726633428379148686201 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2776 (rho : Nat -> F) : Prop :=
    (relationLc1348 rho) * (relationLc1349 rho) = ((1 : F) * rho 2776)

def relationLc1350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5334004567915182446805514930710721924036148541606086840559039522898988352764 : F), runs := [⟨(1991033993335388628820338045395499282699371769765454452129987432965487389246 : F), 1417, 5, 149⟩, ⟨(1991033993335388628820338045395499282699371769765454452129987432965487389246 : F), 2165, 8, 77⟩, ⟨(5334004567915182446805514930710721924036148541606086840559039522898988352764 : F), 1418, 5, 149⟩, ⟨(5334004567915182446805514930710721924036148541606086840559039522898988352764 : F), 2166, 8, 77⟩], residual := [((6495049385092628867406352063107359223604318250857446602973354876338325305798 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2777 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1350 rho) = ((1 : F) * rho 2777)

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2778) * ((1 : F) + (1 : F) * rho 2776) = ((1 : F) * rho 2777)

def relationLc1351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3110457181513187977443310008070824607339750793547976987376193933018420886277 : F), runs := [⟨(3110457181513187977443310008070824607339750793547976987376193933018420886277 : F), 1418, 5, 149⟩, ⟨(3110457181513187977443310008070824607339750793547976987376193933018420886277 : F), 2166, 8, 77⟩, ⟨(6453427756092981795428486893386047248676527565388609375805246022951921849795 : F), 1417, 5, 149⟩, ⟨(6453427756092981795428486893386047248676527565388609375805246022951921849795 : F), 2165, 8, 77⟩], residual := [((1949412364335741556842472875674187307771581084296617224961878579579083933243 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1351 rho) = ((1 : F) * rho 2779)

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2780) * ((1 : F) + (-1 : F) * rho 2776) = ((7325038561250571075625852976106221206735520311371541292689026955864475742010 : F) * rho 2775 + (1 : F) * rho 2779)

def relationLc1352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 77⟩], residual := [((1 : F), 2778), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1389) * (relationLc1352 rho) = ((1 : F) * rho 2781)

def relationLc1353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 77⟩], residual := [((1 : F), 2780), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1389) * (relationLc1353 rho) = ((1 : F) * rho 2782)

def relationLc1354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 78⟩, ⟨(1 : F), 2166, 8, 78⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1354 rho) = ((1 : F) * rho 2783)

def relationLc1355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6608514003544936428128296391383222622263995074964421705274547728945744600374 : F), 1417, 5, 149⟩, ⟨(6608514003544936428128296391383222622263995074964421705274547728945744600374 : F), 2165, 8, 78⟩], residual := [((2494493880114136375937464094236986813929821556645170667056295195131356723997 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), runs := [⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 1418, 5, 149⟩, ⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 2166, 8, 78⟩], residual := [((2070901315292787702406687565408067050291591758372033748537273467943474765058 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2784 (rho : Nat -> F) : Prop :=
    (relationLc1355 rho) * (relationLc1356 rho) = ((1 : F) * rho 2784)

def relationLc1357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), runs := [⟨(611552855140327603083208253242555566521751092399387731279429143038378337872 : F), 1417, 5, 149⟩, ⟨(611552855140327603083208253242555566521751092399387731279429143038378337872 : F), 2165, 8, 78⟩, ⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 1418, 5, 149⟩, ⟨(7217793937253800789741884765125212187620636552247818368741390785428178410341 : F), 2166, 8, 78⟩], residual := [((1599329139929239054501320484785808070818371908625462541568058585833275888966 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1357 rho) = ((1 : F) * rho 2785)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2786) * ((1 : F) + (1 : F) * rho 2784) = ((1 : F) * rho 2785)

def relationLc1358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), runs := [⟨(1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), 1418, 5, 149⟩, ⟨(1226667812174569634506940173656334343755262782906245459193842670489230828700 : F), 2166, 8, 78⟩, ⟨(7832908894288042821165616685538990964854148242754676096655804312879030901169 : F), 1417, 5, 149⟩, ⟨(7832908894288042821165616685538990964854148242754676096655804312879030901169 : F), 2165, 8, 78⟩], residual := [((6845132609499131369747504453995738460557527426528601286367174870084133350075 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1358 rho) = ((1 : F) * rho 2787)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2788) * ((1 : F) + (-1 : F) * rho 2784) = ((7829346792394128392825093018367767754142387644647206100020819928466556748213 : F) * rho 2783 + (1 : F) * rho 2787)

def relationLc1359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 78⟩], residual := [((1 : F), 2786), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1390) * (relationLc1359 rho) = ((1 : F) * rho 2789)

def relationLc1360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 78⟩], residual := [((1 : F), 2788), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1390) * (relationLc1360 rho) = ((1 : F) * rho 2790)

def relationLc1361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 79⟩, ⟨(1 : F), 2166, 8, 79⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1361 rho) = ((1 : F) * rho 2791)

def relationLc1362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(684324457497238755171635954129350070085453930296528200955383192234114522070 : F), 1417, 5, 149⟩, ⟨(684324457497238755171635954129350070085453930296528200955383192234114522070 : F), 2165, 8, 79⟩], residual := [((6327656689886066240785449211006082544101674608080640733798216470321894989715 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), runs := [⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 1418, 5, 149⟩, ⟨(1262916560049378410634649340024687678018494763055378467071091317309682769282 : F), 2166, 8, 79⟩], residual := [((3870954308191713971872500864422005677763758200325916030540011082079875431642 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2792 (rho : Nat -> F) : Prop :=
    (relationLc1362 rho) * (relationLc1363 rho) = ((1 : F) * rho 2792)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
