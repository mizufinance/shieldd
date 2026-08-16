import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs12

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationLc130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 257, 5, 37⟩, ⟨(5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), 258, 5, 37⟩], residual := [((6343037318141234726453880135613100257806210245726646240133126189191628366975 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 441) * ((1 : F) + (-1 : F) * rho 439) = (relationLc130 rho)

def relationLc131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 37⟩], residual := [((1 : F), 440), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40) * (relationLc131 rho) = ((1 : F) * rho 442)

def relationLc132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 37⟩], residual := [((1 : F), 441), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40) * (relationLc132 rho) = ((1 : F) * rho 443)

def relationLc133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(919177287557471400886151427262146296905684745211404392707875994351732261419 : F), 257, 5, 38⟩], residual := [((4055808561599814462885459923885954734183140044469009082707959598090942531216 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 258, 5, 38⟩], residual := [((3561836517110067914917388337528013887729344884646458938509273390102621545248 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow443 (rho : Nat -> F) : Prop :=
    (relationLc133 rho) * (relationLc134 rho) = ((1 : F) * rho 444)

def relationLc135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 258, 5, 38⟩, ⟨(5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), 257, 5, 38⟩], residual := [((5366117760719104240009535820294641980238990105175700970320241128819874078089 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 445) * ((1 : F) + (1 : F) * rho 444) = (relationLc135 rho)

def relationLc136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 257, 5, 38⟩, ⟨(5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), 258, 5, 38⟩], residual := [((2776352286685200723773157721639124171677345230423218268294247495348690302387 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 446) * ((1 : F) + (-1 : F) * rho 444) = (relationLc136 rho)

def relationLc137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 38⟩], residual := [((1 : F), 445), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 41) * (relationLc137 rho) = ((1 : F) * rho 447)

def relationLc138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 38⟩], residual := [((1 : F), 446), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 41) * (relationLc138 rho) = ((1 : F) * rho 448)

def relationLc139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131519962748260633613313507912172186478635528818138590775791988998556993852 : F), 257, 5, 39⟩], residual := [((1215279473610371209935227904049657825190163834384456189946283016107686137841 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 258, 5, 39⟩], residual := [((8298128149157705628277342045212304693352092272731248112178849781241908597876 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow448 (rho : Nat -> F) : Prop :=
    (relationLc139 rho) * (relationLc140 rho) = ((1 : F) * rho 449)

def relationLc141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 258, 5, 39⟩, ⟨(8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), 257, 5, 39⟩], residual := [((8002233522886339559505266502144845482991067722684261581370776804310052360471 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 450) * ((1 : F) + (1 : F) * rho 449) = (relationLc141 rho)

def relationLc142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 257, 5, 39⟩, ⟨(8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), 258, 5, 39⟩], residual := [((7728715752397633698641128843943213501411187652390824656893175053399511388425 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 451) * ((1 : F) + (-1 : F) * rho 449) = (relationLc142 rho)

def relationLc143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 39⟩], residual := [((1 : F), 450), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * (relationLc143 rho) = ((1 : F) * rho 452)

def relationLc144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 39⟩], residual := [((1 : F), 451), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * (relationLc144 rho) = ((1 : F) * rho 453)

def relationLc145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(545707636957347222268502606761207076859744384564549177379106755736850705158 : F), 257, 5, 40⟩], residual := [((6161244127489140545768233816104021805474783469828701794839528005338549570673 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), runs := [⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 258, 5, 40⟩], residual := [((3020553269023021818113491928875860238436312797103974636333990918838877679899 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow453 (rho : Nat -> F) : Prop :=
    (relationLc145 rho) * (relationLc146 rho) = ((1 : F) * rho 454)

def relationLc147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), runs := [⟨(44904698983055701426762562604192635411742513653435806164959563737310625134 : F), 257, 5, 40⟩, ⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 258, 5, 40⟩], residual := [((730484619435542636604631215209933679706500592086926097071477874864386774092 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 455) * ((1 : F) + (1 : F) * rho 454) = (relationLc147 rho)

def relationLc148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (44904698983055701426762562604192635411742513653435806164959563737310625134 : F), runs := [⟨(44904698983055701426762562604192635411742513653435806164959563737310625134 : F), 258, 5, 40⟩, ⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 257, 5, 40⟩], residual := [((7860310894553269756280238549700692882381083328300356953251934111449264246407 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 456) * ((1 : F) + (-1 : F) * rho 454) = (relationLc148 rho)

def relationLc149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 40⟩], residual := [((1 : F), 455), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * (relationLc149 rho) = ((1 : F) * rho 457)

def relationLc150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 40⟩], residual := [((1 : F), 456), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * (relationLc150 rho) = ((1 : F) * rho 458)

def relationLc151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2276932546380933870225228921511621554726597530816646260591385143214032842447 : F), 257, 5, 41⟩], residual := [((5185411658465475973318981105133659618627589062199339752884966290682921774597 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 258, 5, 41⟩], residual := [((5846162809411592435527463114932061406630928699960866773281871945282257768489 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow458 (rho : Nat -> F) : Prop :=
    (relationLc151 rho) * (relationLc152 rho) = ((1 : F) * rho 459)

def relationLc153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 258, 5, 41⟩, ⟨(2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), 257, 5, 41⟩], residual := [((1386654189607152276266355660052811289299810609976197283168747936889837303830 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 460) * ((1 : F) + (1 : F) * rho 459) = (relationLc153 rho)

def relationLc154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 257, 5, 41⟩, ⟨(2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), 258, 5, 41⟩], residual := [((7097948268939892520401588775257677409780701028932676067280934208059187180420 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 461) * ((1 : F) + (-1 : F) * rho 459) = (relationLc154 rho)

def relationLc155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 41⟩], residual := [((1 : F), 460), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * (relationLc155 rho) = ((1 : F) * rho 462)

def relationLc156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 41⟩], residual := [((1 : F), 461), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * (relationLc156 rho) = ((1 : F) * rho 463)

def relationLc157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(482825218398770967544548674690245367257088234990090761451761925117301640544 : F), 257, 5, 42⟩], residual := [((949690325413438538305997154209657878966567982879223149845296457864483296248 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 258, 5, 42⟩], residual := [((4417333435990880862685875555964743816569557333763586801868360197118446857184 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow463 (rho : Nat -> F) : Prop :=
    (relationLc157 rho) * (relationLc158 rho) = ((1 : F) * rho 464)

def relationLc159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 258, 5, 42⟩, ⟨(6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), 257, 5, 42⟩], residual := [((1359640134584318861497557619561962536382113671176474387233702764375718878298 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 465) * ((1 : F) + (1 : F) * rho 464) = (relationLc159 rho)

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 257, 5, 42⟩, ⟨(6761878780895606364523486287847484708628122336965465240164442731476110642463 : F), 258, 5, 42⟩], residual := [((5391288324706657434524820133139641588046669216494177533991455354458955462869 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 466) * ((1 : F) + (-1 : F) * rho 464) = (relationLc160 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
