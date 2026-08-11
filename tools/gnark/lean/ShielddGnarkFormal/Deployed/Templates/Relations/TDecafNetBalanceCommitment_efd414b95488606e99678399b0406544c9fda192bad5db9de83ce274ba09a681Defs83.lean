import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs82

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 134⟩], residual := [((1 : F), 5140), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4351) * (relationLc724 rho) = ((1 : F) * rho 5142)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(815319502042599558001514530497492857184898883207315372383263299776387428901 : F), 4471, 5, 135⟩], residual := [((3641369674534153154069011770010868542582301196869174622178626653807303194173 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 4472, 5, 135⟩], residual := [((2155251289432948419869296733670523418111359808186213117074426634857209198168 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5317 (rho : Nat -> F) : Prop :=
    (relationLc725 rho) * (relationLc726 rho) = ((1 : F) * rho 5143)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 4471, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 4472, 5, 135⟩], residual := [((6827325752514491330188348532569555236208582611972810214426943593311958665772 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5144) * ((1 : F) + (1 : F) * rho 5143) = (relationLc727 rho)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 4472, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 4471, 5, 135⟩], residual := [((5085208660706444495012546054454032064158703160023411916148475697428986337635 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5145) * ((1 : F) + (-1 : F) * rho 5143) = (relationLc728 rho)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 135⟩], residual := [((1 : F), 5144), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * (relationLc729 rho) = ((1 : F) * rho 5146)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 135⟩], residual := [((1 : F), 5145), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4352) * (relationLc730 rho) = ((1 : F) * rho 5147)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5802287172183282115193424128773206972699510173159627473525356283314980661325 : F), 4471, 5, 136⟩], residual := [((8283950082142958186149907213328585076627689670248796038965321698991009852064 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 4472, 5, 136⟩], residual := [((6006116169291428073197529656730927932152541149289275142274954312799951685564 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5322 (rho : Nat -> F) : Prop :=
    (relationLc731 rho) * (relationLc732 rho) = ((1 : F) * rho 5148)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 4472, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 4471, 5, 136⟩], residual := [((7191250651280949307107957613142024512042853333480078781882888464919135769631 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5149) * ((1 : F) + (1 : F) * rho 5148) = (relationLc733 rho)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 4471, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 4472, 5, 136⟩], residual := [((7193290381473226418882359260584966731482792509660718177570316120546523708951 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5150) * ((1 : F) + (-1 : F) * rho 5148) = (relationLc734 rho)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 136⟩], residual := [((1 : F), 5149), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4353) * (relationLc735 rho) = ((1 : F) * rho 5151)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 136⟩], residual := [((1 : F), 5150), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4353) * (relationLc736 rho) = ((1 : F) * rho 5152)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087345108705346078598183834508474432277911331042039971161043235485059693881 : F), 4471, 5, 137⟩], residual := [((4096146062635263905034246297021576798107947534524261019178058784111825179640 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 4472, 5, 137⟩], residual := [((6379620170288982616717451862893153234840588989283417309127935841806481858823 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5327 (rho : Nat -> F) : Prop :=
    (relationLc737 rho) * (relationLc738 rho) = ((1 : F) * rho 5153)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 4472, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 4471, 5, 137⟩], residual := [((7359314893348421515225271450735113798488279394724809762221782173602312729013 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5154) * ((1 : F) + (1 : F) * rho 5153) = (relationLc739 rho)

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (399272066708882471473661478034256233660263362106229428513063288307102671843 : F), runs := [⟨(1122630669961436533484475427023037133905151789897493713810375555248165083947 : F), 4471, 5, 137⟩, ⟨(399272066708882471473661478034256233660263362106229428513063288307102671843 : F), 4472, 5, 137⟩], residual := [((5258238054174353236686407733259757771163589712485420002797772895583062672255 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5155) * ((1 : F) + (-1 : F) * rho 5153) = (relationLc740 rho)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 137⟩], residual := [((1 : F), 5154), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4354) * (relationLc741 rho) = ((1 : F) * rho 5156)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 137⟩], residual := [((1 : F), 5155), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4354) * (relationLc742 rho) = ((1 : F) * rho 5157)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4333887481675846996833779897945626436896560341315150961022260292199950077462 : F), 4471, 5, 138⟩], residual := [((5944094199112482869988791433907178420755743086093999184314023269429043933976 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 4472, 5, 138⟩], residual := [((661257612603983612902691784131577914047187115807065062797106592791206840919 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5332 (rho : Nat -> F) : Prop :=
    (relationLc743 rho) * (relationLc744 rho) = ((1 : F) * rho 5158)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 4472, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 4471, 5, 138⟩], residual := [((1001450914782052233956679407112866993397481575469341038422554216569901167916 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5159) * ((1 : F) + (1 : F) * rho 5158) = (relationLc745 rho)

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), runs := [⟨(2452221867771348619460435435605433036598993430477089144482983352595180346758 : F), 4471, 5, 138⟩, ⟨(6567485778513379004818710215523269920105555808877262854280332885879574396751 : F), 4472, 5, 138⟩], residual := [((4151435871285537693704968475948967861835607548913920228417800668664305575368 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5160) * ((1 : F) + (-1 : F) * rho 5158) = (relationLc746 rho)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 138⟩], residual := [((1 : F), 5159), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4355) * (relationLc747 rho) = ((1 : F) * rho 5161)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 138⟩], residual := [((1 : F), 5160), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4355) * (relationLc748 rho) = ((1 : F) * rho 5162)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7721202409233867409062652658857261571798880198557033565695328502159880999011 : F), 4471, 5, 139⟩], residual := [((5146590959477163156881050336377696263214172343990131574253510952439082838728 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 4472, 5, 139⟩], residual := [((2361757604488623516325681726769762151252964921105309079952398381899619653055 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5337 (rho : Nat -> F) : Prop :=
    (relationLc749 rho) * (relationLc750 rho) = ((1 : F) * rho 5163)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 4472, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 4471, 5, 139⟩], residual := [((8308966055992635782308512476562786702229380696748037942445776426152770442290 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5164) * ((1 : F) + (1 : F) * rho 5163) = (relationLc751 rho)

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), runs := [⟨(6513524875738918574364290330833234534511940779429357141637673190140071871302 : F), 4471, 5, 139⟩, ⟨(6540654496630980565947389667152894603925861444926816394275473810623296951710 : F), 4472, 5, 139⟩], residual := [((3418508504477937153869321599578923273505141282225230379872761621744601802500 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5165) * ((1 : F) + (-1 : F) * rho 5163) = (relationLc752 rho)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 139⟩], residual := [((1 : F), 5164), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4356) * (relationLc753 rho) = ((1 : F) * rho 5166)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 139⟩], residual := [((1 : F), 5165), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4356) * (relationLc754 rho) = ((1 : F) * rho 5167)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
