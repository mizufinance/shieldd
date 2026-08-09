import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs73

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 4472, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 4471, 5, 88⟩], residual := [((8293193919133116207758552850567614612645909525260865701014858860699193787594 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4910) * ((1 : F) + (-1 : F) * rho 4908) = (relationLc446 rho)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 88⟩], residual := [((1 : F), 4909), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4305) * (relationLc447 rho) = ((1 : F) * rho 4911)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 88⟩], residual := [((1 : F), 4910), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4305) * (relationLc448 rho) = ((1 : F) * rho 4912)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3823607092857852708937139548162746378948106584882997334386088312642642803196 : F), 4471, 5, 89⟩], residual := [((2714867256836121125762997299912007949873577945419247880190964543050829418714 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 4472, 5, 89⟩], residual := [((153619350881935069255170802654791930868437919462984532110063843936837673131 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5087 (rho : Nat -> F) : Prop :=
    (relationLc449 rho) * (relationLc450 rho) = ((1 : F) * rho 4913)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 4472, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 4471, 5, 89⟩], residual := [((6427067557758498906772590915175712958461086607324996606842554687902980394689 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4914) * ((1 : F) + (1 : F) * rho 4913) = (relationLc451 rho)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 4471, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 4472, 5, 89⟩], residual := [((3876741618514416278461783650230897767764892882020524582623223690088409389108 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4915) * ((1 : F) + (-1 : F) * rho 4913) = (relationLc452 rho)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 89⟩], residual := [((1 : F), 4914), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306) * (relationLc453 rho) = ((1 : F) * rho 4916)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 89⟩], residual := [((1 : F), 4915), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4306) * (relationLc454 rho) = ((1 : F) * rho 4917)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6416479357088254657520161588104593595472283347383011131200786479746401541836 : F), 4471, 5, 90⟩], residual := [((3508873915858526940235648772377232092827021329264054008160272580437511763978 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 4472, 5, 90⟩], residual := [((2940901819092813228064965544316270339445514597067106215421335395874380782690 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5092 (rho : Nat -> F) : Prop :=
    (relationLc455 rho) * (relationLc456 rho) = ((1 : F) * rho 4918)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 4472, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 4471, 5, 90⟩], residual := [((4719844734204465699684458530028763165015822110634550322860914591685009643264 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4919) * ((1 : F) + (1 : F) * rho 4918) = (relationLc457 rho)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 4471, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 4472, 5, 90⟩], residual := [((4912185246871204805586551051906400968288822316213296896595252732458601366687 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4920) * ((1 : F) + (-1 : F) * rho 4918) = (relationLc458 rho)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 90⟩], residual := [((1 : F), 4919), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4307) * (relationLc459 rho) = ((1 : F) * rho 4921)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 90⟩], residual := [((1 : F), 4920), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4307) * (relationLc460 rho) = ((1 : F) * rho 4922)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7063967152640433648866581579746629950346182538109332027253714577074595410456 : F), 4471, 5, 91⟩], residual := [((5729505659189760684648846295682784770605309685832172832056995643188347971545 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 4472, 5, 91⟩], residual := [((8182207656423099029815366699397288943168885687127853089414889644139260353135 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5097 (rho : Nat -> F) : Prop :=
    (relationLc461 rho) * (relationLc462 rho) = ((1 : F) * rho 4923)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 4471, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 4472, 5, 91⟩], residual := [((7186198606808157460542880219142628457591066834772947887911804126721409724083 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4924) * ((1 : F) + (1 : F) * rho 4923) = (relationLc463 rho)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 4472, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 4471, 5, 91⟩], residual := [((4950402458312734226212537502321397953467485502222874516533396146975706463678 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4925) * ((1 : F) + (-1 : F) * rho 4923) = (relationLc464 rho)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 91⟩], residual := [((1 : F), 4924), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4308) * (relationLc465 rho) = ((1 : F) * rho 4926)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 91⟩], residual := [((1 : F), 4925), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4308) * (relationLc466 rho) = ((1 : F) * rho 4927)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3617769795739826190219714527777460579867632153242407532489617301854593454880 : F), 4471, 5, 92⟩], residual := [((5537178289341065632233099580576021679848581489910240993503922634595536935752 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 4472, 5, 92⟩], residual := [((533155056119865116323029195006103981008703056645148979830481039444982694981 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5102 (rho : Nat -> F) : Prop :=
    (relationLc467 rho) * (relationLc468 rho) = ((1 : F) * rho 4928)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 4472, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 4471, 5, 92⟩], residual := [((7704813965611129996770056360698008275831288417836835163096743117254565692358 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4929) * ((1 : F) + (1 : F) * rho 4928) = (relationLc469 rho)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 4471, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 4472, 5, 92⟩], residual := [((6723844674701384776872164126094807073544872243568376098544320905681865737647 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4930) * ((1 : F) + (-1 : F) * rho 4928) = (relationLc470 rho)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 92⟩], residual := [((1 : F), 4929), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4309) * (relationLc471 rho) = ((1 : F) * rho 4931)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 92⟩], residual := [((1 : F), 4930), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4309) * (relationLc472 rho) = ((1 : F) * rho 4932)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7997062760374190550878839842818209955527093565767406864655177728343001313820 : F), 4471, 5, 93⟩], residual := [((609388045294030074614761216346150702670589475019237176314514651560575946901 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 4472, 5, 93⟩], residual := [((6607930396569559353961526303213680705651768387048062024292701143657917750230 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5107 (rho : Nat -> F) : Prop :=
    (relationLc473 rho) * (relationLc474 rho) = ((1 : F) * rho 4933)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 4472, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 4471, 5, 93⟩], residual := [((548021861410534842310802137022999894887028509809071245812968731285397838183 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4934) * ((1 : F) + (1 : F) * rho 4933) = (relationLc475 rho)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 4471, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 4472, 5, 93⟩], residual := [((7677660365458135911105265298534689072535489752978826453329919073140633135869 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
