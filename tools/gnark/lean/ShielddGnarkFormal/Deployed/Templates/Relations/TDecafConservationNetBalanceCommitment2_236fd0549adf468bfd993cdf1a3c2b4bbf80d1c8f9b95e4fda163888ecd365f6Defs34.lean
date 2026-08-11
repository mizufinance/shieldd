import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs33

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 120⟩], residual := [((1 : F), 1370), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 638) * (relationLc633 rho) = ((1 : F) * rho 1372)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 120⟩], residual := [((1 : F), 1371), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 638) * (relationLc634 rho) = ((1 : F) * rho 1373)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3520793187494300905373526405640131893416494491680411921070086080219345992017 : F), 772, 5, 121⟩], residual := [((5152011298132880996436076092922552082401717392756500719460291472678806437949 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 773, 5, 121⟩], residual := [((539781168514739126870106588392456494240219636219952006953917114176295608051 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1374 (rho : Nat -> F) : Prop :=
    (relationLc635 rho) * (relationLc636 rho) = ((1 : F) * rho 1374)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 773, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 772, 5, 121⟩], residual := [((2322063242557772837973362981009724846629775940055071225462425556047221954197 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1375) * ((1 : F) + (1 : F) * rho 1374) = (relationLc637 rho)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 772, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 773, 5, 121⟩], residual := [((4015794339037585840721867598248040916861597485086724664305205662222134542720 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1376) * ((1 : F) + (-1 : F) * rho 1374) = (relationLc638 rho)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 121⟩], residual := [((1 : F), 1375), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 639) * (relationLc639 rho) = ((1 : F) * rho 1377)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 121⟩], residual := [((1 : F), 1376), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 639) * (relationLc640 rho) = ((1 : F) * rho 1378)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(584000619229443011155856511989394363177085940390278354237920581948371080965 : F), 772, 5, 122⟩], residual := [((4877678121225869352483409764604901718546586513080354452749910463330369344005 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 773, 5, 122⟩], residual := [((4459053408661294276679446192149382492486612154675915829289951080942786054053 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1379 (rho : Nat -> F) : Prop :=
    (relationLc641 rho) * (relationLc642 rho) = ((1 : F) * rho 1379)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 772, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 773, 5, 122⟩], residual := [((5246134318860101942540552851388779869856745984431418076924029370110651782459 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1380) * ((1 : F) + (1 : F) * rho 1379) = (relationLc643 rho)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 773, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 772, 5, 122⟩], residual := [((6741260058948136122266312561091365286015329239376264144276368139403518045242 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1381) * ((1 : F) + (-1 : F) * rho 1379) = (relationLc644 rho)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 122⟩], residual := [((1 : F), 1380), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 640) * (relationLc645 rho) = ((1 : F) * rho 1382)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 122⟩], residual := [((1 : F), 1381), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 640) * (relationLc646 rho) = ((1 : F) * rho 1383)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7804030322780332712078433031660827628862715380821800207610391743142447473338 : F), 772, 5, 123⟩], residual := [((4098739390515418578419774954786406485797572541330885154731510725829474736323 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 773, 5, 123⟩], residual := [((7968159218604720847947050341953899688530729945386426334229130940124629767290 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1384 (rho : Nat -> F) : Prop :=
    (relationLc647 rho) * (relationLc648 rho) = ((1 : F) * rho 1384)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 773, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 772, 5, 123⟩], residual := [((1157482441389751200374734353587185855204920906250669080497441955899241868976 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1385) * ((1 : F) + (1 : F) * rho 1384) = (relationLc649 rho)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (547657752883585754862826645512764780287045046585853772477650087933478069873 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 772, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 773, 5, 123⟩], residual := [((2291813028408963541153423883294060471531842660949104227303467086048564870778 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1386) * ((1 : F) + (-1 : F) * rho 1384) = (relationLc650 rho)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 123⟩], residual := [((1 : F), 1385), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 641) * (relationLc651 rho) = ((1 : F) * rho 1387)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 123⟩], residual := [((1 : F), 1386), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 641) * (relationLc652 rho) = ((1 : F) * rho 1388)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4000827609080571616136050635188459827510082237773997566076641022494907100485 : F), 772, 5, 124⟩], residual := [((5066737969290659813119533512863456624700627710103481122855961796709181759545 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 773, 5, 124⟩], residual := [((4539751221873483142870141935977575289458023702981157688292816267019637935817 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1389 (rho : Nat -> F) : Prop :=
    (relationLc653 rho) * (relationLc654 rho) = ((1 : F) * rho 1389)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 772, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 773, 5, 124⟩], residual := [((1366020070141825366592900758571758208021969079669369198583591095180688014006 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1390) * ((1 : F) + (1 : F) * rho 1389) = (relationLc655 rho)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 773, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 772, 5, 124⟩], residual := [((5115891628300709066674560329518339725692369893455200516464249654126886714506 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1391) * ((1 : F) + (-1 : F) * rho 1389) = (relationLc656 rho)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 124⟩], residual := [((1 : F), 1390), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 642) * (relationLc657 rho) = ((1 : F) * rho 1392)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 124⟩], residual := [((1 : F), 1391), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 642) * (relationLc658 rho) = ((1 : F) * rho 1393)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3206715103925797000728264364812449490358849405873516358360482948930504814837 : F), 772, 5, 125⟩], residual := [((6859227754302574298256908027992222014651838529698031298197025811544259824003 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 773, 5, 125⟩], residual := [((3241815838170848415373772779206630000632126979651664629597711437726457647190 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1394 (rho : Nat -> F) : Prop :=
    (relationLc659 rho) * (relationLc660 rho) = ((1 : F) * rho 1394)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 772, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 773, 5, 125⟩], residual := [((462808816347966588882768507091553344986854553319789264653202909813091896438 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1395) * ((1 : F) + (1 : F) * rho 1394) = (relationLc661 rho)

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 773, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 772, 5, 125⟩], residual := [((7065647221781974488727761436401823925252357367033803456277525288342156410852 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1396) * ((1 : F) + (-1 : F) * rho 1394) = (relationLc662 rho)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 125⟩], residual := [((1 : F), 1395), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 643) * (relationLc663 rho) = ((1 : F) * rho 1397)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
