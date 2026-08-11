import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs35

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2892646731023369218770694204930725248522413652523299902006745690955898559168 : F), 772, 5, 131⟩], residual := [((557130947857075324171719009056405385955322894519741390351651476308106466873 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 773, 5, 131⟩], residual := [((2100863090428335478779790270701919888843349139919717756764976507900421972592 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1424 (rho : Nat -> F) : Prop :=
    (relationLc695 rho) * (relationLc696 rho) = ((1 : F) * rho 1424)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 773, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 772, 5, 131⟩], residual := [((653106038043019754040723869086632004743130492877253234593477243190422012527 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1425) * ((1 : F) + (1 : F) * rho 1424) = (relationLc697 rho)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 772, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 773, 5, 131⟩], residual := [((6066483422434670241764702242346216592568017228925939246595506061294148532448 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1426) * ((1 : F) + (-1 : F) * rho 1424) = (relationLc698 rho)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 131⟩], residual := [((1 : F), 1425), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 649) * (relationLc699 rho) = ((1 : F) * rho 1427)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 131⟩], residual := [((1 : F), 1426), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 649) * (relationLc700 rho) = ((1 : F) * rho 1428)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2117485268451276078429426862285551430995275496750927491629470414373937765384 : F), 772, 5, 132⟩], residual := [((670076475598335658754534382554801028209198664289598103529027912874044105682 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 773, 5, 132⟩], residual := [((4333867885098172652834119774477693911900108431484517921210475403929537669340 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1429 (rho : Nat -> F) : Prop :=
    (relationLc701 rho) * (relationLc702 rho) = ((1 : F) * rho 1429)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 772, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 773, 5, 132⟩], residual := [((630378397671164219709015997747142984046795813008898929515455443261648494357 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1430) * ((1 : F) + (1 : F) * rho 1429) = (relationLc703 rho)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 773, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 772, 5, 132⟩], residual := [((2989871155315366265937237604264539437129707241629690893511800949286235424462 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1431) * ((1 : F) + (-1 : F) * rho 1429) = (relationLc704 rho)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 132⟩], residual := [((1 : F), 1430), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 650) * (relationLc705 rho) = ((1 : F) * rho 1432)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 132⟩], residual := [((1 : F), 1431), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 650) * (relationLc706 rho) = ((1 : F) * rho 1433)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3059341083908121971222644416325487590158345457780328618218557012096960606829 : F), 772, 5, 133⟩], residual := [((3183523087609213439700051782825308907696502939979758487776925797786007888506 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 773, 5, 133⟩], residual := [((891793017760138703730447167466971253741846363030138134915448709527456442267 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1434 (rho : Nat -> F) : Prop :=
    (relationLc707 rho) * (relationLc708 rho) = ((1 : F) * rho 1434)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 773, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 772, 5, 133⟩], residual := [((280686231915317813471992149323861892118666802798837168404346689981568784054 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1435) * ((1 : F) + (1 : F) * rho 1434) = (relationLc709 rho)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 772, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 773, 5, 133⟩], residual := [((3705569854700558103609062221344678000605653646631870686072098985863295320955 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1436) * ((1 : F) + (-1 : F) * rho 1434) = (relationLc710 rho)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 133⟩], residual := [((1 : F), 1435), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 651) * (relationLc711 rho) = ((1 : F) * rho 1437)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 133⟩], residual := [((1 : F), 1436), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 651) * (relationLc712 rho) = ((1 : F) * rho 1438)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7286721451595330652936621794575298898656369434487437302656719232312939642571 : F), 772, 5, 134⟩], residual := [((7989948810429501964274097175905674541880631619204767701502147855934712582172 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 773, 5, 134⟩], residual := [((5689021311101491731851586129971497073107331374100272441110460796246722737242 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1439 (rho : Nat -> F) : Prop :=
    (relationLc713 rho) * (relationLc714 rho) = ((1 : F) * rho 1439)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 773, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 772, 5, 134⟩], residual := [((5593832230525668010274480941066681298841765056618912803150768302668048586039 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1440) * ((1 : F) + (1 : F) * rho 1439) = (relationLc715 rho)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 772, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 773, 5, 134⟩], residual := [((3573264085621152448276775189356992467592849040145097589531339653946604749313 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1441) * ((1 : F) + (-1 : F) * rho 1439) = (relationLc716 rho)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 134⟩], residual := [((1 : F), 1440), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 652) * (relationLc717 rho) = ((1 : F) * rho 1442)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 134⟩], residual := [((1 : F), 1441), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 652) * (relationLc718 rho) = ((1 : F) * rho 1443)

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(815319502042599558001514530497492857184898883207315372383263299776387428901 : F), 772, 5, 135⟩], residual := [((3641369674534153154069011770010868542582301196869174622178626653807303194173 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 773, 5, 135⟩], residual := [((2155251289432948419869296733670523418111359808186213117074426634857209198168 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1444 (rho : Nat -> F) : Prop :=
    (relationLc719 rho) * (relationLc720 rho) = ((1 : F) * rho 1444)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 772, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 773, 5, 135⟩], residual := [((6827325752514491330188348532569555236208582611972810214426943593311958665772 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1445) * ((1 : F) + (1 : F) * rho 1444) = (relationLc721 rho)

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), runs := [⟨(2379030873308701036277309347048524856358184453194079984424120137135217361752 : F), 773, 5, 135⟩, ⟨(3304263683974547159526443961303689711495544327811992215276222619882497903924 : F), 772, 5, 135⟩], residual := [((5085208660706444495012546054454032064158703160023411916148475697428986337635 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1446) * ((1 : F) + (-1 : F) * rho 1444) = (relationLc722 rho)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 135⟩], residual := [((1 : F), 1445), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 653) * (relationLc723 rho) = ((1 : F) * rho 1447)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 135⟩], residual := [((1 : F), 1446), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 653) * (relationLc724 rho) = ((1 : F) * rho 1448)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5802287172183282115193424128773206972699510173159627473525356283314980661325 : F), 772, 5, 136⟩], residual := [((8283950082142958186149907213328585076627689670248796038965321698991009852064 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
