import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs60

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 21⟩], residual := [((1 : F), 4574), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4238) * (relationLc45 rho) = ((1 : F) * rho 4576)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 21⟩], residual := [((1 : F), 4575), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4238) * (relationLc46 rho) = ((1 : F) * rho 4577)

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(994817038831961136268678878221296264248924711603146303238002847613107596871 : F), 4471, 5, 22⟩], residual := [((4333806451640208563133206664169697277880755031096301968993370846588442832435 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 4472, 5, 22⟩], residual := [((7071464963871787122399507600667271879794146146561835643777870962618630236915 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4752 (rho : Nat -> F) : Prop :=
    (relationLc47 rho) * (relationLc48 rho) = ((1 : F) * rho 4578)

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 4471, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 4472, 5, 22⟩], residual := [((7942223457921394342030264887203263494668619979155020070277987141247197835781 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4579) * ((1 : F) + (1 : F) * rho 4578) = (relationLc49 rho)

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 4472, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 4471, 5, 22⟩], residual := [((5804948904970779234941133716338260259407582082049612629588083752293826463974 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4580) * ((1 : F) + (-1 : F) * rho 4578) = (relationLc50 rho)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 22⟩], residual := [((1 : F), 4579), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4239) * (relationLc51 rho) = ((1 : F) * rho 4581)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 22⟩], residual := [((1 : F), 4580), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4239) * (relationLc52 rho) = ((1 : F) * rho 4582)

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4677106239863583102131041193072361225769930732564476713504058014384475151580 : F), 4471, 5, 23⟩], residual := [((474071249166718343299739642372708598447420281867608460018052041379512488143 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 4472, 5, 23⟩], residual := [((6712990382380332376237152323305318414633590549427718934851741915714756969433 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4757 (rho : Nat -> F) : Prop :=
    (relationLc53 rho) * (relationLc54 rho) = ((1 : F) * rho 4583)

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 4472, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 4471, 5, 23⟩], residual := [((2880854338945334318209400171227487369973573810528561735368396329477951754525 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4584) * ((1 : F) + (1 : F) * rho 4583) = (relationLc55 rho)

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 4471, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 4472, 5, 23⟩], residual := [((114257104164877408089912102852953841102673709886080965360633577678164539600 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4585) * ((1 : F) + (-1 : F) * rho 4583) = (relationLc56 rho)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 23⟩], residual := [((1 : F), 4584), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4240) * (relationLc57 rho) = ((1 : F) * rho 4586)

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 23⟩], residual := [((1 : F), 4585), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4240) * (relationLc58 rho) = ((1 : F) * rho 4587)

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2154316133305581021006333870337296644771826655417397673778909601455915646549 : F), 4471, 5, 24⟩], residual := [((8131522897753270035956148949838977191540978705237768835981964492320739779601 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 4472, 5, 24⟩], residual := [((6404315503036588629128563639643810150712554983175632829294524389990238220356 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4762 (rho : Nat -> F) : Prop :=
    (relationLc59 rho) * (relationLc60 rho) = ((1 : F) * rho 4588)

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 4472, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 4471, 5, 24⟩], residual := [((4925522651563803771526471263409324654374360455229119734302901825559948198207 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4589) * ((1 : F) + (1 : F) * rho 4588) = (relationLc61 rho)

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (900784839274823190211561722660706812230324863480644141101927865742092582131 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 4471, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 4472, 5, 24⟩], residual := [((127276024653087097835038290272218471469742072248135878174149991432204578037 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4590) * ((1 : F) + (-1 : F) * rho 4588) = (relationLc62 rho)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 24⟩], residual := [((1 : F), 4589), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * (relationLc63 rho) = ((1 : F) * rho 4591)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 24⟩], residual := [((1 : F), 4590), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4241) * (relationLc64 rho) = ((1 : F) * rho 4592)

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(754243513942621124145973586124625440555887990028881694520431862946471470540 : F), 4471, 5, 25⟩], residual := [((3485473096370588706944581138970594080683700636283193695147842995324192075075 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 4472, 5, 25⟩], residual := [((3991124370731619278006442799143359150252110510627329600623329775988526734775 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4767 (rho : Nat -> F) : Prop :=
    (relationLc65 rho) * (relationLc66 rho) = ((1 : F) * rho 4593)

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 4471, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 4472, 5, 25⟩], residual := [((1006947053521050253050865025730674244118784860409435865257662285778507246122 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4594) * ((1 : F) + (1 : F) * rho 4593) = (relationLc67 rho)

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 4472, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 4471, 5, 25⟩], residual := [((3703807264522377816473547097921380274932554393183130010573570542291134711296 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4595) * ((1 : F) + (-1 : F) * rho 4593) = (relationLc68 rho)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 25⟩], residual := [((1 : F), 4594), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4242) * (relationLc69 rho) = ((1 : F) * rho 4596)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 25⟩], residual := [((1 : F), 4595), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4242) * (relationLc70 rho) = ((1 : F) * rho 4597)

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(719199090072954480055893810539406062836120489276559302252499371270725061360 : F), 4471, 5, 26⟩], residual := [((7548617127772588471928457116826427495899535882168468270699150020686830262865 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 4472, 5, 26⟩], residual := [((6840655749588260620804619884879035498394996860111598358108595819824673565944 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4772 (rho : Nat -> F) : Prop :=
    (relationLc71 rho) * (relationLc72 rho) = ((1 : F) * rho 4598)

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 4471, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 4472, 5, 26⟩], residual := [((5610447535629260697394555885909874428272232189167946031114640571880651505648 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4599) * ((1 : F) + (1 : F) * rho 4598) = (relationLc73 rho)

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 4472, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 4471, 5, 26⟩], residual := [((1259081693778121007527112938411776636515947720334563344737821908484750896742 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4600) * ((1 : F) + (-1 : F) * rho 4598) = (relationLc74 rho)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 26⟩], residual := [((1 : F), 4599), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4243) * (relationLc75 rho) = ((1 : F) * rho 4601)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
