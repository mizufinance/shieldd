import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs41

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8043154670756946061888576733711782951724992983194096150699214143122152248509 : F), runs := [⟨(2600541286156862081859173644739493705743607684624762423150313922128193915379 : F), 256, 5, 149⟩, ⟨(2600541286156862081859173644739493705743607684624762423150313922128193915379 : F), 1004, 8, 34⟩, ⟨(8043154670756946061888576733711782951724992983194096150699214143122152248509 : F), 257, 5, 149⟩, ⟨(8043154670756946061888576733711782951724992983194096150699214143122152248509 : F), 1005, 8, 34⟩], residual := [((3323524210324915604334367081537177239089604935318089495761842007710323705489 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1273 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1089 rho) = ((1 : F) * rho 1274)

def relationRow1274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1275) * ((1 : F) + (-1 : F) * rho 1271) = ((6245227541942932704749899499111816405283198002489269082020938846584472314194 : F) * rho 1270 + (1 : F) * rho 1274)

def relationLc1090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 34⟩], residual := [((1 : F), 1273), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 185) * (relationLc1090 rho) = ((1 : F) * rho 1276)

def relationLc1091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 34⟩], residual := [((1 : F), 1275), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 185) * (relationLc1091 rho) = ((1 : F) * rho 1277)

def relationLc1092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 35⟩, ⟨(1 : F), 1005, 8, 35⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1277 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1092 rho) = ((1 : F) * rho 1278)

def relationLc1093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4879528627294238275690539772499781527567752672854439573014061782846610701472 : F), 256, 5, 149⟩, ⟨(4879528627294238275690539772499781527567752672854439573014061782846610701472 : F), 1004, 8, 35⟩], residual := [((101145388215490346530787508378078744010713501363009604938529302121084462966 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), runs := [⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 257, 5, 149⟩, ⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 1005, 8, 35⟩], residual := [((8046156656394868331008900513631503273645476196898276693087825440198814241392 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1278 (rho : Nat -> F) : Prop :=
    (relationLc1093 rho) * (relationLc1094 rho) = ((1 : F) * rho 1279)

def relationLc1095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), runs := [⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 257, 5, 149⟩, ⟨(1380460206807711564638663296620444513019473775459607738440626508283673674725 : F), 1005, 8, 35⟩, ⟨(6984159211750865130105678661651374715956492648754619623222518118061746074090 : F), 256, 5, 149⟩, ⟨(6984159211750865130105678661651374715956492648754619623222518118061746074090 : F), 1004, 8, 35⟩], residual := [((4663933031297181233029904357253716704886513111153472250123014466230610304028 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1279 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1095 rho) = ((1 : F) * rho 1280)

def relationRow1280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1281) * ((1 : F) + (1 : F) * rho 1279) = ((1 : F) * rho 1280)

def relationLc1096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7064001542620658859610161642161102018356425559694456089494606947633735564316 : F), runs := [⟨(1460302537677505294143146277130171815419406686399444204712715337855663164951 : F), 256, 5, 149⟩, ⟨(1460302537677505294143146277130171815419406686399444204712715337855663164951 : F), 1004, 8, 35⟩, ⟨(7064001542620658859610161642161102018356425559694456089494606947633735564316 : F), 257, 5, 149⟩, ⟨(7064001542620658859610161642161102018356425559694456089494606947633735564316 : F), 1005, 8, 35⟩], residual := [((3780528718131189191218920581527829826489386224000591577812218989686798935013 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1281 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1096 rho) = ((1 : F) * rho 1282)

def relationRow1282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1283) * ((1 : F) + (-1 : F) * rho 1279) = ((8364619418558576694744341958271819228975966424214227361663144626345419748815 : F) * rho 1278 + (1 : F) * rho 1282)

def relationLc1097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 35⟩], residual := [((1 : F), 1281), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 186) * (relationLc1097 rho) = ((1 : F) * rho 1284)

def relationLc1098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 35⟩], residual := [((1 : F), 1283), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 186) * (relationLc1098 rho) = ((1 : F) * rho 1285)

def relationLc1099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 36⟩, ⟨(1 : F), 1005, 8, 36⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1285 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1099 rho) = ((1 : F) * rho 1286)

def relationLc1100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4768430774787137461239983348768506902191005184144761558215255335008363303521 : F), 256, 5, 149⟩, ⟨(4768430774787137461239983348768506902191005184144761558215255335008363303521 : F), 1004, 8, 36⟩], residual := [((4418611128244402514898585934103632442583042684605626918124376504577736114022 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), runs := [⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 257, 5, 149⟩, ⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 1005, 8, 36⟩], residual := [((4543518876404653285116166354042357871768585069803000069050705909111993022531 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1286 (rho : Nat -> F) : Prop :=
    (relationLc1100 rho) * (relationLc1101 rho) = ((1 : F) * rho 1287)

def relationLc1102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), runs := [⟨(3632613122569427447388435477929823717695956385815714556122503646001894394180 : F), 256, 5, 149⟩, ⟨(3632613122569427447388435477929823717695956385815714556122503646001894394180 : F), 1004, 8, 36⟩, ⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 257, 5, 149⟩, ⟨(6629227314315963601615851724934144504898925614068174154939451162527919100461 : F), 1005, 8, 36⟩], residual := [((2012481559670505916081231958609727112091662939725219135190660515349465702287 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1287 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1102 rho) = ((1 : F) * rho 1288)

def relationRow1288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1289) * ((1 : F) + (1 : F) * rho 1287) = ((1 : F) * rho 1288)

def relationLc1103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1815234435112406822632973213847402026476973721085889672995782293389490138580 : F), runs := [⟨(1815234435112406822632973213847402026476973721085889672995782293389490138580 : F), 257, 5, 149⟩, ⟨(1815234435112406822632973213847402026476973721085889672995782293389490138580 : F), 1005, 8, 36⟩, ⟨(4811848626858942976860389460851722813679942949338349271812729809915514844861 : F), 256, 5, 149⟩, ⟨(4811848626858942976860389460851722813679942949338349271812729809915514844861 : F), 1004, 8, 36⟩], residual := [((6431980189757864508167592980171819419284236395428844692744572940567943536754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1289 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1103 rho) = ((1 : F) * rho 1290)

def relationRow1290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * ((1 : F) + (-1 : F) * rho 1287) = ((1817378687457020624755462264082421691218982664729824883126721352612404255600 : F) * rho 1286 + (1 : F) * rho 1290)

def relationLc1104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 36⟩], residual := [((1 : F), 1289), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 187) * (relationLc1104 rho) = ((1 : F) * rho 1292)

def relationLc1105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 36⟩], residual := [((1 : F), 1291), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 187) * (relationLc1105 rho) = ((1 : F) * rho 1293)

def relationLc1106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 37⟩, ⟨(1 : F), 1005, 8, 37⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1106 rho) = ((1 : F) * rho 1294)

def relationLc1107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5232456591901524675171898312727688831066952335643208979409582199111200888071 : F), 256, 5, 149⟩, ⟨(5232456591901524675171898312727688831066952335643208979409582199111200888071 : F), 1004, 8, 37⟩], residual := [((5909232206328692192169621804612071292019481376635366714888083991012077534906 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (519459684926506647045678163036511550506178357734185422711253957475149940396 : F), runs := [⟨(519459684926506647045678163036511550506178357734185422711253957475149940396 : F), 257, 5, 149⟩, ⟨(519459684926506647045678163036511550506178357734185422711253957475149940396 : F), 1005, 8, 37⟩], residual := [((5035188772786492644344439440090719894418338524917818077608061157396210162411 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1294 (rho : Nat -> F) : Prop :=
    (relationLc1107 rho) * (relationLc1108 rho) = ((1 : F) * rho 1295)

def relationLc1109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (519459684926506647045678163036511550506178357734185422711253957475149940396 : F), runs := [⟨(519459684926506647045678163036511550506178357734185422711253957475149940396 : F), 257, 5, 149⟩, ⟨(519459684926506647045678163036511550506178357734185422711253957475149940396 : F), 1005, 8, 37⟩, ⟨(8328793117556774915098451304516039326646763016140218256338454169936138141010 : F), 256, 5, 149⟩, ⟨(8328793117556774915098451304516039326646763016140218256338454169936138141010 : F), 1004, 8, 37⟩], residual := [((1713588048568020700537857768324203259359111504685594798991674366567084870228 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1109 rho) = ((1 : F) * rho 1296)

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1297) * ((1 : F) + (1 : F) * rho 1295) = ((1 : F) * rho 1296)

def relationLc1110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7925002064501863777203146775745034980869720977419878405223979498442259298645 : F), runs := [⟨(115668631871595509150373634265507204729136319013845571596779285981271098031 : F), 256, 5, 149⟩, ⟨(115668631871595509150373634265507204729136319013845571596779285981271098031 : F), 1004, 8, 37⟩, ⟨(7925002064501863777203146775745034980869720977419878405223979498442259298645 : F), 257, 5, 149⟩, ⟨(7925002064501863777203146775745034980869720977419878405223979498442259298645 : F), 1005, 8, 37⟩], residual := [((6730873700860349723710967170457343272016787830468469028943559089350324368813 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1110 rho) = ((1 : F) * rho 1298)

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1299) * ((1 : F) + (-1 : F) * rho 1295) = ((403791053054911137895304528771004345777042038720339851114474671493878842365 : F) * rho 1294 + (1 : F) * rho 1298)

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 37⟩], residual := [((1 : F), 1297), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 188) * (relationLc1111 rho) = ((1 : F) * rho 1300)

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 37⟩], residual := [((1 : F), 1299), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 188) * (relationLc1112 rho) = ((1 : F) * rho 1301)

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 38⟩, ⟨(1 : F), 1005, 8, 38⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1113 rho) = ((1 : F) * rho 1302)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
