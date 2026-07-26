import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs36

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 643, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 644, 5, 142⟩], residual := [((2821090752870801958862850233105141938269865854267399860143015981793958452389 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1351) * ((1 : F) + (1 : F) * rho 1350) = (relationLc762 rho)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 644, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 643, 5, 142⟩], residual := [((4989780372726276304839211576580468511733287187287895936438657569330910355637 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1352) * ((1 : F) + (-1 : F) * rho 1350) = (relationLc763 rho)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 142⟩], residual := [((1 : F), 1351), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 531) * (relationLc764 rho) = ((1 : F) * rho 1353)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 142⟩], residual := [((1 : F), 1352), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 531) * (relationLc765 rho) = ((1 : F) * rho 1354)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4912836250525791931876257357627014305569829117901281541749097756512292051911 : F), 643, 5, 143⟩], residual := [((8192114630894657579360719424442604095087866984716968635661176264544045278283 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 644, 5, 143⟩], residual := [((7642473922057180038463163915957276246749672006472435627550307534457360107529 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1355 (rho : Nat -> F) : Prop :=
    (relationLc766 rho) * (relationLc767 rho) = ((1 : F) * rho 1355)

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 644, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 643, 5, 143⟩], residual := [((1699680798454648017676043781775248154018308213394654497665309062272062058485 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1356) * ((1 : F) + (1 : F) * rho 1355) = (relationLc768 rho)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (703234933914944312617785937435218534816590719047193413556270339355108245962 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 643, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 644, 5, 143⟩], residual := [((7003139007791479449076828035148229999631499557411186464331602961941605846610 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1357) * ((1 : F) + (-1 : F) * rho 1355) = (relationLc769 rho)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 143⟩], residual := [((1 : F), 1356), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 532) * (relationLc770 rho) = ((1 : F) * rho 1358)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 143⟩], residual := [((1 : F), 1357), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 532) * (relationLc771 rho) = ((1 : F) * rho 1359)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(886717573426729066326604091976680725971639947341124717775439132305961529024 : F), 643, 5, 144⟩], residual := [((4134382152027815847846987165678867887862071318564032421742576450541955157646 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 644, 5, 144⟩], residual := [((1893992924228206864743506555281205748055452779364706554684512369161828987403 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1360 (rho : Nat -> F) : Prop :=
    (relationLc772 rho) * (relationLc773 rho) = ((1 : F) * rho 1360)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 643, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 644, 5, 144⟩], residual := [((5263642308608615397371007726548151275429110763535249734123009188371037887834 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1361) * ((1 : F) + (1 : F) * rho 1360) = (relationLc774 rho)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 644, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 643, 5, 144⟩], residual := [((7352962231422340902181050454851445609647598495372709835433994454756267569783 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1362) * ((1 : F) + (-1 : F) * rho 1360) = (relationLc775 rho)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 144⟩], residual := [((1 : F), 1361), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 533) * (relationLc776 rho) = ((1 : F) * rho 1363)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 144⟩], residual := [((1 : F), 1362), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 533) * (relationLc777 rho) = ((1 : F) * rho 1364)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7564222454318092505197506898753806325783824783543223520370256888360995323078 : F), 643, 5, 145⟩], residual := [((2818841906889629319927653630250930674698598542258063614095599696018287023212 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 644, 5, 145⟩], residual := [((4242845817114224427945064867609693310190584888653730496427512569643691008850 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1365 (rho : Nat -> F) : Prop :=
    (relationLc778 rho) * (relationLc779 rho) = ((1 : F) * rho 1365)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 643, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 644, 5, 145⟩], residual := [((2672846260254954467962306853056572416460509804968088057604107868376042645620 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1366) * ((1 : F) + (1 : F) * rho 1365) = (relationLc780 rho)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 644, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 643, 5, 145⟩], residual := [((3156917330037967942116929786651494679451482823360775864727015008418724551159 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1367) * ((1 : F) + (-1 : F) * rho 1365) = (relationLc781 rho)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 145⟩], residual := [((1 : F), 1366), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 534) * (relationLc782 rho) = ((1 : F) * rho 1368)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 145⟩], residual := [((1 : F), 1367), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 534) * (relationLc783 rho) = ((1 : F) * rho 1369)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4969710126479417040242673845284668082827372776959296050209878365457438797350 : F), 643, 5, 146⟩], residual := [((2271931576910216759912135799054106294509899499123123665253121747066940025690 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 644, 5, 146⟩], residual := [((7173440006072889427306769788914478402450473304064369961075503691215984571384 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1370 (rho : Nat -> F) : Prop :=
    (relationLc784 rho) * (relationLc785 rho) = ((1 : F) * rho 1370)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 643, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 644, 5, 146⟩], residual := [((7845052965834464772748554006427429502690369278885984804627211453932715838314 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1371) * ((1 : F) + (1 : F) * rho 1370) = (relationLc786 rho)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 644, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 643, 5, 146⟩], residual := [((3568703348387618865037818114798549685267027754823348245285753842434728604050 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1372) * ((1 : F) + (-1 : F) * rho 1370) = (relationLc787 rho)

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 146⟩], residual := [((1 : F), 1371), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 535) * (relationLc788 rho) = ((1 : F) * rho 1373)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 146⟩], residual := [((1 : F), 1372), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 535) * (relationLc789 rho) = ((1 : F) * rho 1374)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2719012481549545869324764786358786154111901976412339216924475349808954699287 : F), 643, 5, 147⟩], residual := [((7069867608569530454272722591226468214154025324532012652884181240601038076182 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 644, 5, 147⟩], residual := [((2514506040517189860011682643505832214683020728103087183572227706463071033086 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1375 (rho : Nat -> F) : Prop :=
    (relationLc790 rho) * (relationLc791 rho) = ((1 : F) * rho 1375)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 643, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 644, 5, 147⟩], residual := [((4957102854439578774551072545573861539444793036912762699772275037895212477561 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1376) * ((1 : F) + (1 : F) * rho 1375) = (relationLc792 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
