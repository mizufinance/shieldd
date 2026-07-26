import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs56

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1317895910406804064052127699046425448708799894588463316158418143906363589465 : F), runs := [⟨(1317895910406804064052127699046425448708799894588463316158418143906363589465 : F), 257, 5, 149⟩, ⟨(1317895910406804064052127699046425448708799894588463316158418143906363589465 : F), 1005, 8, 65⟩, ⟨(2800425724914845436668107377538562558830549738657339244877994320937568075277 : F), 256, 5, 149⟩, ⟨(2800425724914845436668107377538562558830549738657339244877994320937568075277 : F), 1004, 8, 65⟩], residual := [((1407449638564249403743435440505796794152886754468530286960699739867773660406 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1258 rho) = ((1 : F) * rho 1522)

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1523) * ((1 : F) + (-1 : F) * rho 1519) = ((4326140114106720923528589862196558523836549701908261266898820991073477574299 : F) * rho 1518 + (1 : F) * rho 1522)

def relationLc1259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 65⟩], residual := [((1 : F), 1521), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 216) * (relationLc1259 rho) = ((1 : F) * rho 1524)

def relationLc1260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 65⟩], residual := [((1 : F), 1523), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 216) * (relationLc1260 rho) = ((1 : F) * rho 1525)

def relationLc1261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 66⟩, ⟨(1 : F), 1005, 8, 66⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1261 rho) = ((1 : F) * rho 1526)

def relationLc1262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1996585204601266675429321607520269104038502571187033994999948541698577110664 : F), 256, 5, 149⟩, ⟨(1996585204601266675429321607520269104038502571187033994999948541698577110664 : F), 1004, 8, 66⟩], residual := [((3380063927933372626926139325465722916591826025086909636351152278641708478755 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1764755048406653667338976471573889533281357893935591296537806754119176181450 : F), runs := [⟨(1764755048406653667338976471573889533281357893935591296537806754119176181450 : F), 257, 5, 149⟩, ⟨(1764755048406653667338976471573889533281357893935591296537806754119176181450 : F), 1005, 8, 66⟩], residual := [((2183381813434380148828247542363511242964190520296834620661283850118539454462 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1526 (rho : Nat -> F) : Prop :=
    (relationLc1262 rho) * (relationLc1263 rho) = ((1 : F) * rho 1527)

def relationLc1264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1764755048406653667338976471573889533281357893935591296537806754119176181450 : F), runs := [⟨(1764755048406653667338976471573889533281357893935591296537806754119176181450 : F), 257, 5, 149⟩, ⟨(1764755048406653667338976471573889533281357893935591296537806754119176181450 : F), 1005, 8, 66⟩, ⟨(1898638236698598075054743944071562517016972575683812106310169965279582737643 : F), 256, 5, 149⟩, ⟨(1898638236698598075054743944071562517016972575683812106310169965279582737643 : F), 1004, 8, 66⟩], residual := [((4784086709460966665603597867551298067557430575814334213384262422207858322647 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1264 rho) = ((1 : F) * rho 1528)

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1529) * ((1 : F) + (1 : F) * rho 1527) = ((1 : F) * rho 1528)

def relationLc1265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6679706701021716756909848467207656998094541441218472531397426701798233057591 : F), runs := [⟨(6545823512729772349194080994709984014358926759470251721625063490637826501398 : F), 256, 5, 149⟩, ⟨(6545823512729772349194080994709984014358926759470251721625063490637826501398 : F), 1004, 8, 66⟩, ⟨(6679706701021716756909848467207656998094541441218472531397426701798233057591 : F), 257, 5, 149⟩, ⟨(6679706701021716756909848467207656998094541441218472531397426701798233057591 : F), 1005, 8, 66⟩], residual := [((3660375039967403758645227071230248463818468759339729614550971033709550916394 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1529 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1265 rho) = ((1 : F) * rho 1530)

def relationRow1530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1531) * ((1 : F) + (-1 : F) * rho 1527) = ((3663393285105251742393720415645452050298330469619403402847976719398758919093 : F) * rho 1526 + (1 : F) * rho 1530)

def relationLc1266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 66⟩], residual := [((1 : F), 1529), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 217) * (relationLc1266 rho) = ((1 : F) * rho 1532)

def relationLc1267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 66⟩], residual := [((1 : F), 1531), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 217) * (relationLc1267 rho) = ((1 : F) * rho 1533)

def relationLc1268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 67⟩, ⟨(1 : F), 1005, 8, 67⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1533 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1268 rho) = ((1 : F) * rho 1534)

def relationLc1269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3330418736367948331367250765108025834547152750757290585022127288549783031492 : F), 256, 5, 149⟩, ⟨(3330418736367948331367250765108025834547152750757290585022127288549783031492 : F), 1004, 8, 67⟩], residual := [((7732680193357595775397599743496675629449255768853070406785728643839962901504 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513009797142566324112437740216326258495380864073566594591358293644236642463 : F), runs := [⟨(6513009797142566324112437740216326258495380864073566594591358293644236642463 : F), 257, 5, 149⟩, ⟨(6513009797142566324112437740216326258495380864073566594591358293644236642463 : F), 1005, 8, 67⟩], residual := [((567370397628330717217018112115180285802905338087350990356162266591331682719 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1534 (rho : Nat -> F) : Prop :=
    (relationLc1269 rho) * (relationLc1270 rho) = ((1 : F) * rho 1535)

def relationLc1271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6513009797142566324112437740216326258495380864073566594591358293644236642463 : F), runs := [⟨(2111519046525914471578692512262554007621102664942759179303582716486657980307 : F), 256, 5, 149⟩, ⟨(2111519046525914471578692512262554007621102664942759179303582716486657980307 : F), 1004, 8, 67⟩, ⟨(6513009797142566324112437740216326258495380864073566594591358293644236642463 : F), 257, 5, 149⟩, ⟨(6513009797142566324112437740216326258495380864073566594591358293644236642463 : F), 1005, 8, 67⟩], residual := [((3516127552242981502696547766275804820625694863086105159522174114052698548277 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1535 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1271 rho) = ((1 : F) * rho 1536)

def relationRow1536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1537) * ((1 : F) + (1 : F) * rho 1535) = ((1 : F) * rho 1536)

def relationLc1272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1931451952285804100136387198565220272880518471080497233343875162273172596578 : F), runs := [⟨(1931451952285804100136387198565220272880518471080497233343875162273172596578 : F), 257, 5, 149⟩, ⟨(1931451952285804100136387198565220272880518471080497233343875162273172596578 : F), 1005, 8, 67⟩, ⟨(6332942702902455952670132426518992523754796670211304648631650739430751258734 : F), 256, 5, 149⟩, ⟨(6332942702902455952670132426518992523754796670211304648631650739430751258734 : F), 1004, 8, 67⟩], residual := [((4928334197185388921552277172505741710750204472067958668413059341864710690764 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1537 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1272 rho) = ((1 : F) * rho 1538)

def relationRow1538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1539) * ((1 : F) + (-1 : F) * rho 1535) = ((180067094240110371442305313697333734740584193862261945959707554213485383729 : F) * rho 1534 + (1 : F) * rho 1538)

def relationLc1273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 67⟩], residual := [((1 : F), 1537), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 218) * (relationLc1273 rho) = ((1 : F) * rho 1540)

def relationLc1274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 67⟩], residual := [((1 : F), 1539), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 218) * (relationLc1274 rho) = ((1 : F) * rho 1541)

def relationLc1275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 68⟩, ⟨(1 : F), 1005, 8, 68⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1541 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1275 rho) = ((1 : F) * rho 1542)

def relationLc1276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3647845013221540195000180144391708208516708723557347468147664801839542250871 : F), 256, 5, 149⟩, ⟨(3647845013221540195000180144391708208516708723557347468147664801839542250871 : F), 1004, 8, 68⟩], residual := [((4971282488306407230903895476128900254670987796347003951409327543348148103236 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7321797565248499399597033149132749385913345298552819616764011964057332335793 : F), runs := [⟨(7321797565248499399597033149132749385913345298552819616764011964057332335793 : F), 257, 5, 149⟩, ⟨(7321797565248499399597033149132749385913345298552819616764011964057332335793 : F), 1005, 8, 68⟩], residual := [((2169773500175028257771770782874482504945777498476923627076290976547949899032 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1542 (rho : Nat -> F) : Prop :=
    (relationLc1276 rho) * (relationLc1277 rho) = ((1 : F) * rho 1543)

def relationLc1278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7321797565248499399597033149132749385913345298552819616764011964057332335793 : F), runs := [⟨(5697934753508189495138730686984834008325918422299748238596542021834332860449 : F), 256, 5, 149⟩, ⟨(5697934753508189495138730686984834008325918422299748238596542021834332860449 : F), 1004, 8, 68⟩, ⟨(7321797565248499399597033149132749385913345298552819616764011964057332335793 : F), 257, 5, 149⟩, ⟨(7321797565248499399597033149132749385913345298552819616764011964057332335793 : F), 1005, 8, 68⟩], residual := [((5548085673560588628418405811515408393776216884330103404665556564860289690116 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1543 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1278 rho) = ((1 : F) * rho 1544)

def relationRow1544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1545) * ((1 : F) + (1 : F) * rho 1543) = ((1 : F) * rho 1544)

def relationLc1279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1122664184179871024651791789648797145462554036601244211171221491860076903248 : F), runs := [⟨(1122664184179871024651791789648797145462554036601244211171221491860076903248 : F), 257, 5, 149⟩, ⟨(1122664184179871024651791789648797145462554036601244211171221491860076903248 : F), 1005, 8, 68⟩, ⟨(2746526995920180929110094251796712523049980912854315589338691434083076378592 : F), 256, 5, 149⟩, ⟨(2746526995920180929110094251796712523049980912854315589338691434083076378592 : F), 1004, 8, 68⟩], residual := [((2896376075867781795830419127266138137599682450823960423269676891057119548925 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1545 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1279 rho) = ((1 : F) * rho 1546)

def relationRow1546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1547) * ((1 : F) + (-1 : F) * rho 1543) = ((4575270569328318470486938897336036862863364385698504027425320529974255957201 : F) * rho 1542 + (1 : F) * rho 1546)

def relationLc1280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 68⟩], residual := [((1 : F), 1545), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 219) * (relationLc1280 rho) = ((1 : F) * rho 1548)

def relationLc1281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 68⟩], residual := [((1 : F), 1547), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 219) * (relationLc1281 rho) = ((1 : F) * rho 1549)

def relationLc1282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 69⟩, ⟨(1 : F), 1005, 8, 69⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1549 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1282 rho) = ((1 : F) * rho 1550)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
