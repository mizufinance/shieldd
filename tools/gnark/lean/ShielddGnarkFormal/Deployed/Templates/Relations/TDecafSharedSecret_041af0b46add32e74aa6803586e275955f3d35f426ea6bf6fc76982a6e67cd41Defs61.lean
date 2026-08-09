import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs60

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationLc1356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7828489204148910291445264395073340652740755113516308581778694825476628645499 : F), runs := [⟨(2697565128965361210751184631948740331469587600451409402527970174822921309224 : F), 256, 5, 149⟩, ⟨(2697565128965361210751184631948740331469587600451409402527970174822921309224 : F), 1004, 8, 79⟩, ⟨(7828489204148910291445264395073340652740755113516308581778694825476628645499 : F), 257, 5, 149⟩, ⟨(7828489204148910291445264395073340652740755113516308581778694825476628645499 : F), 1005, 8, 79⟩], residual := [((5439953857388994057007990560378343007328163292344647947470779414241540377506 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1633 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1356 rho) = ((1 : F) * rho 1634)

def relationRow1634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1635) * ((1 : F) + (-1 : F) * rho 1631) = ((6362869165742469346301200850541012078541455956340409671563801911535268523359 : F) * rho 1630 + (1 : F) * rho 1634)

def relationLc1357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 79⟩], residual := [((1 : F), 1633), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 230) * (relationLc1357 rho) = ((1 : F) * rho 1636)

def relationLc1358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 79⟩], residual := [((1 : F), 1635), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 230) * (relationLc1358 rho) = ((1 : F) * rho 1637)

def relationLc1359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 80⟩, ⟨(1 : F), 1005, 8, 80⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1359 rho) = ((1 : F) * rho 1638)

def relationLc1360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2328924494234622400026043661438891056472383178633768616512250314770556337886 : F), 256, 5, 149⟩, ⟨(2328924494234622400026043661438891056472383178633768616512250314770556337886 : F), 1004, 8, 80⟩], residual := [((3563738449595643250020585309828661675699916643359296520663432255509695000065 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (172846403538610214843532136165434598897879428915183913667080104299606263159 : F), runs := [⟨(172846403538610214843532136165434598897879428915183913667080104299606263159 : F), 257, 5, 149⟩, ⟨(172846403538610214843532136165434598897879428915183913667080104299606263159 : F), 1005, 8, 80⟩], residual := [((4156547185992650513569278671728196236611014928975770533777923429996966767923 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1638 (rho : Nat -> F) : Prop :=
    (relationLc1360 rho) * (relationLc1361 rho) = ((1 : F) * rho 1639)

def relationLc1362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (172846403538610214843532136165434598897879428915183913667080104299606263159 : F), runs := [⟨(172846403538610214843532136165434598897879428915183913667080104299606263159 : F), 257, 5, 149⟩, ⟨(172846403538610214843532136165434598897879428915183913667080104299606263159 : F), 1005, 8, 80⟩, ⟨(3788339819586122657152328313707525468742408468160341031270689699795716675021 : F), 256, 5, 149⟩, ⟨(3788339819586122657152328313707525468742408468160341031270689699795716675021 : F), 1004, 8, 80⟩], residual := [((1451921156533177846431628239609457944424265296474686624833652475653192372560 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1639 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1362 rho) = ((1 : F) * rho 1640)

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1641) * ((1 : F) + (1 : F) * rho 1639) = ((1 : F) * rho 1640)

def relationLc1363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8271615345889760209405292802616111932478019906238879914268153351617802975882 : F), runs := [⟨(4656121929842247767096496625074021062633490866993722796664543756121692564020 : F), 256, 5, 149⟩, ⟨(4656121929842247767096496625074021062633490866993722796664543756121692564020 : F), 1004, 8, 80⟩, ⟨(8271615345889760209405292802616111932478019906238879914268153351617802975882 : F), 257, 5, 149⟩, ⟨(8271615345889760209405292802616111932478019906238879914268153351617802975882 : F), 1005, 8, 80⟩], residual := [((6992540592895192577817196699172088586951634038679377203101580980264216866481 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1363 rho) = ((1 : F) * rho 1642)

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1643) * ((1 : F) + (-1 : F) * rho 1639) = ((3961186223124732871995860449872960067640287897075524944937769804095322938180 : F) * rho 1638 + (1 : F) * rho 1642)

def relationLc1364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 80⟩], residual := [((1 : F), 1641), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 231) * (relationLc1364 rho) = ((1 : F) * rho 1644)

def relationLc1365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 80⟩], residual := [((1 : F), 1643), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 231) * (relationLc1365 rho) = ((1 : F) * rho 1645)

def relationLc1366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 81⟩, ⟨(1 : F), 1005, 8, 81⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1366 rho) = ((1 : F) * rho 1646)

def relationLc1367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3647464738438405496596309108209284917129128474410709546384795465351388509718 : F), 256, 5, 149⟩, ⟨(3647464738438405496596309108209284917129128474410709546384795465351388509718 : F), 1004, 8, 81⟩], residual := [((4033105538314844726216913920691566079156225711271889030022966832116221042683 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (771116110290316800014488227769694794618148977561993646635633714824656215422 : F), runs := [⟨(771116110290316800014488227769694794618148977561993646635633714824656215422 : F), 257, 5, 149⟩, ⟨(771116110290316800014488227769694794618148977561993646635633714824656215422 : F), 1005, 8, 81⟩], residual := [((1417426572492129065250163104387698599537623996730724897947633040475933659364 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1646 (rho : Nat -> F) : Prop :=
    (relationLc1367 rho) * (relationLc1368 rho) = ((1 : F) * rho 1647)

def relationLc1369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (771116110290316800014488227769694794618148977561993646635633714824656215422 : F), runs := [⟨(771116110290316800014488227769694794618148977561993646635633714824656215422 : F), 257, 5, 149⟩, ⟨(771116110290316800014488227769694794618148977561993646635633714824656215422 : F), 1005, 8, 81⟩, ⟨(7922956657602926245553712739362830901965053904104941277032385438442664406472 : F), 256, 5, 149⟩, ⟨(7922956657602926245553712739362830901965053904104941277032385438442664406472 : F), 1004, 8, 81⟩], residual := [((1281794159323087255894990807770815377439556190801801614750412427265792371158 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1369 rho) = ((1 : F) * rho 1648)

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1649) * ((1 : F) + (1 : F) * rho 1647) = ((1 : F) * rho 1648)

def relationLc1370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673345639138053624234336711011851736757750357592070181299599741092753023619 : F), runs := [⟨(521505091825444178695112199418715629410845431049122550902848017474744832569 : F), 256, 5, 149⟩, ⟨(521505091825444178695112199418715629410845431049122550902848017474744832569 : F), 1004, 8, 81⟩, ⟨(7673345639138053624234336711011851736757750357592070181299599741092753023619 : F), 257, 5, 149⟩, ⟨(7673345639138053624234336711011851736757750357592070181299599741092753023619 : F), 1005, 8, 81⟩], residual := [((7162667590105283168353834131010731153936343144352262213184821028651616867883 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1649 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1370 rho) = ((1 : F) * rho 1650)

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1651) * ((1 : F) + (-1 : F) * rho 1647) = ((249611018464872621319376028350979165207303546512871095732785697349911382853 : F) * rho 1646 + (1 : F) * rho 1650)

def relationLc1371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 81⟩], residual := [((1 : F), 1649), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 232) * (relationLc1371 rho) = ((1 : F) * rho 1652)

def relationLc1372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 81⟩], residual := [((1 : F), 1651), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 232) * (relationLc1372 rho) = ((1 : F) * rho 1653)

def relationLc1373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 82⟩, ⟨(1 : F), 1005, 8, 82⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1373 rho) = ((1 : F) * rho 1654)

def relationLc1374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1440741398750420175197138347651241738572644196148875266729604368789903737219 : F), 256, 5, 149⟩, ⟨(1440741398750420175197138347651241738572644196148875266729604368789903737219 : F), 1004, 8, 82⟩], residual := [((5933933965763915668833977120004965383452459708156491994369560357579044038721 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7460699961452232489258671600060964629412502616641694919143176647000166491204 : F), runs := [⟨(7460699961452232489258671600060964629412502616641694919143176647000166491204 : F), 257, 5, 149⟩, ⟨(7460699961452232489258671600060964629412502616641694919143176647000166491204 : F), 1005, 8, 82⟩], residual := [((3040474903843643105099811186409463933730707835118493079665929304632651374772 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1654 (rho : Nat -> F) : Prop :=
    (relationLc1374 rho) * (relationLc1375 rho) = ((1 : F) * rho 1655)

def relationLc1376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7460699961452232489258671600060964629412502616641694919143176647000166491204 : F), runs := [⟨(7460699961452232489258671600060964629412502616641694919143176647000166491204 : F), 257, 5, 149⟩, ⟨(7460699961452232489258671600060964629412502616641694919143176647000166491204 : F), 1005, 8, 82⟩, ⟨(8145846500904674556913695137357523281750395003917607040671962891397590343033 : F), 256, 5, 149⟩, ⟨(8145846500904674556913695137357523281750395003917607040671962891397590343033 : F), 1004, 8, 82⟩], residual := [((4322665375609269576458565174851024104784535824264046778834650417895727334891 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1376 rho) = ((1 : F) * rho 1656)

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1657) * ((1 : F) + (1 : F) * rho 1655) = ((1 : F) * rho 1656)

def relationLc1377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (983761787976137934990153338720581901963396718512368908792056808917242747837 : F), runs := [⟨(298615248523695867335129801424023249625504331236456787263270564519818896008 : F), 256, 5, 149⟩, ⟨(298615248523695867335129801424023249625504331236456787263270564519818896008 : F), 1004, 8, 82⟩, ⟨(983761787976137934990153338720581901963396718512368908792056808917242747837 : F), 257, 5, 149⟩, ⟨(983761787976137934990153338720581901963396718512368908792056808917242747837 : F), 1005, 8, 82⟩], residual := [((4121796373819100847790259763930522426591363510890017049100583038021681904150 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1377 rho) = ((1 : F) * rho 1658)

def relationRow1658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1659) * ((1 : F) + (-1 : F) * rho 1655) = ((7162084712928536621923541798636941379786998285405238131879906082480347595196 : F) * rho 1654 + (1 : F) * rho 1658)

def relationLc1378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 82⟩], residual := [((1 : F), 1657), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 233) * (relationLc1378 rho) = ((1 : F) * rho 1660)

def relationLc1379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 82⟩], residual := [((1 : F), 1659), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 233) * (relationLc1379 rho) = ((1 : F) * rho 1661)

def relationLc1380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 83⟩, ⟨(1 : F), 1005, 8, 83⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1661 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1380 rho) = ((1 : F) * rho 1662)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
