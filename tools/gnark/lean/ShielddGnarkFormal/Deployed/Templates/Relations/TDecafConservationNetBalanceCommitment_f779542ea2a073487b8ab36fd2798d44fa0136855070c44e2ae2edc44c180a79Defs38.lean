import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs37

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 902, 5, 135⟩], residual := [((2155251289432948419869296733670523418111359808186213117074426634857209198168 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1573 (rho : Nat -> F) : Prop :=
    (relationLc720 rho) * (relationLc721 rho) = ((1 : F) * rho 1573)

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 901, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 902, 5, 135⟩], residual := [((6827325752514491330188348532569555236208582611972810214426943593311958665772 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1574) * ((1 : F) + (1 : F) * rho 1573) = (relationLc722 rho)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 902, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 901, 5, 135⟩], residual := [((5085208660706444495012546054454032064158703160023411916148475697428986337635 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1575) * ((1 : F) + (-1 : F) * rho 1573) = (relationLc723 rho)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 135⟩], residual := [((1 : F), 1574), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 782) * (relationLc724 rho) = ((1 : F) * rho 1576)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 135⟩], residual := [((1 : F), 1575), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 782) * (relationLc725 rho) = ((1 : F) * rho 1577)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5802287172183282115193424128773206972699510173159627473525356283314980661325 : F), 901, 5, 136⟩], residual := [((8283950082142958186149907213328585076627689670248796038965321698991009852064 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 902, 5, 136⟩], residual := [((6006116169291428073197529656730927932152541149289275142274954312799951685564 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1578 (rho : Nat -> F) : Prop :=
    (relationLc726 rho) * (relationLc727 rho) = ((1 : F) * rho 1578)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 902, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 901, 5, 136⟩], residual := [((7191250651280949307107957613142024512042853333480078781882888464919135769631 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1579) * ((1 : F) + (1 : F) * rho 1578) = (relationLc728 rho)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 901, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 902, 5, 136⟩], residual := [((7193290381473226418882359260584966731482792509660718177570316120546523708951 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1580) * ((1 : F) + (-1 : F) * rho 1578) = (relationLc729 rho)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 136⟩], residual := [((1 : F), 1579), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 783) * (relationLc730 rho) = ((1 : F) * rho 1581)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 136⟩], residual := [((1 : F), 1580), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 783) * (relationLc731 rho) = ((1 : F) * rho 1582)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087345108705346078598183834508474432277911331042039971161043235485059693881 : F), 901, 5, 137⟩], residual := [((4096146062635263905034246297021576798107947534524261019178058784111825179640 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 902, 5, 137⟩], residual := [((6379620170288982616717451862893153234840588989283417309127935841806481858823 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1583 (rho : Nat -> F) : Prop :=
    (relationLc732 rho) * (relationLc733 rho) = ((1 : F) * rho 1583)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 902, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 901, 5, 137⟩], residual := [((7359314893348421515225271450735113798488279394724809762221782173602312729013 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1584) * ((1 : F) + (1 : F) * rho 1583) = (relationLc734 rho)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (399272066708882471473661478034256233660263362106229428513063288307102671843 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 901, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 902, 5, 137⟩], residual := [((5258238054174353236686407733259757771163589712485420002797772895583062672255 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1585) * ((1 : F) + (-1 : F) * rho 1583) = (relationLc735 rho)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 137⟩], residual := [((1 : F), 1584), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 784) * (relationLc736 rho) = ((1 : F) * rho 1586)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 137⟩], residual := [((1 : F), 1585), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 784) * (relationLc737 rho) = ((1 : F) * rho 1587)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4333887481675846996833779897945626436896560341315150961022260292199950077462 : F), 901, 5, 138⟩], residual := [((5944094199112482869988791433907178420755743086093999184314023269429043933976 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 902, 5, 138⟩], residual := [((661257612603983612902691784131577914047187115807065062797106592791206840919 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1588 (rho : Nat -> F) : Prop :=
    (relationLc738 rho) * (relationLc739 rho) = ((1 : F) * rho 1588)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 902, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 901, 5, 138⟩], residual := [((1001450914782052233956679407112866993397481575469341038422554216569901167916 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1589) * ((1 : F) + (1 : F) * rho 1588) = (relationLc740 rho)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 901, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 902, 5, 138⟩], residual := [((4151435871285537693704968475948967861835607548913920228417800668664305575368 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1590) * ((1 : F) + (-1 : F) * rho 1588) = (relationLc741 rho)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 138⟩], residual := [((1 : F), 1589), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 785) * (relationLc742 rho) = ((1 : F) * rho 1591)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 138⟩], residual := [((1 : F), 1590), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 785) * (relationLc743 rho) = ((1 : F) * rho 1592)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7721202409233867409062652658857261571798880198557033565695328502159880999011 : F), 901, 5, 139⟩], residual := [((5146590959477163156881050336377696263214172343990131574253510952439082838728 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 902, 5, 139⟩], residual := [((2361757604488623516325681726769762151252964921105309079952398381899619653055 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1593 (rho : Nat -> F) : Prop :=
    (relationLc744 rho) * (relationLc745 rho) = ((1 : F) * rho 1593)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 902, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 901, 5, 139⟩], residual := [((8308966055992635782308512476562786702229380696748037942445776426152770442290 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1594) * ((1 : F) + (1 : F) * rho 1593) = (relationLc746 rho)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 901, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 902, 5, 139⟩], residual := [((3418508504477937153869321599578923273505141282225230379872761621744601802500 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1595) * ((1 : F) + (-1 : F) * rho 1593) = (relationLc747 rho)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 139⟩], residual := [((1 : F), 1594), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 786) * (relationLc748 rho) = ((1 : F) * rho 1596)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 139⟩], residual := [((1 : F), 1595), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 786) * (relationLc749 rho) = ((1 : F) * rho 1597)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7649756616545130197023568900816371172121317218320000820244495204967303807279 : F), 901, 5, 140⟩], residual := [((4273558139229451671239336362927427613297658649821490735026329685663292880096 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), runs := [⟨(5655933256174268754136530626296996534331934300094741995356928543217601881031 : F), 902, 5, 140⟩], residual := [((5560654787699308439974244582711448265828952080602196793595018917133742704121 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1598 (rho : Nat -> F) : Prop :=
    (relationLc750 rho) * (relationLc751 rho) = ((1 : F) * rho 1598)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
