import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs37

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 772, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 773, 5, 141⟩], residual := [((1556549048519305282320526152711847347066353350624913051017414930734467392265 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1475) * ((1 : F) + (1 : F) * rho 1474) = (relationLc757 rho)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 773, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 772, 5, 141⟩], residual := [((4967172430737793440161742522146875106540386697005819122562987476773101864051 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1476) * ((1 : F) + (-1 : F) * rho 1474) = (relationLc758 rho)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 141⟩], residual := [((1 : F), 1475), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 659) * (relationLc759 rho) = ((1 : F) * rho 1477)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 141⟩], residual := [((1 : F), 1476), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 659) * (relationLc760 rho) = ((1 : F) * rho 1478)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7258851442726135091757493538747177051083634493118357404150169639770603807117 : F), 772, 5, 142⟩], residual := [((3757408648197852627479737957963013995509324789396997798290550461589896306328 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 773, 5, 142⟩], residual := [((3745075999614460600967743088708825780669704766927644192896498842915134407972 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1479 (rho : Nat -> F) : Prop :=
    (relationLc761 rho) * (relationLc762 rho) = ((1 : F) * rho 1479)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 772, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 773, 5, 142⟩], residual := [((2821090752870801958862850233105141938269865854267399860143015981793958452389 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1480) * ((1 : F) + (1 : F) * rho 1479) = (relationLc763 rho)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 773, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 772, 5, 142⟩], residual := [((4989780372726276304839211576580468511733287187287895936438657569330910355637 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1481) * ((1 : F) + (-1 : F) * rho 1479) = (relationLc764 rho)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 142⟩], residual := [((1 : F), 1480), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 660) * (relationLc765 rho) = ((1 : F) * rho 1482)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 142⟩], residual := [((1 : F), 1481), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 660) * (relationLc766 rho) = ((1 : F) * rho 1483)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4912836250525791931876257357627014305569829117901281541749097756512292051911 : F), 772, 5, 143⟩], residual := [((8192114630894657579360719424442604095087866984716968635661176264544045278283 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 773, 5, 143⟩], residual := [((7642473922057180038463163915957276246749672006472435627550307534457360107529 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1484 (rho : Nat -> F) : Prop :=
    (relationLc767 rho) * (relationLc768 rho) = ((1 : F) * rho 1484)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 773, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 772, 5, 143⟩], residual := [((1699680798454648017676043781775248154018308213394654497665309062272062058485 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1485) * ((1 : F) + (1 : F) * rho 1484) = (relationLc769 rho)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (703234933914944312617785937435218534816590719047193413556270339355108245962 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 772, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 773, 5, 143⟩], residual := [((7003139007791479449076828035148229999631499557411186464331602961941605846610 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1486) * ((1 : F) + (-1 : F) * rho 1484) = (relationLc770 rho)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 143⟩], residual := [((1 : F), 1485), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 661) * (relationLc771 rho) = ((1 : F) * rho 1487)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 143⟩], residual := [((1 : F), 1486), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 661) * (relationLc772 rho) = ((1 : F) * rho 1488)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(886717573426729066326604091976680725971639947341124717775439132305961529024 : F), 772, 5, 144⟩], residual := [((4134382152027815847846987165678867887862071318564032421742576450541955157646 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 773, 5, 144⟩], residual := [((1893992924228206864743506555281205748055452779364706554684512369161828987403 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1489 (rho : Nat -> F) : Prop :=
    (relationLc773 rho) * (relationLc774 rho) = ((1 : F) * rho 1489)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 772, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 773, 5, 144⟩], residual := [((5263642308608615397371007726548151275429110763535249734123009188371037887834 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1490) * ((1 : F) + (1 : F) * rho 1489) = (relationLc775 rho)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 773, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 772, 5, 144⟩], residual := [((7352962231422340902181050454851445609647598495372709835433994454756267569783 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1491) * ((1 : F) + (-1 : F) * rho 1489) = (relationLc776 rho)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 144⟩], residual := [((1 : F), 1490), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 662) * (relationLc777 rho) = ((1 : F) * rho 1492)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 144⟩], residual := [((1 : F), 1491), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 662) * (relationLc778 rho) = ((1 : F) * rho 1493)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7564222454318092505197506898753806325783824783543223520370256888360995323078 : F), 772, 5, 145⟩], residual := [((2818841906889629319927653630250930674698598542258063614095599696018287023212 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 773, 5, 145⟩], residual := [((4242845817114224427945064867609693310190584888653730496427512569643691008850 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1494 (rho : Nat -> F) : Prop :=
    (relationLc779 rho) * (relationLc780 rho) = ((1 : F) * rho 1494)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 772, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 773, 5, 145⟩], residual := [((2672846260254954467962306853056572416460509804968088057604107868376042645620 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1495) * ((1 : F) + (1 : F) * rho 1494) = (relationLc781 rho)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 773, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 772, 5, 145⟩], residual := [((3156917330037967942116929786651494679451482823360775864727015008418724551159 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1496) * ((1 : F) + (-1 : F) * rho 1494) = (relationLc782 rho)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 145⟩], residual := [((1 : F), 1495), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 663) * (relationLc783 rho) = ((1 : F) * rho 1497)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 145⟩], residual := [((1 : F), 1496), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 663) * (relationLc784 rho) = ((1 : F) * rho 1498)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4969710126479417040242673845284668082827372776959296050209878365457438797350 : F), 772, 5, 146⟩], residual := [((2271931576910216759912135799054106294509899499123123665253121747066940025690 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 773, 5, 146⟩], residual := [((7173440006072889427306769788914478402450473304064369961075503691215984571384 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1499 (rho : Nat -> F) : Prop :=
    (relationLc785 rho) * (relationLc786 rho) = ((1 : F) * rho 1499)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 772, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 773, 5, 146⟩], residual := [((7845052965834464772748554006427429502690369278885984804627211453932715838314 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1500) * ((1 : F) + (1 : F) * rho 1499) = (relationLc787 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
