import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs26

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 90⟩], residual := [((1 : F), 1091), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 479) * (relationLc452 rho) = ((1 : F) * rho 1093)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 90⟩], residual := [((1 : F), 1092), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 479) * (relationLc453 rho) = ((1 : F) * rho 1094)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7063967152640433648866581579746629950346182538109332027253714577074595410456 : F), 643, 5, 91⟩], residual := [((5729505659189760684648846295682784770605309685832172832056995643188347971545 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 644, 5, 91⟩], residual := [((8182207656423099029815366699397288943168885687127853089414889644139260353135 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1095 (rho : Nat -> F) : Prop :=
    (relationLc454 rho) * (relationLc455 rho) = ((1 : F) * rho 1095)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 643, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 644, 5, 91⟩], residual := [((7186198606808157460542880219142628457591066834772947887911804126721409724083 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1096) * ((1 : F) + (1 : F) * rho 1095) = (relationLc456 rho)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 644, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 643, 5, 91⟩], residual := [((4950402458312734226212537502321397953467485502222874516533396146975706463678 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1097) * ((1 : F) + (-1 : F) * rho 1095) = (relationLc457 rho)

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 91⟩], residual := [((1 : F), 1096), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 480) * (relationLc458 rho) = ((1 : F) * rho 1098)

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 91⟩], residual := [((1 : F), 1097), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 480) * (relationLc459 rho) = ((1 : F) * rho 1099)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3617769795739826190219714527777460579867632153242407532489617301854593454880 : F), 643, 5, 92⟩], residual := [((5537178289341065632233099580576021679848581489910240993503922634595536935752 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 644, 5, 92⟩], residual := [((533155056119865116323029195006103981008703056645148979830481039444982694981 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1100 (rho : Nat -> F) : Prop :=
    (relationLc460 rho) * (relationLc461 rho) = ((1 : F) * rho 1100)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 644, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 643, 5, 92⟩], residual := [((7704813965611129996770056360698008275831288417836835163096743117254565692358 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1101) * ((1 : F) + (1 : F) * rho 1100) = (relationLc462 rho)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 643, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 644, 5, 92⟩], residual := [((6723844674701384776872164126094807073544872243568376098544320905681865737647 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1102) * ((1 : F) + (-1 : F) * rho 1100) = (relationLc463 rho)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 92⟩], residual := [((1 : F), 1101), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 481) * (relationLc464 rho) = ((1 : F) * rho 1103)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 92⟩], residual := [((1 : F), 1102), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 481) * (relationLc465 rho) = ((1 : F) * rho 1104)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7997062760374190550878839842818209955527093565767406864655177728343001313820 : F), 643, 5, 93⟩], residual := [((609388045294030074614761216346150702670589475019237176314514651560575946901 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 644, 5, 93⟩], residual := [((6607930396569559353961526303213680705651768387048062024292701143657917750230 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1105 (rho : Nat -> F) : Prop :=
    (relationLc466 rho) * (relationLc467 rho) = ((1 : F) * rho 1105)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 644, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 643, 5, 93⟩], residual := [((548021861410534842310802137022999894887028509809071245812968731285397838183 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1106) * ((1 : F) + (1 : F) * rho 1105) = (relationLc468 rho)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 643, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 644, 5, 93⟩], residual := [((7677660365458135911105265298534689072535489752978826453329919073140633135869 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1107) * ((1 : F) + (-1 : F) * rho 1105) = (relationLc469 rho)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 93⟩], residual := [((1 : F), 1106), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 482) * (relationLc470 rho) = ((1 : F) * rho 1108)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 93⟩], residual := [((1 : F), 1107), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 482) * (relationLc471 rho) = ((1 : F) * rho 1109)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7406725852981332616967440375463435094380560333213654825698131844857491079799 : F), 643, 5, 94⟩], residual := [((660529282535298160429441592644184632584129631322396192061947937429646058172 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 644, 5, 94⟩], residual := [((1827491060475524693752753755016864372970445294137612295397610885228326636694 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1110 (rho : Nat -> F) : Prop :=
    (relationLc472 rho) * (relationLc473 rho) = ((1 : F) * rho 1110)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 643, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 644, 5, 94⟩], residual := [((1408421635407096932919620918464534748649425509085713196424349359094535925076 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1111) * ((1 : F) + (1 : F) * rho 1110) = (relationLc474 rho)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (119852406265797050789612078055044154058976607881391703276722256535381886501 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 644, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 643, 5, 94⟩], residual := [((13424937575075758969308616957163662756924467290349218325062554890782697633 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1112) * ((1 : F) + (-1 : F) * rho 1110) = (relationLc475 rho)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 94⟩], residual := [((1 : F), 1111), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 483) * (relationLc476 rho) = ((1 : F) * rho 1113)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 94⟩], residual := [((1 : F), 1112), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 483) * (relationLc477 rho) = ((1 : F) * rho 1114)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5722982763298278729963576385719857110505658303306807977438603435381470720965 : F), 643, 5, 95⟩], residual := [((1512028753682479323706374415141072953240983189562385019686725734447076504660 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 644, 5, 95⟩], residual := [((4685697274096954033188881392239579126921974360644586083086504592703531775778 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1115 (rho : Nat -> F) : Prop :=
    (relationLc478 rho) * (relationLc479 rho) = ((1 : F) * rho 1115)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 643, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 644, 5, 95⟩], residual := [((8292075190520747587179179487387985647421196845099503237358645567171557262328 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1116) * ((1 : F) + (1 : F) * rho 1115) = (relationLc480 rho)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 644, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 643, 5, 95⟩], residual := [((4074879778793383385966176422814261591555489666649215798630660067423369746306 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1117) * ((1 : F) + (-1 : F) * rho 1115) = (relationLc481 rho)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 95⟩], residual := [((1 : F), 1116), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 484) * (relationLc482 rho) = ((1 : F) * rho 1118)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
