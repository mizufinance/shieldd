import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 20⟩], residual := [((1 : F), 1000), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 667) * (relationLc35 rho) = ((1 : F) * rho 1002)

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3728101596810754748684349750569880747398501745992542539845809088912724430139 : F), 901, 5, 21⟩], residual := [((8040080451790361184373803667588748447205221309356387487312699224282947065497 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 902, 5, 21⟩], residual := [((2557686683957201271713968558873229045637760122097754578207391675438866753541 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1003 (rho : Nat -> F) : Prop :=
    (relationLc36 rho) * (relationLc37 rho) = ((1 : F) * rho 1003)

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 901, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 902, 5, 21⟩], residual := [((913943588968283754766539202608832435729385581516361924395230203637783968129 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1004) * ((1 : F) + (1 : F) * rho 1003) = (relationLc38 rho)

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4029315904084450570318826444671111313728699464133269237928183563333377580 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 902, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 901, 5, 21⟩], residual := [((8000864483878691791898477946946467170010238195716502441342613371604929246839 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1005) * ((1 : F) + (-1 : F) * rho 1003) = (relationLc39 rho)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 21⟩], residual := [((1 : F), 1004), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 668) * (relationLc40 rho) = ((1 : F) * rho 1006)

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 21⟩], residual := [((1 : F), 1005), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 668) * (relationLc41 rho) = ((1 : F) * rho 1007)

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(994817038831961136268678878221296264248924711603146303238002847613107596871 : F), 901, 5, 22⟩], residual := [((4333806451640208563133206664169697277880755031096301968993370846588442832435 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 902, 5, 22⟩], residual := [((7071464963871787122399507600667271879794146146561835643777870962618630236915 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1008 (rho : Nat -> F) : Prop :=
    (relationLc42 rho) * (relationLc43 rho) = ((1 : F) * rho 1008)

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 901, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 902, 5, 22⟩], residual := [((7942223457921394342030264887203263494668619979155020070277987141247197835781 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1009) * ((1 : F) + (1 : F) * rho 1008) = (relationLc44 rho)

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 902, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 901, 5, 22⟩], residual := [((5804948904970779234941133716338260259407582082049612629588083752293826463974 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1010) * ((1 : F) + (-1 : F) * rho 1008) = (relationLc45 rho)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 22⟩], residual := [((1 : F), 1009), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 669) * (relationLc46 rho) = ((1 : F) * rho 1011)

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 22⟩], residual := [((1 : F), 1010), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 669) * (relationLc47 rho) = ((1 : F) * rho 1012)

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4677106239863583102131041193072361225769930732564476713504058014384475151580 : F), 901, 5, 23⟩], residual := [((474071249166718343299739642372708598447420281867608460018052041379512488143 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 902, 5, 23⟩], residual := [((6712990382380332376237152323305318414633590549427718934851741915714756969433 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    (relationLc48 rho) * (relationLc49 rho) = ((1 : F) * rho 1013)

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 902, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 901, 5, 23⟩], residual := [((2880854338945334318209400171227487369973573810528561735368396329477951754525 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1014) * ((1 : F) + (1 : F) * rho 1013) = (relationLc50 rho)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 901, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 902, 5, 23⟩], residual := [((114257104164877408089912102852953841102673709886080965360633577678164539600 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1015) * ((1 : F) + (-1 : F) * rho 1013) = (relationLc51 rho)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 23⟩], residual := [((1 : F), 1014), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 670) * (relationLc52 rho) = ((1 : F) * rho 1016)

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 23⟩], residual := [((1 : F), 1015), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 670) * (relationLc53 rho) = ((1 : F) * rho 1017)

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2154316133305581021006333870337296644771826655417397673778909601455915646549 : F), 901, 5, 24⟩], residual := [((8131522897753270035956148949838977191540978705237768835981964492320739779601 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 902, 5, 24⟩], residual := [((6404315503036588629128563639643810150712554983175632829294524389990238220356 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1018 (rho : Nat -> F) : Prop :=
    (relationLc54 rho) * (relationLc55 rho) = ((1 : F) * rho 1018)

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 902, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 901, 5, 24⟩], residual := [((4925522651563803771526471263409324654374360455229119734302901825559948198207 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1019) * ((1 : F) + (1 : F) * rho 1018) = (relationLc56 rho)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (900784839274823190211561722660706812230324863480644141101927865742092582131 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 901, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 902, 5, 24⟩], residual := [((127276024653087097835038290272218471469742072248135878174149991432204578037 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1020) * ((1 : F) + (-1 : F) * rho 1018) = (relationLc57 rho)

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 24⟩], residual := [((1 : F), 1019), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 671) * (relationLc58 rho) = ((1 : F) * rho 1021)

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 24⟩], residual := [((1 : F), 1020), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 671) * (relationLc59 rho) = ((1 : F) * rho 1022)

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(754243513942621124145973586124625440555887990028881694520431862946471470540 : F), 901, 5, 25⟩], residual := [((3485473096370588706944581138970594080683700636283193695147842995324192075075 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 902, 5, 25⟩], residual := [((3991124370731619278006442799143359150252110510627329600623329775988526734775 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1023 (rho : Nat -> F) : Prop :=
    (relationLc60 rho) * (relationLc61 rho) = ((1 : F) * rho 1023)

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 901, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 902, 5, 25⟩], residual := [((1006947053521050253050865025730674244118784860409435865257662285778507246122 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1024) * ((1 : F) + (1 : F) * rho 1023) = (relationLc62 rho)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 902, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 901, 5, 25⟩], residual := [((3703807264522377816473547097921380274932554393183130010573570542291134711296 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1025) * ((1 : F) + (-1 : F) * rho 1023) = (relationLc63 rho)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 25⟩], residual := [((1 : F), 1024), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 672) * (relationLc64 rho) = ((1 : F) * rho 1026)

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 25⟩], residual := [((1 : F), 1025), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 672) * (relationLc65 rho) = ((1 : F) * rho 1027)

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(719199090072954480055893810539406062836120489276559302252499371270725061360 : F), 901, 5, 26⟩], residual := [((7548617127772588471928457116826427495899535882168468270699150020686830262865 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
