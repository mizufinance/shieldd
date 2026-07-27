import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs32

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 902, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 901, 5, 109⟩], residual := [((2529041317300384425030327934687045078332479099167386559826625525833479255638 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1444) * ((1 : F) + (1 : F) * rho 1443) = (relationLc566 rho)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 901, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 902, 5, 109⟩], residual := [((4335383369444680411786970470778343211130396716702192189122563460842784900121 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1445) * ((1 : F) + (-1 : F) * rho 1443) = (relationLc567 rho)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 109⟩], residual := [((1 : F), 1444), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 756) * (relationLc568 rho) = ((1 : F) * rho 1446)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 109⟩], residual := [((1 : F), 1445), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 756) * (relationLc569 rho) = ((1 : F) * rho 1447)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5402322627373244180631129875510279080115884451807288805962250842451085778032 : F), 901, 5, 110⟩], residual := [((5382338166221662979551210145488477632563286750859103168636009902012140799819 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 902, 5, 110⟩], residual := [((3998177705207051022712752916424830620235393043808391092204319844709748698871 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1448 (rho : Nat -> F) : Prop :=
    (relationLc570 rho) * (relationLc571 rho) = ((1 : F) * rho 1448)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 901, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 902, 5, 110⟩], residual := [((4332594549413670600159016199397519304401660937762112607825944734202030671809 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1449) * ((1 : F) + (1 : F) * rho 1448) = (relationLc572 rho)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 902, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 901, 5, 110⟩], residual := [((7451282694866355354124022492943248855024682548386834887629620181335647140225 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1450) * ((1 : F) + (-1 : F) * rho 1448) = (relationLc573 rho)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 110⟩], residual := [((1 : F), 1449), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 757) * (relationLc574 rho) = ((1 : F) * rho 1451)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 110⟩], residual := [((1 : F), 1450), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 757) * (relationLc575 rho) = ((1 : F) * rho 1452)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4076796992849454695604223152151807086878870730009422656206504928886351303313 : F), 901, 5, 111⟩], residual := [((7060019607658056404279381543908401957828167589500287571281604509717256983524 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 902, 5, 111⟩], residual := [((2899321955750633510701645526217427031615014654410571442905455528023539407590 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1453 (rho : Nat -> F) : Prop :=
    (relationLc576 rho) * (relationLc577 rho) = ((1 : F) * rho 1453)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 902, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 901, 5, 111⟩], residual := [((6406907210100462894485924193802984049921272825172801276669793283147719626968 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1454) * ((1 : F) + (1 : F) * rho 1453) = (relationLc578 rho)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 901, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 902, 5, 111⟩], residual := [((1898111030473104022137829321973391543106266963162153558988674148132892304511 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1455) * ((1 : F) + (-1 : F) * rho 1453) = (relationLc579 rho)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 111⟩], residual := [((1 : F), 1454), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 758) * (relationLc580 rho) = ((1 : F) * rho 1456)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 111⟩], residual := [((1 : F), 1455), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 758) * (relationLc581 rho) = ((1 : F) * rho 1457)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8002886839766104394803904948068912124417238840361875954578229588891340342596 : F), 901, 5, 112⟩], residual := [((7561662500309782852656824553986542550854249044940477162807519057587707920340 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 902, 5, 112⟩], residual := [((7343840637694402971705815998132950071977704819866035733276883382846695395753 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1458 (rho : Nat -> F) : Prop :=
    (relationLc582 rho) * (relationLc583 rho) = ((1 : F) * rho 1458)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 902, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 901, 5, 112⟩], residual := [((4908882351364965955124446080203945757906559513275700353999585781223923747781 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1459) * ((1 : F) + (1 : F) * rho 1458) = (relationLc584 rho)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 901, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 902, 5, 112⟩], residual := [((6949327487557675771387029135250163063563428806022613442349481463452058840414 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1460) * ((1 : F) + (-1 : F) * rho 1458) = (relationLc585 rho)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 112⟩], residual := [((1 : F), 1459), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 759) * (relationLc586 rho) = ((1 : F) * rho 1461)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 112⟩], residual := [((1 : F), 1460), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 759) * (relationLc587 rho) = ((1 : F) * rho 1462)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6044981370060268824196943286506821731815264421904177143427925057065980194445 : F), 901, 5, 113⟩], residual := [((3805626483064446485212977668886888106608120134596564516414779626770886787927 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 902, 5, 113⟩], residual := [((865035971979850138074387699480895954015591454232970028220106096984535530082 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1463 (rho : Nat -> F) : Prop :=
    (relationLc588 rho) * (relationLc589 rho) = ((1 : F) * rho 1463)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 901, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 902, 5, 113⟩], residual := [((505707955034072137993988679476284032651512376410964841431880232639426326160 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1464) * ((1 : F) + (1 : F) * rho 1463) = (relationLc590 rho)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (412903296436951579340871966000461490183406973415938947318737915616327420832 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 902, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 901, 5, 113⟩], residual := [((3794503170617829208688423836000519387445580897354717565440009457342641288172 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1465) * ((1 : F) + (-1 : F) * rho 1463) = (relationLc591 rho)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 113⟩], residual := [((1 : F), 1464), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 760) * (relationLc592 rho) = ((1 : F) * rho 1466)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 113⟩], residual := [((1 : F), 1465), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 760) * (relationLc593 rho) = ((1 : F) * rho 1467)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5538994255283880635592466261680559070775355747740625553578725869357430931450 : F), 901, 5, 114⟩], residual := [((3823961609180944401222313597713111165119329430409665618330444639171228299772 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 902, 5, 114⟩], residual := [((2230873185703260841911214032525688903219201575197868665684172661455736694142 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1468 (rho : Nat -> F) : Prop :=
    (relationLc594 rho) * (relationLc595 rho) = ((1 : F) * rho 1468)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 901, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 902, 5, 114⟩], residual := [((6712930830834958536208495955883693603967525297039104674223897810239178679737 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1469) * ((1 : F) + (1 : F) * rho 1468) = (relationLc596 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
