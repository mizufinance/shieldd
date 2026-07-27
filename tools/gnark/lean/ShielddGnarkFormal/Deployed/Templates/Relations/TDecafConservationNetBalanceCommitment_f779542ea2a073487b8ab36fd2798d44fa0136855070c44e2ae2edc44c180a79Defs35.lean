import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs34

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 119⟩], residual := [((1 : F), 1494), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 766) * (relationLc628 rho) = ((1 : F) * rho 1496)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 119⟩], residual := [((1 : F), 1495), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 766) * (relationLc629 rho) = ((1 : F) * rho 1497)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70047359452739967761354735869571617112383791744502514768316737593872201940 : F), 901, 5, 120⟩], residual := [((3077165500729576496814828563217645616841174092814790761567947528930916848646 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 902, 5, 120⟩], residual := [((4879819472398292029555486290968352115128592223884040006696851717824256684665 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1498 (rho : Nat -> F) : Prop :=
    (relationLc630 rho) * (relationLc631 rho) = ((1 : F) * rho 1498)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 901, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 902, 5, 120⟩], residual := [((4908790602154999504146450567019670589451862719562409893833866044897446029001 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1499) * ((1 : F) + (1 : F) * rho 1498) = (relationLc632 rho)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 902, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 901, 5, 120⟩], residual := [((8355312983053627186444906230850625374960283996680531035605567894746006285696 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1500) * ((1 : F) + (-1 : F) * rho 1498) = (relationLc633 rho)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 120⟩], residual := [((1 : F), 1499), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 767) * (relationLc634 rho) = ((1 : F) * rho 1501)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 120⟩], residual := [((1 : F), 1500), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 767) * (relationLc635 rho) = ((1 : F) * rho 1502)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3520793187494300905373526405640131893416494491680411921070086080219345992017 : F), 901, 5, 121⟩], residual := [((5152011298132880996436076092922552082401717392756500719460291472678806437949 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 902, 5, 121⟩], residual := [((539781168514739126870106588392456494240219636219952006953917114176295608051 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1503 (rho : Nat -> F) : Prop :=
    (relationLc636 rho) * (relationLc637 rho) = ((1 : F) * rho 1503)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 902, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 901, 5, 121⟩], residual := [((2322063242557772837973362981009724846629775940055071225462425556047221954197 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1504) * ((1 : F) + (1 : F) * rho 1503) = (relationLc638 rho)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 901, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 902, 5, 121⟩], residual := [((4015794339037585840721867598248040916861597485086724664305205662222134542720 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1505) * ((1 : F) + (-1 : F) * rho 1503) = (relationLc639 rho)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 121⟩], residual := [((1 : F), 1504), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 768) * (relationLc640 rho) = ((1 : F) * rho 1506)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 121⟩], residual := [((1 : F), 1505), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 768) * (relationLc641 rho) = ((1 : F) * rho 1507)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(584000619229443011155856511989394363177085940390278354237920581948371080965 : F), 901, 5, 122⟩], residual := [((4877678121225869352483409764604901718546586513080354452749910463330369344005 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 902, 5, 122⟩], residual := [((4459053408661294276679446192149382492486612154675915829289951080942786054053 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1508 (rho : Nat -> F) : Prop :=
    (relationLc642 rho) * (relationLc643 rho) = ((1 : F) * rho 1508)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 901, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 902, 5, 122⟩], residual := [((5246134318860101942540552851388779869856745984431418076924029370110651782459 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1509) * ((1 : F) + (1 : F) * rho 1508) = (relationLc644 rho)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 902, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 901, 5, 122⟩], residual := [((6741260058948136122266312561091365286015329239376264144276368139403518045242 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1510) * ((1 : F) + (-1 : F) * rho 1508) = (relationLc645 rho)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 122⟩], residual := [((1 : F), 1509), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 769) * (relationLc646 rho) = ((1 : F) * rho 1511)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 122⟩], residual := [((1 : F), 1510), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 769) * (relationLc647 rho) = ((1 : F) * rho 1512)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7804030322780332712078433031660827628862715380821800207610391743142447473338 : F), 901, 5, 123⟩], residual := [((4098739390515418578419774954786406485797572541330885154731510725829474736323 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 902, 5, 123⟩], residual := [((7968159218604720847947050341953899688530729945386426334229130940124629767290 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1513 (rho : Nat -> F) : Prop :=
    (relationLc648 rho) * (relationLc649 rho) = ((1 : F) * rho 1513)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 902, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 901, 5, 123⟩], residual := [((1157482441389751200374734353587185855204920906250669080497441955899241868976 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1514) * ((1 : F) + (1 : F) * rho 1513) = (relationLc650 rho)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (547657752883585754862826645512764780287045046585853772477650087933478069873 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 901, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 902, 5, 123⟩], residual := [((2291813028408963541153423883294060471531842660949104227303467086048564870778 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1515) * ((1 : F) + (-1 : F) * rho 1513) = (relationLc651 rho)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 123⟩], residual := [((1 : F), 1514), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 770) * (relationLc652 rho) = ((1 : F) * rho 1516)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 123⟩], residual := [((1 : F), 1515), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 770) * (relationLc653 rho) = ((1 : F) * rho 1517)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4000827609080571616136050635188459827510082237773997566076641022494907100485 : F), 901, 5, 124⟩], residual := [((5066737969290659813119533512863456624700627710103481122855961796709181759545 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 902, 5, 124⟩], residual := [((4539751221873483142870141935977575289458023702981157688292816267019637935817 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1518 (rho : Nat -> F) : Prop :=
    (relationLc654 rho) * (relationLc655 rho) = ((1 : F) * rho 1518)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 901, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 902, 5, 124⟩], residual := [((1366020070141825366592900758571758208021969079669369198583591095180688014006 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1519) * ((1 : F) + (1 : F) * rho 1518) = (relationLc656 rho)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 902, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 901, 5, 124⟩], residual := [((5115891628300709066674560329518339725692369893455200516464249654126886714506 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1520) * ((1 : F) + (-1 : F) * rho 1518) = (relationLc657 rho)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 124⟩], residual := [((1 : F), 1519), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 771) * (relationLc658 rho) = ((1 : F) * rho 1521)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
