import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs77

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 4472, 5, 109⟩], residual := [((4074135452690516428383827978533676491907187469793374165982961018377576480445 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5187 (rho : Nat -> F) : Prop :=
    (relationLc569 rho) * (relationLc570 rho) = ((1 : F) * rho 5013)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 4472, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 4471, 5, 109⟩], residual := [((2529041317300384425030327934687045078332479099167386559826625525833479255638 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5014) * ((1 : F) + (1 : F) * rho 5013) = (relationLc571 rho)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), runs := [⟨(6293196949031948224340575615787222301420399137203583809819914899377935832359 : F), 4471, 5, 109⟩, ⟨(8208751050353896383413185361165634954159665332707636225005091668198047860475 : F), 4472, 5, 109⟩], residual := [((4335383369444680411786970470778343211130396716702192189122563460842784900121 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5015) * ((1 : F) + (-1 : F) * rho 5013) = (relationLc572 rho)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 109⟩], residual := [((1 : F), 5014), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * (relationLc573 rho) = ((1 : F) * rho 5016)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 109⟩], residual := [((1 : F), 5015), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4326) * (relationLc574 rho) = ((1 : F) * rho 5017)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5402322627373244180631129875510279080115884451807288805962250842451085778032 : F), 4471, 5, 110⟩], residual := [((5382338166221662979551210145488477632563286750859103168636009902012140799819 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 4472, 5, 110⟩], residual := [((3998177705207051022712752916424830620235393043808391092204319844709748698871 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5192 (rho : Nat -> F) : Prop :=
    (relationLc575 rho) * (relationLc576 rho) = ((1 : F) * rho 5018)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (76309136691973622142713434160374412621428880050401779277708654012160691793 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 4471, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 4472, 5, 110⟩], residual := [((4332594549413670600159016199397519304401660937762112607825944734202030671809 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5019) * ((1 : F) + (1 : F) * rho 5018) = (relationLc577 rho)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), runs := [⟨(5030449854302883693281783248839295759359602379474997721039869989420016652371 : F), 4472, 5, 110⟩, ⟨(76309136691973622142713434160374412621428880050401779277708654012160691793 : F), 4471, 5, 110⟩], residual := [((7451282694866355354124022492943248855024682548386834887629620181335647140225 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5020) * ((1 : F) + (-1 : F) * rho 5018) = (relationLc578 rho)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 110⟩], residual := [((1 : F), 5019), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4327) * (relationLc579 rho) = ((1 : F) * rho 5021)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 110⟩], residual := [((1 : F), 5020), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4327) * (relationLc580 rho) = ((1 : F) * rho 5022)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4076796992849454695604223152151807086878870730009422656206504928886351303313 : F), 4471, 5, 111⟩], residual := [((7060019607658056404279381543908401957828167589500287571281604509717256983524 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 4472, 5, 111⟩], residual := [((2899321955750633510701645526217427031615014654410571442905455528023539407590 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5197 (rho : Nat -> F) : Prop :=
    (relationLc581 rho) * (relationLc582 rho) = ((1 : F) * rho 5023)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (289700866257323929574868378305803100126581288478047791530455231463464249904 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 4472, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 4471, 5, 111⟩], residual := [((6406907210100462894485924193802984049921272825172801276669793283147719626968 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5024) * ((1 : F) + (1 : F) * rho 5023) = (relationLc583 rho)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 4471, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 4472, 5, 111⟩], residual := [((1898111030473104022137829321973391543106266963162153558988674148132892304511 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5025) * ((1 : F) + (-1 : F) * rho 5023) = (relationLc584 rho)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 111⟩], residual := [((1 : F), 5024), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4328) * (relationLc585 rho) = ((1 : F) * rho 5026)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 111⟩], residual := [((1 : F), 5025), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4328) * (relationLc586 rho) = ((1 : F) * rho 5027)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8002886839766104394803904948068912124417238840361875954578229588891340342596 : F), 4471, 5, 112⟩], residual := [((7561662500309782852656824553986542550854249044940477162807519057587707920340 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 4472, 5, 112⟩], residual := [((7343840637694402971705815998132950071977704819866035733276883382846695395753 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5202 (rho : Nat -> F) : Prop :=
    (relationLc587 rho) * (relationLc588 rho) = ((1 : F) * rho 5028)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 4472, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 4471, 5, 112⟩], residual := [((4908882351364965955124446080203945757906559513275700353999585781223923747781 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5029) * ((1 : F) + (1 : F) * rho 5028) = (relationLc589 rho)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 4471, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 4472, 5, 112⟩], residual := [((6949327487557675771387029135250163063563428806022613442349481463452058840414 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5030) * ((1 : F) + (-1 : F) * rho 5028) = (relationLc590 rho)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 112⟩], residual := [((1 : F), 5029), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4329) * (relationLc591 rho) = ((1 : F) * rho 5031)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 112⟩], residual := [((1 : F), 5030), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4329) * (relationLc592 rho) = ((1 : F) * rho 5032)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6044981370060268824196943286506821731815264421904177143427925057065980194445 : F), 4471, 5, 113⟩], residual := [((3805626483064446485212977668886888106608120134596564516414779626770886787927 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 4472, 5, 113⟩], residual := [((865035971979850138074387699480895954015591454232970028220106096984535530082 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5207 (rho : Nat -> F) : Prop :=
    (relationLc593 rho) * (relationLc594 rho) = ((1 : F) * rho 5033)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 4471, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 4472, 5, 113⟩], residual := [((505707955034072137993988679476284032651512376410964841431880232639426326160 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5034) * ((1 : F) + (1 : F) * rho 5033) = (relationLc595 rho)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (412903296436951579340871966000461490183406973415938947318737915616327420832 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 4472, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 4471, 5, 113⟩], residual := [((3794503170617829208688423836000519387445580897354717565440009457342641288172 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5035) * ((1 : F) + (-1 : F) * rho 5033) = (relationLc596 rho)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 113⟩], residual := [((1 : F), 5034), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4330) * (relationLc597 rho) = ((1 : F) * rho 5036)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 113⟩], residual := [((1 : F), 5035), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4330) * (relationLc598 rho) = ((1 : F) * rho 5037)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5538994255283880635592466261680559070775355747740625553578725869357430931450 : F), 4471, 5, 114⟩], residual := [((3823961609180944401222313597713111165119329430409665618330444639171228299772 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 4472, 5, 114⟩], residual := [((2230873185703260841911214032525688903219201575197868665684172661455736694142 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5212 (rho : Nat -> F) : Prop :=
    (relationLc599 rho) * (relationLc600 rho) = ((1 : F) * rho 5038)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
