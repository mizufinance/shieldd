import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs32

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 121⟩], residual := [((1 : F), 1246), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 510) * (relationLc638 rho) = ((1 : F) * rho 1248)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 121⟩], residual := [((1 : F), 1247), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 510) * (relationLc639 rho) = ((1 : F) * rho 1249)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(584000619229443011155856511989394363177085940390278354237920581948371080965 : F), 643, 5, 122⟩], residual := [((4877678121225869352483409764604901718546586513080354452749910463330369344005 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 644, 5, 122⟩], residual := [((4459053408661294276679446192149382492486612154675915829289951080942786054053 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1250 (rho : Nat -> F) : Prop :=
    (relationLc640 rho) * (relationLc641 rho) = ((1 : F) * rho 1250)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 643, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 644, 5, 122⟩], residual := [((5246134318860101942540552851388779869856745984431418076924029370110651782459 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1251) * ((1 : F) + (1 : F) * rho 1250) = (relationLc642 rho)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 644, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 643, 5, 122⟩], residual := [((6741260058948136122266312561091365286015329239376264144276368139403518045242 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1252) * ((1 : F) + (-1 : F) * rho 1250) = (relationLc643 rho)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 122⟩], residual := [((1 : F), 1251), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 511) * (relationLc644 rho) = ((1 : F) * rho 1253)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 122⟩], residual := [((1 : F), 1252), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 511) * (relationLc645 rho) = ((1 : F) * rho 1254)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7804030322780332712078433031660827628862715380821800207610391743142447473338 : F), 643, 5, 123⟩], residual := [((4098739390515418578419774954786406485797572541330885154731510725829474736323 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 644, 5, 123⟩], residual := [((7968159218604720847947050341953899688530729945386426334229130940124629767290 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1255 (rho : Nat -> F) : Prop :=
    (relationLc646 rho) * (relationLc647 rho) = ((1 : F) * rho 1255)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 644, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 643, 5, 123⟩], residual := [((1157482441389751200374734353587185855204920906250669080497441955899241868976 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1256) * ((1 : F) + (1 : F) * rho 1255) = (relationLc648 rho)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (547657752883585754862826645512764780287045046585853772477650087933478069873 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 643, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 644, 5, 123⟩], residual := [((2291813028408963541153423883294060471531842660949104227303467086048564870778 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1257) * ((1 : F) + (-1 : F) * rho 1255) = (relationLc649 rho)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 123⟩], residual := [((1 : F), 1256), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 512) * (relationLc650 rho) = ((1 : F) * rho 1258)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 123⟩], residual := [((1 : F), 1257), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 512) * (relationLc651 rho) = ((1 : F) * rho 1259)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4000827609080571616136050635188459827510082237773997566076641022494907100485 : F), 643, 5, 124⟩], residual := [((5066737969290659813119533512863456624700627710103481122855961796709181759545 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 644, 5, 124⟩], residual := [((4539751221873483142870141935977575289458023702981157688292816267019637935817 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1260 (rho : Nat -> F) : Prop :=
    (relationLc652 rho) * (relationLc653 rho) = ((1 : F) * rho 1260)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 643, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 644, 5, 124⟩], residual := [((1366020070141825366592900758571758208021969079669369198583591095180688014006 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1261) * ((1 : F) + (1 : F) * rho 1260) = (relationLc654 rho)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 644, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 643, 5, 124⟩], residual := [((5115891628300709066674560329518339725692369893455200516464249654126886714506 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1262) * ((1 : F) + (-1 : F) * rho 1260) = (relationLc655 rho)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 124⟩], residual := [((1 : F), 1261), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 513) * (relationLc656 rho) = ((1 : F) * rho 1263)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 124⟩], residual := [((1 : F), 1262), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 513) * (relationLc657 rho) = ((1 : F) * rho 1264)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3206715103925797000728264364812449490358849405873516358360482948930504814837 : F), 643, 5, 125⟩], residual := [((6859227754302574298256908027992222014651838529698031298197025811544259824003 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 644, 5, 125⟩], residual := [((3241815838170848415373772779206630000632126979651664629597711437726457647190 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1265 (rho : Nat -> F) : Prop :=
    (relationLc658 rho) * (relationLc659 rho) = ((1 : F) * rho 1265)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 643, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 644, 5, 125⟩], residual := [((462808816347966588882768507091553344986854553319789264653202909813091896438 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1266) * ((1 : F) + (1 : F) * rho 1265) = (relationLc660 rho)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), runs := [⟨(5689402970933684081544881501087474227355284341755840253626799260423984874632 : F), 644, 5, 125⟩, ⟨(7847023104163942438409120492190176756606930764600420301085171173989988691267 : F), 643, 5, 125⟩], residual := [((7065647221781974488727761436401823925252357367033803456277525288342156410852 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1267) * ((1 : F) + (-1 : F) * rho 1265) = (relationLc661 rho)

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 125⟩], residual := [((1 : F), 1266), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 514) * (relationLc662 rho) = ((1 : F) * rho 1268)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 125⟩], residual := [((1 : F), 1267), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 514) * (relationLc663 rho) = ((1 : F) * rho 1269)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4850285970051027192039895716418530152588486557718958193397542697720184924781 : F), 643, 5, 126⟩], residual := [((4488689940009567796839231487855606517459699859830932338531421345637855163306 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 644, 5, 126⟩], residual := [((3274420333578042775167377379485662842334097190161090608081461889775381695030 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1270 (rho : Nat -> F) : Prop :=
    (relationLc664 rho) * (relationLc665 rho) = ((1 : F) * rho 1270)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 643, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 644, 5, 126⟩], residual := [((1992884665571550733812405047339726314236090538398136498619780084108234066577 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1271) * ((1 : F) + (1 : F) * rho 1270) = (relationLc666 rho)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), runs := [⟨(1030258924117739603878056098374057482190969692781997499792639342759128363089 : F), 644, 5, 126⟩, ⟨(1146321724808351894200391785368884848984834484833485085356683008438849543380 : F), 643, 5, 126⟩], residual := [((664469923585151624636855557439224492288471026599017456903341046506367026208 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1272) * ((1 : F) + (-1 : F) * rho 1270) = (relationLc667 rho)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 126⟩], residual := [((1 : F), 1271), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 515) * (relationLc668 rho) = ((1 : F) * rho 1273)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
