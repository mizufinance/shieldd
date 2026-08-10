import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs31

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 772, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 773, 5, 110⟩], residual := [((4332594549413670600159016199397519304401660937762112607825944734202030671809 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1320) * ((1 : F) + (1 : F) * rho 1319) = (relationLc571 rho)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 773, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 772, 5, 110⟩], residual := [((7451282694866355354124022492943248855024682548386834887629620181335647140225 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1321) * ((1 : F) + (-1 : F) * rho 1319) = (relationLc572 rho)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 110⟩], residual := [((1 : F), 1320), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 628) * (relationLc573 rho) = ((1 : F) * rho 1322)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 110⟩], residual := [((1 : F), 1321), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 628) * (relationLc574 rho) = ((1 : F) * rho 1323)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4076796992849454695604223152151807086878870730009422656206504928886351303313 : F), 772, 5, 111⟩], residual := [((7060019607658056404279381543908401957828167589500287571281604509717256983524 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 773, 5, 111⟩], residual := [((2899321955750633510701645526217427031615014654410571442905455528023539407590 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1324 (rho : Nat -> F) : Prop :=
    (relationLc575 rho) * (relationLc576 rho) = ((1 : F) * rho 1324)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 773, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 772, 5, 111⟩], residual := [((6406907210100462894485924193802984049921272825172801276669793283147719626968 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1325) * ((1 : F) + (1 : F) * rho 1324) = (relationLc577 rho)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 772, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 773, 5, 111⟩], residual := [((1898111030473104022137829321973391543106266963162153558988674148132892304511 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1326) * ((1 : F) + (-1 : F) * rho 1324) = (relationLc578 rho)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 111⟩], residual := [((1 : F), 1325), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 629) * (relationLc579 rho) = ((1 : F) * rho 1327)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 111⟩], residual := [((1 : F), 1326), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 629) * (relationLc580 rho) = ((1 : F) * rho 1328)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8002886839766104394803904948068912124417238840361875954578229588891340342596 : F), 772, 5, 112⟩], residual := [((7561662500309782852656824553986542550854249044940477162807519057587707920340 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 773, 5, 112⟩], residual := [((7343840637694402971705815998132950071977704819866035733276883382846695395753 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1329 (rho : Nat -> F) : Prop :=
    (relationLc581 rho) * (relationLc582 rho) = ((1 : F) * rho 1329)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 773, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 772, 5, 112⟩], residual := [((4908882351364965955124446080203945757906559513275700353999585781223923747781 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1330) * ((1 : F) + (1 : F) * rho 1329) = (relationLc583 rho)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 772, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 773, 5, 112⟩], residual := [((6949327487557675771387029135250163063563428806022613442349481463452058840414 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1331) * ((1 : F) + (-1 : F) * rho 1329) = (relationLc584 rho)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 112⟩], residual := [((1 : F), 1330), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 630) * (relationLc585 rho) = ((1 : F) * rho 1332)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 112⟩], residual := [((1 : F), 1331), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 630) * (relationLc586 rho) = ((1 : F) * rho 1333)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6044981370060268824196943286506821731815264421904177143427925057065980194445 : F), 772, 5, 113⟩], residual := [((3805626483064446485212977668886888106608120134596564516414779626770886787927 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 773, 5, 113⟩], residual := [((865035971979850138074387699480895954015591454232970028220106096984535530082 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1334 (rho : Nat -> F) : Prop :=
    (relationLc587 rho) * (relationLc588 rho) = ((1 : F) * rho 1334)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 772, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 773, 5, 113⟩], residual := [((505707955034072137993988679476284032651512376410964841431880232639426326160 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1335) * ((1 : F) + (1 : F) * rho 1334) = (relationLc589 rho)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (412903296436951579340871966000461490183406973415938947318737915616327420832 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 773, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 772, 5, 113⟩], residual := [((3794503170617829208688423836000519387445580897354717565440009457342641288172 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1336) * ((1 : F) + (-1 : F) * rho 1334) = (relationLc590 rho)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 113⟩], residual := [((1 : F), 1335), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 631) * (relationLc591 rho) = ((1 : F) * rho 1337)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 113⟩], residual := [((1 : F), 1336), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 631) * (relationLc592 rho) = ((1 : F) * rho 1338)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5538994255283880635592466261680559070775355747740625553578725869357430931450 : F), 772, 5, 114⟩], residual := [((3823961609180944401222313597713111165119329430409665618330444639171228299772 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 773, 5, 114⟩], residual := [((2230873185703260841911214032525688903219201575197868665684172661455736694142 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1339 (rho : Nat -> F) : Prop :=
    (relationLc593 rho) * (relationLc594 rho) = ((1 : F) * rho 1339)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 772, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 773, 5, 114⟩], residual := [((6712930830834958536208495955883693603967525297039104674223897810239178679737 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1340) * ((1 : F) + (1 : F) * rho 1339) = (relationLc595 rho)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 773, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 772, 5, 114⟩], residual := [((3363026558279651923245842165054909851794577971967155871755746820639602436007 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1341) * ((1 : F) + (-1 : F) * rho 1339) = (relationLc596 rho)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 114⟩], residual := [((1 : F), 1340), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 632) * (relationLc597 rho) = ((1 : F) * rho 1342)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 114⟩], residual := [((1 : F), 1341), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 632) * (relationLc598 rho) = ((1 : F) * rho 1343)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7092102170889042601208202038466364950277576212870097414401334358924586649189 : F), 772, 5, 115⟩], residual := [((4653472090370567983434626876681111717002852161687776050661280676529317148432 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 773, 5, 115⟩], residual := [((2257434816805262428550449631546742040564192443442506165265588191162612118189 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1344 (rho : Nat -> F) : Prop :=
    (relationLc599 rho) * (relationLc600 rho) = ((1 : F) * rho 1344)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 773, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 772, 5, 115⟩], residual := [((2370785343805429719167261158997236238833652498248150100773059432113696423621 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1345) * ((1 : F) + (1 : F) * rho 1344) = (relationLc601 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
