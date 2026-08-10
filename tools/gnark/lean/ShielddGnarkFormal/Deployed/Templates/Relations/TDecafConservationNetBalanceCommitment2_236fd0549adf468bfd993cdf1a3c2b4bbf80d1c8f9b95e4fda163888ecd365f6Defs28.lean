import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs27

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), runs := [⟨(4872431366368981919201347343206778318746451912835390929027021130917545665256 : F), 772, 5, 89⟩, ⟨(7400302501764235142567221698941713477302533481210754700390251256579286626463 : F), 773, 5, 89⟩], residual := [((3876741618514416278461783650230897767764892882020524582623223690088409389108 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1216) * ((1 : F) + (-1 : F) * rho 1214) = (relationLc446 rho)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 89⟩], residual := [((1 : F), 1215), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 607) * (relationLc447 rho) = ((1 : F) * rho 1217)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 89⟩], residual := [((1 : F), 1216), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 607) * (relationLc448 rho) = ((1 : F) * rho 1218)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6416479357088254657520161588104593595472283347383011131200786479746401541836 : F), 772, 5, 90⟩], residual := [((3508873915858526940235648772377232092827021329264054008160272580437511763978 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 773, 5, 90⟩], residual := [((2940901819092813228064965544316270339445514597067106215421335395874380782690 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1219 (rho : Nat -> F) : Prop :=
    (relationLc449 rho) * (relationLc450 rho) = ((1 : F) * rho 1219)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 773, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 772, 5, 90⟩], residual := [((4719844734204465699684458530028763165015822110634550322860914591685009643264 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * ((1 : F) + (1 : F) * rho 1219) = (relationLc451 rho)

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), runs := [⟨(1620559594003401183416085952328825958818025443763999736593566520420502256804 : F), 772, 5, 90⟩, ⟨(6215973170584692389196510427176260355128797254351164151152341859974891472999 : F), 773, 5, 90⟩], residual := [((4912185246871204805586551051906400968288822316213296896595252732458601366687 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1221) * ((1 : F) + (-1 : F) * rho 1219) = (relationLc452 rho)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 90⟩], residual := [((1 : F), 1220), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 608) * (relationLc453 rho) = ((1 : F) * rho 1222)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 90⟩], residual := [((1 : F), 1221), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 608) * (relationLc454 rho) = ((1 : F) * rho 1223)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7063967152640433648866581579746629950346182538109332027253714577074595410456 : F), 772, 5, 91⟩], residual := [((5729505659189760684648846295682784770605309685832172832056995643188347971545 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 773, 5, 91⟩], residual := [((8182207656423099029815366699397288943168885687127853089414889644139260353135 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1224 (rho : Nat -> F) : Prop :=
    (relationLc455 rho) * (relationLc456 rho) = ((1 : F) * rho 1224)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 772, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 773, 5, 91⟩], residual := [((7186198606808157460542880219142628457591066834772947887911804126721409724083 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1225) * ((1 : F) + (1 : F) * rho 1224) = (relationLc457 rho)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 773, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 772, 5, 91⟩], residual := [((4950402458312734226212537502321397953467485502222874516533396146975706463678 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1226) * ((1 : F) + (-1 : F) * rho 1224) = (relationLc458 rho)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 91⟩], residual := [((1 : F), 1225), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 609) * (relationLc459 rho) = ((1 : F) * rho 1227)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 91⟩], residual := [((1 : F), 1226), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 609) * (relationLc460 rho) = ((1 : F) * rho 1228)

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3617769795739826190219714527777460579867632153242407532489617301854593454880 : F), 772, 5, 92⟩], residual := [((5537178289341065632233099580576021679848581489910240993503922634595536935752 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 773, 5, 92⟩], residual := [((533155056119865116323029195006103981008703056645148979830481039444982694981 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1229 (rho : Nat -> F) : Prop :=
    (relationLc461 rho) * (relationLc462 rho) = ((1 : F) * rho 1229)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 773, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 772, 5, 92⟩], residual := [((7704813965611129996770056360698008275831288417836835163096743117254565692358 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * ((1 : F) + (1 : F) * rho 1229) = (relationLc463 rho)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 772, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 773, 5, 92⟩], residual := [((6723844674701384776872164126094807073544872243568376098544320905681865737647 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1231) * ((1 : F) + (-1 : F) * rho 1229) = (relationLc464 rho)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 92⟩], residual := [((1 : F), 1230), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 610) * (relationLc465 rho) = ((1 : F) * rho 1232)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 92⟩], residual := [((1 : F), 1231), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 610) * (relationLc466 rho) = ((1 : F) * rho 1233)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7997062760374190550878839842818209955527093565767406864655177728343001313820 : F), 772, 5, 93⟩], residual := [((609388045294030074614761216346150702670589475019237176314514651560575946901 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 773, 5, 93⟩], residual := [((6607930396569559353961526303213680705651768387048062024292701143657917750230 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1234 (rho : Nat -> F) : Prop :=
    (relationLc467 rho) * (relationLc468 rho) = ((1 : F) * rho 1234)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 773, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 772, 5, 93⟩], residual := [((548021861410534842310802137022999894887028509809071245812968731285397838183 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1235) * ((1 : F) + (1 : F) * rho 1234) = (relationLc469 rho)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 772, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 773, 5, 93⟩], residual := [((7677660365458135911105265298534689072535489752978826453329919073140633135869 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1236) * ((1 : F) + (-1 : F) * rho 1234) = (relationLc470 rho)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 93⟩], residual := [((1 : F), 1235), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 611) * (relationLc471 rho) = ((1 : F) * rho 1237)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 93⟩], residual := [((1 : F), 1236), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 611) * (relationLc472 rho) = ((1 : F) * rho 1238)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7406725852981332616967440375463435094380560333213654825698131844857491079799 : F), 772, 5, 94⟩], residual := [((660529282535298160429441592644184632584129631322396192061947937429646058172 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 773, 5, 94⟩], residual := [((1827491060475524693752753755016864372970445294137612295397610885228326636694 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1239 (rho : Nat -> F) : Prop :=
    (relationLc473 rho) * (relationLc474 rho) = ((1 : F) * rho 1239)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 772, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 773, 5, 94⟩], residual := [((1408421635407096932919620918464534748649425509085713196424349359094535925076 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1240) * ((1 : F) + (1 : F) * rho 1239) = (relationLc475 rho)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (119852406265797050789612078055044154058976607881391703276722256535381886501 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 773, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 772, 5, 94⟩], residual := [((13424937575075758969308616957163662756924467290349218325062554890782697633 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1241) * ((1 : F) + (-1 : F) * rho 1239) = (relationLc476 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
