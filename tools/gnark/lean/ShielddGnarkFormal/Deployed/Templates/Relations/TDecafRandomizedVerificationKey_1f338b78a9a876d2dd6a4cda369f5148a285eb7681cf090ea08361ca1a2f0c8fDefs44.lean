import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs43

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2984685174376546547961468152378500336240636975927880788808584620229476031999 : F), runs := [⟨(2984685174376546547961468152378500336240636975927880788808584620229476031999 : F), 257, 5, 149⟩, ⟨(2984685174376546547961468152378500336240636975927880788808584620229476031999 : F), 1005, 8, 41⟩, ⟨(745314955517367977543116352068172160165041384512144938997120069775398163052 : F), 256, 5, 149⟩, ⟨(745314955517367977543116352068172160165041384512144938997120069775398163052 : F), 1004, 8, 41⟩], residual := [((4478005817476342204330609210929318064960163709550649552489719871068286654464 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1138 rho) = ((1 : F) * rho 1330)

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1331) * ((1 : F) + (-1 : F) * rho 1327) = ((4714461619534455898744240434334874034970220974714038100129528765912535043990 : F) * rho 1326 + (1 : F) * rho 1330)

def relationLc1139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 41⟩], residual := [((1 : F), 1329), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * (relationLc1139 rho) = ((1 : F) * rho 1332)

def relationLc1140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 41⟩], residual := [((1 : F), 1331), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * (relationLc1140 rho) = ((1 : F) * rho 1333)

def relationLc1141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 42⟩, ⟨(1 : F), 1005, 8, 42⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1141 rho) = ((1 : F) * rho 1334)

def relationLc1142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(81458509301691225636504616085288741999117689499860004584895221008205595528 : F), 256, 5, 149⟩, ⟨(81458509301691225636504616085288741999117689499860004584895221008205595528 : F), 1004, 8, 42⟩], residual := [((1051624727723807996568357550045837339349544629352932548414659430336634672760 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), runs := [⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 257, 5, 149⟩, ⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 1005, 8, 42⟩], residual := [((3661380297082212951476710236660966730558731200824120496702917408345797680542 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1334 (rho : Nat -> F) : Prop :=
    (relationLc1142 rho) * (relationLc1143 rho) = ((1 : F) * rho 1335)

def relationLc1144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), runs := [⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 257, 5, 149⟩, ⟨(2369092448024510723063068044567708238164786236827597410203581572440825732158 : F), 1005, 8, 42⟩, ⟨(6577259170775987189501198803564734947722439673388617029836540621315680948381 : F), 256, 5, 149⟩, ⟨(6577259170775987189501198803564734947722439673388617029836540621315680948381 : F), 1004, 8, 42⟩], residual := [((8424840888195641290078685097049513942344193634366615596123656391567777812286 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1144 rho) = ((1 : F) * rho 1336)

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1337) * ((1 : F) + (1 : F) * rho 1335) = ((1 : F) * rho 1336)

def relationLc1145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075369301403859701185756894213838293211113098326466417731651883476583506883 : F), runs := [⟨(1867202578652383234747626135216811583653459661765446798098692834601728290660 : F), 256, 5, 149⟩, ⟨(1867202578652383234747626135216811583653459661765446798098692834601728290660 : F), 1004, 8, 42⟩, ⟨(6075369301403859701185756894213838293211113098326466417731651883476583506883 : F), 257, 5, 149⟩, ⟨(6075369301403859701185756894213838293211113098326466417731651883476583506883 : F), 1005, 8, 42⟩], residual := [((19620861232729134170139841732032589031705700787448231811577064349631426755 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1145 rho) = ((1 : F) * rho 1338)

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1339) * ((1 : F) + (-1 : F) * rho 1335) = ((501889869372127488315441909350896654511326575062150612104888737839097441498 : F) * rho 1334 + (1 : F) * rho 1338)

def relationLc1146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 42⟩], residual := [((1 : F), 1337), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 193) * (relationLc1146 rho) = ((1 : F) * rho 1340)

def relationLc1147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 42⟩], residual := [((1 : F), 1339), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 193) * (relationLc1147 rho) = ((1 : F) * rho 1341)

def relationLc1148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 43⟩, ⟨(1 : F), 1005, 8, 43⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1148 rho) = ((1 : F) * rho 1342)

def relationLc1149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7882950453032646771230046134550116284898253460684190996110334416969682605090 : F), 256, 5, 149⟩, ⟨(7882950453032646771230046134550116284898253460684190996110334416969682605090 : F), 1004, 8, 43⟩], residual := [((1348957722018839877246664846297409567079768698538167297787547392482862052295 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), runs := [⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 257, 5, 149⟩, ⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 1005, 8, 43⟩], residual := [((6733657549797827815822559986917006574523566983426091644258847440846821914421 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1342 (rho : Nat -> F) : Prop :=
    (relationLc1149 rho) * (relationLc1150 rho) = ((1 : F) * rho 1343)

def relationLc1151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), runs := [⟨(234615450399068981126740323089512902479012875961096156476244525408180949833 : F), 256, 5, 149⟩, ⟨(234615450399068981126740323089512902479012875961096156476244525408180949833 : F), 1004, 8, 43⟩, ⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 257, 5, 149⟩, ⟨(4724941216644483096082844278014312576843795915813928318368929534344074203769 : F), 1005, 8, 43⟩], residual := [((2518861336485691516620315252446210560042343405566512006645956178307606333348 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1151 rho) = ((1 : F) * rho 1344)

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1345) * ((1 : F) + (1 : F) * rho 1343) = ((1 : F) * rho 1344)

def relationLc1152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3719520532783887328165980660767233954532103419340135509566303921573335035272 : F), runs := [⟨(3719520532783887328165980660767233954532103419340135509566303921573335035272 : F), 257, 5, 149⟩, ⟨(3719520532783887328165980660767233954532103419340135509566303921573335035272 : F), 1005, 8, 43⟩, ⟨(8209846299029301443122084615692033628896886459192967671458988930509228289208 : F), 256, 5, 149⟩, ⟨(8209846299029301443122084615692033628896886459192967671458988930509228289208 : F), 1004, 8, 43⟩], residual := [((5925600412942678907628509686335335971333555929587551821289277277609802905693 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1152 rho) = ((1 : F) * rho 1346)

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1347) * ((1 : F) + (-1 : F) * rho 1343) = ((4959556667043552077209584601103825479322808791775024474845174059752255153602 : F) * rho 1342 + (1 : F) * rho 1346)

def relationLc1153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 43⟩], residual := [((1 : F), 1345), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 194) * (relationLc1153 rho) = ((1 : F) * rho 1348)

def relationLc1154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 43⟩], residual := [((1 : F), 1347), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 194) * (relationLc1154 rho) = ((1 : F) * rho 1349)

def relationLc1155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 44⟩, ⟨(1 : F), 1005, 8, 44⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1155 rho) = ((1 : F) * rho 1350)

def relationLc1156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(665401531204958410359485285224444089030571492870617266963020838851334996806 : F), 256, 5, 149⟩, ⟨(665401531204958410359485285224444089030571492870617266963020838851334996806 : F), 1004, 8, 44⟩], residual := [((7203158281258429186792596937609427838114052691230851337540150899267240447593 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), runs := [⟨(7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), 257, 5, 149⟩, ⟨(7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), 1005, 8, 44⟩], residual := [((129542748202106780674562906588490057102641958601250660787290847505537091807 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1350 (rho : Nat -> F) : Prop :=
    (relationLc1156 rho) * (relationLc1157 rho) = ((1 : F) * rho 1351)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), runs := [⟨(7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), 257, 5, 149⟩, ⟨(7949996763731572641602336285231421879040211494384593969577683157594223965682 : F), 1005, 8, 44⟩, ⟨(8240628480253571985798045483221854888641238600306868845422056024125578871794 : F), 256, 5, 149⟩, ⟨(8240628480253571985798045483221854888641238600306868845422056024125578871794 : F), 1004, 8, 44⟩], residual := [((4872677566246388365816171543831493150466309394917875322659417988232181682956 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1158 rho) = ((1 : F) * rho 1352)

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1353) * ((1 : F) + (1 : F) * rho 1351) = ((1 : F) * rho 1352)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (494464985696797782646488653550124652335687840769469858357550298323185273359 : F), runs := [⟨(203833269174798438450779455559691642734660734847194982513177431791830367247 : F), 256, 5, 149⟩, ⟨(203833269174798438450779455559691642734660734847194982513177431791830367247 : F), 1004, 8, 44⟩, ⟨(494464985696797782646488653550124652335687840769469858357550298323185273359 : F), 257, 5, 149⟩, ⟨(494464985696797782646488653550124652335687840769469858357550298323185273359 : F), 1005, 8, 44⟩], residual := [((3571784183181982058432653394950053380909589940236188505275815467685227556085 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1159 rho) = ((1 : F) * rho 1354)

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1355) * ((1 : F) + (-1 : F) * rho 1351) = ((7746163494556774203151556829671730236305550759537398987064505725802393598435 : F) * rho 1350 + (1 : F) * rho 1354)

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 44⟩], residual := [((1 : F), 1353), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * (relationLc1160 rho) = ((1 : F) * rho 1356)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 44⟩], residual := [((1 : F), 1355), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * (relationLc1161 rho) = ((1 : F) * rho 1357)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 45⟩, ⟨(1 : F), 1005, 8, 45⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1162 rho) = ((1 : F) * rho 1358)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
