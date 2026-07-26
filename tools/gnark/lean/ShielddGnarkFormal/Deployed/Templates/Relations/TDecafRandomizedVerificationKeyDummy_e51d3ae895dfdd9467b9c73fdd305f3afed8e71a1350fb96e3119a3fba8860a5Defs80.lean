import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs79

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), runs := [⟨(6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), 2062, 5, 35⟩, ⟨(6554496631765374631696458020546417542665533138533649817136049192449861308000 : F), 2061, 5, 35⟩], residual := [((6916681249492857906630506008985655411921888986126285976219786978352487071429 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2234) * ((1 : F) + (1 : F) * rho 2233) = (relationLc1623 rho)

def relationLc1624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6554496631765374631696458020546417542665533138533649817136049192449861308000 : F), runs := [⟨(6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), 2061, 5, 35⟩, ⟨(6554496631765374631696458020546417542665533138533649817136049192449861308000 : F), 2062, 5, 35⟩], residual := [((1487571320597799729156916433138675965370975271164905067793436153547633830944 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2235) * ((1 : F) + (-1 : F) * rho 2233) = (relationLc1624 rho)

def relationLc1625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 35⟩], residual := [((1 : F), 2234), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1842) * (relationLc1625 rho) = ((1 : F) * rho 2236)

def relationLc1626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 35⟩], residual := [((1 : F), 2235), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1842) * (relationLc1626 rho) = ((1 : F) * rho 2237)

def relationLc1627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6334345927168293860617691197907754261420091566533206876213950776912116811895 : F), 2061, 5, 36⟩], residual := [((803980581825681997882472852881647133048328936003838712435095075808245989086 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), runs := [⟨(3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), 2062, 5, 36⟩], residual := [((3742391049692554707688247834471216841214819134200172501298175408335104860001 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2237 (rho : Nat -> F) : Prop :=
    (relationLc1627 rho) * (relationLc1628 rho) = ((1 : F) * rho 2238)

def relationLc1629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), runs := [⟨(3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), 2062, 5, 36⟩, ⟨(5821815196371080939141566108487615899565058757814397251452290634226070225917 : F), 2061, 5, 36⟩], residual := [((2129795733956591764029297315827035874160583587213118217946240747961540846450 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2239) * ((1 : F) + (1 : F) * rho 2238) = (relationLc1629 rho)

def relationLc1630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821815196371080939141566108487615899565058757814397251452290634226070225917 : F), runs := [⟨(3322832884971658379020786549972206387369304268355604981071819235682279886563 : F), 2061, 5, 36⟩, ⟨(5821815196371080939141566108487615899565058757814397251452290634226070225917 : F), 2062, 5, 36⟩], residual := [((1342632423321852336261692036393510600183999016189562550954932080238708326577 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2240) * ((1 : F) + (-1 : F) * rho 2238) = (relationLc1630 rho)

def relationLc1631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 36⟩], residual := [((1 : F), 2239), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1843) * (relationLc1631 rho) = ((1 : F) * rho 2241)

def relationLc1632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 36⟩], residual := [((1 : F), 2240), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1843) * (relationLc1632 rho) = ((1 : F) * rho 2242)

def relationLc1633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6051250210517190749663141116441450966628119241944618079453095600811208772222 : F), 2061, 5, 37⟩], residual := [((1009916982077206128033609777361685216350669515822433705706665175388118018829 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 2062, 5, 37⟩], residual := [((2898409259390194651556282054766198193763430239886953805590234007251608670059 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2242 (rho : Nat -> F) : Prop :=
    (relationLc1633 rho) * (relationLc1634 rho) = ((1 : F) * rho 2243)

def relationLc1635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 2062, 5, 37⟩, ⟨(5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), 2061, 5, 37⟩], residual := [((2758980867967042941829566517804359186364408625440783412445230694566907463858 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2244) * ((1 : F) + (1 : F) * rho 2243) = (relationLc1635 rho)

def relationLc1636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), runs := [⟨(3150268533740900499578316159152134076751680532834121341659634171961029431792 : F), 2061, 5, 37⟩, ⟨(5299009025282118220688906454851861015532590982905956826222019362649553696377 : F), 2062, 5, 37⟩], residual := [((6343037318141234726453880135613100257806210245726646240133126189191628366975 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2245) * ((1 : F) + (-1 : F) * rho 2243) = (relationLc1636 rho)

def relationLc1637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 37⟩], residual := [((1 : F), 2244), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1844) * (relationLc1637 rho) = ((1 : F) * rho 2246)

def relationLc1638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 37⟩], residual := [((1 : F), 2245), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1844) * (relationLc1638 rho) = ((1 : F) * rho 2247)

def relationLc1639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(919177287557471400886151427262146296905684745211404392707875994351732261419 : F), 2061, 5, 38⟩], residual := [((4055808561599814462885459923885954734183140044469009082707959598090942531216 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 2062, 5, 38⟩], residual := [((3561836517110067914917388337528013887729344884646458938509273390102621545248 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2247 (rho : Nat -> F) : Prop :=
    (relationLc1639 rho) * (relationLc1640 rho) = ((1 : F) * rho 2248)

def relationLc1641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 2062, 5, 38⟩, ⟨(5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), 2061, 5, 38⟩], residual := [((5366117760719104240009535820294641980238990105175700970320241128819874078089 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2249) * ((1 : F) + (1 : F) * rho 2248) = (relationLc1641 rho)

def relationLc1642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), runs := [⟨(2459406165588571115311174697897461555967218978176849787735079515445045239877 : F), 2061, 5, 38⟩, ⟨(5034556368092701954807355136104875024596127238450076252401212621682093933060 : F), 2062, 5, 38⟩], residual := [((2776352286685200723773157721639124171677345230423218268294247495348690302387 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2250) * ((1 : F) + (-1 : F) * rho 2248) = (relationLc1642 rho)

def relationLc1643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 38⟩], residual := [((1 : F), 2249), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1845) * (relationLc1643 rho) = ((1 : F) * rho 2251)

def relationLc1644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 38⟩], residual := [((1 : F), 2250), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1845) * (relationLc1644 rho) = ((1 : F) * rho 2252)

def relationLc1645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131519962748260633613313507912172186478635528818138590775791988998556993852 : F), 2061, 5, 39⟩], residual := [((1215279473610371209935227904049657825190163834384456189946283016107686137841 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 2062, 5, 39⟩], residual := [((8298128149157705628277342045212304693352092272731248112178849781241908597876 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2252 (rho : Nat -> F) : Prop :=
    (relationLc1645 rho) * (relationLc1646 rho) = ((1 : F) * rho 2253)

def relationLc1647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 2062, 5, 39⟩, ⟨(8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), 2061, 5, 39⟩], residual := [((8002233522886339559505266502144845482991067722684261581370776804310052360471 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2254) * ((1 : F) + (1 : F) * rho 2253) = (relationLc1647 rho)

def relationLc1648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), runs := [⟨(1214286283469246825825118534888634565400684580240643302545653368917068457758 : F), 2061, 5, 39⟩, ⟨(8026210262354054865492217713588127197539452375622686325254164529602078941503 : F), 2062, 5, 39⟩], residual := [((7728715752397633698641128843943213501411187652390824656893175053399511388425 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2255) * ((1 : F) + (-1 : F) * rho 2253) = (relationLc1648 rho)

def relationLc1649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 39⟩], residual := [((1 : F), 2254), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1846) * (relationLc1649 rho) = ((1 : F) * rho 2256)

def relationLc1650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 39⟩], residual := [((1 : F), 2255), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1846) * (relationLc1650 rho) = ((1 : F) * rho 2257)

def relationLc1651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(545707636957347222268502606761207076859744384564549177379106755736850705158 : F), 2061, 5, 40⟩], residual := [((6161244127489140545768233816104021805474783469828701794839528005338549570673 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), runs := [⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 2062, 5, 40⟩], residual := [((3020553269023021818113491928875860238436312797103974636333990918838877679899 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2257 (rho : Nat -> F) : Prop :=
    (relationLc1651 rho) * (relationLc1652 rho) = ((1 : F) * rho 2258)

def relationLc1653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), runs := [⟨(44904698983055701426762562604192635411742513653435806164959563737310625134 : F), 2061, 5, 40⟩, ⟨(6576811098948278595984782395563495218759085106770148970496927939778558634586 : F), 2062, 5, 40⟩], residual := [((730484619435542636604631215209933679706500592086926097071477874864386774092 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
