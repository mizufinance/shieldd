import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs53

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7187864044385162377178987608025685737823964503023517657710911951133626164307 : F), runs := [⟨(3658910811999275943079041323749882242059130564781593065522454179814432283632 : F), 256, 5, 149⟩, ⟨(3658910811999275943079041323749882242059130564781593065522454179814432283632 : F), 1004, 8, 76⟩, ⟨(7187864044385162377178987608025685737823964503023517657710911951133626164307 : F), 257, 5, 149⟩, ⟨(7187864044385162377178987608025685737823964503023517657710911951133626164307 : F), 1005, 8, 76⟩], residual := [((8271270924565466121729152044871206249544817686495510303443917339806287992650 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1609 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1383 rho) = ((1 : F) * rho 1610)

def relationRow1610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1611) * ((1 : F) + (-1 : F) * rho 1607) = ((6042148642472302528239620945787525082868703602503016932637100780886760030143 : F) * rho 1606 + (1 : F) * rho 1610)

def relationLc1384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 76⟩], residual := [((1 : F), 1609), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 227) * (relationLc1384 rho) = ((1 : F) * rho 1612)

def relationLc1385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 76⟩], residual := [((1 : F), 1611), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 227) * (relationLc1385 rho) = ((1 : F) * rho 1613)

def relationLc1386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 77⟩, ⟨(1 : F), 1005, 8, 77⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1613 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1386 rho) = ((1 : F) * rho 1614)

def relationLc1387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6835153613359202620753536692428562756593607850803641642315853655957739349557 : F), 256, 5, 149⟩, ⟨(6835153613359202620753536692428562756593607850803641642315853655957739349557 : F), 1004, 8, 77⟩], residual := [((2017182082067414761062071606460734901159165964626278109605283782069263953972 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), runs := [⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 257, 5, 149⟩, ⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 1005, 8, 77⟩], residual := [((702028760441283555932115401866662986118340125936855939554033690217644916028 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1614 (rho : Nat -> F) : Prop :=
    (relationLc1387 rho) * (relationLc1388 rho) = ((1 : F) * rho 1615)

def relationLc1389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), runs := [⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 257, 5, 149⟩, ⟨(4124457764415245496255913558276081521933417185473503110705956689248568844076 : F), 1005, 8, 77⟩, ⟨(670328206463667571670381561423772983699249767941947996199548708911028979636 : F), 256, 5, 149⟩, ⟨(670328206463667571670381561423772983699249767941947996199548708911028979636 : F), 1004, 8, 77⟩], residual := [((5759310616382359197185735522973011350951230249491416595907705522570065497749 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1615 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1389 rho) = ((1 : F) * rho 1616)

def relationRow1616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1617) * ((1 : F) + (1 : F) * rho 1615) = ((1 : F) * rho 1616)

def relationLc1390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4320003985013124927992911380505465009442482149680560717229276766668840394965 : F), runs := [⟨(4320003985013124927992911380505465009442482149680560717229276766668840394965 : F), 257, 5, 149⟩, ⟨(4320003985013124927992911380505465009442482149680560717229276766668840394965 : F), 1005, 8, 77⟩, ⟨(7774133542964702852578443377357773547676649567212115831735684747006380259405 : F), 256, 5, 149⟩, ⟨(7774133542964702852578443377357773547676649567212115831735684747006380259405 : F), 1004, 8, 77⟩], residual := [((2685151133046011227063089415808535180424669085662647232027527933347343741292 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1617 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1390 rho) = ((1 : F) * rho 1618)

def relationRow1618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1619) * ((1 : F) + (-1 : F) * rho 1615) = ((4794785970878913067926295119699854505632666953415451106905505398159597823712 : F) * rho 1614 + (1 : F) * rho 1618)

def relationLc1391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 77⟩], residual := [((1 : F), 1617), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 228) * (relationLc1391 rho) = ((1 : F) * rho 1620)

def relationLc1392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 77⟩], residual := [((1 : F), 1619), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 228) * (relationLc1392 rho) = ((1 : F) * rho 1621)

def relationLc1393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 78⟩, ⟨(1 : F), 1005, 8, 78⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1621 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1393 rho) = ((1 : F) * rho 1622)

def relationLc1394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4524962738914307807798123734612000272059917171761359026606240250240415183856 : F), 256, 5, 149⟩, ⟨(4524962738914307807798123734612000272059917171761359026606240250240415183856 : F), 1004, 8, 78⟩], residual := [((995428320130555585130336813757345081731043089115607568591490337949712775920 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), runs := [⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 257, 5, 149⟩, ⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 1005, 8, 78⟩], residual := [((5046918817069920361234594595240506121883550357632552607367130359059160801262 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1622 (rho : Nat -> F) : Prop :=
    (relationLc1394 rho) * (relationLc1395 rho) = ((1 : F) * rho 1623)

def relationLc1396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), runs := [⟨(3168520398821998675432544448650812386733185655048432861991799320028025515729 : F), 256, 5, 149⟩, ⟨(3168520398821998675432544448650812386733185655048432861991799320028025515729 : F), 1004, 8, 78⟩, ⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 257, 5, 149⟩, ⟨(6839982277198200993905199196894153768204783486790809026862012284204149052726 : F), 1005, 8, 78⟩], residual := [((4242215223718301650013630925741887103030677810318664896385086087306011463934 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1623 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1396 rho) = ((1 : F) * rho 1624)

def relationRow1624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1625) * ((1 : F) + (1 : F) * rho 1623) = ((1 : F) * rho 1624)

def relationLc1397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1604479472230169430343625741887392763171115848363254801073221171713260186315 : F), runs := [⟨(1604479472230169430343625741887392763171115848363254801073221171713260186315 : F), 257, 5, 149⟩, ⟨(1604479472230169430343625741887392763171115848363254801073221171713260186315 : F), 1005, 8, 78⟩, ⟨(5275941350606371748816280490130734144642713680105630965943434135889383723312 : F), 256, 5, 149⟩, ⟨(5275941350606371748816280490130734144642713680105630965943434135889383723312 : F), 1004, 8, 78⟩], residual := [((4202246525710068774235194013039659428345221524835398931550147368611397775107 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1625 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1397 rho) = ((1 : F) * rho 1626)

def relationRow1626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1627) * ((1 : F) + (-1 : F) * rho 1623) = ((1564040926591829245088918706763419623562069806685178060918578148314765329414 : F) * rho 1622 + (1 : F) * rho 1626)

def relationLc1398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 78⟩], residual := [((1 : F), 1625), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 229) * (relationLc1398 rho) = ((1 : F) * rho 1628)

def relationLc1399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 78⟩], residual := [((1 : F), 1627), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 229) * (relationLc1399 rho) = ((1 : F) * rho 1629)

def relationLc1400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 79⟩, ⟨(1 : F), 1005, 8, 79⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1400 rho) = ((1 : F) * rho 1630)

def relationLc1401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8005795343449612145036117745829407939494616795117852748437620276172049747902 : F), 256, 5, 149⟩, ⟨(8005795343449612145036117745829407939494616795117852748437620276172049747902 : F), 1004, 8, 79⟩], residual := [((4802774979772271385970034729279180096321539640809073194439602886238651987693 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (615972545279460132803560543708205878635144221637755246156538630440780593542 : F), runs := [⟨(615972545279460132803560543708205878635144221637755246156538630440780593542 : F), 257, 5, 149⟩, ⟨(615972545279460132803560543708205878635144221637755246156538630440780593542 : F), 1005, 8, 79⟩], residual := [((6474623323290704998664558489372220939430902356818200455473100300981788630784 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1630 (rho : Nat -> F) : Prop :=
    (relationLc1401 rho) * (relationLc1402 rho) = ((1 : F) * rho 1631)

def relationLc1403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (615972545279460132803560543708205878635144221637755246156538630440780593542 : F), runs := [⟨(5746896620463009213497640306832806199906311734702654425407263281094487929817 : F), 256, 5, 149⟩, ⟨(5746896620463009213497640306832806199906311734702654425407263281094487929817 : F), 1004, 8, 79⟩, ⟨(615972545279460132803560543708205878635144221637755246156538630440780593542 : F), 257, 5, 149⟩, ⟨(615972545279460132803560543708205878635144221637755246156538630440780593542 : F), 1005, 8, 79⟩], residual := [((3004507892039376367240834378403203524047736042809415880464454041675868861535 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1631 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1403 rho) = ((1 : F) * rho 1632)

def relationRow1632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1633) * ((1 : F) + (1 : F) * rho 1631) = ((1 : F) * rho 1632)

def relationLc1404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7828489204148910291445264395073340652740755113516308581778694825476628645499 : F), runs := [⟨(2697565128965361210751184631948740331469587600451409402527970174822921309224 : F), 256, 5, 149⟩, ⟨(2697565128965361210751184631948740331469587600451409402527970174822921309224 : F), 1004, 8, 79⟩, ⟨(7828489204148910291445264395073340652740755113516308581778694825476628645499 : F), 257, 5, 149⟩, ⟨(7828489204148910291445264395073340652740755113516308581778694825476628645499 : F), 1005, 8, 79⟩], residual := [((5439953857388994057007990560378343007328163292344647947470779414241540377506 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1404 rho) = ((1 : F) * rho 1634)

def relationRow1634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1635) * ((1 : F) + (-1 : F) * rho 1631) = ((6362869165742469346301200850541012078541455956340409671563801911535268523359 : F) * rho 1630 + (1 : F) * rho 1634)

def relationLc1405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 79⟩], residual := [((1 : F), 1633), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 230) * (relationLc1405 rho) = ((1 : F) * rho 1636)

def relationLc1406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 79⟩], residual := [((1 : F), 1635), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 230) * (relationLc1406 rho) = ((1 : F) * rho 1637)

def relationLc1407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 80⟩, ⟨(1 : F), 1005, 8, 80⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1407 rho) = ((1 : F) * rho 1638)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
