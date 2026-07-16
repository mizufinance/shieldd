import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs13

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 644, 5, 23⟩], residual := [((6712990382380332376237152323305318414633590549427718934851741915714756969433 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow755 (rho : Nat -> F) : Prop :=
    (relationLc46 rho) * (relationLc47 rho) = ((1 : F) * rho 755)

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 644, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 643, 5, 23⟩], residual := [((2880854338945334318209400171227487369973573810528561735368396329477951754525 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 756) * ((1 : F) + (1 : F) * rho 755) = (relationLc48 rho)

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 643, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 644, 5, 23⟩], residual := [((114257104164877408089912102852953841102673709886080965360633577678164539600 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 757) * ((1 : F) + (-1 : F) * rho 755) = (relationLc49 rho)

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 23⟩], residual := [((1 : F), 756), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 412) * (relationLc50 rho) = ((1 : F) * rho 758)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 23⟩], residual := [((1 : F), 757), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 412) * (relationLc51 rho) = ((1 : F) * rho 759)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2154316133305581021006333870337296644771826655417397673778909601455915646549 : F), 643, 5, 24⟩], residual := [((8131522897753270035956148949838977191540978705237768835981964492320739779601 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 644, 5, 24⟩], residual := [((6404315503036588629128563639643810150712554983175632829294524389990238220356 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow760 (rho : Nat -> F) : Prop :=
    (relationLc52 rho) * (relationLc53 rho) = ((1 : F) * rho 760)

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 644, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 643, 5, 24⟩], residual := [((4925522651563803771526471263409324654374360455229119734302901825559948198207 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 761) * ((1 : F) + (1 : F) * rho 760) = (relationLc54 rho)

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (900784839274823190211561722660706812230324863480644141101927865742092582131 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 643, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 644, 5, 24⟩], residual := [((127276024653087097835038290272218471469742072248135878174149991432204578037 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 762) * ((1 : F) + (-1 : F) * rho 760) = (relationLc55 rho)

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 24⟩], residual := [((1 : F), 761), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 413) * (relationLc56 rho) = ((1 : F) * rho 763)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 24⟩], residual := [((1 : F), 762), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 413) * (relationLc57 rho) = ((1 : F) * rho 764)

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(754243513942621124145973586124625440555887990028881694520431862946471470540 : F), 643, 5, 25⟩], residual := [((3485473096370588706944581138970594080683700636283193695147842995324192075075 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 644, 5, 25⟩], residual := [((3991124370731619278006442799143359150252110510627329600623329775988526734775 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow765 (rho : Nat -> F) : Prop :=
    (relationLc58 rho) * (relationLc59 rho) = ((1 : F) * rho 765)

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 643, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 644, 5, 25⟩], residual := [((1006947053521050253050865025730674244118784860409435865257662285778507246122 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 766) * ((1 : F) + (1 : F) * rho 765) = (relationLc60 rho)

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 644, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 643, 5, 25⟩], residual := [((3703807264522377816473547097921380274932554393183130010573570542291134711296 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 767) * ((1 : F) + (-1 : F) * rho 765) = (relationLc61 rho)

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 25⟩], residual := [((1 : F), 766), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 414) * (relationLc62 rho) = ((1 : F) * rho 768)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 25⟩], residual := [((1 : F), 767), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 414) * (relationLc63 rho) = ((1 : F) * rho 769)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(719199090072954480055893810539406062836120489276559302252499371270725061360 : F), 643, 5, 26⟩], residual := [((7548617127772588471928457116826427495899535882168468270699150020686830262865 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 644, 5, 26⟩], residual := [((6840655749588260620804619884879035498394996860111598358108595819824673565944 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow770 (rho : Nat -> F) : Prop :=
    (relationLc64 rho) * (relationLc65 rho) = ((1 : F) * rho 770)

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 643, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 644, 5, 26⟩], residual := [((5610447535629260697394555885909874428272232189167946031114640571880651505648 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 771) * ((1 : F) + (1 : F) * rho 770) = (relationLc66 rho)

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 644, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 643, 5, 26⟩], residual := [((1259081693778121007527112938411776636515947720334563344737821908484750896742 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 772) * ((1 : F) + (-1 : F) * rho 770) = (relationLc67 rho)

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 26⟩], residual := [((1 : F), 771), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 415) * (relationLc68 rho) = ((1 : F) * rho 773)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 26⟩], residual := [((1 : F), 772), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 415) * (relationLc69 rho) = ((1 : F) * rho 774)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5072222320928719159746446659917829687565743350585160508117576128964202241647 : F), 643, 5, 27⟩], residual := [((572753110851697105065212758399471108660440051599970669552149840939884719095 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 644, 5, 27⟩], residual := [((3314963566863863703885563878047084516918366777710708675789591842053849697855 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow775 (rho : Nat -> F) : Prop :=
    (relationLc70 rho) * (relationLc71 rho) = ((1 : F) * rho 775)

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 644, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 643, 5, 27⟩], residual := [((3150233182850152297753284679559924048781154721860827909427914707310987314411 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 776) * ((1 : F) + (1 : F) * rho 775) = (relationLc72 rho)

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 643, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 644, 5, 27⟩], residual := [((4199112810628863783510113346526338234111476207113924077078917371662242068522 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 777) * ((1 : F) + (-1 : F) * rho 775) = (relationLc73 rho)

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 27⟩], residual := [((1 : F), 776), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 416) * (relationLc74 rho) = ((1 : F) * rho 778)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 27⟩], residual := [((1 : F), 777), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 416) * (relationLc75 rho) = ((1 : F) * rho 779)

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3190598801218404904221180042195441400583137137432313656675922788995905155141 : F), 643, 5, 28⟩], residual := [((1629011468458990839325783253427945609475469909343657563030888563191768603556 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 644, 5, 28⟩], residual := [((7323196304234499897784967808742785737937940945205513112474851288420736941936 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow780 (rho : Nat -> F) : Prop :=
    (relationLc76 rho) * (relationLc77 rho) = ((1 : F) * rho 780)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
