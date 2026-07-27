import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs59

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7344857715706117259105529526644804094361699071554521349999566857863556016481 : F), runs := [⟨(3794122519353631479295859898480358677802267028676916192435888652759875997540 : F), 256, 5, 149⟩, ⟨(3794122519353631479295859898480358677802267028676916192435888652759875997540 : F), 1004, 8, 97⟩, ⟨(7344857715706117259105529526644804094361699071554521349999566857863556016481 : F), 257, 5, 149⟩, ⟨(7344857715706117259105529526644804094361699071554521349999566857863556016481 : F), 1005, 8, 97⟩], residual := [((3410819976564072882943018104028368010814794032146672781662162097723680491065 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1777 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1530 rho) = ((1 : F) * rho 1778)

def relationRow1778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1779) * ((1 : F) + (-1 : F) * rho 1775) = ((5749943263796992110096260452437930290587832570076690113435011401211386464061 : F) * rho 1774 + (1 : F) * rho 1778)

def relationLc1531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 97⟩], residual := [((1 : F), 1777), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 248) * (relationLc1531 rho) = ((1 : F) * rho 1780)

def relationLc1532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 97⟩], residual := [((1 : F), 1779), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 248) * (relationLc1532 rho) = ((1 : F) * rho 1781)

def relationLc1533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 98⟩, ⟨(1 : F), 1005, 8, 98⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1781 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1533 rho) = ((1 : F) * rho 1782)

def relationLc1534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5433452400507472894596995115818677673164991880881552604222095953382622985027 : F), 256, 5, 149⟩, ⟨(5433452400507472894596995115818677673164991880881552604222095953382622985027 : F), 1004, 8, 98⟩], residual := [((6394341953313109814172697215813188191256544307060807307185555637922028065142 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), runs := [⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 257, 5, 149⟩, ⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 1005, 8, 98⟩], residual := [((549863627905211652879844760723861940109871183668577874297564049356567101830 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1782 (rho : Nat -> F) : Prop :=
    (relationLc1534 rho) * (relationLc1535 rho) = ((1 : F) * rho 1783)

def relationLc1536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), runs := [⟨(1516826123995592268400350914245421018761636025003106304980178294955517520869 : F), 256, 5, 149⟩, ⟨(1516826123995592268400350914245421018761636025003106304980178294955517520869 : F), 1004, 8, 98⟩, ⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 257, 5, 149⟩, ⟨(6627260208489595454201940394776925586553558217909297503373304214489441683658 : F), 1005, 8, 98⟩], residual := [((1370989624110383994528000472170007693795536542658052057975885452276700479885 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1783 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1536 rho) = ((1 : F) * rho 1784)

def relationRow1784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1785) * ((1 : F) + (1 : F) * rho 1783) = ((1 : F) * rho 1784)

def relationLc1537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1817201540938774970046884544004620944822341117244766324561929241427967555383 : F), runs := [⟨(1817201540938774970046884544004620944822341117244766324561929241427967555383 : F), 257, 5, 149⟩, ⟨(1817201540938774970046884544004620944822341117244766324561929241427967555383 : F), 1005, 8, 98⟩, ⟨(6927635625432778155848474024536125512614263310150957522955055160961891718172 : F), 256, 5, 149⟩, ⟨(6927635625432778155848474024536125512614263310150957522955055160961891718172 : F), 1004, 8, 98⟩], residual := [((7073472125317986429720824466611538837580362792496011769959348003640708759156 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1785 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1537 rho) = ((1 : F) * rho 1786)

def relationRow1786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1787) * ((1 : F) + (-1 : F) * rho 1783) = ((8144086332485187722602291309022346605315194242912403808353482509444959204527 : F) * rho 1782 + (1 : F) * rho 1786)

def relationLc1538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 98⟩], residual := [((1 : F), 1785), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 249) * (relationLc1538 rho) = ((1 : F) * rho 1788)

def relationLc1539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 98⟩], residual := [((1 : F), 1787), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 249) * (relationLc1539 rho) = ((1 : F) * rho 1789)

def relationLc1540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 99⟩, ⟨(1 : F), 1005, 8, 99⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1789 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1540 rho) = ((1 : F) * rho 1790)

def relationLc1541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7534130220994948469448485159954569829989303291994285594626697092191329623737 : F), 256, 5, 149⟩, ⟨(7534130220994948469448485159954569829989303291994285594626697092191329623737 : F), 1004, 8, 99⟩], residual := [((3716211268890037814401188648723045032348554276262890654908772248785236731110 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), runs := [⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 257, 5, 149⟩, ⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 1005, 8, 99⟩], residual := [((2810509145840311449603695208686646865203949018815104943021971327492244934389 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1790 (rho : Nat -> F) : Prop :=
    (relationLc1541 rho) * (relationLc1542 rho) = ((1 : F) * rho 1791)

def relationLc1543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), runs := [⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 257, 5, 149⟩, ⟨(3495198042200539245348034761970589749121878896975913938990248009704026313594 : F), 1005, 8, 99⟩, ⟨(5453238841974947790716536615618659485605095334936252482644267439963965357747 : F), 256, 5, 149⟩, ⟨(5453238841974947790716536615618659485605095334936252482644267439963965357747 : F), 1004, 8, 99⟩], residual := [((4508458332590364705258590252211678904124015040236746662390258477439498375246 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1791 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1543 rho) = ((1 : F) * rho 1792)

def relationRow1792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1793) * ((1 : F) + (1 : F) * rho 1791) = ((1 : F) * rho 1792)

def relationLc1544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4949263707227831178900790176810956782254020438178149888944985446213382925447 : F), runs := [⟨(2991222907453422633532288323162887045770804000217811345290966015953443881294 : F), 256, 5, 149⟩, ⟨(2991222907453422633532288323162887045770804000217811345290966015953443881294 : F), 1004, 8, 99⟩, ⟨(4949263707227831178900790176810956782254020438178149888944985446213382925447 : F), 257, 5, 149⟩, ⟨(4949263707227831178900790176810956782254020438178149888944985446213382925447 : F), 1005, 8, 99⟩], residual := [((3936003416838005718990234686569867627251884294917317165544974978477910863795 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1793 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1544 rho) = ((1 : F) * rho 1794)

def relationRow1794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1795) * ((1 : F) + (-1 : F) * rho 1791) = ((503975134747116611815746438807702703351074896758102593699281993750582432300 : F) * rho 1790 + (1 : F) * rho 1794)

def relationLc1545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 99⟩], residual := [((1 : F), 1793), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 250) * (relationLc1545 rho) = ((1 : F) * rho 1796)

def relationLc1546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 99⟩], residual := [((1 : F), 1795), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 250) * (relationLc1546 rho) = ((1 : F) * rho 1797)

def relationLc1547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 100⟩, ⟨(1 : F), 1005, 8, 100⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1797 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1547 rho) = ((1 : F) * rho 1798)

def relationLc1548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4064883095062247340147603835378916187508183055445169435732389489036001704408 : F), 256, 5, 149⟩, ⟨(4064883095062247340147603835378916187508183055445169435732389489036001704408 : F), 1004, 8, 100⟩], residual := [((2586703773231270539878676380651414243603465923206936704484651928336413050533 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), runs := [⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 257, 5, 149⟩, ⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 1005, 8, 100⟩], residual := [((8190687850680179368374512318543963712238846217710026704016266914143778228996 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1798 (rho : Nat -> F) : Prop :=
    (relationLc1548 rho) * (relationLc1549 rho) = ((1 : F) * rho 1799)

def relationLc1550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), runs := [⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 257, 5, 149⟩, ⟨(1984710607226089818020725577334409086216133409436227188525394559293030245463 : F), 1005, 8, 100⟩, ⟨(823150161346244009291394285282076662168825748954233675885035096169729996022 : F), 256, 5, 149⟩, ⟨(823150161346244009291394285282076662168825748954233675885035096169729996022 : F), 1004, 8, 100⟩], residual := [((7713555690673883416038639962320530066882449223208822474333234716515992539878 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1799 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1550 rho) = ((1 : F) * rho 1800)

def relationRow1800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1801) * ((1 : F) + (1 : F) * rho 1799) = ((1 : F) * rho 1800)

def relationLc1551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), runs := [⟨(6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), 257, 5, 149⟩, ⟨(6459751142202280606228099361447137445159765925717836639409838896624378993578 : F), 1005, 8, 100⟩, ⟨(7621311588082126414957430653499469869207073586199830152050198359747679243019 : F), 256, 5, 149⟩, ⟨(7621311588082126414957430653499469869207073586199830152050198359747679243019 : F), 1004, 8, 100⟩], residual := [((730906058754487008210184976461016464493450111945241353601998739401416699163 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1551 rho) = ((1 : F) * rho 1802)

def relationRow1802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1803) * ((1 : F) + (-1 : F) * rho 1799) = ((2807860768572333827312119862616485748384959158390460864410429655462760241485 : F) * rho 1798 + (1 : F) * rho 1802)

def relationLc1552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 100⟩], residual := [((1 : F), 1801), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 251) * (relationLc1552 rho) = ((1 : F) * rho 1804)

def relationLc1553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 100⟩], residual := [((1 : F), 1803), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 251) * (relationLc1553 rho) = ((1 : F) * rho 1805)

def relationLc1554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 101⟩, ⟨(1 : F), 1005, 8, 101⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1554 rho) = ((1 : F) * rho 1806)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
