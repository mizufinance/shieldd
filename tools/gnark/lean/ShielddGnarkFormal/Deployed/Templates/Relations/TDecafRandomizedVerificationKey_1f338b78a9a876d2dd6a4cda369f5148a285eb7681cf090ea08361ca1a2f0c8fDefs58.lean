import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs57

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6406366719722570632498273478356756112454048663963468792449618880353700101507 : F), runs := [⟨(5856610238468263628783236714606507788710534814593431356089154779949133495439 : F), 256, 5, 149⟩, ⟨(5856610238468263628783236714606507788710534814593431356089154779949133495439 : F), 1004, 8, 90⟩, ⟨(6406366719722570632498273478356756112454048663963468792449618880353700101507 : F), 257, 5, 149⟩, ⟨(6406366719722570632498273478356756112454048663963468792449618880353700101507 : F), 1005, 8, 90⟩], residual := [((2078497078845338756648745133665982913365907722330710257090201939515222228536 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1721 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1481 rho) = ((1 : F) * rho 1722)

def relationRow1722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1723) * ((1 : F) + (-1 : F) * rho 1719) = ((4625946540665906587216139684599829161587215191751227507331693251531984881136 : F) * rho 1718 + (1 : F) * rho 1722)

def relationLc1482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 90⟩], residual := [((1 : F), 1721), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 241) * (relationLc1482 rho) = ((1 : F) * rho 1724)

def relationLc1483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 90⟩], residual := [((1 : F), 1723), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 241) * (relationLc1483 rho) = ((1 : F) * rho 1725)

def relationLc1484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 91⟩, ⟨(1 : F), 1005, 8, 91⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1725 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1484 rho) = ((1 : F) * rho 1726)

def relationLc1485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1956560981182669050740635602451336507209547751643045548588066977890755308424 : F), 256, 5, 149⟩, ⟨(1956560981182669050740635602451336507209547751643045548588066977890755308424 : F), 1004, 8, 91⟩], residual := [((5802932167050963573457850833071607981893881027396067795802331758442319830161 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), runs := [⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 257, 5, 149⟩, ⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 1005, 8, 91⟩], residual := [((5084973934258372237038475226326269953298064121184732937443940636904285701209 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1726 (rho : Nat -> F) : Prop :=
    (relationLc1485 rho) * (relationLc1486 rho) = ((1 : F) * rho 1727)

def relationLc1487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), runs := [⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 257, 5, 149⟩, ⟨(1042167591211212625055700514920501013538786034986540347420891006854780459843 : F), 1005, 8, 91⟩, ⟨(1429022348539913921165802773690771802065638566042823456346736962248158515875 : F), 256, 5, 149⟩, ⟨(1429022348539913921165802773690771802065638566042823456346736962248158515875 : F), 1004, 8, 91⟩], residual := [((3247617794252805611556095564331835656818935395099338057938617471649332718932 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1727 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1487 rho) = ((1 : F) * rho 1728)

def relationRow1728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1729) * ((1 : F) + (1 : F) * rho 1727) = ((1 : F) * rho 1728)

def relationLc1488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7402294158217157799193124423861045517837113300167523480514342449062628779198 : F), runs := [⟨(7015439400888456503083022165090774729310260769111240371588496493669250723166 : F), 256, 5, 149⟩, ⟨(7015439400888456503083022165090774729310260769111240371588496493669250723166 : F), 1004, 8, 91⟩, ⟨(7402294158217157799193124423861045517837113300167523480514342449062628779198 : F), 257, 5, 149⟩, ⟨(7402294158217157799193124423861045517837113300167523480514342449062628779198 : F), 1005, 8, 91⟩], residual := [((5196843955175564812692729374449710874556963940054725769996615984268076520109 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1729 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1488 rho) = ((1 : F) * rho 1730)

def relationRow1730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1731) * ((1 : F) + (-1 : F) * rho 1727) = ((2471189939751126546221503288611272815604424601029363803767627969102938975718 : F) * rho 1726 + (1 : F) * rho 1730)

def relationLc1489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 91⟩], residual := [((1 : F), 1729), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 242) * (relationLc1489 rho) = ((1 : F) * rho 1732)

def relationLc1490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 91⟩], residual := [((1 : F), 1731), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 242) * (relationLc1490 rho) = ((1 : F) * rho 1733)

def relationLc1491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 92⟩, ⟨(1 : F), 1005, 8, 92⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1733 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1491 rho) = ((1 : F) * rho 1734)

def relationLc1492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4577919756531272352425690818081278835207495153207440076621707172903191132847 : F), 256, 5, 149⟩, ⟨(4577919756531272352425690818081278835207495153207440076621707172903191132847 : F), 1004, 8, 92⟩], residual := [((8220088989769612254898518930562028505285603666816911535389190907107422041386 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), runs := [⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 257, 5, 149⟩, ⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 1005, 8, 92⟩], residual := [((8252697770305461570771050865159685789044519724630267641297089757715806104875 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1734 (rho : Nat -> F) : Prop :=
    (relationLc1492 rho) * (relationLc1493 rho) = ((1 : F) * rho 1735)

def relationLc1494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), runs := [⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 257, 5, 149⟩, ⟨(1832778559720170430478539365272560586379194156184726994910167946211622715322 : F), 1005, 8, 92⟩, ⟨(5910681912627641956045826418868676149011538791681197739931051053618770712501 : F), 256, 5, 149⟩, ⟨(5910681912627641956045826418868676149011538791681197739931051053618770712501 : F), 1004, 8, 92⟩], residual := [((3936751622050889345279645366488077923281368824548767574225078338157616812496 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1735 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1494 rho) = ((1 : F) * rho 1736)

def relationRow1736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1737) * ((1 : F) + (1 : F) * rho 1735) = ((1 : F) * rho 1736)

def relationLc1495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6611683189708199993770285573508985944996705178969336833025065509705786523719 : F), runs := [⟨(2533779836800728468202998519912870382364360543472866088004182402298638526540 : F), 256, 5, 149⟩, ⟨(2533779836800728468202998519912870382364360543472866088004182402298638526540 : F), 1004, 8, 92⟩, ⟨(6611683189708199993770285573508985944996705178969336833025065509705786523719 : F), 257, 5, 149⟩, ⟨(6611683189708199993770285573508985944996705178969336833025065509705786523719 : F), 1005, 8, 92⟩], residual := [((4507710127377481078969179572293468608094530510605296253710155117759792426545 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1737 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1495 rho) = ((1 : F) * rho 1738)

def relationRow1738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1739) * ((1 : F) + (-1 : F) * rho 1735) = ((7743460472347812386524365784141236735390732947865924734841218999830393427823 : F) * rho 1734 + (1 : F) * rho 1738)

def relationLc1496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 92⟩], residual := [((1 : F), 1737), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 243) * (relationLc1496 rho) = ((1 : F) * rho 1740)

def relationLc1497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 92⟩], residual := [((1 : F), 1739), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 243) * (relationLc1497 rho) = ((1 : F) * rho 1741)

def relationLc1498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 93⟩, ⟨(1 : F), 1005, 8, 93⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1741 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1498 rho) = ((1 : F) * rho 1742)

def relationLc1499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5101607293481150265259843140857517366059282301462055240221117720675950563116 : F), 256, 5, 149⟩, ⟨(5101607293481150265259843140857517366059282301462055240221117720675950563116 : F), 1004, 8, 93⟩], residual := [((6746698226507997162075746128145595460723895925172237235437716251178243576708 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), runs := [⟨(7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), 257, 5, 149⟩, ⟨(7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), 1005, 8, 93⟩], residual := [((3390762984871091373183635872182357731676485092669673645809438422516163918512 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1742 (rho : Nat -> F) : Prop :=
    (relationLc1499 rho) * (relationLc1500 rho) = ((1 : F) * rho 1743)

def relationLc1501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), runs := [⟨(7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), 257, 5, 149⟩, ⟨(7928334389735677851481765995037547084539024608531321830070540868699457609029 : F), 1005, 8, 93⟩, ⟨(8420993179931060201291863806273047226041134750011751838788859413089676457648 : F), 256, 5, 149⟩, ⟨(8420993179931060201291863806273047226041134750011751838788859413089676457648 : F), 1004, 8, 93⟩], residual := [((7149817367346509396140437084976314743801586914044130455468621302689674762884 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1743 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1501 rho) = ((1 : F) * rho 1744)

def relationRow1744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1745) * ((1 : F) + (1 : F) * rho 1743) = ((1 : F) * rho 1744)

def relationLc1502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (516127359692692572767058943743999446836874726622741997864692587217951630012 : F), runs := [⟨(23468569497310222956961132508499305334764585142311989146374042827732781393 : F), 256, 5, 149⟩, ⟨(23468569497310222956961132508499305334764585142311989146374042827732781393 : F), 1004, 8, 93⟩, ⟨(516127359692692572767058943743999446836874726622741997864692587217951630012 : F), 257, 5, 149⟩, ⟨(516127359692692572767058943743999446836874726622741997864692587217951630012 : F), 1005, 8, 93⟩], residual := [((1294644382081861028108387853805231787574312421109933372466612153227734476157 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1502 rho) = ((1 : F) * rho 1746)

def relationRow1746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1747) * ((1 : F) + (-1 : F) * rho 1743) = ((7904865820238367628524804862529047779204260023389009840924166825871724827636 : F) * rho 1742 + (1 : F) * rho 1746)

def relationLc1503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 93⟩], residual := [((1 : F), 1745), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 244) * (relationLc1503 rho) = ((1 : F) * rho 1748)

def relationLc1504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 93⟩], residual := [((1 : F), 1747), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 244) * (relationLc1504 rho) = ((1 : F) * rho 1749)

def relationLc1505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 94⟩, ⟨(1 : F), 1005, 8, 94⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1749 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1505 rho) = ((1 : F) * rho 1750)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
