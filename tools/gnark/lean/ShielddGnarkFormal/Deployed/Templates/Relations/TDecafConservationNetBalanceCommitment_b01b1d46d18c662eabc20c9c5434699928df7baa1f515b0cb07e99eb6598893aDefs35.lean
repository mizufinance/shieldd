import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs34

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 90⟩], residual := [((1 : F), 1866), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1253) * (relationLc459 rho) = ((1 : F) * rho 1868)

def relationLc460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7063967152640433648866581579746629950346182538109332027253714577074595410456 : F), 1417, 5, 91⟩], residual := [((5729505659189760684648846295682784770605309685832172832056995643188347971545 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 1418, 5, 91⟩], residual := [((8182207656423099029815366699397288943168885687127853089414889644139260353135 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1869 (rho : Nat -> F) : Prop :=
    (relationLc460 rho) * (relationLc461 rho) = ((1 : F) * rho 1869)

def relationLc462 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 1417, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 1418, 5, 91⟩], residual := [((7186198606808157460542880219142628457591066834772947887911804126721409724083 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1870) * ((1 : F) + (1 : F) * rho 1869) = (relationLc462 rho)

def relationLc463 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), runs := [⟨(4237147804547044563517324185314064755042977052398714343379388414528947233551 : F), 1418, 5, 91⟩, ⟨(6671904625987968200424988504502629978057773579733911091498642318752805222662 : F), 1417, 5, 91⟩], residual := [((4950402458312734226212537502321397953467485502222874516533396146975706463678 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1871) * ((1 : F) + (-1 : F) * rho 1869) = (relationLc463 rho)

def relationLc464 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 91⟩], residual := [((1 : F), 1870), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1254) * (relationLc464 rho) = ((1 : F) * rho 1872)

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 91⟩], residual := [((1 : F), 1871), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1254) * (relationLc465 rho) = ((1 : F) * rho 1873)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3617769795739826190219714527777460579867632153242407532489617301854593454880 : F), 1417, 5, 92⟩], residual := [((5537178289341065632233099580576021679848581489910240993503922634595536935752 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 1418, 5, 92⟩], residual := [((533155056119865116323029195006103981008703056645148979830481039444982694981 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1874 (rho : Nat -> F) : Prop :=
    (relationLc466 rho) * (relationLc467 rho) = ((1 : F) * rho 1874)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 1418, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 1417, 5, 92⟩], residual := [((7704813965611129996770056360698008275831288417836835163096743117254565692358 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1875) * ((1 : F) + (1 : F) * rho 1874) = (relationLc468 rho)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), runs := [⟨(2810008470689850480923933497580748495630835785789755291133596719251688707617 : F), 1417, 5, 92⟩, ⟨(7713302792607948966134633472567383098525645116796856838399800967288310719619 : F), 1418, 5, 92⟩], residual := [((6723844674701384776872164126094807073544872243568376098544320905681865737647 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1876) * ((1 : F) + (-1 : F) * rho 1874) = (relationLc469 rho)

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 92⟩], residual := [((1 : F), 1875), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1255) * (relationLc470 rho) = ((1 : F) * rho 1877)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 92⟩], residual := [((1 : F), 1876), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1255) * (relationLc471 rho) = ((1 : F) * rho 1878)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7997062760374190550878839842818209955527093565767406864655177728343001313820 : F), 1417, 5, 93⟩], residual := [((609388045294030074614761216346150702670589475019237176314514651560575946901 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 1418, 5, 93⟩], residual := [((6607930396569559353961526303213680705651768387048062024292701143657917750230 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1879 (rho : Nat -> F) : Prop :=
    (relationLc472 rho) * (relationLc473 rho) = ((1 : F) * rho 1879)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 1418, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 1417, 5, 93⟩], residual := [((548021861410534842310802137022999894887028509809071245812968731285397838183 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1880) * ((1 : F) + (1 : F) * rho 1879) = (relationLc474 rho)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), runs := [⟨(4324826454730909573566106869775548626967908014341235993762409254238869658192 : F), 1417, 5, 93⟩, ⟨(4790916928014290872985473670961803183781013788376259100998910985671918248193 : F), 1418, 5, 93⟩], residual := [((7677660365458135911105265298534689072535489752978826453329919073140633135869 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1881) * ((1 : F) + (-1 : F) * rho 1879) = (relationLc475 rho)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 93⟩], residual := [((1 : F), 1880), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1256) * (relationLc476 rho) = ((1 : F) * rho 1882)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 93⟩], residual := [((1 : F), 1881), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1256) * (relationLc477 rho) = ((1 : F) * rho 1883)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7406725852981332616967440375463435094380560333213654825698131844857491079799 : F), 1417, 5, 94⟩], residual := [((660529282535298160429441592644184632584129631322396192061947937429646058172 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 1418, 5, 94⟩], residual := [((1827491060475524693752753755016864372970445294137612295397610885228326636694 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1884 (rho : Nat -> F) : Prop :=
    (relationLc478 rho) * (relationLc479 rho) = ((1 : F) * rho 1884)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 1417, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 1418, 5, 94⟩], residual := [((1408421635407096932919620918464534748649425509085713196424349359094535925076 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1885) * ((1 : F) + (1 : F) * rho 1884) = (relationLc480 rho)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (119852406265797050789612078055044154058976607881391703276722256535381886501 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 1418, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 1417, 5, 94⟩], residual := [((13424937575075758969308616957163662756924467290349218325062554890782697633 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1886) * ((1 : F) + (-1 : F) * rho 1884) = (relationLc481 rho)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 94⟩], residual := [((1 : F), 1885), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1257) * (relationLc482 rho) = ((1 : F) * rho 1887)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 94⟩], residual := [((1 : F), 1886), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1257) * (relationLc483 rho) = ((1 : F) * rho 1888)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5722982763298278729963576385719857110505658303306807977438603435381470720965 : F), 1417, 5, 95⟩], residual := [((1512028753682479323706374415141072953240983189562385019686725734447076504660 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 1418, 5, 95⟩], residual := [((4685697274096954033188881392239579126921974360644586083086504592703531775778 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1889 (rho : Nat -> F) : Prop :=
    (relationLc484 rho) * (relationLc485 rho) = ((1 : F) * rho 1889)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 1417, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 1418, 5, 95⟩], residual := [((8292075190520747587179179487387985647421196845099503237358645567171557262328 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1890) * ((1 : F) + (1 : F) * rho 1889) = (relationLc486 rho)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 1418, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 1417, 5, 95⟩], residual := [((4074879778793383385966176422814261591555489666649215798630660067423369746306 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1891) * ((1 : F) + (-1 : F) * rho 1889) = (relationLc487 rho)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 95⟩], residual := [((1 : F), 1890), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1258) * (relationLc488 rho) = ((1 : F) * rho 1892)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 95⟩], residual := [((1 : F), 1891), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1258) * (relationLc489 rho) = ((1 : F) * rho 1893)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
