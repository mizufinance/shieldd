import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc71 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5072222320928719159746446659917829687565743350585160508117576128964202241647 : F), 772, 5, 27⟩], residual := [((572753110851697105065212758399471108660440051599970669552149840939884719095 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc72 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 773, 5, 27⟩], residual := [((3314963566863863703885563878047084516918366777710708675789591842053849697855 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow904 (rho : Nat -> F) : Prop :=
    (relationLc71 rho) * (relationLc72 rho) = ((1 : F) * rho 904)

def relationLc73 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 773, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 772, 5, 27⟩], residual := [((3150233182850152297753284679559924048781154721860827909427914707310987314411 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 905) * ((1 : F) + (1 : F) * rho 904) = (relationLc73 rho)

def relationLc74 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), runs := [⟨(1075952183764903460333283092469393043462552651391962152330971111200331257015 : F), 772, 5, 27⟩, ⟨(3792043149468983453969266158109134368167257610665175674011351917362784220583 : F), 773, 5, 27⟩], residual := [((4199112810628863783510113346526338234111476207113924077078917371662242068522 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 906) * ((1 : F) + (-1 : F) * rho 904) = (relationLc74 rho)

def relationLc75 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 27⟩], residual := [((1 : F), 905), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 545) * (relationLc75 rho) = ((1 : F) * rho 907)

def relationLc76 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 27⟩], residual := [((1 : F), 906), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 545) * (relationLc76 rho) = ((1 : F) * rho 908)

def relationLc77 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3190598801218404904221180042195441400583137137432313656675922788995905155141 : F), 772, 5, 28⟩], residual := [((1629011468458990839325783253427945609475469909343657563030888563191768603556 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 773, 5, 28⟩], residual := [((7323196304234499897784967808742785737937940945205513112474851288420736941936 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow909 (rho : Nat -> F) : Prop :=
    (relationLc77 rho) * (relationLc78 rho) = ((1 : F) * rho 909)

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 773, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 772, 5, 28⟩], residual := [((7320940279646294211063708940260378058056477711367111786336187155718742357151 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 910) * ((1 : F) + (1 : F) * rho 909) = (relationLc79 rho)

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (856403804742237588455598017646259079775441355079303490567645600893652145747 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 772, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 773, 5, 28⟩], residual := [((739077748958369699321213903454950950664939026434565741493597978527525705017 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 911) * ((1 : F) + (-1 : F) * rho 909) = (relationLc80 rho)

def relationLc81 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 28⟩], residual := [((1 : F), 910), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 546) * (relationLc81 rho) = ((1 : F) * rho 912)

def relationLc82 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 28⟩], residual := [((1 : F), 911), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 546) * (relationLc82 rho) = ((1 : F) * rho 913)

def relationLc83 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828966372566308288342654986198676635550570815417449926545139300649549589755 : F), 772, 5, 29⟩], residual := [((6390896245351865143661965713173854787059003107944135827347971390664477357243 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc84 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 773, 5, 29⟩], residual := [((6159541928736436858700148122118557535313397754538688173567272252824539262143 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow914 (rho : Nat -> F) : Prop :=
    (relationLc83 rho) * (relationLc84 rho) = ((1 : F) * rho 914)

def relationLc85 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 773, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 772, 5, 29⟩], residual := [((4895407444709392854383347151726347431398725991640029855716457031328371798413 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 915) * ((1 : F) + (1 : F) * rho 914) = (relationLc85 rho)

def relationLc86 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 772, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 773, 5, 29⟩], residual := [((776810970756350886811051480072396268276031708824531056721996870911861504016 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 916) * ((1 : F) + (-1 : F) * rho 914) = (relationLc86 rho)

def relationLc87 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 29⟩], residual := [((1 : F), 915), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 547) * (relationLc87 rho) = ((1 : F) * rho 917)

def relationLc88 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 29⟩], residual := [((1 : F), 916), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 547) * (relationLc88 rho) = ((1 : F) * rho 918)

def relationLc89 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2189541032220318167463294146614972580451847462918643362923132447719949530114 : F), 772, 5, 30⟩], residual := [((7383034628853197973655398909172166078942389348590936981218529895127474349054 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc90 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 773, 5, 30⟩], residual := [((1163442789634905725960282947248315267949832590746974142145971779897368701442 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow919 (rho : Nat -> F) : Prop :=
    (relationLc89 rho) * (relationLc90 rho) = ((1 : F) * rho 919)

def relationLc91 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 773, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 772, 5, 30⟩], residual := [((637583724420371196927058016920430419108024386511447122450989789406384632647 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 920) * ((1 : F) + (1 : F) * rho 919) = (relationLc91 rho)

def relationLc92 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 772, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 773, 5, 30⟩], residual := [((5065853038818893837008857418831311166241596079111142152174685725292522601756 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 921) * ((1 : F) + (-1 : F) * rho 919) = (relationLc92 rho)

def relationLc93 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 30⟩], residual := [((1 : F), 920), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 548) * (relationLc93 rho) = ((1 : F) * rho 922)

def relationLc94 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 30⟩], residual := [((1 : F), 921), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 548) * (relationLc94 rho) = ((1 : F) * rho 923)

def relationLc95 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3105042015848472387039782265082670510186184364165406336901940178617559061669 : F), 772, 5, 31⟩], residual := [((2537317358476652436645083344307902538196244111508475352463109941632006861275 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc96 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 773, 5, 31⟩], residual := [((7459147177001097145892375567564538567101820338154511867253517667998142934222 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow924 (rho : Nat -> F) : Prop :=
    (relationLc95 rho) * (relationLc96 rho) = ((1 : F) * rho 924)

def relationLc97 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 773, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 772, 5, 31⟩], residual := [((2805889482383500289243038116479809314469355542086981977098039152883659526032 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 925) * ((1 : F) + (1 : F) * rho 924) = (relationLc97 rho)

def relationLc98 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 772, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 773, 5, 31⟩], residual := [((2760425594778897678859094773586954370934517891587313686654579500820404314442 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 926) * ((1 : F) + (-1 : F) * rho 924) = (relationLc98 rho)

def relationLc99 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 31⟩], residual := [((1 : F), 925), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 549) * (relationLc99 rho) = ((1 : F) * rho 927)

def relationLc100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 31⟩], residual := [((1 : F), 926), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 549) * (relationLc100 rho) = ((1 : F) * rho 928)

def relationLc101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5696749081378441678673487169765165875373895044398392558023849940368320961891 : F), 772, 5, 32⟩], residual := [((8365977717055296012019020164002729121299875480122366489177625225283647354120 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 773, 5, 32⟩], residual := [((3676967602326024059104950309563659173128084948457071522762327656388302960094 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
