import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs61

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 26⟩], residual := [((1 : F), 4600), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4243) * (relationLc76 rho) = ((1 : F) * rho 4602)

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5072222320928719159746446659917829687565743350585160508117576128964202241647 : F), 4471, 5, 27⟩], residual := [((572753110851697105065212758399471108660440051599970669552149840939884719095 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 4472, 5, 27⟩], residual := [((3314963566863863703885563878047084516918366777710708675789591842053849697855 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4777 (rho : Nat -> F) : Prop :=
    (relationLc77 rho) * (relationLc78 rho) = ((1 : F) * rho 4603)

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 4472, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 4471, 5, 27⟩], residual := [((3150233182850152297753284679559924048781154721860827909427914707310987314411 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4604) * ((1 : F) + (1 : F) * rho 4603) = (relationLc79 rho)

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 4471, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 4472, 5, 27⟩], residual := [((4199112810628863783510113346526338234111476207113924077078917371662242068522 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4605) * ((1 : F) + (-1 : F) * rho 4603) = (relationLc80 rho)

def relationLc81 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 27⟩], residual := [((1 : F), 4604), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4244) * (relationLc81 rho) = ((1 : F) * rho 4606)

def relationLc82 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 27⟩], residual := [((1 : F), 4605), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4244) * (relationLc82 rho) = ((1 : F) * rho 4607)

def relationLc83 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3190598801218404904221180042195441400583137137432313656675922788995905155141 : F), 4471, 5, 28⟩], residual := [((1629011468458990839325783253427945609475469909343657563030888563191768603556 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc84 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 4472, 5, 28⟩], residual := [((7323196304234499897784967808742785737937940945205513112474851288420736941936 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4782 (rho : Nat -> F) : Prop :=
    (relationLc83 rho) * (relationLc84 rho) = ((1 : F) * rho 4608)

def relationLc85 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 4472, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 4471, 5, 28⟩], residual := [((7320940279646294211063708940260378058056477711367111786336187155718742357151 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4609) * ((1 : F) + (1 : F) * rho 4608) = (relationLc85 rho)

def relationLc86 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (856403804742237588455598017646259079775441355079303490567645600893652145747 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 4471, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 4472, 5, 28⟩], residual := [((739077748958369699321213903454950950664939026434565741493597978527525705017 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4610) * ((1 : F) + (-1 : F) * rho 4608) = (relationLc86 rho)

def relationLc87 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 28⟩], residual := [((1 : F), 4609), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4245) * (relationLc87 rho) = ((1 : F) * rho 4611)

def relationLc88 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 28⟩], residual := [((1 : F), 4610), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4245) * (relationLc88 rho) = ((1 : F) * rho 4612)

def relationLc89 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828966372566308288342654986198676635550570815417449926545139300649549589755 : F), 4471, 5, 29⟩], residual := [((6390896245351865143661965713173854787059003107944135827347971390664477357243 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc90 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 4472, 5, 29⟩], residual := [((6159541928736436858700148122118557535313397754538688173567272252824539262143 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4787 (rho : Nat -> F) : Prop :=
    (relationLc89 rho) * (relationLc90 rho) = ((1 : F) * rho 4613)

def relationLc91 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 4472, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 4471, 5, 29⟩], residual := [((4895407444709392854383347151726347431398725991640029855716457031328371798413 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4614) * ((1 : F) + (1 : F) * rho 4613) = (relationLc91 rho)

def relationLc92 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 4471, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 4472, 5, 29⟩], residual := [((776810970756350886811051480072396268276031708824531056721996870911861504016 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4615) * ((1 : F) + (-1 : F) * rho 4613) = (relationLc92 rho)

def relationLc93 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 29⟩], residual := [((1 : F), 4614), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4246) * (relationLc93 rho) = ((1 : F) * rho 4616)

def relationLc94 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 29⟩], residual := [((1 : F), 4615), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4246) * (relationLc94 rho) = ((1 : F) * rho 4617)

def relationLc95 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2189541032220318167463294146614972580451847462918643362923132447719949530114 : F), 4471, 5, 30⟩], residual := [((7383034628853197973655398909172166078942389348590936981218529895127474349054 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc96 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 4472, 5, 30⟩], residual := [((1163442789634905725960282947248315267949832590746974142145971779897368701442 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4792 (rho : Nat -> F) : Prop :=
    (relationLc95 rho) * (relationLc96 rho) = ((1 : F) * rho 4618)

def relationLc97 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 4472, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 4471, 5, 30⟩], residual := [((637583724420371196927058016920430419108024386511447122450989789406384632647 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4619) * ((1 : F) + (1 : F) * rho 4618) = (relationLc97 rho)

def relationLc98 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 4471, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 4472, 5, 30⟩], residual := [((5065853038818893837008857418831311166241596079111142152174685725292522601756 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4620) * ((1 : F) + (-1 : F) * rho 4618) = (relationLc98 rho)

def relationLc99 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 30⟩], residual := [((1 : F), 4619), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4247) * (relationLc99 rho) = ((1 : F) * rho 4621)

def relationLc100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 30⟩], residual := [((1 : F), 4620), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4247) * (relationLc100 rho) = ((1 : F) * rho 4622)

def relationLc101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3105042015848472387039782265082670510186184364165406336901940178617559061669 : F), 4471, 5, 31⟩], residual := [((2537317358476652436645083344307902538196244111508475352463109941632006861275 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 4472, 5, 31⟩], residual := [((7459147177001097145892375567564538567101820338154511867253517667998142934222 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4797 (rho : Nat -> F) : Prop :=
    (relationLc101 rho) * (relationLc102 rho) = ((1 : F) * rho 4623)

def relationLc103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 4472, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 4471, 5, 31⟩], residual := [((2805889482383500289243038116479809314469355542086981977098039152883659526032 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4624) * ((1 : F) + (1 : F) * rho 4623) = (relationLc103 rho)

def relationLc104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 4471, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 4472, 5, 31⟩], residual := [((2760425594778897678859094773586954370934517891587313686654579500820404314442 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4625) * ((1 : F) + (-1 : F) * rho 4623) = (relationLc104 rho)

def relationLc105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 31⟩], residual := [((1 : F), 4624), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * (relationLc105 rho) = ((1 : F) * rho 4626)

def relationLc106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 31⟩], residual := [((1 : F), 4625), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4248) * (relationLc106 rho) = ((1 : F) * rho 4627)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
