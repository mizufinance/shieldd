import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs29

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 1418, 5, 65⟩], residual := [((1683532850189794660324898745003693499391356307190748335872042551061169835560 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1739 (rho : Nat -> F) : Prop :=
    (relationLc304 rho) * (relationLc305 rho) = ((1 : F) * rho 1739)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 1417, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 1418, 5, 65⟩], residual := [((7312670365796519431784694387136886921904755844807214393926206736205804015550 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1740) * ((1 : F) + (1 : F) * rho 1739) = (relationLc306 rho)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 1418, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 1417, 5, 65⟩], residual := [((1436455174440920619391968622946117002395595731172664636618509227741715273384 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1741) * ((1 : F) + (-1 : F) * rho 1739) = (relationLc307 rho)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 65⟩], residual := [((1 : F), 1740), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1228) * (relationLc308 rho) = ((1 : F) * rho 1742)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 65⟩], residual := [((1 : F), 1741), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1228) * (relationLc309 rho) = ((1 : F) * rho 1743)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4537829826710099817775550958527656895937789094984491383153961637795690912504 : F), 1417, 5, 66⟩], residual := [((2749188575728518267592553371769543385629672150729245544383062864247726015738 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 1418, 5, 66⟩], residual := [((5712732582707052683841463147070624757472068170351593864520728831317292745745 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1744 (rho : Nat -> F) : Prop :=
    (relationLc310 rho) * (relationLc311 rho) = ((1 : F) * rho 1744)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 1418, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 1417, 5, 66⟩], residual := [((16915351075377607260359978628048694063113131327014971509268149326087084325 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1745) * ((1 : F) + (1 : F) * rho 1744) = (relationLc312 rho)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 1417, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 1418, 5, 66⟩], residual := [((7256193909769812682555148545617782317236443165268330186660581126231576938624 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1746) * ((1 : F) + (-1 : F) * rho 1744) = (relationLc313 rho)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 66⟩], residual := [((1 : F), 1745), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1229) * (relationLc314 rho) = ((1 : F) * rho 1747)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 66⟩], residual := [((1 : F), 1746), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1229) * (relationLc315 rho) = ((1 : F) * rho 1748)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6109128832021984750706140245240785402459174032478405879250343070124721293892 : F), 1417, 5, 67⟩], residual := [((4158886918380229616288312813886586603084732557022387434087401602587801645499 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 1418, 5, 67⟩], residual := [((1403880340404152944062409321333488212033396586256041904966389272209822471960 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1749 (rho : Nat -> F) : Prop :=
    (relationLc316 rho) * (relationLc317 rho) = ((1 : F) * rho 1749)

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 1417, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 1418, 5, 67⟩], residual := [((5880458343632620762281097517229927332634488796828262552420343646432384535300 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1750) * ((1 : F) + (1 : F) * rho 1749) = (relationLc318 rho)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 1418, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 1417, 5, 67⟩], residual := [((6302563214434145603166502561364369844950138898125530835850620533193703076781 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1751) * ((1 : F) + (-1 : F) * rho 1749) = (relationLc319 rho)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 67⟩], residual := [((1 : F), 1750), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * (relationLc320 rho) = ((1 : F) * rho 1752)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 67⟩], residual := [((1 : F), 1751), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * (relationLc321 rho) = ((1 : F) * rho 1753)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1179533789199475365297714400141375462651628937246367333767425774001091757699 : F), 1417, 5, 68⟩], residual := [((3650148473261483737321698221438519843744737995291324808363332260644300992770 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 1418, 5, 68⟩], residual := [((2869640595059133405401105760735484166625600533531038730335777921468494281318 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1754 (rho : Nat -> F) : Prop :=
    (relationLc322 rho) * (relationLc323 rho) = ((1 : F) * rho 1754)

def relationLc324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 1417, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 1418, 5, 68⟩], residual := [((290829590011425885426149216454143905580843715142455616010767280107645414505 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1755) * ((1 : F) + (1 : F) * rho 1754) = (relationLc324 rho)

def relationLc325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 1418, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 1417, 5, 68⟩], residual := [((3269211464373257727069870559604670208906748515964307695166848470740751744619 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1756) * ((1 : F) + (-1 : F) * rho 1754) = (relationLc325 rho)

def relationLc326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 68⟩], residual := [((1 : F), 1755), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1231) * (relationLc326 rho) = ((1 : F) * rho 1757)

def relationLc327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 68⟩], residual := [((1 : F), 1756), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1231) * (relationLc327 rho) = ((1 : F) * rho 1758)

def relationLc328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8020470969744535628948961867453278796912375307773752546739275694995204105556 : F), 1417, 5, 69⟩], residual := [((1155591149101033702468941577713967034096349749420500774035493296064670211394 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 1418, 5, 69⟩], residual := [((6516296044727182879445314890382344061985183553314241005759015699751637830506 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1759 (rho : Nat -> F) : Prop :=
    (relationLc328 rho) * (relationLc329 rho) = ((1 : F) * rho 1759)

def relationLc330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (571516566084547193138060680013771881100301576621742699041361202886239799291 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 1418, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 1417, 5, 69⟩], residual := [((7402774020800633544188560983454659261415920540733393185245776540142860405477 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1760) * ((1 : F) + (1 : F) * rho 1759) = (relationLc330 rho)

def relationLc331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (94898281595789725133783576579690272867367445669598761624826871810748000329 : F), runs := [⟨(571516566084547193138060680013771881100301576621742699041361202886239799291 : F), 1417, 5, 69⟩, ⟨(94898281595789725133783576579690272867367445669598761624826871810748000329 : F), 1418, 5, 69⟩], residual := [((7930424913899644060330437450338886918483378046101948759604036965886786960745 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1761) * ((1 : F) + (-1 : F) * rho 1759) = (relationLc331 rho)

def relationLc332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 69⟩], residual := [((1 : F), 1760), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1232) * (relationLc332 rho) = ((1 : F) * rho 1762)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 69⟩], residual := [((1 : F), 1761), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1232) * (relationLc333 rho) = ((1 : F) * rho 1763)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6243965871058553016662718872284436312489594295673912111659521004288054905871 : F), 1417, 5, 70⟩], residual := [((8097035089899596317674829087795996067355516584207036979388909984789096168556 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), runs := [⟨(8326431351933508695800261520462897815984388402752428580237452891481469766511 : F), 1418, 5, 70⟩], residual := [((8152481399280699976037864206409819856258464140367291640444612544612617889236 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1764 (rho : Nat -> F) : Prop :=
    (relationLc334 rho) * (relationLc335 rho) = ((1 : F) * rho 1764)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
