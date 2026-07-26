import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs64

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (516127359692692572767058943743999446836874726622741997864692587217951630012 : F), runs := [⟨(23468569497310222956961132508499305334764585142311989146374042827732781393 : F), 256, 5, 149⟩, ⟨(23468569497310222956961132508499305334764585142311989146374042827732781393 : F), 1004, 8, 93⟩, ⟨(516127359692692572767058943743999446836874726622741997864692587217951630012 : F), 257, 5, 149⟩, ⟨(516127359692692572767058943743999446836874726622741997864692587217951630012 : F), 1005, 8, 93⟩], residual := [((1294644382081861028108387853805231787574312421109933372466612153227734476157 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1454 rho) = ((1 : F) * rho 1746)

def relationRow1746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1747) * ((1 : F) + (-1 : F) * rho 1743) = ((7904865820238367628524804862529047779204260023389009840924166825871724827636 : F) * rho 1742 + (1 : F) * rho 1746)

def relationLc1455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 93⟩], residual := [((1 : F), 1745), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 244) * (relationLc1455 rho) = ((1 : F) * rho 1748)

def relationLc1456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 93⟩], residual := [((1 : F), 1747), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 244) * (relationLc1456 rho) = ((1 : F) * rho 1749)

def relationLc1457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 94⟩, ⟨(1 : F), 1005, 8, 94⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1749 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1457 rho) = ((1 : F) * rho 1750)

def relationLc1458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7396124104652663118422969070910039288717996846228245061431233970477546476098 : F), 256, 5, 149⟩, ⟨(7396124104652663118422969070910039288717996846228245061431233970477546476098 : F), 1004, 8, 94⟩], residual := [((266244481212878045924026887078478029881372060679573020064507805825996892176 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6531902123103138028322820526628973091630042871057622470582109851478141098661 : F), runs := [⟨(6531902123103138028322820526628973091630042871057622470582109851478141098661 : F), 257, 5, 149⟩, ⟨(6531902123103138028322820526628973091630042871057622470582109851478141098661 : F), 1005, 8, 94⟩], residual := [((5634786646466419842005984955937291077093527399684750966063598167198254324639 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1750 (rho : Nat -> F) : Prop :=
    (relationLc1458 rho) * (relationLc1459 rho) = ((1 : F) * rho 1751)

def relationLc1460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6531902123103138028322820526628973091630042871057622470582109851478141098661 : F), runs := [⟨(5039495596350405881368687689094755673230085600395184132075710665850264480380 : F), 256, 5, 149⟩, ⟨(5039495596350405881368687689094755673230085600395184132075710665850264480380 : F), 1004, 8, 94⟩, ⟨(6531902123103138028322820526628973091630042871057622470582109851478141098661 : F), 257, 5, 149⟩, ⟨(6531902123103138028322820526628973091630042871057622470582109851478141098661 : F), 1005, 8, 94⟩], residual := [((1808172316613316156884926593042600999826488400093478603460728225673889130546 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1460 rho) = ((1 : F) * rho 1752)

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1753) * ((1 : F) + (1 : F) * rho 1751) = ((1 : F) * rho 1752)

def relationLc1461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1912559626325232395926004412152573439745856464096441357353123604439268140380 : F), runs := [⟨(1912559626325232395926004412152573439745856464096441357353123604439268140380 : F), 257, 5, 149⟩, ⟨(1912559626325232395926004412152573439745856464096441357353123604439268140380 : F), 1005, 8, 94⟩, ⟨(3404966153077964542880137249686790858145813734758879695859522790067144758661 : F), 256, 5, 149⟩, ⟨(3404966153077964542880137249686790858145813734758879695859522790067144758661 : F), 1004, 8, 94⟩], residual := [((6636289432815054267363898345738945531549410935060585224474505230243520108495 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1461 rho) = ((1 : F) * rho 1754)

def relationRow1754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1755) * ((1 : F) + (-1 : F) * rho 1751) = ((3126935970025173485442683276942182233484229136298742774722587061410996340000 : F) * rho 1750 + (1 : F) * rho 1754)

def relationLc1462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 94⟩], residual := [((1 : F), 1753), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 245) * (relationLc1462 rho) = ((1 : F) * rho 1756)

def relationLc1463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 94⟩], residual := [((1 : F), 1755), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 245) * (relationLc1463 rho) = ((1 : F) * rho 1757)

def relationLc1464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 95⟩, ⟨(1 : F), 1005, 8, 95⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1464 rho) = ((1 : F) * rho 1758)

def relationLc1465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(260328731423585986327153601432275543743222279480665957083922869933549272732 : F), 256, 5, 149⟩, ⟨(260328731423585986327153601432275543743222279480665957083922869933549272732 : F), 1004, 8, 95⟩], residual := [((1542353671275604274757959391150192852009829135716795406696508500826541627060 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3368067897301621952756129210911905766281689935142904350930821626789140398127 : F), runs := [⟨(3368067897301621952756129210911905766281689935142904350930821626789140398127 : F), 257, 5, 149⟩, ⟨(3368067897301621952756129210911905766281689935142904350930821626789140398127 : F), 1005, 8, 95⟩], residual := [((4381488387325154353751551160021440457374123941788953219532740480634688063045 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1758 (rho : Nat -> F) : Prop :=
    (relationLc1465 rho) * (relationLc1466 rho) = ((1 : F) * rho 1759)

def relationLc1467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3368067897301621952756129210911905766281689935142904350930821626789140398127 : F), runs := [⟨(3368067897301621952756129210911905766281689935142904350930821626789140398127 : F), 257, 5, 149⟩, ⟨(3368067897301621952756129210911905766281689935142904350930821626789140398127 : F), 1005, 8, 95⟩, ⟨(4603869192333647691070553402110109040953276870995770867449987893004272282679 : F), 256, 5, 149⟩, ⟨(4603869192333647691070553402110109040953276870995770867449987893004272282679 : F), 1004, 8, 95⟩], residual := [((7501502179458003409606051852199976081957875509868281927703020866369429953941 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1759 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1467 rho) = ((1 : F) * rho 1760)

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1761) * ((1 : F) + (1 : F) * rho 1759) = ((1 : F) * rho 1760)

def relationLc1468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5076393852126748471492695727869640765094209400011159477004411829128268840914 : F), runs := [⟨(3840592557094722733178271536671437490422622464158292960485245562913136956362 : F), 256, 5, 149⟩, ⟨(3840592557094722733178271536671437490422622464158292960485245562913136956362 : F), 1004, 8, 95⟩, ⟨(5076393852126748471492695727869640765094209400011159477004411829128268840914 : F), 257, 5, 149⟩, ⟨(5076393852126748471492695727869640765094209400011159477004411829128268840914 : F), 1005, 8, 95⟩], residual := [((942959569970367014642773086581570449418023825285781900232212589547979285100 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1468 rho) = ((1 : F) * rho 1762)

def relationRow1762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1763) * ((1 : F) + (-1 : F) * rho 1759) = ((7971937089635269643826682613022014807234966806138675218380809519793412680806 : F) * rho 1758 + (1 : F) * rho 1762)

def relationLc1469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 95⟩], residual := [((1 : F), 1761), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 246) * (relationLc1469 rho) = ((1 : F) * rho 1764)

def relationLc1470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 95⟩], residual := [((1 : F), 1763), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 246) * (relationLc1470 rho) = ((1 : F) * rho 1765)

def relationLc1471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 96⟩, ⟨(1 : F), 1005, 8, 96⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1765 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1471 rho) = ((1 : F) * rho 1766)

def relationLc1472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2402040019472498774072941026249248018522448093911505580831537318715564696295 : F), 256, 5, 149⟩, ⟨(2402040019472498774072941026249248018522448093911505580831537318715564696295 : F), 1004, 8, 96⟩], residual := [((8236537065884324882781831579993557186896034708215621005562235095096824994222 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (480450082750963304168017552783809360075956388215352509798867393431937691687 : F), runs := [⟨(480450082750963304168017552783809360075956388215352509798867393431937691687 : F), 257, 5, 149⟩, ⟨(480450082750963304168017552783809360075956388215352509798867393431937691687 : F), 1005, 8, 96⟩], residual := [((7349929413156500839574466363920844519270761866542770606800341658173170220065 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1766 (rho : Nat -> F) : Prop :=
    (relationLc1472 rho) * (relationLc1473 rho) = ((1 : F) * rho 1767)

def relationLc1474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (480450082750963304168017552783809360075956388215352509798867393431937691687 : F), runs := [⟨(480450082750963304168017552783809360075956388215352509798867393431937691687 : F), 257, 5, 149⟩, ⟨(480450082750963304168017552783809360075956388215352509798867393431937691687 : F), 1005, 8, 96⟩, ⟨(8411713817957444258635811711956280291601656255403008793061221120878583238984 : F), 256, 5, 149⟩, ⟨(8411713817957444258635811711956280291601656255403008793061221120878583238984 : F), 1004, 8, 96⟩], residual := [((7358246348133243992746025278670118484927712489971609980736598759135411743889 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1767 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1474 rho) = ((1 : F) * rho 1768)

def relationRow1768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1769) * ((1 : F) + (1 : F) * rho 1767) = ((1 : F) * rho 1768)

def relationLc1475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7964011666677407120080807385997737171299942946938711318136366062485471547354 : F), runs := [⟨(32747931470926165613013226825266239774243079751055034874012335038826000057 : F), 256, 5, 149⟩, ⟨(32747931470926165613013226825266239774243079751055034874012335038826000057 : F), 1004, 8, 96⟩, ⟨(7964011666677407120080807385997737171299942946938711318136366062485471547354 : F), 257, 5, 149⟩, ⟨(7964011666677407120080807385997737171299942946938711318136366062485471547354 : F), 1005, 8, 96⟩], residual := [((1086215401295126431502799660111428046448186845182453847198634696781997495152 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1769 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1475 rho) = ((1 : F) * rho 1770)

def relationRow1770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1771) * ((1 : F) + (-1 : F) * rho 1767) = ((447702151280037138555004325958543120301713308464297474924855058393111691630 : F) * rho 1766 + (1 : F) * rho 1770)

def relationLc1476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 96⟩], residual := [((1 : F), 1769), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 247) * (relationLc1476 rho) = ((1 : F) * rho 1772)

def relationLc1477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 96⟩], residual := [((1 : F), 1771), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 247) * (relationLc1477 rho) = ((1 : F) * rho 1773)

def relationLc1478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 97⟩, ⟨(1 : F), 1005, 8, 97⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1773 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1478 rho) = ((1 : F) * rho 1774)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
