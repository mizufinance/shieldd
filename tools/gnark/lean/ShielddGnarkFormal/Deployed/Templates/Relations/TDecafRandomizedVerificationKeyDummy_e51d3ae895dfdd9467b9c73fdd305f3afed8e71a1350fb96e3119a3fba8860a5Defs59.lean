import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs58

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3113416639471376593677559967646522266077949063451671476558344297657921341887 : F), runs := [⟨(3113416639471376593677559967646522266077949063451671476558344297657921341887 : F), 257, 5, 149⟩, ⟨(3113416639471376593677559967646522266077949063451671476558344297657921341887 : F), 1005, 8, 72⟩, ⟨(4460042464994316077988263974435506276193048183729383186484074176454003765194 : F), 256, 5, 149⟩, ⟨(4460042464994316077988263974435506276193048183729383186484074176454003765194 : F), 1004, 8, 72⟩], residual := [((8187685539756189711691518814581756746492861623604870456144022710139413250910 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1577 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1307 rho) = ((1 : F) * rho 1578)

def relationRow1578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1579) * ((1 : F) + (-1 : F) * rho 1575) = ((871002644962677752583000996699517989104902087973009164892814981805484131960 : F) * rho 1574 + (1 : F) * rho 1578)

def relationLc1308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 72⟩], residual := [((1 : F), 1577), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 223) * (relationLc1308 rho) = ((1 : F) * rho 1580)

def relationLc1309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 72⟩], residual := [((1 : F), 1579), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 223) * (relationLc1309 rho) = ((1 : F) * rho 1581)

def relationLc1310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 73⟩, ⟨(1 : F), 1005, 8, 73⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1581 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1310 rho) = ((1 : F) * rho 1582)

def relationLc1311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8000303670094469490476673488425897846331820804390470973550534731133844079073 : F), 256, 5, 149⟩, ⟨(8000303670094469490476673488425897846331820804390470973550534731133844079073 : F), 1004, 8, 73⟩], residual := [((6144560444343160063992881673823174172581281374192862824241915636711435846291 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1887744025524448028782079554652453304437947498971093309363675424119475519583 : F), runs := [⟨(1887744025524448028782079554652453304437947498971093309363675424119475519583 : F), 257, 5, 149⟩, ⟨(1887744025524448028782079554652453304437947498971093309363675424119475519583 : F), 1005, 8, 73⟩], residual := [((819468999576066053346443248822634724062702190613440189513332390125497148669 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1582 (rho : Nat -> F) : Prop :=
    (relationLc1311 rho) * (relationLc1312 rho) = ((1 : F) * rho 1583)

def relationLc1313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1887744025524448028782079554652453304437947498971093309363675424119475519583 : F), runs := [⟨(1887744025524448028782079554652453304437947498971093309363675424119475519583 : F), 257, 5, 149⟩, ⟨(1887744025524448028782079554652453304437947498971093309363675424119475519583 : F), 1005, 8, 73⟩, ⟨(4578478711514179693474281065300833356408036753542400846508946607768266391390 : F), 256, 5, 149⟩, ⟨(4578478711514179693474281065300833356408036753542400846508946607768266391390 : F), 1004, 8, 73⟩], residual := [((460915207708500139852863131169871953994873745442741291473145961732039897431 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1583 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1313 rho) = ((1 : F) * rho 1584)

def relationRow1584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1585) * ((1 : F) + (1 : F) * rho 1583) = ((1 : F) * rho 1584)

def relationLc1314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6556717723903922395466745384129093226937951836182970518571558031797933719458 : F), runs := [⟨(3865983037914190730774543873480713174967862581611662981426286848149142847651 : F), 256, 5, 149⟩, ⟨(3865983037914190730774543873480713174967862581611662981426286848149142847651 : F), 1004, 8, 73⟩, ⟨(6556717723903922395466745384129093226937951836182970518571558031797933719458 : F), 257, 5, 149⟩, ⟨(6556717723903922395466745384129093226937951836182970518571558031797933719458 : F), 1005, 8, 73⟩], residual := [((7983546541719870284395961807611674577381025589711322536462087494185369341610 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1585 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1314 rho) = ((1 : F) * rho 1586)

def relationRow1586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1587) * ((1 : F) + (-1 : F) * rho 1583) = ((6466222737038627722256360619953286660845984252513494155872622031887741910973 : F) * rho 1582 + (1 : F) * rho 1586)

def relationLc1315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 73⟩], residual := [((1 : F), 1585), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 224) * (relationLc1315 rho) = ((1 : F) * rho 1588)

def relationLc1316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 73⟩], residual := [((1 : F), 1587), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 224) * (relationLc1316 rho) = ((1 : F) * rho 1589)

def relationLc1317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 74⟩, ⟨(1 : F), 1005, 8, 74⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1589 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1317 rho) = ((1 : F) * rho 1590)

def relationLc1318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8430879408160093330160722625733046182942582392288172093642470246427173150924 : F), 256, 5, 149⟩, ⟨(8430879408160093330160722625733046182942582392288172093642470246427173150924 : F), 1004, 8, 74⟩], residual := [((137488558884457205232673999167580192163634451127116374232054679488272803951 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5488990425375250677312158644956143720864801916199029913146988551927765366148 : F), runs := [⟨(5488990425375250677312158644956143720864801916199029913146988551927765366148 : F), 257, 5, 149⟩, ⟨(5488990425375250677312158644956143720864801916199029913146988551927765366148 : F), 1005, 8, 74⟩], residual := [((4696590780626708679326410096169400110649612865425230674289355738983321282676 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1590 (rho : Nat -> F) : Prop :=
    (relationLc1318 rho) * (relationLc1319 rho) = ((1 : F) * rho 1591)

def relationLc1320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5488990425375250677312158644956143720864801916199029913146988551927765366148 : F), runs := [⟨(2378756493353947353174995670503160409749240985525734003918765609988819935894 : F), 256, 5, 149⟩, ⟨(2378756493353947353174995670503160409749240985525734003918765609988819935894 : F), 1004, 8, 74⟩, ⟨(5488990425375250677312158644956143720864801916199029913146988551927765366148 : F), 257, 5, 149⟩, ⟨(5488990425375250677312158644956143720864801916199029913146988551927765366148 : F), 1005, 8, 74⟩], residual := [((875524338087914269282414393648643232728828106502861215033072362763655557100 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1591 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1320 rho) = ((1 : F) * rho 1592)

def relationRow1592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1593) * ((1 : F) + (1 : F) * rho 1591) = ((1 : F) * rho 1592)

def relationLc1321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2955471324053119746936666293825402810511097418955033914788244903989643872893 : F), runs := [⟨(2955471324053119746936666293825402810511097418955033914788244903989643872893 : F), 257, 5, 149⟩, ⟨(2955471324053119746936666293825402810511097418955033914788244903989643872893 : F), 1005, 8, 74⟩, ⟨(6065705256074423071073829268278386121626658349628329824016467845928589303147 : F), 256, 5, 149⟩, ⟨(6065705256074423071073829268278386121626658349628329824016467845928589303147 : F), 1004, 8, 74⟩], residual := [((7568937411340456154966410545132903298647071228651202612902161093153753681941 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1593 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1321 rho) = ((1 : F) * rho 1594)

def relationRow1594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1595) * ((1 : F) + (-1 : F) * rho 1591) = ((7867746918729198030487154315459304130614042901724763917065754161916585302042 : F) * rho 1590 + (1 : F) * rho 1594)

def relationLc1322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 74⟩], residual := [((1 : F), 1593), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 225) * (relationLc1322 rho) = ((1 : F) * rho 1596)

def relationLc1323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 74⟩], residual := [((1 : F), 1595), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 225) * (relationLc1323 rho) = ((1 : F) * rho 1597)

def relationLc1324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 75⟩, ⟨(1 : F), 1005, 8, 75⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1597 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1324 rho) = ((1 : F) * rho 1598)

def relationLc1325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4646807500992826888153210383261166334613760351744050686719083718939098348084 : F), 256, 5, 149⟩, ⟨(4646807500992826888153210383261166334613760351744050686719083718939098348084 : F), 1004, 8, 75⟩], residual := [((5655851257221613673432360408661590662640487308967499114876056615059719009869 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1622593000433510709761396177601639448844449538627720169095349271552626081854 : F), runs := [⟨(1622593000433510709761396177601639448844449538627720169095349271552626081854 : F), 257, 5, 149⟩, ⟨(1622593000433510709761396177601639448844449538627720169095349271552626081854 : F), 1005, 8, 75⟩], residual := [((2996902736460755794649865793395753181717427225185005573185734567768188894816 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1598 (rho : Nat -> F) : Prop :=
    (relationLc1325 rho) * (relationLc1326 rho) = ((1 : F) * rho 1599)

def relationLc1327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1622593000433510709761396177601639448844449538627720169095349271552626081854 : F), runs := [⟨(1622593000433510709761396177601639448844449538627720169095349271552626081854 : F), 257, 5, 149⟩, ⟨(1622593000433510709761396177601639448844449538627720169095349271552626081854 : F), 1005, 8, 75⟩, ⟨(2953326188314250908604737618582116618162053445307658210190773125841682639780 : F), 256, 5, 149⟩, ⟨(2953326188314250908604737618582116618162053445307658210190773125841682639780 : F), 1004, 8, 75⟩], residual := [((5061672224158656816420493123825889868515856287301081906893473179844358288203 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1599 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1327 rho) = ((1 : F) * rho 1600)

def relationRow1600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1601) * ((1 : F) + (1 : F) * rho 1599) = ((1 : F) * rho 1600)

def relationLc1328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6821868748994859714487428761179907082531449796526343658839884184364783157187 : F), runs := [⟨(5491135561114119515644087320199429913213845889846405617744460330075726599261 : F), 256, 5, 149⟩, ⟨(5491135561114119515644087320199429913213845889846405617744460330075726599261 : F), 1004, 8, 75⟩, ⟨(6821868748994859714487428761179907082531449796526343658839884184364783157187 : F), 257, 5, 149⟩, ⟨(6821868748994859714487428761179907082531449796526343658839884184364783157187 : F), 1005, 8, 75⟩], residual := [((3382789525269713607828331814955656662860043047852981921041760276073050950838 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1601 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1328 rho) = ((1 : F) * rho 1602)

def relationRow1602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1603) * ((1 : F) + (-1 : F) * rho 1599) = ((4575919188747761618366133796183756067006502983935378379286122397394308721634 : F) * rho 1598 + (1 : F) * rho 1602)

def relationLc1329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 75⟩], residual := [((1 : F), 1601), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 226) * (relationLc1329 rho) = ((1 : F) * rho 1604)

def relationLc1330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 75⟩], residual := [((1 : F), 1603), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 226) * (relationLc1330 rho) = ((1 : F) * rho 1605)

def relationLc1331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 76⟩, ⟨(1 : F), 1005, 8, 76⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1605 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1331 rho) = ((1 : F) * rho 1606)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
