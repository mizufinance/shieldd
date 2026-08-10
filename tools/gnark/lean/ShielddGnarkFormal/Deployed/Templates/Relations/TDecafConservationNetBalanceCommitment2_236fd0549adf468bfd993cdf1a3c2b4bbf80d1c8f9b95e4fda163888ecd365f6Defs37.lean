import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs36

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 773, 5, 136⟩], residual := [((6006116169291428073197529656730927932152541149289275142274954312799951685564 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1449 (rho : Nat -> F) : Prop :=
    (relationLc725 rho) * (relationLc726 rho) = ((1 : F) * rho 1449)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 773, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 772, 5, 136⟩], residual := [((7191250651280949307107957613142024512042853333480078781882888464919135769631 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1450) * ((1 : F) + (1 : F) * rho 1449) = (relationLc727 rho)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 772, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 773, 5, 136⟩], residual := [((7193290381473226418882359260584966731482792509660718177570316120546523708951 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1451) * ((1 : F) + (-1 : F) * rho 1449) = (relationLc728 rho)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 136⟩], residual := [((1 : F), 1450), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 654) * (relationLc729 rho) = ((1 : F) * rho 1452)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 136⟩], residual := [((1 : F), 1451), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 654) * (relationLc730 rho) = ((1 : F) * rho 1453)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087345108705346078598183834508474432277911331042039971161043235485059693881 : F), 772, 5, 137⟩], residual := [((4096146062635263905034246297021576798107947534524261019178058784111825179640 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 773, 5, 137⟩], residual := [((6379620170288982616717451862893153234840588989283417309127935841806481858823 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1454 (rho : Nat -> F) : Prop :=
    (relationLc731 rho) * (relationLc732 rho) = ((1 : F) * rho 1454)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 773, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 772, 5, 137⟩], residual := [((7359314893348421515225271450735113798488279394724809762221782173602312729013 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1455) * ((1 : F) + (1 : F) * rho 1454) = (relationLc733 rho)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (399272066708882471473661478034256233660263362106229428513063288307102671843 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 772, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 773, 5, 137⟩], residual := [((5258238054174353236686407733259757771163589712485420002797772895583062672255 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1456) * ((1 : F) + (-1 : F) * rho 1454) = (relationLc734 rho)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 137⟩], residual := [((1 : F), 1455), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 655) * (relationLc735 rho) = ((1 : F) * rho 1457)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 137⟩], residual := [((1 : F), 1456), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 655) * (relationLc736 rho) = ((1 : F) * rho 1458)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4333887481675846996833779897945626436896560341315150961022260292199950077462 : F), 772, 5, 138⟩], residual := [((5944094199112482869988791433907178420755743086093999184314023269429043933976 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 773, 5, 138⟩], residual := [((661257612603983612902691784131577914047187115807065062797106592791206840919 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1459 (rho : Nat -> F) : Prop :=
    (relationLc737 rho) * (relationLc738 rho) = ((1 : F) * rho 1459)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 773, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 772, 5, 138⟩], residual := [((1001450914782052233956679407112866993397481575469341038422554216569901167916 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1460) * ((1 : F) + (1 : F) * rho 1459) = (relationLc739 rho)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 772, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 773, 5, 138⟩], residual := [((4151435871285537693704968475948967861835607548913920228417800668664305575368 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1461) * ((1 : F) + (-1 : F) * rho 1459) = (relationLc740 rho)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 138⟩], residual := [((1 : F), 1460), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 656) * (relationLc741 rho) = ((1 : F) * rho 1462)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 138⟩], residual := [((1 : F), 1461), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 656) * (relationLc742 rho) = ((1 : F) * rho 1463)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7721202409233867409062652658857261571798880198557033565695328502159880999011 : F), 772, 5, 139⟩], residual := [((5146590959477163156881050336377696263214172343990131574253510952439082838728 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 773, 5, 139⟩], residual := [((2361757604488623516325681726769762151252964921105309079952398381899619653055 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1464 (rho : Nat -> F) : Prop :=
    (relationLc743 rho) * (relationLc744 rho) = ((1 : F) * rho 1464)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 773, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 772, 5, 139⟩], residual := [((8308966055992635782308512476562786702229380696748037942445776426152770442290 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1465) * ((1 : F) + (1 : F) * rho 1464) = (relationLc745 rho)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 772, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 773, 5, 139⟩], residual := [((3418508504477937153869321599578923273505141282225230379872761621744601802500 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1466) * ((1 : F) + (-1 : F) * rho 1464) = (relationLc746 rho)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 139⟩], residual := [((1 : F), 1465), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 657) * (relationLc747 rho) = ((1 : F) * rho 1467)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 139⟩], residual := [((1 : F), 1466), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 657) * (relationLc748 rho) = ((1 : F) * rho 1468)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7649756616545130197023568900816371172121317218320000820244495204967303807279 : F), 772, 5, 140⟩], residual := [((4273558139229451671239336362927427613297658649821490735026329685663292880096 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 773, 5, 140⟩], residual := [((5560654787699308439974244582711448265828952080602196793595018917133742704121 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1469 (rho : Nat -> F) : Prop :=
    (relationLc749 rho) * (relationLc750 rho) = ((1 : F) * rho 1469)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 772, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 773, 5, 140⟩], residual := [((2811539659166277309292482118825942023107804352319582653921651359723260281633 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1470) * ((1 : F) + (1 : F) * rho 1469) = (relationLc751 rho)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), runs := [⟨(1344254020636267108188169327876848297329544190033853240062613887469488162379 : F), 773, 5, 140⟩, ⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 772, 5, 140⟩], residual := [((6841460753414435441275779454041305233001587920382853920501679485965974771010 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1471) * ((1 : F) + (-1 : F) * rho 1469) = (relationLc752 rho)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 140⟩], residual := [((1 : F), 1470), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 658) * (relationLc753 rho) = ((1 : F) * rho 1472)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 140⟩], residual := [((1 : F), 1471), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 658) * (relationLc754 rho) = ((1 : F) * rho 1473)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(974152610401337109221475481096159242449130933949474218343847976112483342167 : F), 772, 5, 141⟩], residual := [((3146877451167613501914157760670700402640970263955640333485006556010273307510 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), runs := [⟨(6499833287224778346868805553556743730045197086114802723159371845919950025028 : F), 773, 5, 141⟩], residual := [((1832237507884495967027152935624360556667006466783899041958197157010473099434 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1474 (rho : Nat -> F) : Prop :=
    (relationLc755 rho) * (relationLc756 rho) = ((1 : F) * rho 1474)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
