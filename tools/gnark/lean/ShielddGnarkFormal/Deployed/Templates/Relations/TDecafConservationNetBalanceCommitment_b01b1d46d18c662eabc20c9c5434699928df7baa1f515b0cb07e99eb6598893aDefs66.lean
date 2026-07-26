import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs65

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1366) * (relationLc1191 rho) = ((1 : F) * rho 2597)

def relationLc1192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 54⟩], residual := [((1 : F), 2596), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1366) * (relationLc1192 rho) = ((1 : F) * rho 2598)

def relationLc1193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 55⟩, ⟨(1 : F), 2166, 8, 55⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1193 rho) = ((1 : F) * rho 2599)

def relationLc1194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5706165928280148115562111853795796920078965241749530779523010486069437363390 : F), 1417, 5, 149⟩, ⟨(5706165928280148115562111853795796920078965241749530779523010486069437363390 : F), 2165, 8, 55⟩], residual := [((616102913848551635978132297652874516637591556857344240933436591412989788009 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4349899932341040547106419265074882586804667426292901073528921763015154987837 : F), runs := [⟨(4349899932341040547106419265074882586804667426292901073528921763015154987837 : F), 1418, 5, 149⟩, ⟨(4349899932341040547106419265074882586804667426292901073528921763015154987837 : F), 2166, 8, 55⟩], residual := [((977210916583284324617020890674464014886204391561145823617587034849873239524 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2600 (rho : Nat -> F) : Prop :=
    (relationLc1194 rho) * (relationLc1195 rho) = ((1 : F) * rho 2600)

def relationLc1196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4349899932341040547106419265074882586804667426292901073528921763015154987837 : F), runs := [⟨(1550459442274610183101427053273344116286768353828898011074360259869021567624 : F), 1417, 5, 149⟩, ⟨(1550459442274610183101427053273344116286768353828898011074360259869021567624 : F), 2165, 8, 55⟩, ⟨(4349899932341040547106419265074882586804667426292901073528921763015154987837 : F), 1418, 5, 149⟩, ⟨(4349899932341040547106419265074882586804667426292901073528921763015154987837 : F), 2166, 8, 55⟩], residual := [((4739826480186208900146612582133455906891698630778036673217639225600037365819 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1196 rho) = ((1 : F) * rho 2601)

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2602) * ((1 : F) + (1 : F) * rho 2600) = ((1 : F) * rho 2601)

def relationLc1197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4094561817087329877142405673706663944571231908861162754406311692902254251204 : F), runs := [⟨(4094561817087329877142405673706663944571231908861162754406311692902254251204 : F), 1418, 5, 149⟩, ⟨(4094561817087329877142405673706663944571231908861162754406311692902254251204 : F), 2166, 8, 55⟩, ⟨(6894002307153760241147397885508202415089130981325165816860873196048387671417 : F), 1417, 5, 149⟩, ⟨(6894002307153760241147397885508202415089130981325165816860873196048387671417 : F), 2165, 8, 55⟩], residual := [((3704635269242161524102212356648090624484200704376027154717594230317371873222 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1197 rho) = ((1 : F) * rho 2603)

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2604) * ((1 : F) + (-1 : F) * rho 2600) = ((5900359374615650730207846318348226703091435780121799084603282022884176555461 : F) * rho 2599 + (1 : F) * rho 2603)

def relationLc1198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 55⟩], residual := [((1 : F), 2602), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1367) * (relationLc1198 rho) = ((1 : F) * rho 2605)

def relationLc1199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 55⟩], residual := [((1 : F), 2604), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1367) * (relationLc1199 rho) = ((1 : F) * rho 2606)

def relationLc1200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 56⟩, ⟨(1 : F), 2166, 8, 56⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1200 rho) = ((1 : F) * rho 2607)

def relationLc1201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2734414322774210183680660656178512258450371263845909099464238811943764734975 : F), 1417, 5, 149⟩, ⟨(2734414322774210183680660656178512258450371263845909099464238811943764734975 : F), 2165, 8, 56⟩], residual := [((3768736213248914186182620569362351181411192762325831657998054681394022199389 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5814734497876100950874880244756732844213278078093913461160889537202459134137 : F), runs := [⟨(5814734497876100950874880244756732844213278078093913461160889537202459134137 : F), 1418, 5, 149⟩, ⟨(5814734497876100950874880244756732844213278078093913461160889537202459134137 : F), 2166, 8, 56⟩], residual := [((7107069545256102977963537795205312568728291822755782065779608297426492288692 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2608 (rho : Nat -> F) : Prop :=
    (relationLc1201 rho) * (relationLc1202 rho) = ((1 : F) * rho 2608)

def relationLc1203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5814734497876100950874880244756732844213278078093913461160889537202459134137 : F), runs := [⟨(1518727952420516170324658259653941833431169715409633421935880835940118166678 : F), 1417, 5, 149⟩, ⟨(1518727952420516170324658259653941833431169715409633421935880835940118166678 : F), 2165, 8, 56⟩, ⟨(5814734497876100950874880244756732844213278078093913461160889537202459134137 : F), 1418, 5, 149⟩, ⟨(5814734497876100950874880244756732844213278078093913461160889537202459134137 : F), 2166, 8, 56⟩], residual := [((2283708988056460992505977641690719069233624143274289733651764904433425647055 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1203 rho) = ((1 : F) * rho 2609)

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2610) * ((1 : F) + (1 : F) * rho 2608) = ((1 : F) * rho 2609)

def relationLc1204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629727251552269473373944694024813687162621257060150366774343918714950104904 : F), runs := [⟨(2629727251552269473373944694024813687162621257060150366774343918714950104904 : F), 1418, 5, 149⟩, ⟨(2629727251552269473373944694024813687162621257060150366774343918714950104904 : F), 2166, 8, 56⟩, ⟨(6925733797007854253924166679127604697944729619744430405999352619977291072363 : F), 1417, 5, 149⟩, ⟨(6925733797007854253924166679127604697944729619744430405999352619977291072363 : F), 2165, 8, 56⟩], residual := [((6160752761371909431742847297090827462142275191879774094283468551483983591986 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1204 rho) = ((1 : F) * rho 2611)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2612) * ((1 : F) + (-1 : F) * rho 2608) = ((7333462450296617121199538504410674677644447793503546883096770373142577300815 : F) * rho 2607 + (1 : F) * rho 2611)

def relationLc1205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 56⟩], residual := [((1 : F), 2610), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1368) * (relationLc1205 rho) = ((1 : F) * rho 2613)

def relationLc1206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 56⟩], residual := [((1 : F), 2612), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1368) * (relationLc1206 rho) = ((1 : F) * rho 2614)

def relationLc1207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 57⟩, ⟨(1 : F), 2166, 8, 57⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1207 rho) = ((1 : F) * rho 2615)

def relationLc1208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6017107302401917076093038803658832793635333333005021748974701642561348147031 : F), 1417, 5, 149⟩, ⟨(6017107302401917076093038803658832793635333333005021748974701642561348147031 : F), 2165, 8, 57⟩], residual := [((4085920262368901219011562727894792756133938710904331559532217036701010729637 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), runs := [⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 1418, 5, 149⟩, ⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 2166, 8, 57⟩], residual := [((1500795255898127698254510651498941818485024357039572942008496360563777053149 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2616 (rho : Nat -> F) : Prop :=
    (relationLc1208 rho) * (relationLc1209 rho) = ((1 : F) * rho 2616)

def relationLc1210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), runs := [⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 1418, 5, 149⟩, ⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 2166, 8, 57⟩, ⟨(7462524169654658252034494141149158068532244508063290757533304467224801922260 : F), 1417, 5, 149⟩, ⟨(7462524169654658252034494141149158068532244508063290757533304467224801922260 : F), 2165, 8, 57⟩], residual := [((5194678040160705067222305854033969213620309679929153428027025196149211881187 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1210 rho) = ((1 : F) * rho 2617)

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2618) * ((1 : F) + (1 : F) * rho 2616) = ((1 : F) * rho 2617)

def relationLc1211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), runs := [⟨(5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), 1418, 5, 149⟩, ⟨(5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), 2166, 8, 57⟩, ⟨(981937579773712172214330797632388462843654827090773070401928988692607316781 : F), 1417, 5, 149⟩, ⟨(981937579773712172214330797632388462843654827090773070401928988692607316781 : F), 2165, 8, 57⟩], residual := [((3249783709267665357026519084747577317755589655224910399908208259768197357854 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1211 rho) = ((1 : F) * rho 2619)

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2620) * ((1 : F) + (-1 : F) * rho 2616) = ((1878825641489965413631513399189531817358542732794460687921769254219068915281 : F) * rho 2615 + (1 : F) * rho 2619)

def relationLc1212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 57⟩], residual := [((1 : F), 2618), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1369) * (relationLc1212 rho) = ((1 : F) * rho 2621)

def relationLc1213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 57⟩], residual := [((1 : F), 2620), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1369) * (relationLc1213 rho) = ((1 : F) * rho 2622)

def relationLc1214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 58⟩, ⟨(1 : F), 2166, 8, 58⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1214 rho) = ((1 : F) * rho 2623)

def relationLc1215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(242475782950553990148664671100116111350985007453089951790268089730792064113 : F), 1417, 5, 149⟩, ⟨(242475782950553990148664671100116111350985007453089951790268089730792064113 : F), 2165, 8, 58⟩], residual := [((4068257700137201981391246638348631810753138665802486623152103742596882974052 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), runs := [⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 1418, 5, 149⟩, ⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 2166, 8, 58⟩], residual := [((2692737952833932520316010234032258108169355595324402587875864690555969585701 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2624 (rho : Nat -> F) : Prop :=
    (relationLc1215 rho) * (relationLc1216 rho) = ((1 : F) * rho 2624)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
