import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs83

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7649756616545130197023568900816371172121317218320000820244495204967303807279 : F), 4471, 5, 140⟩], residual := [((4273558139229451671239336362927427613297658649821490735026329685663292880096 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 4472, 5, 140⟩], residual := [((5560654787699308439974244582711448265828952080602196793595018917133742704121 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5342 (rho : Nat -> F) : Prop :=
    (relationLc755 rho) * (relationLc756 rho) = ((1 : F) * rho 5168)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 4471, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 4472, 5, 140⟩], residual := [((2811539659166277309292482118825942023107804352319582653921651359723260281633 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5169) * ((1 : F) + (1 : F) * rho 5168) = (relationLc757 rho)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 4472, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 4471, 5, 140⟩], residual := [((6841460753414435441275779454041305233001587920382853920501679485965974771010 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5170) * ((1 : F) + (-1 : F) * rho 5168) = (relationLc758 rho)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 140⟩], residual := [((1 : F), 5169), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4357) * (relationLc759 rho) = ((1 : F) * rho 5171)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 140⟩], residual := [((1 : F), 5170), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4357) * (relationLc760 rho) = ((1 : F) * rho 5172)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(974152610401337109221475481096159242449130933949474218343847976112483342167 : F), 4471, 5, 141⟩], residual := [((3146877451167613501914157760670700402640970263955640333485006556010273307510 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 4472, 5, 141⟩], residual := [((1832237507884495967027152935624360556667006466783899041958197157010473099434 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5347 (rho : Nat -> F) : Prop :=
    (relationLc761 rho) * (relationLc762 rho) = ((1 : F) * rho 5173)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 4471, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 4472, 5, 141⟩], residual := [((1556549048519305282320526152711847347066353350624913051017414930734467392265 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5174) * ((1 : F) + (1 : F) * rho 5173) = (relationLc763 rho)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 4472, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 4471, 5, 141⟩], residual := [((4967172430737793440161742522146875106540386697005819122562987476773101864051 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5175) * ((1 : F) + (-1 : F) * rho 5173) = (relationLc764 rho)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 141⟩], residual := [((1 : F), 5174), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * (relationLc765 rho) = ((1 : F) * rho 5176)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 141⟩], residual := [((1 : F), 5175), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4358) * (relationLc766 rho) = ((1 : F) * rho 5177)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7258851442726135091757493538747177051083634493118357404150169639770603807117 : F), 4471, 5, 142⟩], residual := [((3757408648197852627479737957963013995509324789396997798290550461589896306328 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 4472, 5, 142⟩], residual := [((3745075999614460600967743088708825780669704766927644192896498842915134407972 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5352 (rho : Nat -> F) : Prop :=
    (relationLc767 rho) * (relationLc768 rho) = ((1 : F) * rho 5178)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 4471, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 4472, 5, 142⟩], residual := [((2821090752870801958862850233105141938269865854267399860143015981793958452389 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5179) * ((1 : F) + (1 : F) * rho 5178) = (relationLc769 rho)

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), runs := [⟨(6996127821420890081616126279500223965095525908986622328665377118949066044319 : F), 4472, 5, 142⟩, ⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 4471, 5, 142⟩], residual := [((4989780372726276304839211576580468511733287187287895936438657569330910355637 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5180) * ((1 : F) + (-1 : F) * rho 5178) = (relationLc770 rho)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 142⟩], residual := [((1 : F), 5179), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4359) * (relationLc771 rho) = ((1 : F) * rho 5181)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 142⟩], residual := [((1 : F), 5180), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4359) * (relationLc772 rho) = ((1 : F) * rho 5182)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4912836250525791931876257357627014305569829117901281541749097756512292051911 : F), 4471, 5, 143⟩], residual := [((8192114630894657579360719424442604095087866984716968635661176264544045278283 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 4472, 5, 143⟩], residual := [((7642473922057180038463163915957276246749672006472435627550307534457360107529 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5357 (rho : Nat -> F) : Prop :=
    (relationLc773 rho) * (relationLc774 rho) = ((1 : F) * rho 5183)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 4472, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 4471, 5, 143⟩], residual := [((1699680798454648017676043781775248154018308213394654497665309062272062058485 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5184) * ((1 : F) + (1 : F) * rho 5183) = (relationLc775 rho)

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (703234933914944312617785937435218534816590719047193413556270339355108245962 : F), runs := [⟨(5684520490881418825253026022431656593826886917116673702269654133874032658502 : F), 4471, 5, 143⟩, ⟨(703234933914944312617785937435218534816590719047193413556270339355108245962 : F), 4472, 5, 143⟩], residual := [((7003139007791479449076828035148229999631499557411186464331602961941605846610 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5185) * ((1 : F) + (-1 : F) * rho 5183) = (relationLc776 rho)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 143⟩], residual := [((1 : F), 5184), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4360) * (relationLc777 rho) = ((1 : F) * rho 5186)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 143⟩], residual := [((1 : F), 5185), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4360) * (relationLc778 rho) = ((1 : F) * rho 5187)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(886717573426729066326604091976680725971639947341124717775439132305961529024 : F), 4471, 5, 144⟩], residual := [((4134382152027815847846987165678867887862071318564032421742576450541955157646 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 4472, 5, 144⟩], residual := [((1893992924228206864743506555281205748055452779364706554684512369161828987403 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5362 (rho : Nat -> F) : Prop :=
    (relationLc779 rho) * (relationLc780 rho) = ((1 : F) * rho 5188)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 4471, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 4472, 5, 144⟩], residual := [((5263642308608615397371007726548151275429110763535249734123009188371037887834 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5189) * ((1 : F) + (1 : F) * rho 5188) = (relationLc781 rho)

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), runs := [⟨(3449636715116860586755834683399008639670252042213656368219084251484405482458 : F), 4472, 5, 144⟩, ⟨(6284985808396533083939011601791904637626792471787768978871483264016845837444 : F), 4471, 5, 144⟩], residual := [((7352962231422340902181050454851445609647598495372709835433994454756267569783 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5190) * ((1 : F) + (-1 : F) * rho 5188) = (relationLc782 rho)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 144⟩], residual := [((1 : F), 5189), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4361) * (relationLc783 rho) = ((1 : F) * rho 5191)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 144⟩], residual := [((1 : F), 5190), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4361) * (relationLc784 rho) = ((1 : F) * rho 5192)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7564222454318092505197506898753806325783824783543223520370256888360995323078 : F), 4471, 5, 145⟩], residual := [((2818841906889629319927653630250930674698598542258063614095599696018287023212 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
