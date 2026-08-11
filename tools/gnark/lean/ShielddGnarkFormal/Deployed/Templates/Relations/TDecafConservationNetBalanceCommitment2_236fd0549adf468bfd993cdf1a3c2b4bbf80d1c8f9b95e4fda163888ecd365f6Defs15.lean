import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs14

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 21⟩], residual := [((1 : F), 875), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 539) * (relationLc39 rho) = ((1 : F) * rho 877)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 21⟩], residual := [((1 : F), 876), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 539) * (relationLc40 rho) = ((1 : F) * rho 878)

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(994817038831961136268678878221296264248924711603146303238002847613107596871 : F), 772, 5, 22⟩], residual := [((4333806451640208563133206664169697277880755031096301968993370846588442832435 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 773, 5, 22⟩], residual := [((7071464963871787122399507600667271879794146146561835643777870962618630236915 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow879 (rho : Nat -> F) : Prop :=
    (relationLc41 rho) * (relationLc42 rho) = ((1 : F) * rho 879)

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 772, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 773, 5, 22⟩], residual := [((7942223457921394342030264887203263494668619979155020070277987141247197835781 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 880) * ((1 : F) + (1 : F) * rho 879) = (relationLc43 rho)

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 773, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 772, 5, 22⟩], residual := [((5804948904970779234941133716338260259407582082049612629588083752293826463974 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 881) * ((1 : F) + (-1 : F) * rho 879) = (relationLc44 rho)

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 22⟩], residual := [((1 : F), 880), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 540) * (relationLc45 rho) = ((1 : F) * rho 882)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 22⟩], residual := [((1 : F), 881), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 540) * (relationLc46 rho) = ((1 : F) * rho 883)

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4677106239863583102131041193072361225769930732564476713504058014384475151580 : F), 772, 5, 23⟩], residual := [((474071249166718343299739642372708598447420281867608460018052041379512488143 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 773, 5, 23⟩], residual := [((6712990382380332376237152323305318414633590549427718934851741915714756969433 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow884 (rho : Nat -> F) : Prop :=
    (relationLc47 rho) * (relationLc48 rho) = ((1 : F) * rho 884)

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 773, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 772, 5, 23⟩], residual := [((2880854338945334318209400171227487369973573810528561735368396329477951754525 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 885) * ((1 : F) + (1 : F) * rho 884) = (relationLc49 rho)

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 772, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 773, 5, 23⟩], residual := [((114257104164877408089912102852953841102673709886080965360633577678164539600 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 886) * ((1 : F) + (-1 : F) * rho 884) = (relationLc50 rho)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 23⟩], residual := [((1 : F), 885), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 541) * (relationLc51 rho) = ((1 : F) * rho 887)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 23⟩], residual := [((1 : F), 886), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 541) * (relationLc52 rho) = ((1 : F) * rho 888)

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2154316133305581021006333870337296644771826655417397673778909601455915646549 : F), 772, 5, 24⟩], residual := [((8131522897753270035956148949838977191540978705237768835981964492320739779601 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 773, 5, 24⟩], residual := [((6404315503036588629128563639643810150712554983175632829294524389990238220356 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow889 (rho : Nat -> F) : Prop :=
    (relationLc53 rho) * (relationLc54 rho) = ((1 : F) * rho 889)

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 773, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 772, 5, 24⟩], residual := [((4925522651563803771526471263409324654374360455229119734302901825559948198207 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 890) * ((1 : F) + (1 : F) * rho 889) = (relationLc55 rho)

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (900784839274823190211561722660706812230324863480644141101927865742092582131 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 772, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 773, 5, 24⟩], residual := [((127276024653087097835038290272218471469742072248135878174149991432204578037 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 891) * ((1 : F) + (-1 : F) * rho 889) = (relationLc56 rho)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 24⟩], residual := [((1 : F), 890), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 542) * (relationLc57 rho) = ((1 : F) * rho 892)

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 24⟩], residual := [((1 : F), 891), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 542) * (relationLc58 rho) = ((1 : F) * rho 893)

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(754243513942621124145973586124625440555887990028881694520431862946471470540 : F), 772, 5, 25⟩], residual := [((3485473096370588706944581138970594080683700636283193695147842995324192075075 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 773, 5, 25⟩], residual := [((3991124370731619278006442799143359150252110510627329600623329775988526734775 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow894 (rho : Nat -> F) : Prop :=
    (relationLc59 rho) * (relationLc60 rho) = ((1 : F) * rho 894)

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 772, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 773, 5, 25⟩], residual := [((1006947053521050253050865025730674244118784860409435865257662285778507246122 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 895) * ((1 : F) + (1 : F) * rho 894) = (relationLc61 rho)

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 773, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 772, 5, 25⟩], residual := [((3703807264522377816473547097921380274932554393183130010573570542291134711296 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 896) * ((1 : F) + (-1 : F) * rho 894) = (relationLc62 rho)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 25⟩], residual := [((1 : F), 895), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 543) * (relationLc63 rho) = ((1 : F) * rho 897)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 25⟩], residual := [((1 : F), 896), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 543) * (relationLc64 rho) = ((1 : F) * rho 898)

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(719199090072954480055893810539406062836120489276559302252499371270725061360 : F), 772, 5, 26⟩], residual := [((7548617127772588471928457116826427495899535882168468270699150020686830262865 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 773, 5, 26⟩], residual := [((6840655749588260620804619884879035498394996860111598358108595819824673565944 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow899 (rho : Nat -> F) : Prop :=
    (relationLc65 rho) * (relationLc66 rho) = ((1 : F) * rho 899)

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 772, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 773, 5, 26⟩], residual := [((5610447535629260697394555885909874428272232189167946031114640571880651505648 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 900) * ((1 : F) + (1 : F) * rho 899) = (relationLc67 rho)

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 773, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 772, 5, 26⟩], residual := [((1259081693778121007527112938411776636515947720334563344737821908484750896742 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 901) * ((1 : F) + (-1 : F) * rho 899) = (relationLc68 rho)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 26⟩], residual := [((1 : F), 900), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 544) * (relationLc69 rho) = ((1 : F) * rho 902)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 26⟩], residual := [((1 : F), 901), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 544) * (relationLc70 rho) = ((1 : F) * rho 903)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
