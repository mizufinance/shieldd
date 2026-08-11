import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs32

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 772, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 773, 5, 115⟩], residual := [((5929633731751807650188902444688267458901795220973861143264780965236086224933 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1346) * ((1 : F) + (-1 : F) * rho 1344) = (relationLc602 rho)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 115⟩], residual := [((1 : F), 1345), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 633) * (relationLc603 rho) = ((1 : F) * rho 1347)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 115⟩], residual := [((1 : F), 1346), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 633) * (relationLc604 rho) = ((1 : F) * rho 1348)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3341344058927025398794129116517091015478478137346240165869616329642569556725 : F), 772, 5, 116⟩], residual := [((712267692233144119413558795824260412907497088011210850217416112241304825970 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 773, 5, 116⟩], residual := [((7262080225988288534438780071020854769618142351743369218531179308853029943442 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1349 (rho : Nat -> F) : Prop :=
    (relationLc605 rho) * (relationLc606 rho) = ((1 : F) * rho 1349)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 772, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 773, 5, 116⟩], residual := [((3200812217306663548568495702515802518815006225662322038412120455713091406699 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1350) * ((1 : F) + (1 : F) * rho 1349) = (relationLc607 rho)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 773, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 772, 5, 116⟩], residual := [((2482975426743706311310743796806971019327266080069895865587165427554311218897 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1351) * ((1 : F) + (-1 : F) * rho 1349) = (relationLc608 rho)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 116⟩], residual := [((1 : F), 1350), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 634) * (relationLc609 rho) = ((1 : F) * rho 1352)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 116⟩], residual := [((1 : F), 1351), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 634) * (relationLc610 rho) = ((1 : F) * rho 1353)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3254294292390636161585554539710362651655557809664815923608740620347886465374 : F), 772, 5, 117⟩], residual := [((4462302576883527183586617643313860966620220803168776674990045118344455615360 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 773, 5, 117⟩], residual := [((4763684142039032428733214072742859283160618192166842526573614565231113428874 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1354 (rho : Nat -> F) : Prop :=
    (relationLc611 rho) * (relationLc612 rho) = ((1 : F) * rho 1354)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 772, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 773, 5, 117⟩], residual := [((5914010551040006864863586024905232499103059386324899133642919760696323509265 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1355) * ((1 : F) + (1 : F) * rho 1354) = (relationLc613 rho)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 773, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 772, 5, 117⟩], residual := [((6955864314163122699408888805324588835180412702138965324463662323691083799113 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1356) * ((1 : F) + (-1 : F) * rho 1354) = (relationLc614 rho)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 117⟩], residual := [((1 : F), 1355), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 635) * (relationLc615 rho) = ((1 : F) * rho 1357)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 117⟩], residual := [((1 : F), 1356), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 635) * (relationLc616 rho) = ((1 : F) * rho 1358)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5108897277517643150520320477788096635593069518661161179374187751513476515145 : F), 772, 5, 118⟩], residual := [((3822492138966196890033413003261285567514855267556265951405364154358466941257 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 773, 5, 118⟩], residual := [((3275679305930702751735804242987067220385600319545397350021940117281641004625 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1359 (rho : Nat -> F) : Prop :=
    (relationLc617 rho) * (relationLc618 rho) = ((1 : F) * rho 1359)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 773, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 772, 5, 118⟩], residual := [((1051922582856880619722553253822270876986824743406675555554862835998655474226 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1360) * ((1 : F) + (1 : F) * rho 1359) = (relationLc619 rho)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 772, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 773, 5, 118⟩], residual := [((4559241240839474612123523986721941831442786695283273688819404039887878552431 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1361) * ((1 : F) + (-1 : F) * rho 1359) = (relationLc620 rho)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 118⟩], residual := [((1 : F), 1360), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 636) * (relationLc621 rho) = ((1 : F) * rho 1362)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 118⟩], residual := [((1 : F), 1361), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 636) * (relationLc622 rho) = ((1 : F) * rho 1363)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1657923050383269287255308165580316013777593065451465396443861382861787777653 : F), 772, 5, 119⟩], residual := [((2748729267974726317939641161442750407192739288283321786370206597811241132003 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 773, 5, 119⟩], residual := [((6544738621512266166926823694276508401323064657427567414795918241157508580072 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1364 (rho : Nat -> F) : Prop :=
    (relationLc623 rho) * (relationLc624 rho) = ((1 : F) * rho 1364)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 772, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 773, 5, 119⟩], residual := [((3803504511309930298052226665549843589382460715521624583475794502773805428014 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1365) * ((1 : F) + (1 : F) * rho 1364) = (relationLc625 rho)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 773, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 772, 5, 119⟩], residual := [((8062933033294270950607806452420811642456240708879379909656595911026224038356 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1366) * ((1 : F) + (-1 : F) * rho 1364) = (relationLc626 rho)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 119⟩], residual := [((1 : F), 1365), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 637) * (relationLc627 rho) = ((1 : F) * rho 1367)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 119⟩], residual := [((1 : F), 1366), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 637) * (relationLc628 rho) = ((1 : F) * rho 1368)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70047359452739967761354735869571617112383791744502514768316737593872201940 : F), 772, 5, 120⟩], residual := [((3077165500729576496814828563217645616841174092814790761567947528930916848646 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 773, 5, 120⟩], residual := [((4879819472398292029555486290968352115128592223884040006696851717824256684665 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1369 (rho : Nat -> F) : Prop :=
    (relationLc629 rho) * (relationLc630 rho) = ((1 : F) * rho 1369)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 772, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 773, 5, 120⟩], residual := [((4908790602154999504146450567019670589451862719562409893833866044897446029001 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1370) * ((1 : F) + (1 : F) * rho 1369) = (relationLc631 rho)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 773, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 772, 5, 120⟩], residual := [((8355312983053627186444906230850625374960283996680531035605567894746006285696 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1371) * ((1 : F) + (-1 : F) * rho 1369) = (relationLc632 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
