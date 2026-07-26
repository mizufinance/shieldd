import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs43

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 1418, 5, 137⟩], residual := [((6379620170288982616717451862893153234840588989283417309127935841806481858823 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2099 (rho : Nat -> F) : Prop :=
    (relationLc736 rho) * (relationLc737 rho) = ((1 : F) * rho 2099)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 1418, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 1417, 5, 137⟩], residual := [((7359314893348421515225271450735113798488279394724809762221782173602312729013 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2100) * ((1 : F) + (1 : F) * rho 2099) = (relationLc738 rho)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (399272066708882471473661478034256233660263362106229428513063288307102671843 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 1417, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 1418, 5, 137⟩], residual := [((5258238054174353236686407733259757771163589712485420002797772895583062672255 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2101) * ((1 : F) + (-1 : F) * rho 2099) = (relationLc739 rho)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 137⟩], residual := [((1 : F), 2100), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1300) * (relationLc740 rho) = ((1 : F) * rho 2102)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 137⟩], residual := [((1 : F), 2101), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1300) * (relationLc741 rho) = ((1 : F) * rho 2103)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4333887481675846996833779897945626436896560341315150961022260292199950077462 : F), 1417, 5, 138⟩], residual := [((5944094199112482869988791433907178420755743086093999184314023269429043933976 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 1418, 5, 138⟩], residual := [((661257612603983612902691784131577914047187115807065062797106592791206840919 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2104 (rho : Nat -> F) : Prop :=
    (relationLc742 rho) * (relationLc743 rho) = ((1 : F) * rho 2104)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 1418, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 1417, 5, 138⟩], residual := [((1001450914782052233956679407112866993397481575469341038422554216569901167916 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2105) * ((1 : F) + (1 : F) * rho 2104) = (relationLc744 rho)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 1417, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 1418, 5, 138⟩], residual := [((4151435871285537693704968475948967861835607548913920228417800668664305575368 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2106) * ((1 : F) + (-1 : F) * rho 2104) = (relationLc745 rho)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 138⟩], residual := [((1 : F), 2105), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1301) * (relationLc746 rho) = ((1 : F) * rho 2107)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 138⟩], residual := [((1 : F), 2106), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1301) * (relationLc747 rho) = ((1 : F) * rho 2108)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7721202409233867409062652658857261571798880198557033565695328502159880999011 : F), 1417, 5, 139⟩], residual := [((5146590959477163156881050336377696263214172343990131574253510952439082838728 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 1418, 5, 139⟩], residual := [((2361757604488623516325681726769762151252964921105309079952398381899619653055 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2109 (rho : Nat -> F) : Prop :=
    (relationLc748 rho) * (relationLc749 rho) = ((1 : F) * rho 2109)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 1418, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 1417, 5, 139⟩], residual := [((8308966055992635782308512476562786702229380696748037942445776426152770442290 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2110) * ((1 : F) + (1 : F) * rho 2109) = (relationLc750 rho)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 1417, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 1418, 5, 139⟩], residual := [((3418508504477937153869321599578923273505141282225230379872761621744601802500 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2111) * ((1 : F) + (-1 : F) * rho 2109) = (relationLc751 rho)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 139⟩], residual := [((1 : F), 2110), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1302) * (relationLc752 rho) = ((1 : F) * rho 2112)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 139⟩], residual := [((1 : F), 2111), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1302) * (relationLc753 rho) = ((1 : F) * rho 2113)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7649756616545130197023568900816371172121317218320000820244495204967303807279 : F), 1417, 5, 140⟩], residual := [((4273558139229451671239336362927427613297658649821490735026329685663292880096 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 1418, 5, 140⟩], residual := [((5560654787699308439974244582711448265828952080602196793595018917133742704121 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2114 (rho : Nat -> F) : Prop :=
    (relationLc754 rho) * (relationLc755 rho) = ((1 : F) * rho 2114)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 1417, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 1418, 5, 140⟩], residual := [((2811539659166277309292482118825942023107804352319582653921651359723260281633 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2115) * ((1 : F) + (1 : F) * rho 2114) = (relationLc756 rho)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 1418, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 1417, 5, 140⟩], residual := [((6841460753414435441275779454041305233001587920382853920501679485965974771010 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2116) * ((1 : F) + (-1 : F) * rho 2114) = (relationLc757 rho)

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 140⟩], residual := [((1 : F), 2115), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1303) * (relationLc758 rho) = ((1 : F) * rho 2117)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 140⟩], residual := [((1 : F), 2116), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1303) * (relationLc759 rho) = ((1 : F) * rho 2118)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(974152610401337109221475481096159242449130933949474218343847976112483342167 : F), 1417, 5, 141⟩], residual := [((3146877451167613501914157760670700402640970263955640333485006556010273307510 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 1418, 5, 141⟩], residual := [((1832237507884495967027152935624360556667006466783899041958197157010473099434 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2119 (rho : Nat -> F) : Prop :=
    (relationLc760 rho) * (relationLc761 rho) = ((1 : F) * rho 2119)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 1417, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 1418, 5, 141⟩], residual := [((1556549048519305282320526152711847347066353350624913051017414930734467392265 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2120) * ((1 : F) + (1 : F) * rho 2119) = (relationLc762 rho)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), runs := [⟨(3161754515463054712656286819345589303617540972854417631119858618543099083978 : F), 1418, 5, 141⟩, ⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 1417, 5, 141⟩], residual := [((4967172430737793440161742522146875106540386697005819122562987476773101864051 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2121) * ((1 : F) + (-1 : F) * rho 2119) = (relationLc763 rho)

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 141⟩], residual := [((1 : F), 2120), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1304) * (relationLc764 rho) = ((1 : F) * rho 2122)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 141⟩], residual := [((1 : F), 2121), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1304) * (relationLc765 rho) = ((1 : F) * rho 2123)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7258851442726135091757493538747177051083634493118357404150169639770603807117 : F), 1417, 5, 142⟩], residual := [((3757408648197852627479737957963013995509324789396997798290550461589896306328 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), runs := [⟨(8269315181259746569560160111304705186817522176553844874749300613419693593561 : F), 1418, 5, 142⟩], residual := [((3745075999614460600967743088708825780669704766927644192896498842915134407972 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2124 (rho : Nat -> F) : Prop :=
    (relationLc766 rho) * (relationLc767 rho) = ((1 : F) * rho 2124)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
