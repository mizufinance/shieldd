import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs62

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7216791823724381797356268404403602673455158592087642425629514932959346565662 : F), runs := [⟨(2613679024366702405020697923725209952616812801469441944746386782942600651088 : F), 256, 5, 149⟩, ⟨(2613679024366702405020697923725209952616812801469441944746386782942600651088 : F), 1004, 8, 86⟩, ⟨(7216791823724381797356268404403602673455158592087642425629514932959346565662 : F), 257, 5, 149⟩, ⟨(7216791823724381797356268404403602673455158592087642425629514932959346565662 : F), 1005, 8, 86⟩], residual := [((506686959602935038721899292822343526600717910414475924414538175406338780916 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1689 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1405 rho) = ((1 : F) * rho 1690)

def relationRow1690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1691) * ((1 : F) + (-1 : F) * rho 1687) = ((7058452650765656646120683549434280436679827276751043285494565195932871261332 : F) * rho 1686 + (1 : F) * rho 1690)

def relationLc1406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 86⟩], residual := [((1 : F), 1689), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 237) * (relationLc1406 rho) = ((1 : F) * rho 1692)

def relationLc1407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 86⟩], residual := [((1 : F), 1691), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 237) * (relationLc1407 rho) = ((1 : F) * rho 1693)

def relationLc1408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 87⟩, ⟨(1 : F), 1005, 8, 87⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1693 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1408 rho) = ((1 : F) * rho 1694)

def relationLc1409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5108019869792056471845548391669367315944996432535285954875015076492812536188 : F), 256, 5, 149⟩, ⟨(5108019869792056471845548391669367315944996432535285954875015076492812536188 : F), 1004, 8, 87⟩], residual := [((4064288127943839895562289258484952130157397309295205997450938047822402682264 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4907858296313307191312286640678462406911893830587231624615571332339052272968 : F), runs := [⟨(4907858296313307191312286640678462406911893830587231624615571332339052272968 : F), 257, 5, 149⟩, ⟨(4907858296313307191312286640678462406911893830587231624615571332339052272968 : F), 1005, 8, 87⟩], residual := [((5157899098305688618519720185772888808299554434283422179554938535806754060899 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1694 (rho : Nat -> F) : Prop :=
    (relationLc1409 rho) * (relationLc1410 rho) = ((1 : F) * rho 1695)

def relationLc1411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4907858296313307191312286640678462406911893830587231624615571332339052272968 : F), runs := [⟨(1936006471524072952681904139698278572336334768738545996321104457653538565360 : F), 256, 5, 149⟩, ⟨(1936006471524072952681904139698278572336334768738545996321104457653538565360 : F), 1004, 8, 87⟩, ⟨(4907858296313307191312286640678462406911893830587231624615571332339052272968 : F), 257, 5, 149⟩, ⟨(4907858296313307191312286640678462406911893830587231624615571332339052272968 : F), 1005, 8, 87⟩], residual := [((779081728816674181279618765775471243739515751437635085090502955742286045376 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1695 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1411 rho) = ((1 : F) * rho 1696)

def relationRow1696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1697) * ((1 : F) + (1 : F) * rho 1695) = ((1 : F) * rho 1696)

def relationLc1412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3536603453115063232936538298103084124464005504566832203319662123578356966073 : F), runs := [⟨(3536603453115063232936538298103084124464005504566832203319662123578356966073 : F), 257, 5, 149⟩, ⟨(3536603453115063232936538298103084124464005504566832203319662123578356966073 : F), 1005, 8, 87⟩, ⟨(6508455277904297471566920799083267959039564566415517831614128998263870673681 : F), 256, 5, 149⟩, ⟨(6508455277904297471566920799083267959039564566415517831614128998263870673681 : F), 1004, 8, 87⟩], residual := [((7665380020611696242969206173006075287636383583716428742844730500175123193665 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1697 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1412 rho) = ((1 : F) * rho 1698)

def relationRow1698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1699) * ((1 : F) + (-1 : F) * rho 1695) = ((6843864767837380143994190780376740979248228599325777620936675789992590838328 : F) * rho 1694 + (1 : F) * rho 1698)

def relationLc1413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 87⟩], residual := [((1 : F), 1697), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 238) * (relationLc1413 rho) = ((1 : F) * rho 1700)

def relationLc1414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 87⟩], residual := [((1 : F), 1699), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 238) * (relationLc1414 rho) = ((1 : F) * rho 1701)

def relationLc1415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 88⟩, ⟨(1 : F), 1005, 8, 88⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1701 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1415 rho) = ((1 : F) * rho 1702)

def relationLc1416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2758875159586716113257451409033950884644675870875090439171697944807152823915 : F), 256, 5, 149⟩, ⟨(2758875159586716113257451409033950884644675870875090439171697944807152823915 : F), 1004, 8, 88⟩], residual := [((907802197456396623474074233664053082891999652188052681086914831017372471204 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2652868519506863513771102772860334610209107123244578824609856963782777022786 : F), runs := [⟨(2652868519506863513771102772860334610209107123244578824609856963782777022786 : F), 257, 5, 149⟩, ⟨(2652868519506863513771102772860334610209107123244578824609856963782777022786 : F), 1005, 8, 88⟩], residual := [((5908493774085841219132802642962135592237100176275034161730010450272731341509 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1702 (rho : Nat -> F) : Prop :=
    (relationLc1416 rho) * (relationLc1417 rho) = ((1 : F) * rho 1703)

def relationLc1418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2652868519506863513771102772860334610209107123244578824609856963782777022786 : F), runs := [⟨(2047039018782242259736311587751448530900960936512297190495783709922658297187 : F), 256, 5, 149⟩, ⟨(2047039018782242259736311587751448530900960936512297190495783709922658297187 : F), 1004, 8, 88⟩, ⟨(2652868519506863513771102772860334610209107123244578824609856963782777022786 : F), 257, 5, 149⟩, ⟨(2652868519506863513771102772860334610209107123244578824609856963782777022786 : F), 1005, 8, 88⟩], residual := [((5120532697905323488906157638492512265932859324616226499764883366612455925111 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1703 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1418 rho) = ((1 : F) * rho 1704)

def relationRow1704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1705) * ((1 : F) + (1 : F) * rho 1703) = ((1 : F) * rho 1704)

def relationLc1419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5791593229921506910477722165921211921166792211909485003325376492134632216255 : F), runs := [⟨(5791593229921506910477722165921211921166792211909485003325376492134632216255 : F), 257, 5, 149⟩, ⟨(5791593229921506910477722165921211921166792211909485003325376492134632216255 : F), 1005, 8, 88⟩, ⟨(6397422730646128164512513351030098000474938398641766637439449745994750941854 : F), 256, 5, 149⟩, ⟨(6397422730646128164512513351030098000474938398641766637439449745994750941854 : F), 1004, 8, 88⟩], residual := [((3323929051523046935342667300289034265443040010537837328170350089304953313930 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1705 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1419 rho) = ((1 : F) * rho 1706)

def relationRow1706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1707) * ((1 : F) + (-1 : F) * rho 1703) = ((4699907538289105773507414360611783141110068059756876015105640673705435319973 : F) * rho 1702 + (1 : F) * rho 1706)

def relationLc1420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 88⟩], residual := [((1 : F), 1705), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 239) * (relationLc1420 rho) = ((1 : F) * rho 1708)

def relationLc1421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 88⟩], residual := [((1 : F), 1707), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 239) * (relationLc1421 rho) = ((1 : F) * rho 1709)

def relationLc1422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 89⟩, ⟨(1 : F), 1005, 8, 89⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1709 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1422 rho) = ((1 : F) * rho 1710)

def relationLc1423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2419781321145861764726265215228723255126294865025301069516030121558411920042 : F), 256, 5, 149⟩, ⟨(2419781321145861764726265215228723255126294865025301069516030121558411920042 : F), 1004, 8, 89⟩], residual := [((859882192148861689382806839411705393065304362639521984048112477304077950933 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (629217992256084577122866111698153496803649394247312880233898704412863053304 : F), runs := [⟨(629217992256084577122866111698153496803649394247312880233898704412863053304 : F), 257, 5, 149⟩, ⟨(629217992256084577122866111698153496803649394247312880233898704412863053304 : F), 1005, 8, 89⟩], residual := [((225853431996158285045358681658574726861631960515721974037992608483180946748 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1710 (rho : Nat -> F) : Prop :=
    (relationLc1423 rho) * (relationLc1424 rho) = ((1 : F) * rho 1711)

def relationLc1425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (629217992256084577122866111698153496803649394247312880233898704412863053304 : F), runs := [⟨(629217992256084577122866111698153496803649394247312880233898704412863053304 : F), 257, 5, 149⟩, ⟨(629217992256084577122866111698153496803649394247312880233898704412863053304 : F), 1005, 8, 89⟩, ⟨(6661890807748742993296814331126002683721911423547553592532001772781444762845 : F), 256, 5, 149⟩, ⟨(6661890807748742993296814331126002683721911423547553592532001772781444762845 : F), 1004, 8, 89⟩], residual := [((3091273218608613944278866913730900744754171557634409476725070531287765040746 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1711 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1425 rho) = ((1 : F) * rho 1712)

def relationRow1712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1713) * ((1 : F) + (1 : F) * rho 1711) = ((1 : F) * rho 1712)

def relationLc1426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815243757172285847125958827083393034572249940906750947701334751504546185737 : F), runs := [⟨(1782570941679627430952010607655543847653987911606510235403231683135964476196 : F), 256, 5, 149⟩, ⟨(1782570941679627430952010607655543847653987911606510235403231683135964476196 : F), 1004, 8, 89⟩, ⟨(7815243757172285847125958827083393034572249940906750947701334751504546185737 : F), 257, 5, 149⟩, ⟨(7815243757172285847125958827083393034572249940906750947701334751504546185737 : F), 1005, 8, 89⟩], residual := [((5353188530819756479969958025050645786621727777519654351210162924629644198295 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1713 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1426 rho) = ((1 : F) * rho 1714)

def relationRow1714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1715) * ((1 : F) + (-1 : F) * rho 1711) = ((7291108800004827570419680442824156180525560817794866472765900477194307816149 : F) * rho 1710 + (1 : F) * rho 1714)

def relationLc1427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 89⟩], residual := [((1 : F), 1713), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 240) * (relationLc1427 rho) = ((1 : F) * rho 1716)

def relationLc1428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 89⟩], residual := [((1 : F), 1715), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 240) * (relationLc1428 rho) = ((1 : F) * rho 1717)

def relationLc1429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 90⟩, ⟨(1 : F), 1005, 8, 90⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1717 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1429 rho) = ((1 : F) * rho 1718)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
