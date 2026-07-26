import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs44

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 1417, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 1418, 5, 142⟩], residual := [((2821090752870801958862850233105141938269865854267399860143015981793958452389 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2125) * ((1 : F) + (1 : F) * rho 2124) = (relationLc768 rho)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 1418, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 1417, 5, 142⟩], residual := [((4989780372726276304839211576580468511733287187287895936438657569330910355637 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2126) * ((1 : F) + (-1 : F) * rho 2124) = (relationLc769 rho)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 142⟩], residual := [((1 : F), 2125), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1305) * (relationLc770 rho) = ((1 : F) * rho 2127)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 142⟩], residual := [((1 : F), 2126), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1305) * (relationLc771 rho) = ((1 : F) * rho 2128)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4912836250525791931876257357627014305569829117901281541749097756512292051911 : F), 1417, 5, 143⟩], residual := [((8192114630894657579360719424442604095087866984716968635661176264544045278283 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 1418, 5, 143⟩], residual := [((7642473922057180038463163915957276246749672006472435627550307534457360107529 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2129 (rho : Nat -> F) : Prop :=
    (relationLc772 rho) * (relationLc773 rho) = ((1 : F) * rho 2129)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 1418, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 1417, 5, 143⟩], residual := [((1699680798454648017676043781775248154018308213394654497665309062272062058485 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2130) * ((1 : F) + (1 : F) * rho 2129) = (relationLc774 rho)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (703234933914944312617785937435218534816590719047193413556270339355108245962 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 1417, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 1418, 5, 143⟩], residual := [((7003139007791479449076828035148229999631499557411186464331602961941605846610 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2131) * ((1 : F) + (-1 : F) * rho 2129) = (relationLc775 rho)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 143⟩], residual := [((1 : F), 2130), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1306) * (relationLc776 rho) = ((1 : F) * rho 2132)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 143⟩], residual := [((1 : F), 2131), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1306) * (relationLc777 rho) = ((1 : F) * rho 2133)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(886717573426729066326604091976680725971639947341124717775439132305961529024 : F), 1417, 5, 144⟩], residual := [((4134382152027815847846987165678867887862071318564032421742576450541955157646 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 1418, 5, 144⟩], residual := [((1893992924228206864743506555281205748055452779364706554684512369161828987403 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2134 (rho : Nat -> F) : Prop :=
    (relationLc778 rho) * (relationLc779 rho) = ((1 : F) * rho 2134)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 1417, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 1418, 5, 144⟩], residual := [((5263642308608615397371007726548151275429110763535249734123009188371037887834 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2135) * ((1 : F) + (1 : F) * rho 2134) = (relationLc780 rho)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 1418, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 1417, 5, 144⟩], residual := [((7352962231422340902181050454851445609647598495372709835433994454756267569783 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2136) * ((1 : F) + (-1 : F) * rho 2134) = (relationLc781 rho)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 144⟩], residual := [((1 : F), 2135), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1307) * (relationLc782 rho) = ((1 : F) * rho 2137)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 144⟩], residual := [((1 : F), 2136), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1307) * (relationLc783 rho) = ((1 : F) * rho 2138)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7564222454318092505197506898753806325783824783543223520370256888360995323078 : F), 1417, 5, 145⟩], residual := [((2818841906889629319927653630250930674698598542258063614095599696018287023212 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 1418, 5, 145⟩], residual := [((4242845817114224427945064867609693310190584888653730496427512569643691008850 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2139 (rho : Nat -> F) : Prop :=
    (relationLc784 rho) * (relationLc785 rho) = ((1 : F) * rho 2139)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 1417, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 1418, 5, 145⟩], residual := [((2672846260254954467962306853056572416460509804968088057604107868376042645620 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2140) * ((1 : F) + (1 : F) * rho 2139) = (relationLc786 rho)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), runs := [⟨(3544090453154605567702237240759673373577970302027057958793217823745686362525 : F), 1418, 5, 145⟩, ⟨(3586408994992663441520313756271865936409857864502767061671790128892633911444 : F), 1417, 5, 145⟩], residual := [((3156917330037967942116929786651494679451482823360775864727015008418724551159 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2141) * ((1 : F) + (-1 : F) * rho 2139) = (relationLc787 rho)

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 145⟩], residual := [((1 : F), 2140), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1308) * (relationLc788 rho) = ((1 : F) * rho 2142)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 145⟩], residual := [((1 : F), 2141), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1308) * (relationLc789 rho) = ((1 : F) * rho 2143)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4969710126479417040242673845284668082827372776959296050209878365457438797350 : F), 1417, 5, 146⟩], residual := [((2271931576910216759912135799054106294509899499123123665253121747066940025690 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 1418, 5, 146⟩], residual := [((7173440006072889427306769788914478402450473304064369961075503691215984571384 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2144 (rho : Nat -> F) : Prop :=
    (relationLc790 rho) * (relationLc791 rho) = ((1 : F) * rho 2144)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 1417, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 1418, 5, 146⟩], residual := [((7845052965834464772748554006427429502690369278885984804627211453932715838314 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2145) * ((1 : F) + (1 : F) * rho 2144) = (relationLc792 rho)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), runs := [⟨(2539735510959099557185758264898685507637253879211138448134856622422530628218 : F), 1418, 5, 146⟩, ⟨(7038622271812096778107543348502865391285077241198486832449279088358690820061 : F), 1417, 5, 146⟩], residual := [((3568703348387618865037818114798549685267027754823348245285753842434728604050 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2146) * ((1 : F) + (-1 : F) * rho 2144) = (relationLc793 rho)

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 146⟩], residual := [((1 : F), 2145), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1309) * (relationLc794 rho) = ((1 : F) * rho 2147)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 146⟩], residual := [((1 : F), 2146), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1309) * (relationLc795 rho) = ((1 : F) * rho 2148)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2719012481549545869324764786358786154111901976412339216924475349808954699287 : F), 1417, 5, 147⟩], residual := [((7069867608569530454272722591226468214154025324532012652884181240601038076182 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 1418, 5, 147⟩], residual := [((2514506040517189860011682643505832214683020728103087183572227706463071033086 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2149 (rho : Nat -> F) : Prop :=
    (relationLc796 rho) * (relationLc797 rho) = ((1 : F) * rho 2149)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), runs := [⟨(2072183107847723280449422060385132328998230158664539435854661524721817014508 : F), 1417, 5, 147⟩, ⟨(6314863435697393774008755020748667925383308882550274225049730601276849907389 : F), 1418, 5, 147⟩], residual := [((4957102854439578774551072545573861539444793036912762699772275037895212477561 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
