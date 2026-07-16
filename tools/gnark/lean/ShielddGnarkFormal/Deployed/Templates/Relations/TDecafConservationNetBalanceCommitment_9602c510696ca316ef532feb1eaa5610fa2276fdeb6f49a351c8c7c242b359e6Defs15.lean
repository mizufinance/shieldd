import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs14

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc78 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 644, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 643, 5, 28⟩], residual := [((7320940279646294211063708940260378058056477711367111786336187155718742357151 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 781) * ((1 : F) + (1 : F) * rho 780) = (relationLc78 rho)

def relationLc79 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (856403804742237588455598017646259079775441355079303490567645600893652145747 : F), runs := [⟨(7679035259438198187492170596791305146886076560147589382413508179764883165246 : F), 643, 5, 28⟩, ⟨(856403804742237588455598017646259079775441355079303490567645600893652145747 : F), 644, 5, 28⟩], residual := [((739077748958369699321213903454950950664939026434565741493597978527525705017 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 782) * ((1 : F) + (-1 : F) * rho 780) = (relationLc79 rho)

def relationLc80 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 28⟩], residual := [((1 : F), 781), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 417) * (relationLc80 rho) = ((1 : F) * rho 783)

def relationLc81 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 28⟩], residual := [((1 : F), 782), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 417) * (relationLc81 rho) = ((1 : F) * rho 784)

def relationLc82 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828966372566308288342654986198676635550570815417449926545139300649549589755 : F), 643, 5, 29⟩], residual := [((6390896245351865143661965713173854787059003107944135827347971390664477357243 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc83 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 644, 5, 29⟩], residual := [((6159541928736436858700148122118557535313397754538688173567272252824539262143 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow785 (rho : Nat -> F) : Prop :=
    (relationLc82 rho) * (relationLc83 rho) = ((1 : F) * rho 785)

def relationLc84 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 644, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 643, 5, 29⟩], residual := [((4895407444709392854383347151726347431398725991640029855716457031328371798413 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 786) * ((1 : F) + (1 : F) * rho 785) = (relationLc84 rho)

def relationLc85 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 643, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 644, 5, 29⟩], residual := [((776810970756350886811051480072396268276031708824531056721996870911861504016 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 787) * ((1 : F) + (-1 : F) * rho 785) = (relationLc85 rho)

def relationLc86 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 29⟩], residual := [((1 : F), 786), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 418) * (relationLc86 rho) = ((1 : F) * rho 788)

def relationLc87 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 29⟩], residual := [((1 : F), 787), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 418) * (relationLc87 rho) = ((1 : F) * rho 789)

def relationLc88 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2189541032220318167463294146614972580451847462918643362923132447719949530114 : F), 643, 5, 30⟩], residual := [((7383034628853197973655398909172166078942389348590936981218529895127474349054 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc89 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 644, 5, 30⟩], residual := [((1163442789634905725960282947248315267949832590746974142145971779897368701442 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow790 (rho : Nat -> F) : Prop :=
    (relationLc88 rho) * (relationLc89 rho) = ((1 : F) * rho 790)

def relationLc90 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 644, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 643, 5, 30⟩], residual := [((637583724420371196927058016920430419108024386511447122450989789406384632647 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 791) * ((1 : F) + (1 : F) * rho 790) = (relationLc90 rho)

def relationLc91 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 643, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 644, 5, 30⟩], residual := [((5065853038818893837008857418831311166241596079111142152174685725292522601756 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 792) * ((1 : F) + (-1 : F) * rho 790) = (relationLc91 rho)

def relationLc92 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 30⟩], residual := [((1 : F), 791), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 419) * (relationLc92 rho) = ((1 : F) * rho 793)

def relationLc93 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 30⟩], residual := [((1 : F), 792), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 419) * (relationLc93 rho) = ((1 : F) * rho 794)

def relationLc94 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3105042015848472387039782265082670510186184364165406336901940178617559061669 : F), 643, 5, 31⟩], residual := [((2537317358476652436645083344307902538196244111508475352463109941632006861275 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc95 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 644, 5, 31⟩], residual := [((7459147177001097145892375567564538567101820338154511867253517667998142934222 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow795 (rho : Nat -> F) : Prop :=
    (relationLc94 rho) * (relationLc95 rho) = ((1 : F) * rho 795)

def relationLc96 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 644, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 643, 5, 31⟩], residual := [((2805889482383500289243038116479809314469355542086981977098039152883659526032 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 796) * ((1 : F) + (1 : F) * rho 795) = (relationLc96 rho)

def relationLc97 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 643, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 644, 5, 31⟩], residual := [((2760425594778897678859094773586954370934517891587313686654579500820404314442 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 797) * ((1 : F) + (-1 : F) * rho 795) = (relationLc97 rho)

def relationLc98 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 31⟩], residual := [((1 : F), 796), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 420) * (relationLc98 rho) = ((1 : F) * rho 798)

def relationLc99 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 31⟩], residual := [((1 : F), 797), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 420) * (relationLc99 rho) = ((1 : F) * rho 799)

def relationLc100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5696749081378441678673487169765165875373895044398392558023849940368320961891 : F), 643, 5, 32⟩], residual := [((8365977717055296012019020164002729121299875480122366489177625225283647354120 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 644, 5, 32⟩], residual := [((3676967602326024059104950309563659173128084948457071522762327656388302960094 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow800 (rho : Nat -> F) : Prop :=
    (relationLc100 rho) * (relationLc101 rho) = ((1 : F) * rho 800)

def relationLc102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 643, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 644, 5, 32⟩], residual := [((7721673880839919765651067450127088174614629243098878428317946723744098195780 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 801) * ((1 : F) + (1 : F) * rho 800) = (relationLc102 rho)

def relationLc103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 644, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 643, 5, 32⟩], residual := [((8064814161003935457601060357488656896246886392854407536488728629478904615158 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 802) * ((1 : F) + (-1 : F) * rho 800) = (relationLc103 rho)

def relationLc104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 32⟩], residual := [((1 : F), 801), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 421) * (relationLc104 rho) = ((1 : F) * rho 803)

def relationLc105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 32⟩], residual := [((1 : F), 802), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 421) * (relationLc105 rho) = ((1 : F) * rho 804)

def relationLc106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7560996790981468804918395352170094555299255498925096103653018348315165366039 : F), 643, 5, 33⟩], residual := [((8046378523089116857309843008334526117145412174402479488366697077706459332836 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 644, 5, 33⟩], residual := [((7528285930045693591802066547213342612415944427431185294200752681317640805422 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow805 (rho : Nat -> F) : Prop :=
    (relationLc106 rho) * (relationLc107 rho) = ((1 : F) * rho 805)

def relationLc108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 643, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 644, 5, 33⟩], residual := [((1423319844650824257102836938398597612436071989451302148040501637258775288053 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 806) * ((1 : F) + (1 : F) * rho 805) = (relationLc108 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
