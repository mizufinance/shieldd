import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs31

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow1790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1790) * ((1 : F) + (1 : F) * rho 1789) = (relationLc366 rho)

def relationLc367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), runs := [⟨(7926309115149612861327937217162979125932944749642925108110701868842746719457 : F), 1418, 5, 75⟩, ⟨(8432212819715092179264232316859245245900141338954067432723633359164625829332 : F), 1417, 5, 75⟩], residual := [((7509465159642451727068339216022475562219650711777304977640349704022894534018 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1791) * ((1 : F) + (-1 : F) * rho 1789) = (relationLc367 rho)

def relationLc368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 75⟩], residual := [((1 : F), 1790), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1238) * (relationLc368 rho) = ((1 : F) * rho 1792)

def relationLc369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 75⟩], residual := [((1 : F), 1791), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1238) * (relationLc369 rho) = ((1 : F) * rho 1793)

def relationLc370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(683703965850291500163691125338411537751969702380929793141907878592369322399 : F), 1417, 5, 76⟩], residual := [((4490044576366345660031580230148286205133388114810353518707097344727418131775 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 1418, 5, 76⟩], residual := [((400136255392605510129298698647485477899447337320648663278145297180823294398 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1794 (rho : Nat -> F) : Prop :=
    (relationLc370 rho) * (relationLc371 rho) = ((1 : F) * rho 1794)

def relationLc372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 1418, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 1417, 5, 76⟩], residual := [((1827201974288611886172639413314396109215846559115876371244274446423658822383 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1795) * ((1 : F) + (1 : F) * rho 1794) = (relationLc372 rho)

def relationLc373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), runs := [⟨(3779361256357846459113116397775981011821592665424214443187777918946148614405 : F), 1417, 5, 76⟩, ⟨(7636859716452882585418058068148468565129662016995459552370804273235668457591 : F), 1418, 5, 76⟩], residual := [((5153487541653614618113919721888896603271473400132102875368154106802111511590 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1796) * ((1 : F) + (-1 : F) * rho 1794) = (relationLc373 rho)

def relationLc374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 76⟩], residual := [((1 : F), 1795), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1239) * (relationLc374 rho) = ((1 : F) * rho 1797)

def relationLc375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 76⟩], residual := [((1 : F), 1796), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1239) * (relationLc375 rho) = ((1 : F) * rho 1798)

def relationLc376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5284444695048140169306260292657983424515981966488053120461872876652682418576 : F), 1417, 5, 77⟩], residual := [((3612947639137712289195135641997932293831331876359102224021392599134921243392 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 1418, 5, 77⟩], residual := [((3858462969867999679055465004831174233644415682387226173767459134862531439770 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1799 (rho : Nat -> F) : Prop :=
    (relationLc376 rho) * (relationLc377 rho) = ((1 : F) * rho 1799)

def relationLc378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (232788961547844385014751212837818799855299041912167626019091979855582528600 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 1418, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 1417, 5, 77⟩], residual := [((1589912823262008592593746794090155414980596109971224609365145936052269479870 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1800) * ((1 : F) + (1 : F) * rho 1799) = (relationLc378 rho)

def relationLc379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), runs := [⟨(232788961547844385014751212837818799855299041912167626019091979855582528600 : F), 1417, 5, 77⟩, ⟨(7697082966193760979187792557682309031546629212726125710501873411789897490069 : F), 1418, 5, 77⟩], residual := [((7008375938387093343000944910135867555133633830632273472428064652442210899549 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1801) * ((1 : F) + (-1 : F) * rho 1799) = (relationLc379 rho)

def relationLc380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 77⟩], residual := [((1 : F), 1800), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1240) * (relationLc380 rho) = ((1 : F) * rho 1802)

def relationLc381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 77⟩], residual := [((1 : F), 1801), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1240) * (relationLc381 rho) = ((1 : F) * rho 1803)

def relationLc382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4292408175370504894505031822460110685871086246994283398137780348691360425005 : F), 1417, 5, 78⟩], residual := [((3059166678762927238025332987199288233364509191416944090820838708827478078063 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 1418, 5, 78⟩], residual := [((5093929879501997410860379206698084391759764221257360367512026095840836011751 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1804 (rho : Nat -> F) : Prop :=
    (relationLc382 rho) * (relationLc383 rho) = ((1 : F) * rho 1804)

def relationLc384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 1418, 5, 78⟩, ⟨(3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), 1417, 5, 78⟩], residual := [((2008982310918694524024008005298670925223640965110829575737886110198998103170 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1805) * ((1 : F) + (1 : F) * rho 1804) = (relationLc384 rho)

def relationLc385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), runs := [⟨(2793124955965777929399549504068267812812926456424712595749247782879681825404 : F), 1417, 5, 78⟩, ⟨(3238324764651911107638081532913436277397935291742932868635265846508126865023 : F), 1418, 5, 78⟩], residual := [((467410820946480222873688092812096531476934702651941383175111803680609907630 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1806) * ((1 : F) + (-1 : F) * rho 1804) = (relationLc385 rho)

def relationLc386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 78⟩], residual := [((1 : F), 1805), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1241) * (relationLc386 rho) = ((1 : F) * rho 1807)

def relationLc387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 78⟩], residual := [((1 : F), 1806), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1241) * (relationLc387 rho) = ((1 : F) * rho 1808)

def relationLc388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6935563805973142111680237332913758558188227638958068444512867777283744905304 : F), 1417, 5, 79⟩], residual := [((6883481118440751548096691480027843104425543468314445231418185714577611373644 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), runs := [⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 1418, 5, 79⟩], residual := [((1853501297148141008849076045603364681427994866562041853979622286967772448672 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1809 (rho : Nat -> F) : Prop :=
    (relationLc388 rho) * (relationLc389 rho) = ((1 : F) * rho 1809)

def relationLc390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), runs := [⟨(2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), 1417, 5, 79⟩, ⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 1418, 5, 79⟩], residual := [((729292557028580423140972848367702513589510295691875260988400540188514483773 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1810) * ((1 : F) + (1 : F) * rho 1809) = (relationLc390 rho)

def relationLc391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), runs := [⟨(2629834362220669096625480198539413273105439789037993401755588320536129900564 : F), 1418, 5, 79⟩, ⟨(4918991385527041439938962685997492343636927307998761444292284049079478353929 : F), 1417, 5, 79⟩], residual := [((8074422292240667367449117422438795867006141960671317101535498003783169667640 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1811) * ((1 : F) + (-1 : F) * rho 1809) = (relationLc391 rho)

def relationLc392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 79⟩], residual := [((1 : F), 1810), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1242) * (relationLc392 rho) = ((1 : F) * rho 1812)

def relationLc393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 79⟩], residual := [((1 : F), 1811), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1242) * (relationLc393 rho) = ((1 : F) * rho 1813)

def relationLc394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3795735311625167371394934382146652731519143535924637553903604266616605091184 : F), 1417, 5, 80⟩], residual := [((322246695431496198739229838579143448919593587742704999806205725085902815507 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), runs := [⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 1418, 5, 80⟩], residual := [((6148039518142771261227717371829780910508309280481905803564777491926853814140 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1814 (rho : Nat -> F) : Prop :=
    (relationLc394 rho) * (relationLc395 rho) = ((1 : F) * rho 1814)

def relationLc396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), runs := [⟨(266805561571440038952344688370206412847477517502668222842684800588801881099 : F), 1417, 5, 80⟩, ⟨(4380063569717008522721257544745564986384422596089363924139674612908231537406 : F), 1418, 5, 80⟩], residual := [((2097823421411133641718346929441207001036360077221231926809283591927105358478 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1815) * ((1 : F) + (1 : F) * rho 1814) = (relationLc396 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
