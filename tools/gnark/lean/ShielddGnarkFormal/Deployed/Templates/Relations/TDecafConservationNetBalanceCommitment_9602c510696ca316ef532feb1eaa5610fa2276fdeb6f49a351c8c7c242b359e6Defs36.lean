import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs35

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 644, 5, 137⟩], residual := [((6379620170288982616717451862893153234840588989283417309127935841806481858823 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1325 (rho : Nat -> F) : Prop :=
    (relationLc730 rho) * (relationLc731 rho) = ((1 : F) * rho 1325)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 644, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 643, 5, 137⟩], residual := [((7359314893348421515225271450735113798488279394724809762221782173602312729013 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1326) * ((1 : F) + (1 : F) * rho 1325) = (relationLc732 rho)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (399272066708882471473661478034256233660263362106229428513063288307102671843 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 643, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 644, 5, 137⟩], residual := [((5258238054174353236686407733259757771163589712485420002797772895583062672255 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1327) * ((1 : F) + (-1 : F) * rho 1325) = (relationLc733 rho)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 137⟩], residual := [((1 : F), 1326), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 526) * (relationLc734 rho) = ((1 : F) * rho 1328)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 137⟩], residual := [((1 : F), 1327), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 526) * (relationLc735 rho) = ((1 : F) * rho 1329)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4333887481675846996833779897945626436896560341315150961022260292199950077462 : F), 643, 5, 138⟩], residual := [((5944094199112482869988791433907178420755743086093999184314023269429043933976 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 644, 5, 138⟩], residual := [((661257612603983612902691784131577914047187115807065062797106592791206840919 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1330 (rho : Nat -> F) : Prop :=
    (relationLc736 rho) * (relationLc737 rho) = ((1 : F) * rho 1330)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 644, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 643, 5, 138⟩], residual := [((1001450914782052233956679407112866993397481575469341038422554216569901167916 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1331) * ((1 : F) + (1 : F) * rho 1330) = (relationLc738 rho)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 643, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 644, 5, 138⟩], residual := [((4151435871285537693704968475948967861835607548913920228417800668664305575368 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1332) * ((1 : F) + (-1 : F) * rho 1330) = (relationLc739 rho)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 138⟩], residual := [((1 : F), 1331), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 527) * (relationLc740 rho) = ((1 : F) * rho 1333)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 138⟩], residual := [((1 : F), 1332), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 527) * (relationLc741 rho) = ((1 : F) * rho 1334)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7721202409233867409062652658857261571798880198557033565695328502159880999011 : F), 643, 5, 139⟩], residual := [((5146590959477163156881050336377696263214172343990131574253510952439082838728 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 644, 5, 139⟩], residual := [((2361757604488623516325681726769762151252964921105309079952398381899619653055 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1335 (rho : Nat -> F) : Prop :=
    (relationLc742 rho) * (relationLc743 rho) = ((1 : F) * rho 1335)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 644, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 643, 5, 139⟩], residual := [((8308966055992635782308512476562786702229380696748037942445776426152770442290 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1336) * ((1 : F) + (1 : F) * rho 1335) = (relationLc744 rho)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 643, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 644, 5, 139⟩], residual := [((3418508504477937153869321599578923273505141282225230379872761621744601802500 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1337) * ((1 : F) + (-1 : F) * rho 1335) = (relationLc745 rho)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 139⟩], residual := [((1 : F), 1336), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 528) * (relationLc746 rho) = ((1 : F) * rho 1338)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 139⟩], residual := [((1 : F), 1337), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 528) * (relationLc747 rho) = ((1 : F) * rho 1339)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7649756616545130197023568900816371172121317218320000820244495204967303807279 : F), 643, 5, 140⟩], residual := [((4273558139229451671239336362927427613297658649821490735026329685663292880096 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 644, 5, 140⟩], residual := [((5560654787699308439974244582711448265828952080602196793595018917133742704121 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1340 (rho : Nat -> F) : Prop :=
    (relationLc748 rho) * (relationLc749 rho) = ((1 : F) * rho 1340)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 643, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 644, 5, 140⟩], residual := [((2811539659166277309292482118825942023107804352319582653921651359723260281633 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1341) * ((1 : F) + (1 : F) * rho 1340) = (relationLc750 rho)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 644, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 643, 5, 140⟩], residual := [((6841460753414435441275779454041305233001587920382853920501679485965974771010 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1342) * ((1 : F) + (-1 : F) * rho 1340) = (relationLc751 rho)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 140⟩], residual := [((1 : F), 1341), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 529) * (relationLc752 rho) = ((1 : F) * rho 1343)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 140⟩], residual := [((1 : F), 1342), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 529) * (relationLc753 rho) = ((1 : F) * rho 1344)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(974152610401337109221475481096159242449130933949474218343847976112483342167 : F), 643, 5, 141⟩], residual := [((3146877451167613501914157760670700402640970263955640333485006556010273307510 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 644, 5, 141⟩], residual := [((1832237507884495967027152935624360556667006466783899041958197157010473099434 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1345 (rho : Nat -> F) : Prop :=
    (relationLc754 rho) * (relationLc755 rho) = ((1 : F) * rho 1345)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 643, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 644, 5, 141⟩], residual := [((1556549048519305282320526152711847347066353350624913051017414930734467392265 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1346) * ((1 : F) + (1 : F) * rho 1345) = (relationLc756 rho)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 644, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 643, 5, 141⟩], residual := [((4967172430737793440161742522146875106540386697005819122562987476773101864051 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1347) * ((1 : F) + (-1 : F) * rho 1345) = (relationLc757 rho)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 141⟩], residual := [((1 : F), 1346), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 530) * (relationLc758 rho) = ((1 : F) * rho 1348)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 141⟩], residual := [((1 : F), 1347), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 530) * (relationLc759 rho) = ((1 : F) * rho 1349)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7258851442726135091757493538747177051083634493118357404150169639770603807117 : F), 643, 5, 142⟩], residual := [((3757408648197852627479737957963013995509324789396997798290550461589896306328 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 644, 5, 142⟩], residual := [((3745075999614460600967743088708825780669704766927644192896498842915134407972 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1350 (rho : Nat -> F) : Prop :=
    (relationLc760 rho) * (relationLc761 rho) = ((1 : F) * rho 1350)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
