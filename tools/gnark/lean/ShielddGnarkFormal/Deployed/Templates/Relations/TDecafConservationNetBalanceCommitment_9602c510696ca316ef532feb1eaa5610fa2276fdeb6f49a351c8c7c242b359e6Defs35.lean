import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs34

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2117485268451276078429426862285551430995275496750927491629470414373937765384 : F), 643, 5, 132⟩], residual := [((670076475598335658754534382554801028209198664289598103529027912874044105682 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 644, 5, 132⟩], residual := [((4333867885098172652834119774477693911900108431484517921210475403929537669340 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1300 (rho : Nat -> F) : Prop :=
    (relationLc700 rho) * (relationLc701 rho) = ((1 : F) * rho 1300)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 643, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 644, 5, 132⟩], residual := [((630378397671164219709015997747142984046795813008898929515455443261648494357 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1301) * ((1 : F) + (1 : F) * rho 1300) = (relationLc702 rho)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 644, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 643, 5, 132⟩], residual := [((2989871155315366265937237604264539437129707241629690893511800949286235424462 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1302) * ((1 : F) + (-1 : F) * rho 1300) = (relationLc703 rho)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 132⟩], residual := [((1 : F), 1301), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 521) * (relationLc704 rho) = ((1 : F) * rho 1303)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 132⟩], residual := [((1 : F), 1302), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 521) * (relationLc705 rho) = ((1 : F) * rho 1304)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3059341083908121971222644416325487590158345457780328618218557012096960606829 : F), 643, 5, 133⟩], residual := [((3183523087609213439700051782825308907696502939979758487776925797786007888506 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 644, 5, 133⟩], residual := [((891793017760138703730447167466971253741846363030138134915448709527456442267 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1305 (rho : Nat -> F) : Prop :=
    (relationLc706 rho) * (relationLc707 rho) = ((1 : F) * rho 1305)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 644, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 643, 5, 133⟩], residual := [((280686231915317813471992149323861892118666802798837168404346689981568784054 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1306) * ((1 : F) + (1 : F) * rho 1305) = (relationLc708 rho)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 643, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 644, 5, 133⟩], residual := [((3705569854700558103609062221344678000605653646631870686072098985863295320955 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1307) * ((1 : F) + (-1 : F) * rho 1305) = (relationLc709 rho)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 133⟩], residual := [((1 : F), 1306), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 522) * (relationLc710 rho) = ((1 : F) * rho 1308)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 133⟩], residual := [((1 : F), 1307), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 522) * (relationLc711 rho) = ((1 : F) * rho 1309)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7286721451595330652936621794575298898656369434487437302656719232312939642571 : F), 643, 5, 134⟩], residual := [((7989948810429501964274097175905674541880631619204767701502147855934712582172 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 644, 5, 134⟩], residual := [((5689021311101491731851586129971497073107331374100272441110460796246722737242 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1310 (rho : Nat -> F) : Prop :=
    (relationLc712 rho) * (relationLc713 rho) = ((1 : F) * rho 1310)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 644, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 643, 5, 134⟩], residual := [((5593832230525668010274480941066681298841765056618912803150768302668048586039 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1311) * ((1 : F) + (1 : F) * rho 1310) = (relationLc714 rho)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 643, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 644, 5, 134⟩], residual := [((3573264085621152448276775189356992467592849040145097589531339653946604749313 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1312) * ((1 : F) + (-1 : F) * rho 1310) = (relationLc715 rho)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 134⟩], residual := [((1 : F), 1311), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 523) * (relationLc716 rho) = ((1 : F) * rho 1313)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 134⟩], residual := [((1 : F), 1312), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 523) * (relationLc717 rho) = ((1 : F) * rho 1314)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(815319502042599558001514530497492857184898883207315372383263299776387428901 : F), 643, 5, 135⟩], residual := [((3641369674534153154069011770010868542582301196869174622178626653807303194173 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 644, 5, 135⟩], residual := [((2155251289432948419869296733670523418111359808186213117074426634857209198168 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1315 (rho : Nat -> F) : Prop :=
    (relationLc718 rho) * (relationLc719 rho) = ((1 : F) * rho 1315)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 643, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 644, 5, 135⟩], residual := [((6827325752514491330188348532569555236208582611972810214426943593311958665772 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1316) * ((1 : F) + (1 : F) * rho 1315) = (relationLc720 rho)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 644, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 643, 5, 135⟩], residual := [((5085208660706444495012546054454032064158703160023411916148475697428986337635 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1317) * ((1 : F) + (-1 : F) * rho 1315) = (relationLc721 rho)

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 135⟩], residual := [((1 : F), 1316), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 524) * (relationLc722 rho) = ((1 : F) * rho 1318)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 135⟩], residual := [((1 : F), 1317), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 524) * (relationLc723 rho) = ((1 : F) * rho 1319)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5802287172183282115193424128773206972699510173159627473525356283314980661325 : F), 643, 5, 136⟩], residual := [((8283950082142958186149907213328585076627689670248796038965321698991009852064 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 644, 5, 136⟩], residual := [((6006116169291428073197529656730927932152541149289275142274954312799951685564 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1320 (rho : Nat -> F) : Prop :=
    (relationLc724 rho) * (relationLc725 rho) = ((1 : F) * rho 1320)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 644, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 643, 5, 136⟩], residual := [((7191250651280949307107957613142024512042853333480078781882888464919135769631 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1321) * ((1 : F) + (1 : F) * rho 1320) = (relationLc726 rho)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), runs := [⟨(2001322046635435846888941680314930236991208836073618171390598501167046576118 : F), 643, 5, 136⟩, ⟨(7596625243419088290234773513008353238239330686457050992377873106921852328082 : F), 644, 5, 136⟩], residual := [((7193290381473226418882359260584966731482792509660718177570316120546523708951 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1322) * ((1 : F) + (-1 : F) * rho 1320) = (relationLc727 rho)

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 136⟩], residual := [((1 : F), 1321), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 525) * (relationLc728 rho) = ((1 : F) * rho 1323)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 136⟩], residual := [((1 : F), 1322), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 525) * (relationLc729 rho) = ((1 : F) * rho 1324)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087345108705346078598183834508474432277911331042039971161043235485059693881 : F), 643, 5, 137⟩], residual := [((4096146062635263905034246297021576798107947534524261019178058784111825179640 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
