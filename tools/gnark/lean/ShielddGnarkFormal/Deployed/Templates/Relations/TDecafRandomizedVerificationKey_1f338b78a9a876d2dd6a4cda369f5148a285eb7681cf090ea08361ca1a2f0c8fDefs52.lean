import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs51

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3641384417715882785410658644443952188812859043662601944363735467675176945243 : F), runs := [⟨(3316297044168533149014643403039883058166636643202429343521440532051537386010 : F), 256, 5, 149⟩, ⟨(3316297044168533149014643403039883058166636643202429343521440532051537386010 : F), 1004, 8, 69⟩, ⟨(3641384417715882785410658644443952188812859043662601944363735467675176945243 : F), 257, 5, 149⟩, ⟨(3641384417715882785410658644443952188812859043662601944363735467675176945243 : F), 1005, 8, 69⟩], residual := [((1059886451341295845738262716639993039365203669610171834450545523081901543640 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1553 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1334 rho) = ((1 : F) * rho 1554)

def relationRow1554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1555) * ((1 : F) + (-1 : F) * rho 1551) = ((1486780287543954489823522891297711284396403648289032540050057456190694907788 : F) * rho 1550 + (1 : F) * rho 1554)

def relationLc1335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 69⟩], residual := [((1 : F), 1553), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 220) * (relationLc1335 rho) = ((1 : F) * rho 1556)

def relationLc1336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 69⟩], residual := [((1 : F), 1555), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 220) * (relationLc1336 rho) = ((1 : F) * rho 1557)

def relationLc1337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 70⟩, ⟨(1 : F), 1005, 8, 70⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1557 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1337 rho) = ((1 : F) * rho 1558)

def relationLc1338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(664720289368771774607689558907679234755924170859141298034878778977921393150 : F), 256, 5, 149⟩, ⟨(664720289368771774607689558907679234755924170859141298034878778977921393150 : F), 1004, 8, 70⟩], residual := [((3852354410364297846567328813030532193415590370172629429674586400220246585410 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), runs := [⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 257, 5, 149⟩, ⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 1005, 8, 70⟩], residual := [((1673511469619955977518183988565504897056510131010753193051227192168730177644 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1558 (rho : Nat -> F) : Prop :=
    (relationLc1338 rho) * (relationLc1339 rho) = ((1 : F) * rho 1559)

def relationLc1340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), runs := [⟨(1509657088705954584862288366931791726639437790517727113003330335972982095490 : F), 256, 5, 149⟩, ⟨(1509657088705954584862288366931791726639437790517727113003330335972982095490 : F), 1004, 8, 70⟩, ⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 257, 5, 149⟩, ⟨(1840999688597703629631039258546352622862511100796735162417886474873228693825 : F), 1005, 8, 70⟩], residual := [((7992060264098102768861749592822150277097207942271381091284693659157662692314 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1559 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1340 rho) = ((1 : F) * rho 1560)

def relationRow1560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1561) * ((1 : F) + (1 : F) * rho 1559) = ((1 : F) * rho 1560)

def relationLc1341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6603462060830666794617785680235193908513388234357328665517346981044180545216 : F), runs := [⟨(6603462060830666794617785680235193908513388234357328665517346981044180545216 : F), 257, 5, 149⟩, ⟨(6603462060830666794617785680235193908513388234357328665517346981044180545216 : F), 1005, 8, 70⟩, ⟨(6934804660722415839386536571849754804736461544636336714931903119944427143551 : F), 256, 5, 149⟩, ⟨(6934804660722415839386536571849754804736461544636336714931903119944427143551 : F), 1004, 8, 70⟩], residual := [((452401485330267655387075345959396254278691392882682736650539796759746546727 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1561 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1341 rho) = ((1 : F) * rho 1562)

def relationRow1562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1563) * ((1 : F) + (-1 : F) * rho 1559) = ((3350656777303658214493327625478144349501948891314462275421216810846210789315 : F) * rho 1558 + (1 : F) * rho 1562)

def relationLc1342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 70⟩], residual := [((1 : F), 1561), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 221) * (relationLc1342 rho) = ((1 : F) * rho 1564)

def relationLc1343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 70⟩], residual := [((1 : F), 1563), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 221) * (relationLc1343 rho) = ((1 : F) * rho 1565)

def relationLc1344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 71⟩, ⟨(1 : F), 1005, 8, 71⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1565 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1344 rho) = ((1 : F) * rho 1566)

def relationLc1345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5791789347728941516993523159659494889333240044800236722540434826636000096086 : F), 256, 5, 149⟩, ⟨(5791789347728941516993523159659494889333240044800236722540434826636000096086 : F), 1004, 8, 71⟩], residual := [((4828905915229688026472990501082234424529133778340273211941412939713368772977 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), runs := [⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 257, 5, 149⟩, ⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 1005, 8, 71⟩], residual := [((4846688529128689085673653848924591249673793542413264056059586517802268792870 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1566 (rho : Nat -> F) : Prop :=
    (relationLc1345 rho) * (relationLc1346 rho) = ((1 : F) * rho 1567)

def relationLc1347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), runs := [⟨(3870548444408008476887576047147739124234881800694480163715625136648901154230 : F), 256, 5, 149⟩, ⟨(3870548444408008476887576047147739124234881800694480163715625136648901154230 : F), 1004, 8, 71⟩, ⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 257, 5, 149⟩, ⟨(6570330944860596111059142108479099720512137819754909616625358705125934600095 : F), 1005, 8, 71⟩], residual := [((3193496721864086105491981762444090318806529963256406885279806050088467766475 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1567 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1347 rho) = ((1 : F) * rho 1568)

def relationRow1568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1569) * ((1 : F) + (1 : F) * rho 1567) = ((1 : F) * rho 1568)

def relationLc1348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1874130804567774313189682830302446810863761515399154211309874750791474638946 : F), runs := [⟨(1874130804567774313189682830302446810863761515399154211309874750791474638946 : F), 257, 5, 149⟩, ⟨(1874130804567774313189682830302446810863761515399154211309874750791474638946 : F), 1005, 8, 71⟩, ⟨(4573913305020361947361248891633807407141017534459583664219608319268508084811 : F), 256, 5, 149⟩, ⟨(4573913305020361947361248891633807407141017534459583664219608319268508084811 : F), 1004, 8, 71⟩], residual := [((5250965027564284318756843176337456212569369371897656942655427405828941472566 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1569 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1348 rho) = ((1 : F) * rho 1570)

def relationRow1570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1571) * ((1 : F) + (-1 : F) * rho 1567) = ((1996417639840234163697893216845292313371120285295325952405750385857426515284 : F) * rho 1566 + (1 : F) * rho 1570)

def relationLc1349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 71⟩], residual := [((1 : F), 1569), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 222) * (relationLc1349 rho) = ((1 : F) * rho 1572)

def relationLc1350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 71⟩], residual := [((1 : F), 1571), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 222) * (relationLc1350 rho) = ((1 : F) * rho 1573)

def relationLc1351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 72⟩, ⟨(1 : F), 1005, 8, 72⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1573 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1351 rho) = ((1 : F) * rho 1574)

def relationLc1352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3572665339850325498579135525683803696736775859419263016244508576639770858362 : F), 256, 5, 149⟩, ⟨(3572665339850325498579135525683803696736775859419263016244508576639770858362 : F), 1004, 8, 72⟩], residual := [((5124414814074150176411602441813154520065508830654359745986878861746779079731 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), runs := [⟨(5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), 257, 5, 149⟩, ⟨(5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), 1005, 8, 72⟩], residual := [((5826020781600902362789512844011047342814882089613210203743853380263811888273 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1574 (rho : Nat -> F) : Prop :=
    (relationLc1352 rho) * (relationLc1353 rho) = ((1 : F) * rho 1575)

def relationLc1354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), runs := [⟨(3984419284434054346260560964346040255182851151424680641451159279463405473847 : F), 256, 5, 149⟩, ⟨(3984419284434054346260560964346040255182851151424680641451159279463405473847 : F), 1004, 8, 72⟩, ⟨(5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), 257, 5, 149⟩, ⟨(5331045109956993830571264971135024265297950271702392351376889158259487897154 : F), 1005, 8, 72⟩], residual := [((256776209672180712557306124199789784883037711549193371791210745777995988131 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1575 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1354 rho) = ((1 : F) * rho 1576)

def relationRow1576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1577) * ((1 : F) + (1 : F) * rho 1575) = ((1 : F) * rho 1576)

def relationLc1355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3113416639471376593677559967646522266077949063451671476558344297657921341887 : F), runs := [⟨(3113416639471376593677559967646522266077949063451671476558344297657921341887 : F), 257, 5, 149⟩, ⟨(3113416639471376593677559967646522266077949063451671476558344297657921341887 : F), 1005, 8, 72⟩, ⟨(4460042464994316077988263974435506276193048183729383186484074176454003765194 : F), 256, 5, 149⟩, ⟨(4460042464994316077988263974435506276193048183729383186484074176454003765194 : F), 1004, 8, 72⟩], residual := [((8187685539756189711691518814581756746492861623604870456144022710139413250910 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1355 rho) = ((1 : F) * rho 1578)

def relationRow1578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1579) * ((1 : F) + (-1 : F) * rho 1575) = ((871002644962677752583000996699517989104902087973009164892814981805484131960 : F) * rho 1574 + (1 : F) * rho 1578)

def relationLc1356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 72⟩], residual := [((1 : F), 1577), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 223) * (relationLc1356 rho) = ((1 : F) * rho 1580)

def relationLc1357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 72⟩], residual := [((1 : F), 1579), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 223) * (relationLc1357 rho) = ((1 : F) * rho 1581)

def relationLc1358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 73⟩, ⟨(1 : F), 1005, 8, 73⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1358 rho) = ((1 : F) * rho 1582)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
