import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs21

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc58 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2154316133305581021006333870337296644771826655417397673778909601455915646549 : F), 1417, 5, 24⟩], residual := [((8131522897753270035956148949838977191540978705237768835981964492320739779601 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc59 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 1418, 5, 24⟩], residual := [((6404315503036588629128563639643810150712554983175632829294524389990238220356 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1534 (rho : Nat -> F) : Prop :=
    (relationLc58 rho) * (relationLc59 rho) = ((1 : F) * rho 1534)

def relationLc60 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 1418, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 1417, 5, 24⟩], residual := [((4925522651563803771526471263409324654374360455229119734302901825559948198207 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1535) * ((1 : F) + (1 : F) * rho 1534) = (relationLc60 rho)

def relationLc61 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (900784839274823190211561722660706812230324863480644141101927865742092582131 : F), runs := [⟨(7755919095320071914736968075384127184753812140573725858975509228107601192250 : F), 1417, 5, 24⟩, ⟨(900784839274823190211561722660706812230324863480644141101927865742092582131 : F), 1418, 5, 24⟩], residual := [((127276024653087097835038290272218471469742072248135878174149991432204578037 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1536) * ((1 : F) + (-1 : F) * rho 1534) = (relationLc61 rho)

def relationLc62 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 24⟩], residual := [((1 : F), 1535), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * (relationLc62 rho) = ((1 : F) * rho 1537)

def relationLc63 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 24⟩], residual := [((1 : F), 1536), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * (relationLc63 rho) = ((1 : F) * rho 1538)

def relationLc64 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(754243513942621124145973586124625440555887990028881694520431862946471470540 : F), 1417, 5, 25⟩], residual := [((3485473096370588706944581138970594080683700636283193695147842995324192075075 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc65 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 1418, 5, 25⟩], residual := [((3991124370731619278006442799143359150252110510627329600623329775988526734775 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1539 (rho : Nat -> F) : Prop :=
    (relationLc64 rho) * (relationLc65 rho) = ((1 : F) * rho 1539)

def relationLc66 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 1417, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 1418, 5, 25⟩], residual := [((1006947053521050253050865025730674244118784860409435865257662285778507246122 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1540) * ((1 : F) + (1 : F) * rho 1539) = (relationLc66 rho)

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), runs := [⟨(3745889767543184041581453621831644150110645811683705531654330772192080387880 : F), 1418, 5, 25⟩, ⟨(6937579141345397465677909131715532055718434157045039860801648638277166121332 : F), 1417, 5, 25⟩], residual := [((3703807264522377816473547097921380274932554393183130010573570542291134711296 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1541) * ((1 : F) + (-1 : F) * rho 1539) = (relationLc67 rho)

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 25⟩], residual := [((1 : F), 1540), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1188) * (relationLc68 rho) = ((1 : F) * rho 1542)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 25⟩], residual := [((1 : F), 1541), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1188) * (relationLc69 rho) = ((1 : F) * rho 1543)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(719199090072954480055893810539406062836120489276559302252499371270725061360 : F), 1417, 5, 26⟩], residual := [((7548617127772588471928457116826427495899535882168468270699150020686830262865 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 1418, 5, 26⟩], residual := [((6840655749588260620804619884879035498394996860111598358108595819824673565944 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1544 (rho : Nat -> F) : Prop :=
    (relationLc70 rho) * (relationLc71 rho) = ((1 : F) * rho 1544)

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 1417, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 1418, 5, 26⟩], residual := [((5610447535629260697394555885909874428272232189167946031114640571880651505648 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1545) * ((1 : F) + (1 : F) * rho 1544) = (relationLc72 rho)

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 1418, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 1417, 5, 26⟩], residual := [((1259081693778121007527112938411776636515947720334563344737821908484750896742 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1546) * ((1 : F) + (-1 : F) * rho 1544) = (relationLc73 rho)

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 26⟩], residual := [((1 : F), 1545), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1189) * (relationLc74 rho) = ((1 : F) * rho 1547)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 26⟩], residual := [((1 : F), 1546), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1189) * (relationLc75 rho) = ((1 : F) * rho 1548)

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5072222320928719159746446659917829687565743350585160508117576128964202241647 : F), 1417, 5, 27⟩], residual := [((572753110851697105065212758399471108660440051599970669552149840939884719095 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 1418, 5, 27⟩], residual := [((3314963566863863703885563878047084516918366777710708675789591842053849697855 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1549 (rho : Nat -> F) : Prop :=
    (relationLc76 rho) * (relationLc77 rho) = ((1 : F) * rho 1549)

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 1418, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 1417, 5, 27⟩], residual := [((3150233182850152297753284679559924048781154721860827909427914707310987314411 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1550) * ((1 : F) + (1 : F) * rho 1549) = (relationLc78 rho)

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 1417, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 1418, 5, 27⟩], residual := [((4199112810628863783510113346526338234111476207113924077078917371662242068522 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1551) * ((1 : F) + (-1 : F) * rho 1549) = (relationLc79 rho)

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 27⟩], residual := [((1 : F), 1550), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * (relationLc80 rho) = ((1 : F) * rho 1552)

def relationLc81 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 27⟩], residual := [((1 : F), 1551), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * (relationLc81 rho) = ((1 : F) * rho 1553)

def relationLc82 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3190598801218404904221180042195441400583137137432313656675922788995905155141 : F), 1417, 5, 28⟩], residual := [((1629011468458990839325783253427945609475469909343657563030888563191768603556 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc83 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 1418, 5, 28⟩], residual := [((7323196304234499897784967808742785737937940945205513112474851288420736941936 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1554 (rho : Nat -> F) : Prop :=
    (relationLc82 rho) * (relationLc83 rho) = ((1 : F) * rho 1554)

def relationLc84 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 1418, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 1417, 5, 28⟩], residual := [((7320940279646294211063708940260378058056477711367111786336187155718742357151 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1555) * ((1 : F) + (1 : F) * rho 1554) = (relationLc84 rho)

def relationLc85 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (856403804742237588455598017646259079775441355079303490567645600893652145747 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 1417, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 1418, 5, 28⟩], residual := [((739077748958369699321213903454950950664939026434565741493597978527525705017 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1556) * ((1 : F) + (-1 : F) * rho 1554) = (relationLc85 rho)

def relationLc86 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 28⟩], residual := [((1 : F), 1555), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * (relationLc86 rho) = ((1 : F) * rho 1557)

def relationLc87 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 28⟩], residual := [((1 : F), 1556), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * (relationLc87 rho) = ((1 : F) * rho 1558)

def relationLc88 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828966372566308288342654986198676635550570815417449926545139300649549589755 : F), 1417, 5, 29⟩], residual := [((6390896245351865143661965713173854787059003107944135827347971390664477357243 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
