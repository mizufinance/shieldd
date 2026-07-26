import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs39

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 1418, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 1417, 5, 116⟩], residual := [((2482975426743706311310743796806971019327266080069895865587165427554311218897 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1996) * ((1 : F) + (-1 : F) * rho 1994) = (relationLc613 rho)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 116⟩], residual := [((1 : F), 1995), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1279) * (relationLc614 rho) = ((1 : F) * rho 1997)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 116⟩], residual := [((1 : F), 1996), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1279) * (relationLc615 rho) = ((1 : F) * rho 1998)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3254294292390636161585554539710362651655557809664815923608740620347886465374 : F), 1417, 5, 117⟩], residual := [((4462302576883527183586617643313860966620220803168776674990045118344455615360 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 1418, 5, 117⟩], residual := [((4763684142039032428733214072742859283160618192166842526573614565231113428874 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1999 (rho : Nat -> F) : Prop :=
    (relationLc616 rho) * (relationLc617 rho) = ((1 : F) * rho 1999)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 1417, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 1418, 5, 117⟩], residual := [((5914010551040006864863586024905232499103059386324899133642919760696323509265 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2000) * ((1 : F) + (1 : F) * rho 1999) = (relationLc618 rho)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 1418, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 1417, 5, 117⟩], residual := [((6955864314163122699408888805324588835180412702138965324463662323691083799113 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2001) * ((1 : F) + (-1 : F) * rho 1999) = (relationLc619 rho)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 117⟩], residual := [((1 : F), 2000), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1280) * (relationLc620 rho) = ((1 : F) * rho 2002)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 117⟩], residual := [((1 : F), 2001), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1280) * (relationLc621 rho) = ((1 : F) * rho 2003)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5108897277517643150520320477788096635593069518661161179374187751513476515145 : F), 1417, 5, 118⟩], residual := [((3822492138966196890033413003261285567514855267556265951405364154358466941257 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 1418, 5, 118⟩], residual := [((3275679305930702751735804242987067220385600319545397350021940117281641004625 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2004 (rho : Nat -> F) : Prop :=
    (relationLc622 rho) * (relationLc623 rho) = ((1 : F) * rho 2004)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 1418, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 1417, 5, 118⟩], residual := [((1051922582856880619722553253822270876986824743406675555554862835998655474226 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2005) * ((1 : F) + (1 : F) * rho 2004) = (relationLc624 rho)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 1417, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 1418, 5, 118⟩], residual := [((4559241240839474612123523986721941831442786695283273688819404039887878552431 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2006) * ((1 : F) + (-1 : F) * rho 2004) = (relationLc625 rho)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 118⟩], residual := [((1 : F), 2005), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1281) * (relationLc626 rho) = ((1 : F) * rho 2007)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 118⟩], residual := [((1 : F), 2006), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1281) * (relationLc627 rho) = ((1 : F) * rho 2008)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1657923050383269287255308165580316013777593065451465396443861382861787777653 : F), 1417, 5, 119⟩], residual := [((2748729267974726317939641161442750407192739288283321786370206597811241132003 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 1418, 5, 119⟩], residual := [((6544738621512266166926823694276508401323064657427567414795918241157508580072 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2009 (rho : Nat -> F) : Prop :=
    (relationLc628 rho) * (relationLc629 rho) = ((1 : F) * rho 2009)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 1417, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 1418, 5, 119⟩], residual := [((3803504511309930298052226665549843589382460715521624583475794502773805428014 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2010) * ((1 : F) + (1 : F) * rho 2009) = (relationLc630 rho)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 1418, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 1417, 5, 119⟩], residual := [((8062933033294270950607806452420811642456240708879379909656595911026224038356 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2011) * ((1 : F) + (-1 : F) * rho 2009) = (relationLc631 rho)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 119⟩], residual := [((1 : F), 2010), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1282) * (relationLc632 rho) = ((1 : F) * rho 2012)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 119⟩], residual := [((1 : F), 2011), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1282) * (relationLc633 rho) = ((1 : F) * rho 2013)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70047359452739967761354735869571617112383791744502514768316737593872201940 : F), 1417, 5, 120⟩], residual := [((3077165500729576496814828563217645616841174092814790761567947528930916848646 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 1418, 5, 120⟩], residual := [((4879819472398292029555486290968352115128592223884040006696851717824256684665 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2014 (rho : Nat -> F) : Prop :=
    (relationLc634 rho) * (relationLc635 rho) = ((1 : F) * rho 2014)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 1417, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 1418, 5, 120⟩], residual := [((4908790602154999504146450567019670589451862719562409893833866044897446029001 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2015) * ((1 : F) + (1 : F) * rho 2014) = (relationLc636 rho)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 1418, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 1417, 5, 120⟩], residual := [((8355312983053627186444906230850625374960283996680531035605567894746006285696 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2016) * ((1 : F) + (-1 : F) * rho 2014) = (relationLc637 rho)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 120⟩], residual := [((1 : F), 2015), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1283) * (relationLc638 rho) = ((1 : F) * rho 2017)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 120⟩], residual := [((1 : F), 2016), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1283) * (relationLc639 rho) = ((1 : F) * rho 2018)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3520793187494300905373526405640131893416494491680411921070086080219345992017 : F), 1417, 5, 121⟩], residual := [((5152011298132880996436076092922552082401717392756500719460291472678806437949 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 1418, 5, 121⟩], residual := [((539781168514739126870106588392456494240219636219952006953917114176295608051 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2019 (rho : Nat -> F) : Prop :=
    (relationLc640 rho) * (relationLc641 rho) = ((1 : F) * rho 2019)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 1418, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 1417, 5, 121⟩], residual := [((2322063242557772837973362981009724846629775940055071225462425556047221954197 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2020) * ((1 : F) + (1 : F) * rho 2019) = (relationLc642 rho)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 1417, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 1418, 5, 121⟩], residual := [((4015794339037585840721867598248040916861597485086724664305205662222134542720 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
