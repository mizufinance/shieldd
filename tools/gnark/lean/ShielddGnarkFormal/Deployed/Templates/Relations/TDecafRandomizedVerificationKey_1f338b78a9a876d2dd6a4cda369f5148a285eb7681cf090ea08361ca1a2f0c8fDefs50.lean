import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs49

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5020520247654746204887419713183456164079934648275437255564855713510198236940 : F), runs := [⟨(4040549992031189929618337153356840875826806893045980290081904240561218014519 : F), 256, 5, 149⟩, ⟨(4040549992031189929618337153356840875826806893045980290081904240561218014519 : F), 1004, 8, 62⟩, ⟨(5020520247654746204887419713183456164079934648275437255564855713510198236940 : F), 257, 5, 149⟩, ⟨(5020520247654746204887419713183456164079934648275437255564855713510198236940 : F), 1005, 8, 62⟩], residual := [((899128394512958421641213004427998077352047787939246116677744944781119892689 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1497 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1285 rho) = ((1 : F) * rho 1498)

def relationRow1498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1499) * ((1 : F) + (-1 : F) * rho 1495) = ((7827853259170804713991893011022796022845057128986710110223706957763402226623 : F) * rho 1494 + (1 : F) * rho 1498)

def relationLc1286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 62⟩], residual := [((1 : F), 1497), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 213) * (relationLc1286 rho) = ((1 : F) * rho 1500)

def relationLc1287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 62⟩], residual := [((1 : F), 1499), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 213) * (relationLc1287 rho) = ((1 : F) * rho 1501)

def relationLc1288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 63⟩, ⟨(1 : F), 1005, 8, 63⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1501 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1288 rho) = ((1 : F) * rho 1502)

def relationLc1289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(58918325820461944259557627262580109539818437254177415012051304305529098982 : F), 256, 5, 149⟩, ⟨(58918325820461944259557627262580109539818437254177415012051304305529098982 : F), 1004, 8, 63⟩], residual := [((7893342063542007363849646815109681961881602631397189320761681794130772690789 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), runs := [⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 257, 5, 149⟩, ⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 1005, 8, 63⟩], residual := [((4088562414217022427536605253412035611528252553393612053114188351806014648827 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1502 (rho : Nat -> F) : Prop :=
    (relationLc1289 rho) * (relationLc1290 rho) = ((1 : F) * rho 1503)

def relationLc1291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), runs := [⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 257, 5, 149⟩, ⟨(2585872893106133656212238141247348463124237904139477394990300382205626000743 : F), 1005, 8, 63⟩, ⟨(5420016633719771835340195668296816055758824438696121794035560980578669991261 : F), 256, 5, 149⟩, ⟨(5420016633719771835340195668296816055758824438696121794035560980578669991261 : F), 1004, 8, 63⟩], residual := [((1639737650170303177386863504158044672748119447038525397113381314717157604819 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1503 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1291 rho) = ((1 : F) * rho 1504)

def relationRow1504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1505) * ((1 : F) + (1 : F) * rho 1503) = ((1 : F) * rho 1504)

def relationLc1292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5858588856322236768036586797534198068251661431014586432944933073711783238298 : F), runs := [⟨(3024445115708598588908629270484730475617074896457942033899672475338739247780 : F), 256, 5, 149⟩, ⟨(3024445115708598588908629270484730475617074896457942033899672475338739247780 : F), 1004, 8, 63⟩, ⟨(5858588856322236768036586797534198068251661431014586432944933073711783238298 : F), 257, 5, 149⟩, ⟨(5858588856322236768036586797534198068251661431014586432944933073711783238298 : F), 1005, 8, 63⟩], residual := [((6804724099258067246861961434623501858627779888115538430821852141200251634222 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1505 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1292 rho) = ((1 : F) * rho 1506)

def relationRow1506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1507) * ((1 : F) + (-1 : F) * rho 1503) = ((8005889526825905491552433809544164518883062342835599189025861362784295992004 : F) * rho 1502 + (1 : F) * rho 1506)

def relationLc1293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 63⟩], residual := [((1 : F), 1505), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 214) * (relationLc1293 rho) = ((1 : F) * rho 1508)

def relationLc1294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 63⟩], residual := [((1 : F), 1507), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 214) * (relationLc1294 rho) = ((1 : F) * rho 1509)

def relationLc1295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 64⟩, ⟨(1 : F), 1005, 8, 64⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1509 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1295 rho) = ((1 : F) * rho 1510)

def relationLc1296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4850227687254138224780847103457061939368954313073617365555607718057132609262 : F), 256, 5, 149⟩, ⟨(4850227687254138224780847103457061939368954313073617365555607718057132609262 : F), 1004, 8, 64⟩], residual := [((3057446555327645110785219752153912666255960471678605788016472176197507522240 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), runs := [⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 257, 5, 149⟩, ⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 1005, 8, 64⟩], residual := [((2148799930174498616858606625598493469250246591036380349541407709988116596773 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1510 (rho : Nat -> F) : Prop :=
    (relationLc1296 rho) * (relationLc1297 rho) = ((1 : F) * rho 1511)

def relationLc1298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), runs := [⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 257, 5, 149⟩, ⟨(2186001308626388964314917732041512555837490566337618110444932455301521128435 : F), 1005, 8, 64⟩, ⟨(5052629132374816118782657236505035300938635899681054933612883966421984649969 : F), 256, 5, 149⟩, ⟨(5052629132374816118782657236505035300938635899681054933612883966421984649969 : F), 1004, 8, 64⟩], residual := [((8103702602414735839222321401949651372095967062519278250663573791841899842943 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1298 rho) = ((1 : F) * rho 1512)

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1513) * ((1 : F) + (1 : F) * rho 1511) = ((1 : F) * rho 1512)

def relationLc1299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6258460440801981459933907206740033975538408768816445717490301000615888110606 : F), runs := [⟨(3391832617053554305466167702276511230437263435473008894322349489495424589072 : F), 256, 5, 149⟩, ⟨(3391832617053554305466167702276511230437263435473008894322349489495424589072 : F), 1004, 8, 64⟩, ⟨(6258460440801981459933907206740033975538408768816445717490301000615888110606 : F), 257, 5, 149⟩, ⟨(6258460440801981459933907206740033975538408768816445717490301000615888110606 : F), 1005, 8, 64⟩], residual := [((340759147013634585026503536831895159279932272634785577271659664075509396098 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1513 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1299 rho) = ((1 : F) * rho 1514)

def relationRow1514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1515) * ((1 : F) + (-1 : F) * rho 1511) = ((7238630441001205083097574968546547856776126466018673044057816421723505778404 : F) * rho 1510 + (1 : F) * rho 1514)

def relationLc1300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 64⟩], residual := [((1 : F), 1513), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 215) * (relationLc1300 rho) = ((1 : F) * rho 1516)

def relationLc1301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 64⟩], residual := [((1 : F), 1515), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 215) * (relationLc1301 rho) = ((1 : F) * rho 1517)

def relationLc1302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 65⟩, ⟨(1 : F), 1005, 8, 65⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1302 rho) = ((1 : F) * rho 1518)

def relationLc1303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1264557959479100922970201115112134211560373340550096814683079276850902107265 : F), 256, 5, 149⟩, ⟨(1264557959479100922970201115112134211560373340550096814683079276850902107265 : F), 1004, 8, 65⟩], residual := [((4906366363111759234574300869375970910138001597177887940548330735732770263593 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), runs := [⟨(7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), 257, 5, 149⟩, ⟨(7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), 1005, 8, 65⟩], residual := [((1098268939017391281895962662512300282223824169740677712283708098338841141698 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1518 (rho : Nat -> F) : Prop :=
    (relationLc1303 rho) * (relationLc1304 rho) = ((1 : F) * rho 1519)

def relationLc1305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), runs := [⟨(5644036024513524987580717561242983972545349596496724583057239134979841163764 : F), 256, 5, 149⟩, ⟨(5644036024513524987580717561242983972545349596496724583057239134979841163764 : F), 1004, 8, 65⟩, ⟨(7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), 257, 5, 149⟩, ⟨(7126565839021566360196697239735121082667099440565600511776815312011045649576 : F), 1005, 8, 65⟩], residual := [((7037012110864121020505389498275749737223012580685533540974533716049635578635 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1305 rho) = ((1 : F) * rho 1520)

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1521) * ((1 : F) + (1 : F) * rho 1519) = ((1 : F) * rho 1520)

def relationLc1306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1317895910406804064052127699046425448708799894588463316158418143906363589465 : F), runs := [⟨(1317895910406804064052127699046425448708799894588463316158418143906363589465 : F), 257, 5, 149⟩, ⟨(1317895910406804064052127699046425448708799894588463316158418143906363589465 : F), 1005, 8, 65⟩, ⟨(2800425724914845436668107377538562558830549738657339244877994320937568075277 : F), 256, 5, 149⟩, ⟨(2800425724914845436668107377538562558830549738657339244877994320937568075277 : F), 1004, 8, 65⟩], residual := [((1407449638564249403743435440505796794152886754468530286960699739867773660406 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1306 rho) = ((1 : F) * rho 1522)

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1523) * ((1 : F) + (-1 : F) * rho 1519) = ((4326140114106720923528589862196558523836549701908261266898820991073477574299 : F) * rho 1518 + (1 : F) * rho 1522)

def relationLc1307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 65⟩], residual := [((1 : F), 1521), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 216) * (relationLc1307 rho) = ((1 : F) * rho 1524)

def relationLc1308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 65⟩], residual := [((1 : F), 1523), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 216) * (relationLc1308 rho) = ((1 : F) * rho 1525)

def relationLc1309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 66⟩, ⟨(1 : F), 1005, 8, 66⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1309 rho) = ((1 : F) * rho 1526)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
