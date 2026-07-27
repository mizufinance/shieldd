import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs28

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 902, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 901, 5, 88⟩], residual := [((8293193919133116207758552850567614612645909525260865701014858860699193787594 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1340) * ((1 : F) + (-1 : F) * rho 1338) = (relationLc441 rho)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 88⟩], residual := [((1 : F), 1339), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 735) * (relationLc442 rho) = ((1 : F) * rho 1341)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 88⟩], residual := [((1 : F), 1340), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 735) * (relationLc443 rho) = ((1 : F) * rho 1342)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3823607092857852708937139548162746378948106584882997334386088312642642803196 : F), 901, 5, 89⟩], residual := [((2714867256836121125762997299912007949873577945419247880190964543050829418714 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 902, 5, 89⟩], residual := [((153619350881935069255170802654791930868437919462984532110063843936837673131 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1343 (rho : Nat -> F) : Prop :=
    (relationLc444 rho) * (relationLc445 rho) = ((1 : F) * rho 1343)

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 902, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 901, 5, 89⟩], residual := [((6427067557758498906772590915175712958461086607324996606842554687902980394689 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1344) * ((1 : F) + (1 : F) * rho 1343) = (relationLc446 rho)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 901, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 902, 5, 89⟩], residual := [((3876741618514416278461783650230897767764892882020524582623223690088409389108 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1345) * ((1 : F) + (-1 : F) * rho 1343) = (relationLc447 rho)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 89⟩], residual := [((1 : F), 1344), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 736) * (relationLc448 rho) = ((1 : F) * rho 1346)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 89⟩], residual := [((1 : F), 1345), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 736) * (relationLc449 rho) = ((1 : F) * rho 1347)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6416479357088254657520161588104593595472283347383011131200786479746401541836 : F), 901, 5, 90⟩], residual := [((3508873915858526940235648772377232092827021329264054008160272580437511763978 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 902, 5, 90⟩], residual := [((2940901819092813228064965544316270339445514597067106215421335395874380782690 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1348 (rho : Nat -> F) : Prop :=
    (relationLc450 rho) * (relationLc451 rho) = ((1 : F) * rho 1348)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 902, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 901, 5, 90⟩], residual := [((4719844734204465699684458530028763165015822110634550322860914591685009643264 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1349) * ((1 : F) + (1 : F) * rho 1348) = (relationLc452 rho)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 901, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 902, 5, 90⟩], residual := [((4912185246871204805586551051906400968288822316213296896595252732458601366687 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1350) * ((1 : F) + (-1 : F) * rho 1348) = (relationLc453 rho)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 90⟩], residual := [((1 : F), 1349), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 737) * (relationLc454 rho) = ((1 : F) * rho 1351)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 90⟩], residual := [((1 : F), 1350), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 737) * (relationLc455 rho) = ((1 : F) * rho 1352)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7063967152640433648866581579746629950346182538109332027253714577074595410456 : F), 901, 5, 91⟩], residual := [((5729505659189760684648846295682784770605309685832172832056995643188347971545 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 902, 5, 91⟩], residual := [((8182207656423099029815366699397288943168885687127853089414889644139260353135 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1353 (rho : Nat -> F) : Prop :=
    (relationLc456 rho) * (relationLc457 rho) = ((1 : F) * rho 1353)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 901, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 902, 5, 91⟩], residual := [((7186198606808157460542880219142628457591066834772947887911804126721409724083 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1354) * ((1 : F) + (1 : F) * rho 1353) = (relationLc458 rho)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 902, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 901, 5, 91⟩], residual := [((4950402458312734226212537502321397953467485502222874516533396146975706463678 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1355) * ((1 : F) + (-1 : F) * rho 1353) = (relationLc459 rho)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 91⟩], residual := [((1 : F), 1354), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 738) * (relationLc460 rho) = ((1 : F) * rho 1356)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 91⟩], residual := [((1 : F), 1355), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 738) * (relationLc461 rho) = ((1 : F) * rho 1357)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3617769795739826190219714527777460579867632153242407532489617301854593454880 : F), 901, 5, 92⟩], residual := [((5537178289341065632233099580576021679848581489910240993503922634595536935752 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 902, 5, 92⟩], residual := [((533155056119865116323029195006103981008703056645148979830481039444982694981 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1358 (rho : Nat -> F) : Prop :=
    (relationLc462 rho) * (relationLc463 rho) = ((1 : F) * rho 1358)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 902, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 901, 5, 92⟩], residual := [((7704813965611129996770056360698008275831288417836835163096743117254565692358 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1359) * ((1 : F) + (1 : F) * rho 1358) = (relationLc464 rho)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 901, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 902, 5, 92⟩], residual := [((6723844674701384776872164126094807073544872243568376098544320905681865737647 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1360) * ((1 : F) + (-1 : F) * rho 1358) = (relationLc465 rho)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 92⟩], residual := [((1 : F), 1359), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 739) * (relationLc466 rho) = ((1 : F) * rho 1361)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 92⟩], residual := [((1 : F), 1360), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 739) * (relationLc467 rho) = ((1 : F) * rho 1362)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7997062760374190550878839842818209955527093565767406864655177728343001313820 : F), 901, 5, 93⟩], residual := [((609388045294030074614761216346150702670589475019237176314514651560575946901 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 902, 5, 93⟩], residual := [((6607930396569559353961526303213680705651768387048062024292701143657917750230 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1363 (rho : Nat -> F) : Prop :=
    (relationLc468 rho) * (relationLc469 rho) = ((1 : F) * rho 1363)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 902, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 901, 5, 93⟩], residual := [((548021861410534842310802137022999894887028509809071245812968731285397838183 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1364) * ((1 : F) + (1 : F) * rho 1363) = (relationLc470 rho)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 901, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 902, 5, 93⟩], residual := [((7677660365458135911105265298534689072535489752978826453329919073140633135869 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1365) * ((1 : F) + (-1 : F) * rho 1363) = (relationLc471 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
