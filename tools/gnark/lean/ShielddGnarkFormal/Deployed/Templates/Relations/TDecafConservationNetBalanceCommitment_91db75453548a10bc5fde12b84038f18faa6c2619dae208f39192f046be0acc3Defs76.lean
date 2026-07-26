import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs75

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1401) * (relationLc1436 rho) = ((1 : F) * rho 2877)

def relationLc1437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 89⟩], residual := [((1 : F), 2876), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1401) * (relationLc1437 rho) = ((1 : F) * rho 2878)

def relationLc1438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 90⟩, ⟨(1 : F), 2166, 8, 90⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1438 rho) = ((1 : F) * rho 2879)

def relationLc1439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(315165664185507501201007405643707065125027079845492041184508244027986387713 : F), 1417, 5, 149⟩, ⟨(315165664185507501201007405643707065125027079845492041184508244027986387713 : F), 2165, 8, 90⟩], residual := [((2518794966706652762931428995801127820653344605275753054034923835216870230285 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5790688032707317684636175993482897077520959853438083706965602547854781804222 : F), runs := [⟨(5790688032707317684636175993482897077520959853438083706965602547854781804222 : F), 1418, 5, 149⟩, ⟨(5790688032707317684636175993482897077520959853438083706965602547854781804222 : F), 2166, 8, 90⟩], residual := [((3601892535133519944405285361176328391158836036835157603494002969734130044426 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2880 (rho : Nat -> F) : Prop :=
    (relationLc1439 rho) * (relationLc1440 rho) = ((1 : F) * rho 2880)

def relationLc1441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5790688032707317684636175993482897077520959853438083706965602547854781804222 : F), runs := [⟨(3776492217524632224647919066434794131398200936402842013764212150674759307624 : F), 1417, 5, 149⟩, ⟨(3776492217524632224647919066434794131398200936402842013764212150674759307624 : F), 2165, 8, 90⟩, ⟨(5790688032707317684636175993482897077520959853438083706965602547854781804222 : F), 1418, 5, 149⟩, ⟨(5790688032707317684636175993482897077520959853438083706965602547854781804222 : F), 2166, 8, 90⟩], residual := [((4712442058301268938509792123735770662187265490877342010228303733002725985548 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1441 rho) = ((1 : F) * rho 2881)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2882) * ((1 : F) + (1 : F) * rho 2880) = ((1 : F) * rho 2881)

def relationLc1442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2653773716721052739612648945298649453854939481715980120969630908062627434819 : F), runs := [⟨(2653773716721052739612648945298649453854939481715980120969630908062627434819 : F), 1418, 5, 149⟩, ⟨(2653773716721052739612648945298649453854939481715980120969630908062627434819 : F), 2166, 8, 90⟩, ⟨(4667969531903738199600905872346752399977698398751221814171021305242649931417 : F), 1417, 5, 149⟩, ⟨(4667969531903738199600905872346752399977698398751221814171021305242649931417 : F), 2165, 8, 90⟩], residual := [((3732019691127101485739032815045775869188633844276721817706929722914683253493 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2883 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1442 rho) = ((1 : F) * rho 2883)

def relationRow2884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2884) * ((1 : F) + (-1 : F) * rho 2880) = ((1122718500803579485035270121136144677543261454686861892794581242612131872805 : F) * rho 2879 + (1 : F) * rho 2883)

def relationLc1443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 90⟩], residual := [((1 : F), 2882), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1402) * (relationLc1443 rho) = ((1 : F) * rho 2885)

def relationLc1444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 90⟩], residual := [((1 : F), 2884), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1402) * (relationLc1444 rho) = ((1 : F) * rho 2886)

def relationLc1445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 91⟩, ⟨(1 : F), 2166, 8, 91⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2887 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1445 rho) = ((1 : F) * rho 2887)

def relationLc1446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7893717792549064318472830338109032386029173470313375374389471475809771008558 : F), 1417, 5, 149⟩, ⟨(7893717792549064318472830338109032386029173470313375374389471475809771008558 : F), 2165, 8, 91⟩], residual := [((4374296518096528526619005251611994626052244170889537534720848003928046783174 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5513923410512906536181717766244606058613026157505942978262642991579256481779 : F), runs := [⟨(5513923410512906536181717766244606058613026157505942978262642991579256481779 : F), 1418, 5, 149⟩, ⟨(5513923410512906536181717766244606058613026157505942978262642991579256481779 : F), 2166, 8, 91⟩], residual := [((6602569734421699621514347941938542364431913392460043182359308603865112578723 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2888 (rho : Nat -> F) : Prop :=
    (relationLc1446 rho) * (relationLc1447 rho) = ((1 : F) * rho 2888)

def relationLc1448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5513923410512906536181717766244606058613026157505942978262642991579256481779 : F), runs := [⟨(4019392668560449309488260267251635682877589049350116880541979459658764265975 : F), 1417, 5, 149⟩, ⟨(4019392668560449309488260267251635682877589049350116880541979459658764265975 : F), 2165, 8, 91⟩, ⟨(5513923410512906536181717766244606058613026157505942978262642991579256481779 : F), 1418, 5, 149⟩, ⟨(5513923410512906536181717766244606058613026157505942978262642991579256481779 : F), 2166, 8, 91⟩], residual := [((4096675033091295205087808066124098390907209830903503719888873793552637225980 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2889 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1448 rho) = ((1 : F) * rho 2889)

def relationRow2890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2890) * ((1 : F) + (1 : F) * rho 2888) = ((1 : F) * rho 2889)

def relationLc1449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2930538338915463888067107172536940472762873177648120849672590464338152757262 : F), runs := [⟨(2930538338915463888067107172536940472762873177648120849672590464338152757262 : F), 1418, 5, 149⟩, ⟨(2930538338915463888067107172536940472762873177648120849672590464338152757262 : F), 2166, 8, 91⟩, ⟨(4425069080867921114760564671529910848498310285803946947393253996258644973066 : F), 1417, 5, 149⟩, ⟨(4425069080867921114760564671529910848498310285803946947393253996258644973066 : F), 2165, 8, 91⟩], residual := [((4347786716337075219161016872657448140468689504250560108046359662364772013061 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2891 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1449 rho) = ((1 : F) * rho 2891)

def relationRow2892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2892) * ((1 : F) + (-1 : F) * rho 2888) = ((1088854329644985421421153094714695210114715871701996030869388995320611508713 : F) * rho 2887 + (1 : F) * rho 2891)

def relationLc1450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 91⟩], residual := [((1 : F), 2890), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1403) * (relationLc1450 rho) = ((1 : F) * rho 2893)

def relationLc1451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 91⟩], residual := [((1 : F), 2892), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1403) * (relationLc1451 rho) = ((1 : F) * rho 2894)

def relationLc1452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 92⟩, ⟨(1 : F), 2166, 8, 92⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2895 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1452 rho) = ((1 : F) * rho 2895)

def relationLc1453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5795376365332425280251108321101108099365152824664954485845090213493474225511 : F), 1417, 5, 149⟩, ⟨(5795376365332425280251108321101108099365152824664954485845090213493474225511 : F), 2165, 8, 92⟩], residual := [((2804388294726016125662420118254808533838138442815855271791669649881650081475 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), runs := [⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 1418, 5, 149⟩, ⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 2166, 8, 92⟩], residual := [((2902823778148234976100277600948068094267423525193951070508650400515105641806 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2896 (rho : Nat -> F) : Prop :=
    (relationLc1453 rho) * (relationLc1454 rho) = ((1 : F) * rho 2896)

def relationLc1455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), runs := [⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 1418, 5, 149⟩, ⟨(2203407895172835048751996239651722897202444515700048382087296164906444292884 : F), 2166, 8, 92⟩, ⟨(3448466306987922263614383402131330016976447875891964797858321066322296943384 : F), 1417, 5, 149⟩, ⟨(3448466306987922263614383402131330016976447875891964797858321066322296943384 : F), 2165, 8, 92⟩], residual := [((5671053344592727771906963833821946238787773899323490641818704286979229043571 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2897 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1455 rho) = ((1 : F) * rho 2897)

def relationRow2898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2898) * ((1 : F) + (1 : F) * rho 2896) = ((1 : F) * rho 2897)

def relationLc1456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), runs := [⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 1417, 5, 149⟩, ⟨(4995995442440448160634441536650216514399451459262099030076912389595112295657 : F), 2165, 8, 92⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 1418, 5, 149⟩, ⟨(6241053854255535375496828699129823634173454819454015445847937291010964946157 : F), 2166, 8, 92⟩], residual := [((2773408404835642652341861104959600292588125435830573186116529168938180195470 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2899 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1456 rho) = ((1 : F) * rho 2899)

def relationRow2900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2900) * ((1 : F) + (-1 : F) * rho 2896) = ((5651874202160757312366379641783052914178892391592013179945617231228741236268 : F) * rho 2895 + (1 : F) * rho 2899)

def relationLc1457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 149⟩, ⟨(-1 : F), 2165, 8, 92⟩], residual := [((1 : F), 2898), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1404) * (relationLc1457 rho) = ((1 : F) * rho 2901)

def relationLc1458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 149⟩, ⟨(-1 : F), 2166, 8, 92⟩], residual := [((1 : F), 2900), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1404) * (relationLc1458 rho) = ((1 : F) * rho 2902)

def relationLc1459 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 1417, 5, 149⟩, ⟨(1 : F), 1418, 5, 149⟩, ⟨(1 : F), 2165, 8, 93⟩, ⟨(1 : F), 2166, 8, 93⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2903 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1459 rho) = ((1 : F) * rho 2903)

def relationLc1460 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 1417, 5, 149⟩, ⟨(5054703949369480008265337863130172882247344153175250621606584714879089757143 : F), 2165, 8, 93⟩], residual := [((5601485619389641128729184567002420572067936942603615555204830633048519319217 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1461 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), runs := [⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 1418, 5, 149⟩, ⟨(2579576461021703843062238166306385538971946073339432738818486279193087908325 : F), 2166, 8, 93⟩], residual := [((8201628241980808648367014804422567103406614700569427414153625827007033516096 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2904 (rho : Nat -> F) : Prop :=
    (relationLc1460 rho) * (relationLc1461 rho) = ((1 : F) * rho 2904)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
