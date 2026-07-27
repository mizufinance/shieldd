import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs33

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 902, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 901, 5, 114⟩], residual := [((3363026558279651923245842165054909851794577971967155871755746820639602436007 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1470) * ((1 : F) + (-1 : F) * rho 1468) = (relationLc597 rho)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 114⟩], residual := [((1 : F), 1469), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 761) * (relationLc598 rho) = ((1 : F) * rho 1471)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 114⟩], residual := [((1 : F), 1470), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 761) * (relationLc599 rho) = ((1 : F) * rho 1472)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7092102170889042601208202038466364950277576212870097414401334358924586649189 : F), 901, 5, 115⟩], residual := [((4653472090370567983434626876681111717002852161687776050661280676529317148432 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 902, 5, 115⟩], residual := [((2257434816805262428550449631546742040564192443442506165265588191162612118189 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1473 (rho : Nat -> F) : Prop :=
    (relationLc600 rho) * (relationLc601 rho) = ((1 : F) * rho 1473)

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 902, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 901, 5, 115⟩], residual := [((2370785343805429719167261158997236238833652498248150100773059432113696423621 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1474) * ((1 : F) + (1 : F) * rho 1473) = (relationLc602 rho)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 901, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 902, 5, 115⟩], residual := [((5929633731751807650188902444688267458901795220973861143264780965236086224933 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1475) * ((1 : F) + (-1 : F) * rho 1473) = (relationLc603 rho)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 115⟩], residual := [((1 : F), 1474), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 762) * (relationLc604 rho) = ((1 : F) * rho 1476)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 115⟩], residual := [((1 : F), 1475), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 762) * (relationLc605 rho) = ((1 : F) * rho 1477)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3341344058927025398794129116517091015478478137346240165869616329642569556725 : F), 901, 5, 116⟩], residual := [((712267692233144119413558795824260412907497088011210850217416112241304825970 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 902, 5, 116⟩], residual := [((7262080225988288534438780071020854769618142351743369218531179308853029943442 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1478 (rho : Nat -> F) : Prop :=
    (relationLc606 rho) * (relationLc607 rho) = ((1 : F) * rho 1478)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 901, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 902, 5, 116⟩], residual := [((3200812217306663548568495702515802518815006225662322038412120455713091406699 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1479) * ((1 : F) + (1 : F) * rho 1478) = (relationLc608 rho)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 902, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 901, 5, 116⟩], residual := [((2482975426743706311310743796806971019327266080069895865587165427554311218897 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1480) * ((1 : F) + (-1 : F) * rho 1478) = (relationLc609 rho)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 116⟩], residual := [((1 : F), 1479), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 763) * (relationLc610 rho) = ((1 : F) * rho 1481)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 116⟩], residual := [((1 : F), 1480), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 763) * (relationLc611 rho) = ((1 : F) * rho 1482)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3254294292390636161585554539710362651655557809664815923608740620347886465374 : F), 901, 5, 117⟩], residual := [((4462302576883527183586617643313860966620220803168776674990045118344455615360 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 902, 5, 117⟩], residual := [((4763684142039032428733214072742859283160618192166842526573614565231113428874 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1483 (rho : Nat -> F) : Prop :=
    (relationLc612 rho) * (relationLc613 rho) = ((1 : F) * rho 1483)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 901, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 902, 5, 117⟩], residual := [((5914010551040006864863586024905232499103059386324899133642919760696323509265 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1484) * ((1 : F) + (1 : F) * rho 1483) = (relationLc614 rho)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 902, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 901, 5, 117⟩], residual := [((6955864314163122699408888805324588835180412702138965324463662323691083799113 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1485) * ((1 : F) + (-1 : F) * rho 1483) = (relationLc615 rho)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 117⟩], residual := [((1 : F), 1484), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 764) * (relationLc616 rho) = ((1 : F) * rho 1486)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 117⟩], residual := [((1 : F), 1485), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 764) * (relationLc617 rho) = ((1 : F) * rho 1487)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5108897277517643150520320477788096635593069518661161179374187751513476515145 : F), 901, 5, 118⟩], residual := [((3822492138966196890033413003261285567514855267556265951405364154358466941257 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 902, 5, 118⟩], residual := [((3275679305930702751735804242987067220385600319545397350021940117281641004625 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1488 (rho : Nat -> F) : Prop :=
    (relationLc618 rho) * (relationLc619 rho) = ((1 : F) * rho 1488)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 902, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 901, 5, 118⟩], residual := [((1051922582856880619722553253822270876986824743406675555554862835998655474226 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1489) * ((1 : F) + (1 : F) * rho 1488) = (relationLc620 rho)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 901, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 902, 5, 118⟩], residual := [((4559241240839474612123523986721941831442786695283273688819404039887878552431 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1490) * ((1 : F) + (-1 : F) * rho 1488) = (relationLc621 rho)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 118⟩], residual := [((1 : F), 1489), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 765) * (relationLc622 rho) = ((1 : F) * rho 1491)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 118⟩], residual := [((1 : F), 1490), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 765) * (relationLc623 rho) = ((1 : F) * rho 1492)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1657923050383269287255308165580316013777593065451465396443861382861787777653 : F), 901, 5, 119⟩], residual := [((2748729267974726317939641161442750407192739288283321786370206597811241132003 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 902, 5, 119⟩], residual := [((6544738621512266166926823694276508401323064657427567414795918241157508580072 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1493 (rho : Nat -> F) : Prop :=
    (relationLc624 rho) * (relationLc625 rho) = ((1 : F) * rho 1493)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 901, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 902, 5, 119⟩], residual := [((3803504511309930298052226665549843589382460715521624583475794502773805428014 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1494) * ((1 : F) + (1 : F) * rho 1493) = (relationLc626 rho)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 902, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 901, 5, 119⟩], residual := [((8062933033294270950607806452420811642456240708879379909656595911026224038356 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1495) * ((1 : F) + (-1 : F) * rho 1493) = (relationLc627 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
