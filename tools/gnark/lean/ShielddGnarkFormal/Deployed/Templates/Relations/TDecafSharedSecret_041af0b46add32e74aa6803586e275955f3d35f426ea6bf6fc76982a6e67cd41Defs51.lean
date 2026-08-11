import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs50

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationLc1111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (494464985696797782646488653550124652335687840769469858357550298323185273359 : F), runs := [⟨(203833269174798438450779455559691642734660734847194982513177431791830367247 : F), 256, 5, 149⟩, ⟨(203833269174798438450779455559691642734660734847194982513177431791830367247 : F), 1004, 8, 44⟩, ⟨(494464985696797782646488653550124652335687840769469858357550298323185273359 : F), 257, 5, 149⟩, ⟨(494464985696797782646488653550124652335687840769469858357550298323185273359 : F), 1005, 8, 44⟩], residual := [((3571784183181982058432653394950053380909589940236188505275815467685227556085 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1111 rho) = ((1 : F) * rho 1354)

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1355) * ((1 : F) + (-1 : F) * rho 1351) = ((7746163494556774203151556829671730236305550759537398987064505725802393598435 : F) * rho 1350 + (1 : F) * rho 1354)

def relationLc1112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 44⟩], residual := [((1 : F), 1353), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * (relationLc1112 rho) = ((1 : F) * rho 1356)

def relationLc1113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 44⟩], residual := [((1 : F), 1355), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * (relationLc1113 rho) = ((1 : F) * rho 1357)

def relationLc1114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 45⟩, ⟨(1 : F), 1005, 8, 45⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1114 rho) = ((1 : F) * rho 1358)

def relationLc1115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3422273983250065178018746734407871139951835380745458089779691739446421701909 : F), 256, 5, 149⟩, ⟨(3422273983250065178018746734407871139951835380745458089779691739446421701909 : F), 1004, 8, 45⟩], residual := [((3152023313505556664748647625601912027016628793058644212723522791212373491122 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5698784102776659322582380855939233579043794755791327791782445405107186047550 : F), runs := [⟨(5698784102776659322582380855939233579043794755791327791782445405107186047550 : F), 257, 5, 149⟩, ⟨(5698784102776659322582380855939233579043794755791327791782445405107186047550 : F), 1005, 8, 45⟩], residual := [((5594341709522394869510504494466953475851588014535265748970260993003493824062 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1358 (rho : Nat -> F) : Prop :=
    (relationLc1115 rho) * (relationLc1116 rho) = ((1 : F) * rho 1359)

def relationLc1117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5698784102776659322582380855939233579043794755791327791782445405107186047550 : F), runs := [⟨(3170950644764985808102014639957855557007686753209352478969988226001254054543 : F), 256, 5, 149⟩, ⟨(3170950644764985808102014639957855557007686753209352478969988226001254054543 : F), 1004, 8, 45⟩, ⟨(5698784102776659322582380855939233579043794755791327791782445405107186047550 : F), 257, 5, 149⟩, ⟨(5698784102776659322582380855939233579043794755791327791782445405107186047550 : F), 1005, 8, 45⟩], residual := [((3448630156974403168365734913083760551631239103378277210194512641016284978616 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1117 rho) = ((1 : F) * rho 1360)

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1361) * ((1 : F) + (1 : F) * rho 1359) = ((1 : F) * rho 1360)

def relationLc1118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2745677646651711101666444082842312952332104579362736036152788050810223191491 : F), runs := [⟨(2745677646651711101666444082842312952332104579362736036152788050810223191491 : F), 257, 5, 149⟩, ⟨(2745677646651711101666444082842312952332104579362736036152788050810223191491 : F), 1005, 8, 45⟩, ⟨(5273511104663384616146810298823690974368212581944711348965245229916155184498 : F), 256, 5, 149⟩, ⟨(5273511104663384616146810298823690974368212581944711348965245229916155184498 : F), 1004, 8, 45⟩], residual := [((4995831592453967255883090025697785979744660231775786617740720814901124260425 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1118 rho) = ((1 : F) * rho 1362)

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1363) * ((1 : F) + (-1 : F) * rho 1359) = ((425272998113274706435570557115542604675582173846616442817200175191030863052 : F) * rho 1358 + (1 : F) * rho 1362)

def relationLc1119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 45⟩], residual := [((1 : F), 1361), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 196) * (relationLc1119 rho) = ((1 : F) * rho 1364)

def relationLc1120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 45⟩], residual := [((1 : F), 1363), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 196) * (relationLc1120 rho) = ((1 : F) * rho 1365)

def relationLc1121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 46⟩, ⟨(1 : F), 1005, 8, 46⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1121 rho) = ((1 : F) * rho 1366)

def relationLc1122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2726882893549286653395297697583952048957125187587692020914177283361371386400 : F), 256, 5, 149⟩, ⟨(2726882893549286653395297697583952048957125187587692020914177283361371386400 : F), 1004, 8, 46⟩], residual := [((5741333931361479268406648157145571440043320080730031609623243957940534941136 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4633233701793813150664695046301819478821734034320544966385289707542159791425 : F), runs := [⟨(4633233701793813150664695046301819478821734034320544966385289707542159791425 : F), 257, 5, 149⟩, ⟨(4633233701793813150664695046301819478821734034320544966385289707542159791425 : F), 1005, 8, 46⟩], residual := [((388934734324116195921518607490874179737522285262516869917388281634201801395 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1366 (rho : Nat -> F) : Prop :=
    (relationLc1122 rho) * (relationLc1123 rho) = ((1 : F) * rho 1367)

def relationLc1124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4633233701793813150664695046301819478821734034320544966385289707542159791425 : F), runs := [⟨(4633233701793813150664695046301819478821734034320544966385289707542159791425 : F), 257, 5, 149⟩, ⟨(4633233701793813150664695046301819478821734034320544966385289707542159791425 : F), 1005, 8, 46⟩, ⟨(747235408802027206199216006736927135361245365002887366461311324069284885207 : F), 256, 5, 149⟩, ⟨(747235408802027206199216006736927135361245365002887366461311324069284885207 : F), 1004, 8, 46⟩], residual := [((7035153507022758360008861714952271623140553082926184447081133123962444865328 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1124 rho) = ((1 : F) * rho 1368)

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1369) * ((1 : F) + (1 : F) * rho 1367) = ((1 : F) * rho 1368)

def relationLc1125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3811228047634557273584129892479727052554165300833518861549943748375249447616 : F), runs := [⟨(3811228047634557273584129892479727052554165300833518861549943748375249447616 : F), 257, 5, 149⟩, ⟨(3811228047634557273584129892479727052554165300833518861549943748375249447616 : F), 1005, 8, 46⟩, ⟨(7697226340626343218049608932044619396014653970151176461473922131848124353834 : F), 256, 5, 149⟩, ⟨(7697226340626343218049608932044619396014653970151176461473922131848124353834 : F), 1004, 8, 46⟩], residual := [((1409308242405612064239963223829274908235346252227879380854100331954964373713 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1125 rho) = ((1 : F) * rho 1370)

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1371) * ((1 : F) + (-1 : F) * rho 1367) = ((5380469110595840356863911053038746614182979399323432332846601031611444676632 : F) * rho 1366 + (1 : F) * rho 1370)

def relationLc1126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 46⟩], residual := [((1 : F), 1369), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 197) * (relationLc1126 rho) = ((1 : F) * rho 1372)

def relationLc1127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 46⟩], residual := [((1 : F), 1371), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 197) * (relationLc1127 rho) = ((1 : F) * rho 1373)

def relationLc1128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 47⟩, ⟨(1 : F), 1005, 8, 47⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1128 rho) = ((1 : F) * rho 1374)

def relationLc1129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3802704878817434423711436974410538526526545929301785435357045731052713142490 : F), 256, 5, 149⟩, ⟨(3802704878817434423711436974410538526526545929301785435357045731052713142490 : F), 1004, 8, 47⟩], residual := [((3859640395529244198310709622310588233414407003122503664126280519304497179772 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2082226801942639214149189228798694336008558896827557728542685557227694094802 : F), runs := [⟨(2082226801942639214149189228798694336008558896827557728542685557227694094802 : F), 257, 5, 149⟩, ⟨(2082226801942639214149189228798694336008558896827557728542685557227694094802 : F), 1005, 8, 47⟩], residual := [((4365931281007279173684731796343961725067336835824279134039608802990384612140 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1374 (rho : Nat -> F) : Prop :=
    (relationLc1129 rho) * (relationLc1130 rho) = ((1 : F) * rho 1375)

def relationLc1131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2082226801942639214149189228798694336008558896827557728542685557227694094802 : F), runs := [⟨(2082226801942639214149189228798694336008558896827557728542685557227694094802 : F), 257, 5, 149⟩, ⟨(2082226801942639214149189228798694336008558896827557728542685557227694094802 : F), 1005, 8, 47⟩, ⟨(8370248653646924357704300994268904618823558144780062524420207220373312139964 : F), 256, 5, 149⟩, ⟨(8370248653646924357704300994268904618823558144780062524420207220373312139964 : F), 1004, 8, 47⟩], residual := [((2374192920548193153065366860319820020784780788501629347328686865370454691499 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1131 rho) = ((1 : F) * rho 1376)

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1377) * ((1 : F) + (1 : F) * rho 1375) = ((1 : F) * rho 1376)

def relationLc1132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6362234947485731210099635709982852195367340438326506099392547898689715144239 : F), runs := [⟨(6362234947485731210099635709982852195367340438326506099392547898689715144239 : F), 257, 5, 149⟩, ⟨(6362234947485731210099635709982852195367340438326506099392547898689715144239 : F), 1005, 8, 47⟩, ⟨(74213095781446066544523944512641912552341190374001303515026235544097099077 : F), 256, 5, 149⟩, ⟨(74213095781446066544523944512641912552341190374001303515026235544097099077 : F), 1004, 8, 47⟩], residual := [((6070268828880177271183458078461726510591118546652434480606546590546954547542 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1132 rho) = ((1 : F) * rho 1378)

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1379) * ((1 : F) + (-1 : F) * rho 1375) = ((2008013706161193147604665284286052423456217706453556425027659321683596995725 : F) * rho 1374 + (1 : F) * rho 1378)

def relationLc1133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 47⟩], residual := [((1 : F), 1377), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * (relationLc1133 rho) = ((1 : F) * rho 1380)

def relationLc1134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 47⟩], residual := [((1 : F), 1379), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * (relationLc1134 rho) = ((1 : F) * rho 1381)

def relationLc1135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 48⟩, ⟨(1 : F), 1005, 8, 48⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1135 rho) = ((1 : F) * rho 1382)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
