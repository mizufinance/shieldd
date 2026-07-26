import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs23

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (303547602266770679502157402207952299907312881417246884189324622113708740423 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 902, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 901, 5, 62⟩], residual := [((5561764102716542035099189445452256030373191946152764886360758616094121892723 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * ((1 : F) + (-1 : F) * rho 1208) = (relationLc285 rho)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 62⟩], residual := [((1 : F), 1209), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 709) * (relationLc286 rho) = ((1 : F) * rho 1211)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 62⟩], residual := [((1 : F), 1210), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 709) * (relationLc287 rho) = ((1 : F) * rho 1212)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3085616442776849438476212581616932439034899615310675205518179401870911711973 : F), 901, 5, 63⟩], residual := [((1026790005384380925460007667604107280893568745904825431692257267135526443711 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 902, 5, 63⟩], residual := [((4964692616665768239957833217040709313911948806214555943848258053209201399789 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1213 (rho : Nat -> F) : Prop :=
    (relationLc288 rho) * (relationLc289 rho) = ((1 : F) * rho 1213)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 902, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 901, 5, 63⟩], residual := [((7069858617104347290068665784591225250822556475237036873297752607851023539293 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1214) * ((1 : F) + (1 : F) * rho 1213) = (relationLc290 rho)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 901, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 902, 5, 63⟩], residual := [((6740979775409447315102366221095070768823522715493011568131450176110930966632 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * ((1 : F) + (-1 : F) * rho 1213) = (relationLc291 rho)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 63⟩], residual := [((1 : F), 1214), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 710) * (relationLc292 rho) = ((1 : F) * rho 1216)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 63⟩], residual := [((1 : F), 1215), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 710) * (relationLc293 rho) = ((1 : F) * rho 1217)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4275544026045521543387764973435775239930499568673885139700103275620778568799 : F), 901, 5, 64⟩], residual := [((6918465407683071827013143227809273434111339304474541289264328778110766408084 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 902, 5, 64⟩], residual := [((2687488818437579694147825883036614690556389511567113641914435677747780662044 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1218 (rho : Nat -> F) : Prop :=
    (relationLc294 rho) * (relationLc295 rho) = ((1 : F) * rho 1218)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 902, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 901, 5, 64⟩], residual := [((8305443839956705564436770750709549564759730492576378379289857174509179512637 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * ((1 : F) + (1 : F) * rho 1218) = (relationLc296 rho)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 901, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 902, 5, 64⟩], residual := [((8222691234440270234943567991332315348480785560285671531960820207978794062238 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * ((1 : F) + (-1 : F) * rho 1218) = (relationLc297 rho)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 64⟩], residual := [((1 : F), 1219), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 711) * (relationLc298 rho) = ((1 : F) * rho 1221)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 64⟩], residual := [((1 : F), 1220), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 711) * (relationLc299 rho) = ((1 : F) * rho 1222)

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3224247449589776035172626644635962173546611304319642440654303000898713426573 : F), 901, 5, 65⟩], residual := [((6922933048605870567158033117124161753294641474213475748005056560195059560257 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 902, 5, 65⟩], residual := [((1683532850189794660324898745003693499391356307190748335872042551061169835560 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1223 (rho : Nat -> F) : Prop :=
    (relationLc300 rho) * (relationLc301 rho) = ((1 : F) * rho 1223)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 901, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 902, 5, 65⟩], residual := [((7312670365796519431784694387136886921904755844807214393926206736205804015550 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1224) * ((1 : F) + (1 : F) * rho 1223) = (relationLc302 rho)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 902, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 901, 5, 65⟩], residual := [((1436455174440920619391968622946117002395595731172664636618509227741715273384 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1225) * ((1 : F) + (-1 : F) * rho 1223) = (relationLc303 rho)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 65⟩], residual := [((1 : F), 1224), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 712) * (relationLc304 rho) = ((1 : F) * rho 1226)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 65⟩], residual := [((1 : F), 1225), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 712) * (relationLc305 rho) = ((1 : F) * rho 1227)

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4537829826710099817775550958527656895937789094984491383153961637795690912504 : F), 901, 5, 66⟩], residual := [((2749188575728518267592553371769543385629672150729245544383062864247726015738 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 902, 5, 66⟩], residual := [((5712732582707052683841463147070624757472068170351593864520728831317292745745 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1228 (rho : Nat -> F) : Prop :=
    (relationLc306 rho) * (relationLc307 rho) = ((1 : F) * rho 1228)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 902, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 901, 5, 66⟩], residual := [((16915351075377607260359978628048694063113131327014971509268149326087084325 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1229) * ((1 : F) + (1 : F) * rho 1228) = (relationLc308 rho)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 901, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 902, 5, 66⟩], residual := [((7256193909769812682555148545617782317236443165268330186660581126231576938624 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * ((1 : F) + (-1 : F) * rho 1228) = (relationLc309 rho)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 66⟩], residual := [((1 : F), 1229), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 713) * (relationLc310 rho) = ((1 : F) * rho 1231)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 66⟩], residual := [((1 : F), 1230), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 713) * (relationLc311 rho) = ((1 : F) * rho 1232)

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6109128832021984750706140245240785402459174032478405879250343070124721293892 : F), 901, 5, 67⟩], residual := [((4158886918380229616288312813886586603084732557022387434087401602587801645499 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 902, 5, 67⟩], residual := [((1403880340404152944062409321333488212033396586256041904966389272209822471960 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1233 (rho : Nat -> F) : Prop :=
    (relationLc312 rho) * (relationLc313 rho) = ((1 : F) * rho 1233)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 901, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 902, 5, 67⟩], residual := [((5880458343632620762281097517229927332634488796828262552420343646432384535300 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1234) * ((1 : F) + (1 : F) * rho 1233) = (relationLc314 rho)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 902, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 901, 5, 67⟩], residual := [((6302563214434145603166502561364369844950138898125530835850620533193703076781 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1235) * ((1 : F) + (-1 : F) * rho 1233) = (relationLc315 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
