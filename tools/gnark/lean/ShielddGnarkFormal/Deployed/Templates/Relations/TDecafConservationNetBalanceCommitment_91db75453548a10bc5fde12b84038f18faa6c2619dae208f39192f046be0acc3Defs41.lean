import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs40

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2021) * ((1 : F) + (-1 : F) * rho 2019) = (relationLc643 rho)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 121⟩], residual := [((1 : F), 2020), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1284) * (relationLc644 rho) = ((1 : F) * rho 2022)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 121⟩], residual := [((1 : F), 2021), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1284) * (relationLc645 rho) = ((1 : F) * rho 2023)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(584000619229443011155856511989394363177085940390278354237920581948371080965 : F), 1417, 5, 122⟩], residual := [((4877678121225869352483409764604901718546586513080354452749910463330369344005 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 1418, 5, 122⟩], residual := [((4459053408661294276679446192149382492486612154675915829289951080942786054053 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2024 (rho : Nat -> F) : Prop :=
    (relationLc646 rho) * (relationLc647 rho) = ((1 : F) * rho 2024)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 1417, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 1418, 5, 122⟩], residual := [((5246134318860101942540552851388779869856745984431418076924029370110651782459 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2025) * ((1 : F) + (1 : F) * rho 2024) = (relationLc648 rho)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 1418, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 1417, 5, 122⟩], residual := [((6741260058948136122266312561091365286015329239376264144276368139403518045242 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2026) * ((1 : F) + (-1 : F) * rho 2024) = (relationLc649 rho)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 122⟩], residual := [((1 : F), 2025), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1285) * (relationLc650 rho) = ((1 : F) * rho 2027)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 122⟩], residual := [((1 : F), 2026), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1285) * (relationLc651 rho) = ((1 : F) * rho 2028)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7804030322780332712078433031660827628862715380821800207610391743142447473338 : F), 1417, 5, 123⟩], residual := [((4098739390515418578419774954786406485797572541330885154731510725829474736323 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 1418, 5, 123⟩], residual := [((7968159218604720847947050341953899688530729945386426334229130940124629767290 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2029 (rho : Nat -> F) : Prop :=
    (relationLc652 rho) * (relationLc653 rho) = ((1 : F) * rho 2029)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 1418, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 1417, 5, 123⟩], residual := [((1157482441389751200374734353587185855204920906250669080497441955899241868976 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2030) * ((1 : F) + (1 : F) * rho 2029) = (relationLc654 rho)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (547657752883585754862826645512764780287045046585853772477650087933478069873 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 1417, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 1418, 5, 123⟩], residual := [((2291813028408963541153423883294060471531842660949104227303467086048564870778 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * ((1 : F) + (-1 : F) * rho 2029) = (relationLc655 rho)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 123⟩], residual := [((1 : F), 2030), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1286) * (relationLc656 rho) = ((1 : F) * rho 2032)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 123⟩], residual := [((1 : F), 2031), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1286) * (relationLc657 rho) = ((1 : F) * rho 2033)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4000827609080571616136050635188459827510082237773997566076641022494907100485 : F), 1417, 5, 124⟩], residual := [((5066737969290659813119533512863456624700627710103481122855961796709181759545 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 1418, 5, 124⟩], residual := [((4539751221873483142870141935977575289458023702981157688292816267019637935817 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2034 (rho : Nat -> F) : Prop :=
    (relationLc658 rho) * (relationLc659 rho) = ((1 : F) * rho 2034)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 1417, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 1418, 5, 124⟩], residual := [((1366020070141825366592900758571758208021969079669369198583591095180688014006 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2035) * ((1 : F) + (1 : F) * rho 2034) = (relationLc660 rho)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 1418, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 1417, 5, 124⟩], residual := [((5115891628300709066674560329518339725692369893455200516464249654126886714506 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2036) * ((1 : F) + (-1 : F) * rho 2034) = (relationLc661 rho)

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 124⟩], residual := [((1 : F), 2035), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1287) * (relationLc662 rho) = ((1 : F) * rho 2037)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 124⟩], residual := [((1 : F), 2036), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1287) * (relationLc663 rho) = ((1 : F) * rho 2038)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3206715103925797000728264364812449490358849405873516358360482948930504814837 : F), 1417, 5, 125⟩], residual := [((6859227754302574298256908027992222014651838529698031298197025811544259824003 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 1418, 5, 125⟩], residual := [((3241815838170848415373772779206630000632126979651664629597711437726457647190 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2039 (rho : Nat -> F) : Prop :=
    (relationLc664 rho) * (relationLc665 rho) = ((1 : F) * rho 2039)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 1417, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 1418, 5, 125⟩], residual := [((462808816347966588882768507091553344986854553319789264653202909813091896438 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2040) * ((1 : F) + (1 : F) * rho 2039) = (relationLc666 rho)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 1418, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 1417, 5, 125⟩], residual := [((7065647221781974488727761436401823925252357367033803456277525288342156410852 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2041) * ((1 : F) + (-1 : F) * rho 2039) = (relationLc667 rho)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 125⟩], residual := [((1 : F), 2040), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1288) * (relationLc668 rho) = ((1 : F) * rho 2042)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 125⟩], residual := [((1 : F), 2041), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1288) * (relationLc669 rho) = ((1 : F) * rho 2043)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4850285970051027192039895716418530152588486557718958193397542697720184924781 : F), 1417, 5, 126⟩], residual := [((4488689940009567796839231487855606517459699859830932338531421345637855163306 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 1418, 5, 126⟩], residual := [((3274420333578042775167377379485662842334097190161090608081461889775381695030 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2044 (rho : Nat -> F) : Prop :=
    (relationLc670 rho) * (relationLc671 rho) = ((1 : F) * rho 2044)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 1417, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 1418, 5, 126⟩], residual := [((1992884665571550733812405047339726314236090538398136498619780084108234066577 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * ((1 : F) + (1 : F) * rho 2044) = (relationLc672 rho)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 1418, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 1417, 5, 126⟩], residual := [((664469923585151624636855557439224492288471026599017456903341046506367026208 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * ((1 : F) + (-1 : F) * rho 2044) = (relationLc673 rho)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 126⟩], residual := [((1 : F), 2045), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1289) * (relationLc674 rho) = ((1 : F) * rho 2047)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
