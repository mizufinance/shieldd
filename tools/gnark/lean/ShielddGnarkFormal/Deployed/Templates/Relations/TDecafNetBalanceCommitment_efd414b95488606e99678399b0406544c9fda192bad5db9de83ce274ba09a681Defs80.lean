import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs79

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5064) * ((1 : F) + (1 : F) * rho 5063) = (relationLc631 rho)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 4472, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 4471, 5, 119⟩], residual := [((8062933033294270950607806452420811642456240708879379909656595911026224038356 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5065) * ((1 : F) + (-1 : F) * rho 5063) = (relationLc632 rho)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 119⟩], residual := [((1 : F), 5064), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4336) * (relationLc633 rho) = ((1 : F) * rho 5066)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 119⟩], residual := [((1 : F), 5065), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4336) * (relationLc634 rho) = ((1 : F) * rho 5067)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(70047359452739967761354735869571617112383791744502514768316737593872201940 : F), 4471, 5, 120⟩], residual := [((3077165500729576496814828563217645616841174092814790761567947528930916848646 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 4472, 5, 120⟩], residual := [((4879819472398292029555486290968352115128592223884040006696851717824256684665 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5242 (rho : Nat -> F) : Prop :=
    (relationLc635 rho) * (relationLc636 rho) = ((1 : F) * rho 5068)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 4471, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 4472, 5, 120⟩], residual := [((4908790602154999504146450567019670589451862719562409893833866044897446029001 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5069) * ((1 : F) + (1 : F) * rho 5068) = (relationLc637 rho)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), runs := [⟨(1162848770315013186512834336070504114091190502223050332650058071631657105476 : F), 4472, 5, 120⟩, ⟨(3767098471145022099561226959621636257595217339786713834851990298390186011555 : F), 4471, 5, 120⟩], residual := [((8355312983053627186444906230850625374960283996680531035605567894746006285696 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5070) * ((1 : F) + (-1 : F) * rho 5068) = (relationLc638 rho)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 120⟩], residual := [((1 : F), 5069), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4337) * (relationLc639 rho) = ((1 : F) * rho 5071)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 120⟩], residual := [((1 : F), 5070), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4337) * (relationLc640 rho) = ((1 : F) * rho 5072)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3520793187494300905373526405640131893416494491680411921070086080219345992017 : F), 4471, 5, 121⟩], residual := [((5152011298132880996436076092922552082401717392756500719460291472678806437949 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 4472, 5, 121⟩], residual := [((539781168514739126870106588392456494240219636219952006953917114176295608051 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5247 (rho : Nat -> F) : Prop :=
    (relationLc641 rho) * (relationLc642 rho) = ((1 : F) * rho 5073)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (473609515877140342716340391683633113501975849412468960730049954199902991279 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 4472, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 4471, 5, 121⟩], residual := [((2322063242557772837973362981009724846629775940055071225462425556047221954197 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5074) * ((1 : F) + (1 : F) * rho 5073) = (relationLc643 rho)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), runs := [⟨(473609515877140342716340391683633113501975849412468960730049954199902991279 : F), 4471, 5, 121⟩, ⟨(5231085311608068641070812640472000560111792171653404115851668944753953006368 : F), 4472, 5, 121⟩], residual := [((4015794339037585840721867598248040916861597485086724664305205662222134542720 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5075) * ((1 : F) + (-1 : F) * rho 5073) = (relationLc644 rho)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 121⟩], residual := [((1 : F), 5074), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * (relationLc645 rho) = ((1 : F) * rho 5076)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 121⟩], residual := [((1 : F), 5075), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4338) * (relationLc646 rho) = ((1 : F) * rho 5077)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(584000619229443011155856511989394363177085940390278354237920581948371080965 : F), 4471, 5, 122⟩], residual := [((4877678121225869352483409764604901718546586513080354452749910463330369344005 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 4472, 5, 122⟩], residual := [((4459053408661294276679446192149382492486612154675915829289951080942786054053 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5252 (rho : Nat -> F) : Prop :=
    (relationLc647 rho) * (relationLc648 rho) = ((1 : F) * rho 5078)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 4471, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 4472, 5, 122⟩], residual := [((5246134318860101942540552851388779869856745984431418076924029370110651782459 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5079) * ((1 : F) + (1 : F) * rho 5078) = (relationLc649 rho)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), runs := [⟨(2015571308161894908604620535376856816777623471230211949121331096424495343406 : F), 4472, 5, 122⟩, ⟨(4977706341073922086385864532375048333695050609822088823831572984262759951156 : F), 4471, 5, 122⟩], residual := [((6741260058948136122266312561091365286015329239376264144276368139403518045242 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5080) * ((1 : F) + (-1 : F) * rho 5078) = (relationLc650 rho)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 122⟩], residual := [((1 : F), 5079), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * (relationLc651 rho) = ((1 : F) * rho 5081)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 122⟩], residual := [((1 : F), 5080), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4339) * (relationLc652 rho) = ((1 : F) * rho 5082)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7804030322780332712078433031660827628862715380821800207610391743142447473338 : F), 4471, 5, 123⟩], residual := [((4098739390515418578419774954786406485797572541330885154731510725829474736323 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 4472, 5, 123⟩], residual := [((7968159218604720847947050341953899688530729945386426334229130940124629767290 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5257 (rho : Nat -> F) : Prop :=
    (relationLc653 rho) * (relationLc654 rho) = ((1 : F) * rho 5083)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 4472, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 4471, 5, 123⟩], residual := [((1157482441389751200374734353587185855204920906250669080497441955899241868976 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5084) * ((1 : F) + (1 : F) * rho 5083) = (relationLc655 rho)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (547657752883585754862826645512764780287045046585853772477650087933478069873 : F), runs := [⟨(4505892990553634336070905658917911583541894373268451526385900453690953274225 : F), 4471, 5, 123⟩, ⟨(547657752883585754862826645512764780287045046585853772477650087933478069873 : F), 4472, 5, 123⟩], residual := [((2291813028408963541153423883294060471531842660949104227303467086048564870778 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5085) * ((1 : F) + (-1 : F) * rho 5083) = (relationLc656 rho)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 123⟩], residual := [((1 : F), 5084), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4340) * (relationLc657 rho) = ((1 : F) * rho 5086)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 123⟩], residual := [((1 : F), 5085), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4340) * (relationLc658 rho) = ((1 : F) * rho 5087)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4000827609080571616136050635188459827510082237773997566076641022494907100485 : F), 4471, 5, 124⟩], residual := [((5066737969290659813119533512863456624700627710103481122855961796709181759545 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 4472, 5, 124⟩], residual := [((4539751221873483142870141935977575289458023702981157688292816267019637935817 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5262 (rho : Nat -> F) : Prop :=
    (relationLc659 rho) * (relationLc660 rho) = ((1 : F) * rho 5088)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (539235425260903418665961548231018185698805159278837082611722169702911269617 : F), runs := [⟨(3299723830498032993124710188148763113820281793353051742644704441908321022565 : F), 4471, 5, 124⟩, ⟨(539235425260903418665961548231018185698805159278837082611722169702911269617 : F), 4472, 5, 124⟩], residual := [((1366020070141825366592900758571758208021969079669369198583591095180688014006 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5089) * ((1 : F) + (1 : F) * rho 5088) = (relationLc661 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
