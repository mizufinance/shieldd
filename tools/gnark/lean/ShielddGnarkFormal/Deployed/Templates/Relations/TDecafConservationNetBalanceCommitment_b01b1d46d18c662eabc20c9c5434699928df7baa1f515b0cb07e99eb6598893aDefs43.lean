import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs42

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2117485268451276078429426862285551430995275496750927491629470414373937765384 : F), 1417, 5, 132⟩], residual := [((670076475598335658754534382554801028209198664289598103529027912874044105682 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 1418, 5, 132⟩], residual := [((4333867885098172652834119774477693911900108431484517921210475403929537669340 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2074 (rho : Nat -> F) : Prop :=
    (relationLc706 rho) * (relationLc707 rho) = ((1 : F) * rho 2074)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 1417, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 1418, 5, 132⟩], residual := [((630378397671164219709015997747142984046795813008898929515455443261648494357 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2075) * ((1 : F) + (1 : F) * rho 2074) = (relationLc708 rho)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 1418, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 1417, 5, 132⟩], residual := [((2989871155315366265937237604264539437129707241629690893511800949286235424462 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2076) * ((1 : F) + (-1 : F) * rho 2074) = (relationLc709 rho)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 132⟩], residual := [((1 : F), 2075), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1295) * (relationLc710 rho) = ((1 : F) * rho 2077)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 132⟩], residual := [((1 : F), 2076), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1295) * (relationLc711 rho) = ((1 : F) * rho 2078)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3059341083908121971222644416325487590158345457780328618218557012096960606829 : F), 1417, 5, 133⟩], residual := [((3183523087609213439700051782825308907696502939979758487776925797786007888506 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 1418, 5, 133⟩], residual := [((891793017760138703730447167466971253741846363030138134915448709527456442267 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2079 (rho : Nat -> F) : Prop :=
    (relationLc712 rho) * (relationLc713 rho) = ((1 : F) * rho 2079)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 1418, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 1417, 5, 133⟩], residual := [((280686231915317813471992149323861892118666802798837168404346689981568784054 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2080) * ((1 : F) + (1 : F) * rho 2079) = (relationLc714 rho)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 1417, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 1418, 5, 133⟩], residual := [((3705569854700558103609062221344678000605653646631870686072098985863295320955 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2081) * ((1 : F) + (-1 : F) * rho 2079) = (relationLc715 rho)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 133⟩], residual := [((1 : F), 2080), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1296) * (relationLc716 rho) = ((1 : F) * rho 2082)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 133⟩], residual := [((1 : F), 2081), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1296) * (relationLc717 rho) = ((1 : F) * rho 2083)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7286721451595330652936621794575298898656369434487437302656719232312939642571 : F), 1417, 5, 134⟩], residual := [((7989948810429501964274097175905674541880631619204767701502147855934712582172 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 1418, 5, 134⟩], residual := [((5689021311101491731851586129971497073107331374100272441110460796246722737242 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2084 (rho : Nat -> F) : Prop :=
    (relationLc718 rho) * (relationLc719 rho) = ((1 : F) * rho 2084)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 1418, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 1417, 5, 134⟩], residual := [((5593832230525668010274480941066681298841765056618912803150768302668048586039 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2085) * ((1 : F) + (1 : F) * rho 2084) = (relationLc720 rho)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 1417, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 1418, 5, 134⟩], residual := [((3573264085621152448276775189356992467592849040145097589531339653946604749313 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2086) * ((1 : F) + (-1 : F) * rho 2084) = (relationLc721 rho)

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 134⟩], residual := [((1 : F), 2085), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1297) * (relationLc722 rho) = ((1 : F) * rho 2087)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 134⟩], residual := [((1 : F), 2086), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1297) * (relationLc723 rho) = ((1 : F) * rho 2088)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(815319502042599558001514530497492857184898883207315372383263299776387428901 : F), 1417, 5, 135⟩], residual := [((3641369674534153154069011770010868542582301196869174622178626653807303194173 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 1418, 5, 135⟩], residual := [((2155251289432948419869296733670523418111359808186213117074426634857209198168 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2089 (rho : Nat -> F) : Prop :=
    (relationLc724 rho) * (relationLc725 rho) = ((1 : F) * rho 2089)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 1417, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 1418, 5, 135⟩], residual := [((6827325752514491330188348532569555236208582611972810214426943593311958665772 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2090) * ((1 : F) + (1 : F) * rho 2089) = (relationLc726 rho)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 1418, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 1417, 5, 135⟩], residual := [((5085208660706444495012546054454032064158703160023411916148475697428986337635 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2091) * ((1 : F) + (-1 : F) * rho 2089) = (relationLc727 rho)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 135⟩], residual := [((1 : F), 2090), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1298) * (relationLc728 rho) = ((1 : F) * rho 2092)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 135⟩], residual := [((1 : F), 2091), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1298) * (relationLc729 rho) = ((1 : F) * rho 2093)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5802287172183282115193424128773206972699510173159627473525356283314980661325 : F), 1417, 5, 136⟩], residual := [((8283950082142958186149907213328585076627689670248796038965321698991009852064 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 1418, 5, 136⟩], residual := [((6006116169291428073197529656730927932152541149289275142274954312799951685564 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2094 (rho : Nat -> F) : Prop :=
    (relationLc730 rho) * (relationLc731 rho) = ((1 : F) * rho 2094)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 1418, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 1417, 5, 136⟩], residual := [((7191250651280949307107957613142024512042853333480078781882888464919135769631 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2095) * ((1 : F) + (1 : F) * rho 2094) = (relationLc732 rho)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 1417, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 1418, 5, 136⟩], residual := [((7193290381473226418882359260584966731482792509660718177570316120546523708951 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2096) * ((1 : F) + (-1 : F) * rho 2094) = (relationLc733 rho)

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 136⟩], residual := [((1 : F), 2095), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1299) * (relationLc734 rho) = ((1 : F) * rho 2097)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 136⟩], residual := [((1 : F), 2096), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1299) * (relationLc735 rho) = ((1 : F) * rho 2098)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087345108705346078598183834508474432277911331042039971161043235485059693881 : F), 1417, 5, 137⟩], residual := [((4096146062635263905034246297021576798107947534524261019178058784111825179640 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
