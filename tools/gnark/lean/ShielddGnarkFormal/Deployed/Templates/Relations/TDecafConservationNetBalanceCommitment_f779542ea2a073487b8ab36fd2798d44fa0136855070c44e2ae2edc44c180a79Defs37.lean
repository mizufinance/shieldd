import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs36

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5637442059617530031733508199502717655196246814490163608850120842121846378018 : F), 901, 5, 130⟩], residual := [((3370373104906405996357804578875008528753908699718600085380184646065439792112 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 902, 5, 130⟩], residual := [((1530619322736829261678322058831880249561339657141014345976718527756396149027 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1548 (rho : Nat -> F) : Prop :=
    (relationLc690 rho) * (relationLc691 rho) = ((1 : F) * rho 1548)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (255497334986935390530476428031207199123242249398683504664794584817903790236 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 902, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 901, 5, 130⟩], residual := [((7549916416290019572636308784345135691660335081598617133672825053819371167712 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1549) * ((1 : F) + (1 : F) * rho 1548) = (relationLc692 rho)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), runs := [⟨(255497334986935390530476428031207199123242249398683504664794584817903790236 : F), 901, 5, 130⟩, ⟨(4809702631935258080019765773884065790010507482052128416967047886468078694978 : F), 902, 5, 130⟩], residual := [((1816284342805863792972798700452658695524458744767105688590751471315014751115 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1550) * ((1 : F) + (-1 : F) * rho 1548) = (relationLc693 rho)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 130⟩], residual := [((1 : F), 1549), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 777) * (relationLc694 rho) = ((1 : F) * rho 1551)

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 130⟩], residual := [((1 : F), 1550), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 777) * (relationLc695 rho) = ((1 : F) * rho 1552)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2892646731023369218770694204930725248522413652523299902006745690955898559168 : F), 901, 5, 131⟩], residual := [((557130947857075324171719009056405385955322894519741390351651476308106466873 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 902, 5, 131⟩], residual := [((2100863090428335478779790270701919888843349139919717756764976507900421972592 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1553 (rho : Nat -> F) : Prop :=
    (relationLc696 rho) * (relationLc697 rho) = ((1 : F) * rho 1553)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 902, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 901, 5, 131⟩], residual := [((653106038043019754040723869086632004743130492877253234593477243190422012527 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1554) * ((1 : F) + (1 : F) * rho 1553) = (relationLc698 rho)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), runs := [⟨(5509419055028545839867385119174003837159018115349888398204504535444192054834 : F), 901, 5, 131⟩, ⟨(7215507587555659528038724879576333109145885004198994385899650544658652480809 : F), 902, 5, 131⟩], residual := [((6066483422434670241764702242346216592568017228925939246595506061294148532448 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1555) * ((1 : F) + (-1 : F) * rho 1553) = (relationLc699 rho)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 131⟩], residual := [((1 : F), 1554), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 778) * (relationLc700 rho) = ((1 : F) * rho 1556)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 131⟩], residual := [((1 : F), 1555), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 778) * (relationLc701 rho) = ((1 : F) * rho 1557)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2117485268451276078429426862285551430995275496750927491629470414373937765384 : F), 901, 5, 132⟩], residual := [((670076475598335658754534382554801028209198664289598103529027912874044105682 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 902, 5, 132⟩], residual := [((4333867885098172652834119774477693911900108431484517921210475403929537669340 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1558 (rho : Nat -> F) : Prop :=
    (relationLc702 rho) * (relationLc703 rho) = ((1 : F) * rho 1558)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 901, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 902, 5, 132⟩], residual := [((630378397671164219709015997747142984046795813008898929515455443261648494357 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1559) * ((1 : F) + (1 : F) * rho 1558) = (relationLc704 rho)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), runs := [⟨(2049621962131561336329962961598530009576143491613598051429379541079720261497 : F), 902, 5, 132⟩, ⟨(2287831615276245431189338495838511518222240907375106387577853195850269903013 : F), 901, 5, 132⟩], residual := [((2989871155315366265937237604264539437129707241629690893511800949286235424462 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1560) * ((1 : F) + (-1 : F) * rho 1558) = (relationLc705 rho)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 132⟩], residual := [((1 : F), 1559), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 779) * (relationLc706 rho) = ((1 : F) * rho 1561)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 132⟩], residual := [((1 : F), 1560), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 779) * (relationLc707 rho) = ((1 : F) * rho 1562)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3059341083908121971222644416325487590158345457780328618218557012096960606829 : F), 901, 5, 133⟩], residual := [((3183523087609213439700051782825308907696502939979758487776925797786007888506 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 902, 5, 133⟩], residual := [((891793017760138703730447167466971253741846363030138134915448709527456442267 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1563 (rho : Nat -> F) : Prop :=
    (relationLc708 rho) * (relationLc709 rho) = ((1 : F) * rho 1563)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 902, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 901, 5, 133⟩], residual := [((280686231915317813471992149323861892118666802798837168404346689981568784054 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1564) * ((1 : F) + (1 : F) * rho 1563) = (relationLc710 rho)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), runs := [⟨(2199892238309897098060430547670026417800450864924792153799001836253754684246 : F), 901, 5, 133⟩, ⟨(5557977258837308350009230924433644485920372798326401595019352091153891601397 : F), 902, 5, 133⟩], residual := [((3705569854700558103609062221344678000605653646631870686072098985863295320955 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1565) * ((1 : F) + (-1 : F) * rho 1563) = (relationLc711 rho)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 133⟩], residual := [((1 : F), 1564), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 780) * (relationLc712 rho) = ((1 : F) * rho 1566)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 133⟩], residual := [((1 : F), 1565), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 780) * (relationLc713 rho) = ((1 : F) * rho 1567)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7286721451595330652936621794575298898656369434487437302656719232312939642571 : F), 901, 5, 134⟩], residual := [((7989948810429501964274097175905674541880631619204767701502147855934712582172 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 902, 5, 134⟩], residual := [((5689021311101491731851586129971497073107331374100272441110460796246722737242 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1568 (rho : Nat -> F) : Prop :=
    (relationLc714 rho) * (relationLc715 rho) = ((1 : F) * rho 1568)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 902, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 901, 5, 134⟩], residual := [((5593832230525668010274480941066681298841765056618912803150768302668048586039 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1569) * ((1 : F) + (1 : F) * rho 1568) = (relationLc716 rho)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), runs := [⟨(2856362704316677260823432447957933291552424976412088326857681897302158862738 : F), 901, 5, 134⟩, ⟨(5168041057396631537459372760232662459080211301158291092792773302140908710159 : F), 902, 5, 134⟩], residual := [((3573264085621152448276775189356992467592849040145097589531339653946604749313 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1570) * ((1 : F) + (-1 : F) * rho 1568) = (relationLc717 rho)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 134⟩], residual := [((1 : F), 1569), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 781) * (relationLc718 rho) = ((1 : F) * rho 1571)

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 134⟩], residual := [((1 : F), 1570), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 781) * (relationLc719 rho) = ((1 : F) * rho 1572)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(815319502042599558001514530497492857184898883207315372383263299776387428901 : F), 901, 5, 135⟩], residual := [((3641369674534153154069011770010868542582301196869174622178626653807303194173 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
