import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs38

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 901, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 902, 5, 140⟩], residual := [((2811539659166277309292482118825942023107804352319582653921651359723260281633 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1599) * ((1 : F) + (1 : F) * rho 1598) = (relationLc752 rho)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 902, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 901, 5, 140⟩], residual := [((6841460753414435441275779454041305233001587920382853920501679485965974771010 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1600) * ((1 : F) + (-1 : F) * rho 1598) = (relationLc753 rho)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 140⟩], residual := [((1 : F), 1599), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 787) * (relationLc754 rho) = ((1 : F) * rho 1601)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 140⟩], residual := [((1 : F), 1600), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 787) * (relationLc755 rho) = ((1 : F) * rho 1602)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(974152610401337109221475481096159242449130933949474218343847976112483342167 : F), 901, 5, 141⟩], residual := [((3146877451167613501914157760670700402640970263955640333485006556010273307510 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 902, 5, 141⟩], residual := [((1832237507884495967027152935624360556667006466783899041958197157010473099434 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1603 (rho : Nat -> F) : Prop :=
    (relationLc756 rho) * (relationLc757 rho) = ((1 : F) * rho 1603)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 901, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 902, 5, 141⟩], residual := [((1556549048519305282320526152711847347066353350624913051017414930734467392265 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1604) * ((1 : F) + (1 : F) * rho 1603) = (relationLc758 rho)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 902, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 901, 5, 141⟩], residual := [((4967172430737793440161742522146875106540386697005819122562987476773101864051 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1605) * ((1 : F) + (-1 : F) * rho 1603) = (relationLc759 rho)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 141⟩], residual := [((1 : F), 1604), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 788) * (relationLc760 rho) = ((1 : F) * rho 1606)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 141⟩], residual := [((1 : F), 1605), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 788) * (relationLc761 rho) = ((1 : F) * rho 1607)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7258851442726135091757493538747177051083634493118357404150169639770603807117 : F), 901, 5, 142⟩], residual := [((3757408648197852627479737957963013995509324789396997798290550461589896306328 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 902, 5, 142⟩], residual := [((3745075999614460600967743088708825780669704766927644192896498842915134407972 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1608 (rho : Nat -> F) : Prop :=
    (relationLc762 rho) * (relationLc763 rho) = ((1 : F) * rho 1608)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 901, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 902, 5, 142⟩], residual := [((2821090752870801958862850233105141938269865854267399860143015981793958452389 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1609) * ((1 : F) + (1 : F) * rho 1608) = (relationLc764 rho)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 902, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 901, 5, 142⟩], residual := [((4989780372726276304839211576580468511733287187287895936438657569330910355637 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1610) * ((1 : F) + (-1 : F) * rho 1608) = (relationLc765 rho)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 142⟩], residual := [((1 : F), 1609), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 789) * (relationLc766 rho) = ((1 : F) * rho 1611)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 142⟩], residual := [((1 : F), 1610), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 789) * (relationLc767 rho) = ((1 : F) * rho 1612)

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4912836250525791931876257357627014305569829117901281541749097756512292051911 : F), 901, 5, 143⟩], residual := [((8192114630894657579360719424442604095087866984716968635661176264544045278283 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 902, 5, 143⟩], residual := [((7642473922057180038463163915957276246749672006472435627550307534457360107529 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1613 (rho : Nat -> F) : Prop :=
    (relationLc768 rho) * (relationLc769 rho) = ((1 : F) * rho 1613)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 902, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 901, 5, 143⟩], residual := [((1699680798454648017676043781775248154018308213394654497665309062272062058485 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1614) * ((1 : F) + (1 : F) * rho 1613) = (relationLc770 rho)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (703234933914944312617785937435218534816590719047193413556270339355108245962 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 901, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 902, 5, 143⟩], residual := [((7003139007791479449076828035148229999631499557411186464331602961941605846610 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1615) * ((1 : F) + (-1 : F) * rho 1613) = (relationLc771 rho)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 143⟩], residual := [((1 : F), 1614), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 790) * (relationLc772 rho) = ((1 : F) * rho 1616)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 143⟩], residual := [((1 : F), 1615), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 790) * (relationLc773 rho) = ((1 : F) * rho 1617)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(886717573426729066326604091976680725971639947341124717775439132305961529024 : F), 901, 5, 144⟩], residual := [((4134382152027815847846987165678867887862071318564032421742576450541955157646 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 902, 5, 144⟩], residual := [((1893992924228206864743506555281205748055452779364706554684512369161828987403 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1618 (rho : Nat -> F) : Prop :=
    (relationLc774 rho) * (relationLc775 rho) = ((1 : F) * rho 1618)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 901, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 902, 5, 144⟩], residual := [((5263642308608615397371007726548151275429110763535249734123009188371037887834 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1619) * ((1 : F) + (1 : F) * rho 1618) = (relationLc776 rho)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 902, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 901, 5, 144⟩], residual := [((7352962231422340902181050454851445609647598495372709835433994454756267569783 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1620) * ((1 : F) + (-1 : F) * rho 1618) = (relationLc777 rho)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 144⟩], residual := [((1 : F), 1619), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 791) * (relationLc778 rho) = ((1 : F) * rho 1621)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 144⟩], residual := [((1 : F), 1620), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 791) * (relationLc779 rho) = ((1 : F) * rho 1622)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7564222454318092505197506898753806325783824783543223520370256888360995323078 : F), 901, 5, 145⟩], residual := [((2818841906889629319927653630250930674698598542258063614095599696018287023212 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 902, 5, 145⟩], residual := [((4242845817114224427945064867609693310190584888653730496427512569643691008850 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1623 (rho : Nat -> F) : Prop :=
    (relationLc780 rho) * (relationLc781 rho) = ((1 : F) * rho 1623)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 901, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 902, 5, 145⟩], residual := [((2672846260254954467962306853056572416460509804968088057604107868376042645620 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1624) * ((1 : F) + (1 : F) * rho 1623) = (relationLc782 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
