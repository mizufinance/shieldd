import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs47

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1037282008157506523526542186577046138949230062667527043228674894992982519874 : F), runs := [⟨(1037282008157506523526542186577046138949230062667527043228674894992982519874 : F), 257, 5, 149⟩, ⟨(1037282008157506523526542186577046138949230062667527043228674894992982519874 : F), 1005, 8, 55⟩, ⟨(5882492191240631197770769304191582135622952312660818994462554693854561372339 : F), 256, 5, 149⟩, ⟨(5882492191240631197770769304191582135622952312660818994462554693854561372339 : F), 1004, 8, 55⟩], residual := [((5482211315502627947223835492046626480188444356409821434874323540832119804618 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1236 rho) = ((1 : F) * rho 1442)

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1443) * ((1 : F) + (-1 : F) * rho 1439) = ((1524687550030232702951513448012918256803716959825717790244003867069865346828 : F) * rho 1438 + (1 : F) * rho 1442)

def relationLc1237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 55⟩], residual := [((1 : F), 1441), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 206) * (relationLc1237 rho) = ((1 : F) * rho 1444)

def relationLc1238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 55⟩], residual := [((1 : F), 1443), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 206) * (relationLc1238 rho) = ((1 : F) * rho 1445)

def relationLc1239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 56⟩, ⟨(1 : F), 1005, 8, 56⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1239 rho) = ((1 : F) * rho 1446)

def relationLc1240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5784921358780517147321313440632775274927563998220086564825994498022190454221 : F), 256, 5, 149⟩, ⟨(5784921358780517147321313440632775274927563998220086564825994498022190454221 : F), 1004, 8, 56⟩], residual := [((6305079995656463654750648117447703086047002182022449475921073467854836326934 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), runs := [⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 257, 5, 149⟩, ⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 1005, 8, 56⟩], residual := [((1610538767991596816650409780213098391033170561624469385315731459758725783327 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1446 (rho : Nat -> F) : Prop :=
    (relationLc1240 rho) * (relationLc1241 rho) = ((1 : F) * rho 1447)

def relationLc1242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), runs := [⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 257, 5, 149⟩, ⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 1005, 8, 56⟩, ⟨(888010359459640497065276007624754394479009484687871009606188348236954955058 : F), 256, 5, 149⟩, ⟨(888010359459640497065276007624754394479009484687871009606188348236954955058 : F), 1004, 8, 56⟩], residual := [((2993481232146933279157417449155677566665656915066419064387537616889164379955 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1242 rho) = ((1 : F) * rho 1448)

def relationRow1448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1449) * ((1 : F) + (1 : F) * rho 1447) = ((1 : F) * rho 1448)

def relationLc1243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6487335823319791170877706514084248051076901626445349256896221553991341427456 : F), runs := [⟨(6487335823319791170877706514084248051076901626445349256896221553991341427456 : F), 257, 5, 149⟩, ⟨(6487335823319791170877706514084248051076901626445349256896221553991341427456 : F), 1005, 8, 56⟩, ⟨(7556451389968729927183548931156792136896889850466192818329045107680454283983 : F), 256, 5, 149⟩, ⟨(7556451389968729927183548931156792136896889850466192818329045107680454283983 : F), 1004, 8, 56⟩], residual := [((5450980517281437145091407489625868964710242420087644763547695839028244859086 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1449 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1243 rho) = ((1 : F) * rho 1450)

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1451) * ((1 : F) + (-1 : F) * rho 1447) = ((2845136285568219750436394432322052874778007193396585580645200250163022766643 : F) * rho 1446 + (1 : F) * rho 1450)

def relationLc1244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 56⟩], residual := [((1 : F), 1449), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 207) * (relationLc1244 rho) = ((1 : F) * rho 1452)

def relationLc1245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 56⟩], residual := [((1 : F), 1451), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 207) * (relationLc1245 rho) = ((1 : F) * rho 1453)

def relationLc1246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 57⟩, ⟨(1 : F), 1005, 8, 57⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1453 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1246 rho) = ((1 : F) * rho 1454)

def relationLc1247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5905365879735766667841684091558409867820953894323093881227478821587200358292 : F), 256, 5, 149⟩, ⟨(5905365879735766667841684091558409867820953894323093881227478821587200358292 : F), 1004, 8, 57⟩], residual := [((7212764438683679537947725008823269311972987213902295979621436722051371346111 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), runs := [⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 257, 5, 149⟩, ⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 1005, 8, 57⟩], residual := [((5884707577782438660459430595081945110501492710070465762925982429225625531051 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1454 (rho : Nat -> F) : Prop :=
    (relationLc1247 rho) * (relationLc1248 rho) = ((1 : F) * rho 1455)

def relationLc1249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), runs := [⟨(1564501649722010868527949296547647441544835710773070100528640509989877181391 : F), 256, 5, 149⟩, ⟨(1564501649722010868527949296547647441544835710773070100528640509989877181391 : F), 1004, 8, 57⟩, ⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 257, 5, 149⟩, ⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 1005, 8, 57⟩], residual := [((5487373825472086693849157757863494966617089989874130499299661029863117040539 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1249 rho) = ((1 : F) * rho 1456)

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1457) * ((1 : F) + (1 : F) * rho 1455) = ((1 : F) * rho 1456)

def relationLc1250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3879071643539061169084366308301910929194209703059126108718735703558464307765 : F), runs := [⟨(3879071643539061169084366308301910929194209703059126108718735703558464307765 : F), 257, 5, 149⟩, ⟨(3879071643539061169084366308301910929194209703059126108718735703558464307765 : F), 1005, 8, 57⟩, ⟨(6879960099706359555720875642233899089831063624380993727406592945927532057650 : F), 256, 5, 149⟩, ⟨(6879960099706359555720875642233899089831063624380993727406592945927532057650 : F), 1004, 8, 57⟩], residual := [((2957087923956283730399667180918051564758809345279933328635572426054292198502 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1250 rho) = ((1 : F) * rho 1458)

def relationRow1458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1459) * ((1 : F) + (-1 : F) * rho 1455) = ((6129891755611320123692407927027283043726525342868007819745138262348822112667 : F) * rho 1454 + (1 : F) * rho 1458)

def relationLc1251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 57⟩], residual := [((1 : F), 1457), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 208) * (relationLc1251 rho) = ((1 : F) * rho 1460)

def relationLc1252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 57⟩], residual := [((1 : F), 1459), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 208) * (relationLc1252 rho) = ((1 : F) * rho 1461)

def relationLc1253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 58⟩, ⟨(1 : F), 1005, 8, 58⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1253 rho) = ((1 : F) * rho 1462)

def relationLc1254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2333521382420236697040097662358587024796079362568935009425247624130129932194 : F), 256, 5, 149⟩, ⟨(2333521382420236697040097662358587024796079362568935009425247624130129932194 : F), 1004, 8, 58⟩], residual := [((1417945779725424908112552563237869929744463813114412655051183172264746978897 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), runs := [⟨(1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), 257, 5, 149⟩, ⟨(1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), 1005, 8, 58⟩], residual := [((1064426900402051743754219644245711463532616799178717825153585914082016330015 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1462 (rho : Nat -> F) : Prop :=
    (relationLc1254 rho) * (relationLc1255 rho) = ((1 : F) * rho 1463)

def relationLc1256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), runs := [⟨(1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), 257, 5, 149⟩, ⟨(1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), 1005, 8, 58⟩, ⟨(3438934615418509056114893999458345190538613790666026959076386096789984605744 : F), 256, 5, 149⟩, ⟨(3438934615418509056114893999458345190538613790666026959076386096789984605744 : F), 1004, 8, 58⟩], residual := [((6893000450000819621763790167225771836868761975481047349781196949752345032557 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1463 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1256 rho) = ((1 : F) * rho 1464)

def relationRow1464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1465) * ((1 : F) + (1 : F) * rho 1463) = ((1 : F) * rho 1464)

def relationLc1257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7183198159204444928071777019700418892574169328708792589478528034792332693640 : F), runs := [⟨(5005527134009861368133930939323201340837285544488036868858847359127424633297 : F), 256, 5, 149⟩, ⟨(5005527134009861368133930939323201340837285544488036868858847359127424633297 : F), 1004, 8, 58⟩, ⟨(7183198159204444928071777019700418892574169328708792589478528034792332693640 : F), 257, 5, 149⟩, ⟨(7183198159204444928071777019700418892574169328708792589478528034792332693640 : F), 1005, 8, 58⟩], residual := [((1551461299427550802485034771555774694507137359673016478154036506165064206484 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1257 rho) = ((1 : F) * rho 1466)

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1467) * ((1 : F) + (-1 : F) * rho 1463) = ((4700198205642434552291941918539472829340343797111298197533091517915061151145 : F) * rho 1462 + (1 : F) * rho 1466)

def relationLc1258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 58⟩], residual := [((1 : F), 1465), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * (relationLc1258 rho) = ((1 : F) * rho 1468)

def relationLc1259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 58⟩], residual := [((1 : F), 1467), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * (relationLc1259 rho) = ((1 : F) * rho 1469)

def relationLc1260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 59⟩, ⟨(1 : F), 1005, 8, 59⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1260 rho) = ((1 : F) * rho 1470)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
