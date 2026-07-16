import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc67 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 902, 5, 26⟩], residual := [((6840655749588260620804619884879035498394996860111598358108595819824673565944 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1028 (rho : Nat -> F) : Prop :=
    (relationLc66 rho) * (relationLc67 rho) = ((1 : F) * rho 1028)

def relationLc68 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 901, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 902, 5, 26⟩], residual := [((5610447535629260697394555885909874428272232189167946031114640571880651505648 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1029) * ((1 : F) + (1 : F) * rho 1028) = (relationLc68 rho)

def relationLc69 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), runs := [⟨(1154677888647464395794379541055053996531308356804999973597982097538947613633 : F), 902, 5, 26⟩, ⟨(4982467099179690938892590283814035884598036041235284702492595656158939323495 : F), 901, 5, 26⟩], residual := [((1259081693778121007527112938411776636515947720334563344737821908484750896742 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1030) * ((1 : F) + (-1 : F) * rho 1028) = (relationLc69 rho)

def relationLc70 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 26⟩], residual := [((1 : F), 1029), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 673) * (relationLc70 rho) = ((1 : F) * rho 1031)

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 26⟩], residual := [((1 : F), 1030), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 673) * (relationLc71 rho) = ((1 : F) * rho 1032)

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5072222320928719159746446659917829687565743350585160508117576128964202241647 : F), 901, 5, 27⟩], residual := [((572753110851697105065212758399471108660440051599970669552149840939884719095 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 902, 5, 27⟩], residual := [((3314963566863863703885563878047084516918366777710708675789591842053849697855 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1033 (rho : Nat -> F) : Prop :=
    (relationLc72 rho) * (relationLc73 rho) = ((1 : F) * rho 1033)

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 902, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 901, 5, 27⟩], residual := [((3150233182850152297753284679559924048781154721860827909427914707310987314411 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1034) * ((1 : F) + (1 : F) * rho 1033) = (relationLc74 rho)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 901, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 902, 5, 27⟩], residual := [((4199112810628863783510113346526338234111476207113924077078917371662242068522 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1035) * ((1 : F) + (-1 : F) * rho 1033) = (relationLc75 rho)

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 27⟩], residual := [((1 : F), 1034), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 674) * (relationLc76 rho) = ((1 : F) * rho 1036)

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 27⟩], residual := [((1 : F), 1035), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 674) * (relationLc77 rho) = ((1 : F) * rho 1037)

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3190598801218404904221180042195441400583137137432313656675922788995905155141 : F), 901, 5, 28⟩], residual := [((1629011468458990839325783253427945609475469909343657563030888563191768603556 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 902, 5, 28⟩], residual := [((7323196304234499897784967808742785737937940945205513112474851288420736941936 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1038 (rho : Nat -> F) : Prop :=
    (relationLc78 rho) * (relationLc79 rho) = ((1 : F) * rho 1038)

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 902, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 901, 5, 28⟩], residual := [((7320940279646294211063708940260378058056477711367111786336187155718742357151 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1039) * ((1 : F) + (1 : F) * rho 1038) = (relationLc80 rho)

def relationLc81 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (856403804742237588455598017646259079775441355079303490567645600893652145747 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 901, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 902, 5, 28⟩], residual := [((739077748958369699321213903454950950664939026434565741493597978527525705017 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1040) * ((1 : F) + (-1 : F) * rho 1038) = (relationLc81 rho)

def relationLc82 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 28⟩], residual := [((1 : F), 1039), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 675) * (relationLc82 rho) = ((1 : F) * rho 1041)

def relationLc83 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 28⟩], residual := [((1 : F), 1040), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 675) * (relationLc83 rho) = ((1 : F) * rho 1042)

def relationLc84 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828966372566308288342654986198676635550570815417449926545139300649549589755 : F), 901, 5, 29⟩], residual := [((6390896245351865143661965713173854787059003107944135827347971390664477357243 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc85 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 902, 5, 29⟩], residual := [((6159541928736436858700148122118557535313397754538688173567272252824539262143 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1043 (rho : Nat -> F) : Prop :=
    (relationLc84 rho) * (relationLc85 rho) = ((1 : F) * rho 1043)

def relationLc86 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 902, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 901, 5, 29⟩], residual := [((4895407444709392854383347151726347431398725991640029855716457031328371798413 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1044) * ((1 : F) + (1 : F) * rho 1043) = (relationLc86 rho)

def relationLc87 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 901, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 902, 5, 29⟩], residual := [((776810970756350886811051480072396268276031708824531056721996870911861504016 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1045) * ((1 : F) + (-1 : F) * rho 1043) = (relationLc87 rho)

def relationLc88 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 29⟩], residual := [((1 : F), 1044), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 676) * (relationLc88 rho) = ((1 : F) * rho 1046)

def relationLc89 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 29⟩], residual := [((1 : F), 1045), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 676) * (relationLc89 rho) = ((1 : F) * rho 1047)

def relationLc90 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2189541032220318167463294146614972580451847462918643362923132447719949530114 : F), 901, 5, 30⟩], residual := [((7383034628853197973655398909172166078942389348590936981218529895127474349054 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc91 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 902, 5, 30⟩], residual := [((1163442789634905725960282947248315267949832590746974142145971779897368701442 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1048 (rho : Nat -> F) : Prop :=
    (relationLc90 rho) * (relationLc91 rho) = ((1 : F) * rho 1048)

def relationLc92 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 902, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 901, 5, 30⟩], residual := [((637583724420371196927058016920430419108024386511447122450989789406384632647 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1049) * ((1 : F) + (1 : F) * rho 1048) = (relationLc92 rho)

def relationLc93 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 901, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 902, 5, 30⟩], residual := [((5065853038818893837008857418831311166241596079111142152174685725292522601756 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1050) * ((1 : F) + (-1 : F) * rho 1048) = (relationLc93 rho)

def relationLc94 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 30⟩], residual := [((1 : F), 1049), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 677) * (relationLc94 rho) = ((1 : F) * rho 1051)

def relationLc95 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 30⟩], residual := [((1 : F), 1050), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 677) * (relationLc95 rho) = ((1 : F) * rho 1052)

def relationLc96 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3105042015848472387039782265082670510186184364165406336901940178617559061669 : F), 901, 5, 31⟩], residual := [((2537317358476652436645083344307902538196244111508475352463109941632006861275 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc97 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 902, 5, 31⟩], residual := [((7459147177001097145892375567564538567101820338154511867253517667998142934222 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1053 (rho : Nat -> F) : Prop :=
    (relationLc96 rho) * (relationLc97 rho) = ((1 : F) * rho 1053)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
