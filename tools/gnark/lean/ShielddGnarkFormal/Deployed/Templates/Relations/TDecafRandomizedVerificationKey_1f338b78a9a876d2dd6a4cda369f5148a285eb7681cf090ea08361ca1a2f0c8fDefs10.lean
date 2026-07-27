import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs9

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6051250210517190749663141116441450966628119241944618079453095600811208772222 : F), 256, 5, 37⟩], residual := [((1009916982077206128033609777361685216350669515822433705706665175388118018829 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 257, 5, 37⟩], residual := [((2898409259390194651556282054766198193763430239886953805590234007251608670059 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow437 (rho : Nat -> F) : Prop :=
    (relationLc175 rho) * (relationLc176 rho) = ((1 : F) * rho 438)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 257, 5, 37⟩, ⟨(5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), 256, 5, 37⟩], residual := [((2758980867967042941829566517804359186364408625440783412445230694566907463858 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 439) * ((1 : F) + (1 : F) * rho 438) = (relationLc177 rho)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 256, 5, 37⟩, ⟨(5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), 257, 5, 37⟩], residual := [((6343037318141234726453880135613100257806210245726646240133126189191628366975 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 440) * ((1 : F) + (-1 : F) * rho 438) = (relationLc178 rho)

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 37⟩], residual := [((1 : F), 439), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 39) * (relationLc179 rho) = ((1 : F) * rho 441)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 37⟩], residual := [((1 : F), 440), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 39) * (relationLc180 rho) = ((1 : F) * rho 442)

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(919177287557471400886151427262146296905684745211404392707875994351732261419 : F), 256, 5, 38⟩], residual := [((4055808561599814462885459923885954734183140044469009082707959598090942531216 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 257, 5, 38⟩], residual := [((3561836517110067914917388337528013887729344884646458938509273390102621545248 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow442 (rho : Nat -> F) : Prop :=
    (relationLc181 rho) * (relationLc182 rho) = ((1 : F) * rho 443)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 257, 5, 38⟩, ⟨(5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), 256, 5, 38⟩], residual := [((5366117760719104240009535820294641980238990105175700970320241128819874078089 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 444) * ((1 : F) + (1 : F) * rho 443) = (relationLc183 rho)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 256, 5, 38⟩, ⟨(5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), 257, 5, 38⟩], residual := [((2776352286685200723773157721639124171677345230423218268294247495348690302387 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 445) * ((1 : F) + (-1 : F) * rho 443) = (relationLc184 rho)

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 38⟩], residual := [((1 : F), 444), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40) * (relationLc185 rho) = ((1 : F) * rho 446)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 38⟩], residual := [((1 : F), 445), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40) * (relationLc186 rho) = ((1 : F) * rho 447)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131519962748260633613313507912172186478635528818138590775791988998556993852 : F), 256, 5, 39⟩], residual := [((1215279473610371209935227904049657825190163834384456189946283016107686137841 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 257, 5, 39⟩], residual := [((8298128149157705628277342045212304693352092272731248112178849781241908597876 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow447 (rho : Nat -> F) : Prop :=
    (relationLc187 rho) * (relationLc188 rho) = ((1 : F) * rho 448)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 257, 5, 39⟩, ⟨(8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), 256, 5, 39⟩], residual := [((8002233522886339559505266502144845482991067722684261581370776804310052360471 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 449) * ((1 : F) + (1 : F) * rho 448) = (relationLc189 rho)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 256, 5, 39⟩, ⟨(8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), 257, 5, 39⟩], residual := [((7728715752397633698641128843943213501411187652390824656893175053399511388425 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 450) * ((1 : F) + (-1 : F) * rho 448) = (relationLc190 rho)

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 39⟩], residual := [((1 : F), 449), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 41) * (relationLc191 rho) = ((1 : F) * rho 451)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 39⟩], residual := [((1 : F), 450), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 41) * (relationLc192 rho) = ((1 : F) * rho 452)

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(545707636957347222268502606761207076859744384564549177379106755736850705158 : F), 256, 5, 40⟩], residual := [((6161244127489140545768233816104021805474783469828701794839528005338549570673 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), runs := [⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 257, 5, 40⟩], residual := [((3020553269023021818113491928875860238436312797103974636333990918838877679899 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow452 (rho : Nat -> F) : Prop :=
    (relationLc193 rho) * (relationLc194 rho) = ((1 : F) * rho 453)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), runs := [⟨(44904698983055701426762562604192635411742513653435806164959563737310625134 : F), 256, 5, 40⟩, ⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 257, 5, 40⟩], residual := [((730484619435542636604631215209933679706500592086926097071477874864386774092 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 454) * ((1 : F) + (1 : F) * rho 453) = (relationLc195 rho)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (44904698983055701426762562604192635411742513653435806164959563737310625134 : F), runs := [⟨(44904698983055701426762562604192635411742513653435806164959563737310625134 : F), 257, 5, 40⟩, ⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 256, 5, 40⟩], residual := [((7860310894553269756280238549700692882381083328300356953251934111449264246407 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 455) * ((1 : F) + (-1 : F) * rho 453) = (relationLc196 rho)

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 40⟩], residual := [((1 : F), 454), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * (relationLc197 rho) = ((1 : F) * rho 456)

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 40⟩], residual := [((1 : F), 455), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * (relationLc198 rho) = ((1 : F) * rho 457)

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2276932546380933870225228921511621554726597530816646260591385143214032842447 : F), 256, 5, 41⟩], residual := [((5185411658465475973318981105133659618627589062199339752884966290682921774597 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 257, 5, 41⟩], residual := [((5846162809411592435527463114932061406630928699960866773281871945282257768489 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow457 (rho : Nat -> F) : Prop :=
    (relationLc199 rho) * (relationLc200 rho) = ((1 : F) * rho 458)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 257, 5, 41⟩, ⟨(2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), 256, 5, 41⟩], residual := [((1386654189607152276266355660052811289299810609976197283168747936889837303830 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 459) * ((1 : F) + (1 : F) * rho 458) = (relationLc201 rho)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), runs := [⟨(1462656451100821597405370173853097694625881251276553512944466206343611444975 : F), 256, 5, 41⟩, ⟨(2253728269641061733139615402045494248872459934347895429187815144194851333833 : F), 257, 5, 41⟩], residual := [((7097948268939892520401588775257677409780701028932676067280934208059187180420 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 460) * ((1 : F) + (-1 : F) * rho 458) = (relationLc202 rho)

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 41⟩], residual := [((1 : F), 459), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * (relationLc203 rho) = ((1 : F) * rho 461)

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 41⟩], residual := [((1 : F), 460), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * (relationLc204 rho) = ((1 : F) * rho 462)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(482825218398770967544548674690245367257088234990090761451761925117301640544 : F), 256, 5, 42⟩], residual := [((949690325413438538305997154209657878966567982879223149845296457864483296248 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), runs := [⟨(2309031058061759310903122759335686122157542386344445331826806079031620559629 : F), 257, 5, 42⟩], residual := [((4417333435990880862685875555964743816569557333763586801868360197118446857184 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
