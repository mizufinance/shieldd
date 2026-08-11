import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs22

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 772, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 773, 5, 63⟩], residual := [((6740979775409447315102366221095070768823522715493011568131450176110930966632 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1086) * ((1 : F) + (-1 : F) * rho 1084) = (relationLc290 rho)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 63⟩], residual := [((1 : F), 1085), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 581) * (relationLc291 rho) = ((1 : F) * rho 1087)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 63⟩], residual := [((1 : F), 1086), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 581) * (relationLc292 rho) = ((1 : F) * rho 1088)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4275544026045521543387764973435775239930499568673885139700103275620778568799 : F), 772, 5, 64⟩], residual := [((6918465407683071827013143227809273434111339304474541289264328778110766408084 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 773, 5, 64⟩], residual := [((2687488818437579694147825883036614690556389511567113641914435677747780662044 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1089 (rho : Nat -> F) : Prop :=
    (relationLc293 rho) * (relationLc294 rho) = ((1 : F) * rho 1089)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 773, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 772, 5, 64⟩], residual := [((8305443839956705564436770750709549564759730492576378379289857174509179512637 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1090) * ((1 : F) + (1 : F) * rho 1089) = (relationLc295 rho)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 772, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 773, 5, 64⟩], residual := [((8222691234440270234943567991332315348480785560285671531960820207978794062238 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1091) * ((1 : F) + (-1 : F) * rho 1089) = (relationLc296 rho)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 64⟩], residual := [((1 : F), 1090), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 582) * (relationLc297 rho) = ((1 : F) * rho 1092)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 64⟩], residual := [((1 : F), 1091), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 582) * (relationLc298 rho) = ((1 : F) * rho 1093)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3224247449589776035172626644635962173546611304319642440654303000898713426573 : F), 772, 5, 65⟩], residual := [((6922933048605870567158033117124161753294641474213475748005056560195059560257 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 773, 5, 65⟩], residual := [((1683532850189794660324898745003693499391356307190748335872042551061169835560 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1094 (rho : Nat -> F) : Prop :=
    (relationLc299 rho) * (relationLc300 rho) = ((1 : F) * rho 1094)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 772, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 773, 5, 65⟩], residual := [((7312670365796519431784694387136886921904755844807214393926206736205804015550 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1095) * ((1 : F) + (1 : F) * rho 1094) = (relationLc301 rho)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 773, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 772, 5, 65⟩], residual := [((1436455174440920619391968622946117002395595731172664636618509227741715273384 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1096) * ((1 : F) + (-1 : F) * rho 1094) = (relationLc302 rho)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 65⟩], residual := [((1 : F), 1095), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 583) * (relationLc303 rho) = ((1 : F) * rho 1097)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 65⟩], residual := [((1 : F), 1096), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 583) * (relationLc304 rho) = ((1 : F) * rho 1098)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4537829826710099817775550958527656895937789094984491383153961637795690912504 : F), 772, 5, 66⟩], residual := [((2749188575728518267592553371769543385629672150729245544383062864247726015738 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 773, 5, 66⟩], residual := [((5712732582707052683841463147070624757472068170351593864520728831317292745745 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1099 (rho : Nat -> F) : Prop :=
    (relationLc305 rho) * (relationLc306 rho) = ((1 : F) * rho 1099)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 773, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 772, 5, 66⟩], residual := [((16915351075377607260359978628048694063113131327014971509268149326087084325 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1100) * ((1 : F) + (1 : F) * rho 1099) = (relationLc307 rho)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 772, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 773, 5, 66⟩], residual := [((7256193909769812682555148545617782317236443165268330186660581126231576938624 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1101) * ((1 : F) + (-1 : F) * rho 1099) = (relationLc308 rho)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 66⟩], residual := [((1 : F), 1100), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 584) * (relationLc309 rho) = ((1 : F) * rho 1102)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 66⟩], residual := [((1 : F), 1101), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 584) * (relationLc310 rho) = ((1 : F) * rho 1103)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6109128832021984750706140245240785402459174032478405879250343070124721293892 : F), 772, 5, 67⟩], residual := [((4158886918380229616288312813886586603084732557022387434087401602587801645499 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 773, 5, 67⟩], residual := [((1403880340404152944062409321333488212033396586256041904966389272209822471960 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1104 (rho : Nat -> F) : Prop :=
    (relationLc311 rho) * (relationLc312 rho) = ((1 : F) * rho 1104)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 772, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 773, 5, 67⟩], residual := [((5880458343632620762281097517229927332634488796828262552420343646432384535300 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1105) * ((1 : F) + (1 : F) * rho 1104) = (relationLc313 rho)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 773, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 772, 5, 67⟩], residual := [((6302563214434145603166502561364369844950138898125530835850620533193703076781 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1106) * ((1 : F) + (-1 : F) * rho 1104) = (relationLc314 rho)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 67⟩], residual := [((1 : F), 1105), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 585) * (relationLc315 rho) = ((1 : F) * rho 1107)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 67⟩], residual := [((1 : F), 1106), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 585) * (relationLc316 rho) = ((1 : F) * rho 1108)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1179533789199475365297714400141375462651628937246367333767425774001091757699 : F), 772, 5, 68⟩], residual := [((3650148473261483737321698221438519843744737995291324808363332260644300992770 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 773, 5, 68⟩], residual := [((2869640595059133405401105760735484166625600533531038730335777921468494281318 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1109 (rho : Nat -> F) : Prop :=
    (relationLc317 rho) * (relationLc318 rho) = ((1 : F) * rho 1109)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 772, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 773, 5, 68⟩], residual := [((290829590011425885426149216454143905580843715142455616010767280107645414505 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1110) * ((1 : F) + (1 : F) * rho 1109) = (relationLc319 rho)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), runs := [⟨(4816612753410884381445224456776148973526423761472260292243023724038297653302 : F), 773, 5, 68⟩, ⟨(7959974226264553187395437856735419233069984973595500789850973080551873623974 : F), 772, 5, 68⟩], residual := [((3269211464373257727069870559604670208906748515964307695166848470740751744619 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1111) * ((1 : F) + (-1 : F) * rho 1109) = (relationLc320 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
