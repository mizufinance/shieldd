import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs55

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8133062574444121138521468895481700520560781584102444560712115026711914949173 : F), runs := [⟨(8133062574444121138521468895481700520560781584102444560712115026711914949173 : F), 257, 5, 149⟩, ⟨(8133062574444121138521468895481700520560781584102444560712115026711914949173 : F), 1005, 8, 83⟩, ⟨(8435009341923757072279415987592861967731113551887218369836592975695253100345 : F), 256, 5, 149⟩, ⟨(8435009341923757072279415987592861967731113551887218369836592975695253100345 : F), 1004, 8, 83⟩], residual := [((7730658374232119592623744191644646041157474911506900355769897370442395222870 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1665 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1432 rho) = ((1 : F) * rho 1666)

def relationRow1666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1667) * ((1 : F) + (-1 : F) * rho 1663) = ((320851582488862637696764994488530574459903534318464725321758909427650428564 : F) * rho 1662 + (1 : F) * rho 1666)

def relationLc1433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 83⟩], residual := [((1 : F), 1665), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 234) * (relationLc1433 rho) = ((1 : F) * rho 1668)

def relationLc1434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 83⟩], residual := [((1 : F), 1667), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 234) * (relationLc1434 rho) = ((1 : F) * rho 1669)

def relationLc1435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 84⟩, ⟨(1 : F), 1005, 8, 84⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1669 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1435 rho) = ((1 : F) * rho 1670)

def relationLc1436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5087188169684227801562250753370009099099816197018021756764974898315399945223 : F), 256, 5, 149⟩, ⟨(5087188169684227801562250753370009099099816197018021756764974898315399945223 : F), 1004, 8, 84⟩], residual := [((7152477452365709395280634271259004537953723793054248778598096973805561633905 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), runs := [⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 257, 5, 149⟩, ⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 1005, 8, 84⟩], residual := [((3623911247177762772873015558312128719028580682713025867927504034680464909656 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1670 (rho : Nat -> F) : Prop :=
    (relationLc1436 rho) * (relationLc1437 rho) = ((1 : F) * rho 1671)

def relationLc1438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), runs := [⟨(1049904119233804414728524198211337291746131104561334643241468891382768574838 : F), 256, 5, 149⟩, ⟨(1049904119233804414728524198211337291746131104561334643241468891382768574838 : F), 1004, 8, 84⟩, ⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 257, 5, 149⟩, ⟨(6492092171468074665040082486270868720785634859603612924010367110189092078530 : F), 1005, 8, 84⟩], residual := [((8316714720528696662738890725987300544313821599026025984463061742725224348499 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1671 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1438 rho) = ((1 : F) * rho 1672)

def relationRow1672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1673) * ((1 : F) + (1 : F) * rho 1671) = ((1 : F) * rho 1672)

def relationLc1439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1952369577960295759208742452510677810590264475550450903924866345728317160511 : F), runs := [⟨(1952369577960295759208742452510677810590264475550450903924866345728317160511 : F), 257, 5, 149⟩, ⟨(1952369577960295759208742452510677810590264475550450903924866345728317160511 : F), 1005, 8, 84⟩, ⟨(7394557630194566009520300740570209239629768230592729184693764564534640664203 : F), 256, 5, 149⟩, ⟨(7394557630194566009520300740570209239629768230592729184693764564534640664203 : F), 1004, 8, 84⟩], residual := [((127747028899673761509934212794245987062077736128037843472171713192184890542 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1673 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1439 rho) = ((1 : F) * rho 1674)

def relationRow1674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1675) * ((1 : F) + (-1 : F) * rho 1671) = ((7541996290701879079768606684482206012531765964164947567251836001571860653368 : F) * rho 1670 + (1 : F) * rho 1674)

def relationLc1440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 84⟩], residual := [((1 : F), 1673), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 235) * (relationLc1440 rho) = ((1 : F) * rho 1676)

def relationLc1441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 84⟩], residual := [((1 : F), 1675), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 235) * (relationLc1441 rho) = ((1 : F) * rho 1677)

def relationLc1442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 85⟩, ⟨(1 : F), 1005, 8, 85⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1677 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1442 rho) = ((1 : F) * rho 1678)

def relationLc1443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6702953404390736707495812053445034260304431226855294397131934185910875232896 : F), 256, 5, 149⟩, ⟨(6702953404390736707495812053445034260304431226855294397131934185910875232896 : F), 1004, 8, 85⟩], residual := [((2452873964476630092567945718208053877901301266033194735109226827918502899745 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), runs := [⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 257, 5, 149⟩, ⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 1005, 8, 85⟩], residual := [((337404684653093188052153735361213699914087648575031015260095925233825252916 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1678 (rho : Nat -> F) : Prop :=
    (relationLc1443 rho) * (relationLc1444 rho) = ((1 : F) * rho 1679)

def relationLc1445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), runs := [⟨(2733181755245252777622839383397224758495384998898502368185983124997424595093 : F), 256, 5, 149⟩, ⟨(2733181755245252777622839383397224758495384998898502368185983124997424595093 : F), 1004, 8, 85⟩, ⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 257, 5, 149⟩, ⟨(3858729688629762977328716795123717803175545332224895722123585236410054509531 : F), 1005, 8, 85⟩], residual := [((3530396472740374106484701244731201847120038771386012175881461643037731195943 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1679 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1445 rho) = ((1 : F) * rho 1680)

def relationRow1680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1681) * ((1 : F) + (1 : F) * rho 1679) = ((1 : F) * rho 1680)

def relationLc1446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4585732060798607446920108143657828728200354002929168105811648219507354729510 : F), runs := [⟨(4585732060798607446920108143657828728200354002929168105811648219507354729510 : F), 257, 5, 149⟩, ⟨(4585732060798607446920108143657828728200354002929168105811648219507354729510 : F), 1005, 8, 85⟩, ⟨(5711279994183117646625985555384321772880514336255561459749250330919984643948 : F), 256, 5, 149⟩, ⟨(5711279994183117646625985555384321772880514336255561459749250330919984643948 : F), 1004, 8, 85⟩], residual := [((4914065276687996317764123694050344684255860563768051652053771812879678043098 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1681 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1446 rho) = ((1 : F) * rho 1682)

def relationRow1682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1683) * ((1 : F) + (-1 : F) * rho 1679) = ((6591911443875015754951556178520942561670930331123398090309568361407479104624 : F) * rho 1678 + (1 : F) * rho 1682)

def relationLc1447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 85⟩], residual := [((1 : F), 1681), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 236) * (relationLc1447 rho) = ((1 : F) * rho 1684)

def relationLc1448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 85⟩], residual := [((1 : F), 1683), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 236) * (relationLc1448 rho) = ((1 : F) * rho 1685)

def relationLc1449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 86⟩, ⟨(1 : F), 1005, 8, 86⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1685 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1449 rho) = ((1 : F) * rho 1686)

def relationLc1450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8091864853146751529371715125668286512450304465019627868544043469098480805528 : F), 256, 5, 149⟩, ⟨(8091864853146751529371715125668286512450304465019627868544043469098480805528 : F), 1004, 8, 86⟩], residual := [((5183033282837840927610938169579538547541169724730244457330125573237530254282 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), runs := [⟨(1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), 257, 5, 149⟩, ⟨(1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), 1005, 8, 86⟩], residual := [((2046459351451249908923190100053112941830275410540864722482341418481537589236 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1686 (rho : Nat -> F) : Prop :=
    (relationLc1450 rho) * (relationLc1451 rho) = ((1 : F) * rho 1687)

def relationLc1452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), runs := [⟨(1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), 257, 5, 149⟩, ⟨(1227669925703988626892556534377943857920740743066421402305718522958062673379 : F), 1005, 8, 86⟩, ⟨(5830782725061668019228127015056336578759086533684621883188846672974808587953 : F), 256, 5, 149⟩, ⟨(5830782725061668019228127015056336578759086533684621883188846672974808587953 : F), 1004, 8, 86⟩], residual := [((7937774789825435385526925645959203004775181424739587903520695280511070458125 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1687 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1452 rho) = ((1 : F) * rho 1688)

def relationRow1688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1689) * ((1 : F) + (1 : F) * rho 1687) = ((1 : F) * rho 1688)

def relationLc1453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7216791823724381797356268404403602673455158592087642425629514932959346565662 : F), runs := [⟨(2613679024366702405020697923725209952616812801469441944746386782942600651088 : F), 256, 5, 149⟩, ⟨(2613679024366702405020697923725209952616812801469441944746386782942600651088 : F), 1004, 8, 86⟩, ⟨(7216791823724381797356268404403602673455158592087642425629514932959346565662 : F), 257, 5, 149⟩, ⟨(7216791823724381797356268404403602673455158592087642425629514932959346565662 : F), 1005, 8, 86⟩], residual := [((506686959602935038721899292822343526600717910414475924414538175406338780916 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1689 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1453 rho) = ((1 : F) * rho 1690)

def relationRow1690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1691) * ((1 : F) + (-1 : F) * rho 1687) = ((7058452650765656646120683549434280436679827276751043285494565195932871261332 : F) * rho 1686 + (1 : F) * rho 1690)

def relationLc1454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 86⟩], residual := [((1 : F), 1689), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 237) * (relationLc1454 rho) = ((1 : F) * rho 1692)

def relationLc1455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 86⟩], residual := [((1 : F), 1691), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 237) * (relationLc1455 rho) = ((1 : F) * rho 1693)

def relationLc1456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 87⟩, ⟨(1 : F), 1005, 8, 87⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1693 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1456 rho) = ((1 : F) * rho 1694)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
