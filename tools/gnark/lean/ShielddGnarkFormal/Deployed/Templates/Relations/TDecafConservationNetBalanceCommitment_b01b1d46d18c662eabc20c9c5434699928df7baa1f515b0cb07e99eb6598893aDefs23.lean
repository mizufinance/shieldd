import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs22

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc89 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 1418, 5, 29⟩], residual := [((6159541928736436858700148122118557535313397754538688173567272252824539262143 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1559 (rho : Nat -> F) : Prop :=
    (relationLc88 rho) * (relationLc89 rho) = ((1 : F) * rho 1559)

def relationLc90 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 1418, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 1417, 5, 29⟩], residual := [((4895407444709392854383347151726347431398725991640029855716457031328371798413 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1560) * ((1 : F) + (1 : F) * rho 1559) = (relationLc90 rho)

def relationLc91 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), runs := [⟨(2014628297778802304822358459479232319813260126249444698126054537347728167955 : F), 1417, 5, 29⟩, ⟨(3357374222918251965511811124284288666275407372504286033524250420343415440476 : F), 1418, 5, 29⟩], residual := [((776810970756350886811051480072396268276031708824531056721996870911861504016 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1561) * ((1 : F) + (-1 : F) * rho 1559) = (relationLc91 rho)

def relationLc92 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 29⟩], residual := [((1 : F), 1560), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * (relationLc92 rho) = ((1 : F) * rho 1562)

def relationLc93 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 29⟩], residual := [((1 : F), 1561), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * (relationLc93 rho) = ((1 : F) * rho 1563)

def relationLc94 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2189541032220318167463294146614972580451847462918643362923132447719949530114 : F), 1417, 5, 30⟩], residual := [((7383034628853197973655398909172166078942389348590936981218529895127474349054 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc95 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 1418, 5, 30⟩], residual := [((1163442789634905725960282947248315267949832590746974142145971779897368701442 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1564 (rho : Nat -> F) : Prop :=
    (relationLc94 rho) * (relationLc95 rho) = ((1 : F) * rho 1564)

def relationLc96 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 1418, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 1417, 5, 30⟩], residual := [((637583724420371196927058016920430419108024386511447122450989789406384632647 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1565) * ((1 : F) + (1 : F) * rho 1564) = (relationLc96 rho)

def relationLc97 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), runs := [⟨(8030049712769214020689766610455002642786702255595768911193537273682527105507 : F), 1417, 5, 30⟩, ⟨(8406052969732979206846633526998585035560338016640578806343651153390059427781 : F), 1418, 5, 30⟩], residual := [((5065853038818893837008857418831311166241596079111142152174685725292522601756 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1566) * ((1 : F) + (-1 : F) * rho 1564) = (relationLc97 rho)

def relationLc98 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 30⟩], residual := [((1 : F), 1565), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * (relationLc98 rho) = ((1 : F) * rho 1567)

def relationLc99 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 30⟩], residual := [((1 : F), 1566), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * (relationLc99 rho) = ((1 : F) * rho 1568)

def relationLc100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3105042015848472387039782265082670510186184364165406336901940178617559061669 : F), 1417, 5, 31⟩], residual := [((2537317358476652436645083344307902538196244111508475352463109941632006861275 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 1418, 5, 31⟩], residual := [((7459147177001097145892375567564538567101820338154511867253517667998142934222 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1569 (rho : Nat -> F) : Prop :=
    (relationLc100 rho) * (relationLc101 rho) = ((1 : F) * rho 1569)

def relationLc102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 1418, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 1417, 5, 31⟩], residual := [((2805889482383500289243038116479809314469355542086981977098039152883659526032 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1570) * ((1 : F) + (1 : F) * rho 1569) = (relationLc102 rho)

def relationLc103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), runs := [⟨(2351884121579938765614713995062874550057038861688101453549791301276712671887 : F), 1417, 5, 31⟩, ⟨(4001036016368039241803081188236172047967261877844962179447938105129569738540 : F), 1418, 5, 31⟩], residual := [((2760425594778897678859094773586954370934517891587313686654579500820404314442 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1571) * ((1 : F) + (-1 : F) * rho 1569) = (relationLc103 rho)

def relationLc104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 31⟩], residual := [((1 : F), 1570), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * (relationLc104 rho) = ((1 : F) * rho 1572)

def relationLc105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 31⟩], residual := [((1 : F), 1571), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * (relationLc105 rho) = ((1 : F) * rho 1573)

def relationLc106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5696749081378441678673487169765165875373895044398392558023849940368320961891 : F), 1417, 5, 32⟩], residual := [((8365977717055296012019020164002729121299875480122366489177625225283647354120 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 1418, 5, 32⟩], residual := [((3676967602326024059104950309563659173128084948457071522762327656388302960094 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1574 (rho : Nat -> F) : Prop :=
    (relationLc106 rho) * (relationLc107 rho) = ((1 : F) * rho 1574)

def relationLc108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 1417, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 1418, 5, 32⟩], residual := [((7721673880839919765651067450127088174614629243098878428317946723744098195780 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1575) * ((1 : F) + (1 : F) * rho 1574) = (relationLc108 rho)

def relationLc109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), runs := [⟨(6447740994128831724593334589870907470118569269086285858913165243060547509497 : F), 1418, 5, 32⟩, ⟨(8181828300674127559579865548325785567882607589420402448129397904504570458902 : F), 1417, 5, 32⟩], residual := [((8064814161003935457601060357488656896246886392854407536488728629478904615158 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1576) * ((1 : F) + (-1 : F) * rho 1574) = (relationLc109 rho)

def relationLc110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 32⟩], residual := [((1 : F), 1575), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * (relationLc110 rho) = ((1 : F) * rho 1577)

def relationLc111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 32⟩], residual := [((1 : F), 1576), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * (relationLc111 rho) = ((1 : F) * rho 1578)

def relationLc112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7560996790981468804918395352170094555299255498925096103653018348315165366039 : F), 1417, 5, 33⟩], residual := [((8046378523089116857309843008334526117145412174402479488366697077706459332836 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 1418, 5, 33⟩], residual := [((7528285930045693591802066547213342612415944427431185294200752681317640805422 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1579 (rho : Nat -> F) : Prop :=
    (relationLc112 rho) * (relationLc113 rho) = ((1 : F) * rho 1579)

def relationLc114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 1417, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 1418, 5, 33⟩], residual := [((1423319844650824257102836938398597612436071989451302148040501637258775288053 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1580) * ((1 : F) + (1 : F) * rho 1579) = (relationLc114 rho)

def relationLc115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), runs := [⟨(1676859842667519150258180911513510912561887771352601565387903958438544620838 : F), 1418, 5, 33⟩, ⟨(2284789392287282188305042039625450334317700224703268302384408533531197009649 : F), 1417, 5, 33⟩], residual := [((4449112694819004586452537747118526661176354755183068383426237526201849477490 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1581) * ((1 : F) + (-1 : F) * rho 1579) = (relationLc115 rho)

def relationLc116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 33⟩], residual := [((1 : F), 1580), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * (relationLc116 rho) = ((1 : F) * rho 1582)

def relationLc117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 33⟩], residual := [((1 : F), 1581), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * (relationLc117 rho) = ((1 : F) * rho 1583)

def relationLc118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6253847450756812552945282776934054358888311281748073539183721235356460452140 : F), 1417, 5, 34⟩], residual := [((3572009771805449118123084261970282454927930356466962379386149911037514883200 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), runs := [⟨(7822402628056204146253147559749349526867519415192634220887845535810988224793 : F), 1418, 5, 34⟩], residual := [((3511373497299515526507532125805982843843578790847072845085611595042362971083 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1584 (rho : Nat -> F) : Prop :=
    (relationLc118 rho) * (relationLc119 rho) = ((1 : F) * rho 1584)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
