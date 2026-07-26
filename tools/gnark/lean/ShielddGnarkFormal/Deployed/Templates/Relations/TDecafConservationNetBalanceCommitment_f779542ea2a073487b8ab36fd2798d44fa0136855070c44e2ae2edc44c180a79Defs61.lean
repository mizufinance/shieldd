import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs60

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 852) * (relationLc1201 rho) = ((1 : F) * rho 2097)

def relationLc1202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 56⟩], residual := [((1 : F), 2096), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 852) * (relationLc1202 rho) = ((1 : F) * rho 2098)

def relationLc1203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 57⟩, ⟨(1 : F), 1650, 8, 57⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2099 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1203 rho) = ((1 : F) * rho 2099)

def relationLc1204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6017107302401917076093038803658832793635333333005021748974701642561348147031 : F), 901, 5, 149⟩, ⟨(6017107302401917076093038803658832793635333333005021748974701642561348147031 : F), 1649, 8, 57⟩], residual := [((4085920262368901219011562727894792756133938710904331559532217036701010729637 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), runs := [⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 902, 5, 149⟩, ⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 1650, 8, 57⟩], residual := [((1500795255898127698254510651498941818485024357039572942008496360563777053149 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2100 (rho : Nat -> F) : Prop :=
    (relationLc1204 rho) * (relationLc1205 rho) = ((1 : F) * rho 2100)

def relationLc1206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), runs := [⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 902, 5, 149⟩, ⟨(2860763221263677585845844196821920280202197559885233758323698242911676232062 : F), 1650, 8, 57⟩, ⟨(7462524169654658252034494141149158068532244508063290757533304467224801922260 : F), 901, 5, 149⟩, ⟨(7462524169654658252034494141149158068532244508063290757533304467224801922260 : F), 1649, 8, 57⟩], residual := [((5194678040160705067222305854033969213620309679929153428027025196149211881187 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1206 rho) = ((1 : F) * rho 2101)

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2102) * ((1 : F) + (1 : F) * rho 2100) = ((1 : F) * rho 2101)

def relationLc1207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), runs := [⟨(5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), 902, 5, 149⟩, ⟨(5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), 1650, 8, 57⟩, ⟨(981937579773712172214330797632388462843654827090773070401928988692607316781 : F), 901, 5, 149⟩, ⟨(981937579773712172214330797632388462843654827090773070401928988692607316781 : F), 1649, 8, 57⟩], residual := [((3249783709267665357026519084747577317755589655224910399908208259768197357854 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1207 rho) = ((1 : F) * rho 2103)

def relationRow2104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2104) * ((1 : F) + (-1 : F) * rho 2100) = ((1878825641489965413631513399189531817358542732794460687921769254219068915281 : F) * rho 2099 + (1 : F) * rho 2103)

def relationLc1208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 57⟩], residual := [((1 : F), 2102), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 853) * (relationLc1208 rho) = ((1 : F) * rho 2105)

def relationLc1209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 57⟩], residual := [((1 : F), 2104), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 853) * (relationLc1209 rho) = ((1 : F) * rho 2106)

def relationLc1210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 58⟩, ⟨(1 : F), 1650, 8, 58⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2107 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1210 rho) = ((1 : F) * rho 2107)

def relationLc1211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(242475782950553990148664671100116111350985007453089951790268089730792064113 : F), 901, 5, 149⟩, ⟨(242475782950553990148664671100116111350985007453089951790268089730792064113 : F), 1649, 8, 58⟩], residual := [((4068257700137201981391246638348631810753138665802486623152103742596882974052 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), runs := [⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 902, 5, 149⟩, ⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 1650, 8, 58⟩], residual := [((2692737952833932520316010234032258108169355595324402587875864690555969585701 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2108 (rho : Nat -> F) : Prop :=
    (relationLc1211 rho) * (relationLc1212 rho) = ((1 : F) * rho 2108)

def relationLc1213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), runs := [⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 902, 5, 149⟩, ⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 1650, 8, 58⟩, ⟨(8153835616969714359988073820290258638905941524545467486275692240649061086510 : F), 901, 5, 149⟩, ⟨(8153835616969714359988073820290258638905941524545467486275692240649061086510 : F), 1649, 8, 58⟩], residual := [((3703171236264511442902973838646123361276754734237484192810578818768078694694 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2109 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1213 rho) = ((1 : F) * rho 2109)

def relationRow2110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2110) * ((1 : F) + (1 : F) * rho 2108) = ((1 : F) * rho 2109)

def relationLc1214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (979348654399919238376025066245532923653268697934253449793316038604839436367 : F), runs := [⟨(290626132458656064260751118491287892469957810608596341659541215268348152531 : F), 901, 5, 149⟩, ⟨(290626132458656064260751118491287892469957810608596341659541215268348152531 : F), 1649, 8, 58⟩, ⟨(979348654399919238376025066245532923653268697934253449793316038604839436367 : F), 902, 5, 149⟩, ⟨(979348654399919238376025066245532923653268697934253449793316038604839436367 : F), 1650, 8, 58⟩], residual := [((4741290513163858981345851100135423170099144600916579635124654637149330544347 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2111 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1214 rho) = ((1 : F) * rho 2111)

def relationRow2112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2112) * ((1 : F) + (-1 : F) * rho 2108) = ((7174486962569795121612048754044725715252672826611214036482376202044221650143 : F) * rho 2107 + (1 : F) * rho 2111)

def relationLc1215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 58⟩], residual := [((1 : F), 2110), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 854) * (relationLc1215 rho) = ((1 : F) * rho 2113)

def relationLc1216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 58⟩], residual := [((1 : F), 2112), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 854) * (relationLc1216 rho) = ((1 : F) * rho 2114)

def relationLc1217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 59⟩, ⟨(1 : F), 1650, 8, 59⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2115 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1217 rho) = ((1 : F) * rho 2115)

def relationLc1218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5626874210683066344703416103870189711441465301563842461754122511592407790138 : F), 901, 5, 149⟩, ⟨(5626874210683066344703416103870189711441465301563842461754122511592407790138 : F), 1649, 8, 59⟩], residual := [((1808281244680904552489492991420048991943923359052202397801231545156362684153 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), runs := [⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 902, 5, 149⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 1650, 8, 59⟩], residual := [((2394394569641527098060815883352803663392756907676881861840041555934705680524 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2116 (rho : Nat -> F) : Prop :=
    (relationLc1218 rho) * (relationLc1219 rho) = ((1 : F) * rho 2116)

def relationLc1220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), runs := [⟨(4829265910451333594512553487381529642303084944426558117612016650407467118045 : F), 901, 5, 149⟩, ⟨(4829265910451333594512553487381529642303084944426558117612016650407467118045 : F), 1649, 8, 59⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 902, 5, 149⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 1650, 8, 59⟩], residual := [((2258025703545099012580609683747085116207892576639643554931393688409119222388 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2117 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1220 rho) = ((1 : F) * rho 2117)

def relationRow2118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2118) * ((1 : F) + (1 : F) * rho 2116) = ((1 : F) * rho 2117)

def relationLc1221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (414361405024579578251881115155764767417908286371741218450333081729881101360 : F), runs := [⟨(3615195838977036829736271451400016889072814390727505710323216805509942120996 : F), 901, 5, 149⟩, ⟨(3615195838977036829736271451400016889072814390727505710323216805509942120996 : F), 1649, 8, 59⟩, ⟨(414361405024579578251881115155764767417908286371741218450333081729881101360 : F), 902, 5, 149⟩, ⟨(414361405024579578251881115155764767417908286371741218450333081729881101360 : F), 1650, 8, 59⟩], residual := [((6186436045883271411668215255034461415168006758514420273003839767508290016653 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2119 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1221 rho) = ((1 : F) * rho 2119)

def relationRow2120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2120) * ((1 : F) + (-1 : F) * rho 2116) = ((4414904505426754016260672372225764874885176658054816899161683568677586016685 : F) * rho 2115 + (1 : F) * rho 2119)

def relationLc1222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 59⟩], residual := [((1 : F), 2118), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 855) * (relationLc1222 rho) = ((1 : F) * rho 2121)

def relationLc1223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 59⟩], residual := [((1 : F), 2120), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 855) * (relationLc1223 rho) = ((1 : F) * rho 2122)

def relationLc1224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 60⟩, ⟨(1 : F), 1650, 8, 60⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2123 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1224 rho) = ((1 : F) * rho 2123)

def relationLc1225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5473384982003616673406746261125479475040486441609635798000763090753894835591 : F), 901, 5, 149⟩, ⟨(5473384982003616673406746261125479475040486441609635798000763090753894835591 : F), 1649, 8, 60⟩], residual := [((5921283769484743309292289095720219236617528250280403079561652748954462198901 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), runs := [⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 902, 5, 149⟩, ⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 1650, 8, 60⟩], residual := [((2978822135553467932400026135049372739244910881062198026797986470482102973233 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2124 (rho : Nat -> F) : Prop :=
    (relationLc1225 rho) * (relationLc1226 rho) = ((1 : F) * rho 2124)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
