import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs68

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 62⟩], residual := [((1 : F), 4780), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4279) * (relationLc292 rho) = ((1 : F) * rho 4782)

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3085616442776849438476212581616932439034899615310675205518179401870911711973 : F), 4471, 5, 63⟩], residual := [((1026790005384380925460007667604107280893568745904825431692257267135526443711 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 4472, 5, 63⟩], residual := [((4964692616665768239957833217040709313911948806214555943848258053209201399789 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4957 (rho : Nat -> F) : Prop :=
    (relationLc293 rho) * (relationLc294 rho) = ((1 : F) * rho 4783)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 4472, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 4471, 5, 63⟩], residual := [((7069858617104347290068665784591225250822556475237036873297752607851023539293 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4784) * ((1 : F) + (1 : F) * rho 4783) = (relationLc295 rho)

def relationLc296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 4471, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 4472, 5, 63⟩], residual := [((6740979775409447315102366221095070768823522715493011568131450176110930966632 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4785) * ((1 : F) + (-1 : F) * rho 4783) = (relationLc296 rho)

def relationLc297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 63⟩], residual := [((1 : F), 4784), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280) * (relationLc297 rho) = ((1 : F) * rho 4786)

def relationLc298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 63⟩], residual := [((1 : F), 4785), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4280) * (relationLc298 rho) = ((1 : F) * rho 4787)

def relationLc299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4275544026045521543387764973435775239930499568673885139700103275620778568799 : F), 4471, 5, 64⟩], residual := [((6918465407683071827013143227809273434111339304474541289264328778110766408084 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 4472, 5, 64⟩], residual := [((2687488818437579694147825883036614690556389511567113641914435677747780662044 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4962 (rho : Nat -> F) : Prop :=
    (relationLc299 rho) * (relationLc300 rho) = ((1 : F) * rho 4788)

def relationLc301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 4472, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 4471, 5, 64⟩], residual := [((8305443839956705564436770750709549564759730492576378379289857174509179512637 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4789) * ((1 : F) + (1 : F) * rho 4788) = (relationLc301 rho)

def relationLc302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 4471, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 4472, 5, 64⟩], residual := [((8222691234440270234943567991332315348480785560285671531960820207978794062238 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4790) * ((1 : F) + (-1 : F) * rho 4788) = (relationLc302 rho)

def relationLc303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 64⟩], residual := [((1 : F), 4789), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4281) * (relationLc303 rho) = ((1 : F) * rho 4791)

def relationLc304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 64⟩], residual := [((1 : F), 4790), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4281) * (relationLc304 rho) = ((1 : F) * rho 4792)

def relationLc305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3224247449589776035172626644635962173546611304319642440654303000898713426573 : F), 4471, 5, 65⟩], residual := [((6922933048605870567158033117124161753294641474213475748005056560195059560257 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 4472, 5, 65⟩], residual := [((1683532850189794660324898745003693499391356307190748335872042551061169835560 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4967 (rho : Nat -> F) : Prop :=
    (relationLc305 rho) * (relationLc306 rho) = ((1 : F) * rho 4793)

def relationLc307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (902317157370389831525842603890088875280447794660592291372952163507549941826 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 4471, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 4472, 5, 65⟩], residual := [((7312670365796519431784694387136886921904755844807214393926206736205804015550 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4794) * ((1 : F) + (1 : F) * rho 4793) = (relationLc307 rho)

def relationLc308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), runs := [⟨(5200239358287440835861630921144757534105501282585527428798473528966328996373 : F), 4472, 5, 65⟩, ⟨(902317157370389831525842603890088875280447794660592291372952163507549941826 : F), 4471, 5, 65⟩], residual := [((1436455174440920619391968622946117002395595731172664636618509227741715273384 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4795) * ((1 : F) + (-1 : F) * rho 4793) = (relationLc308 rho)

def relationLc309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 65⟩], residual := [((1 : F), 4794), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4282) * (relationLc309 rho) = ((1 : F) * rho 4796)

def relationLc310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 65⟩], residual := [((1 : F), 4795), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4282) * (relationLc310 rho) = ((1 : F) * rho 4797)

def relationLc311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4537829826710099817775550958527656895937789094984491383153961637795690912504 : F), 4471, 5, 66⟩], residual := [((2749188575728518267592553371769543385629672150729245544383062864247726015738 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 4472, 5, 66⟩], residual := [((5712732582707052683841463147070624757472068170351593864520728831317292745745 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4972 (rho : Nat -> F) : Prop :=
    (relationLc311 rho) * (relationLc312 rho) = ((1 : F) * rho 4798)

def relationLc313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 4472, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 4471, 5, 66⟩], residual := [((16915351075377607260359978628048694063113131327014971509268149326087084325 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4799) * ((1 : F) + (1 : F) * rho 4798) = (relationLc313 rho)

def relationLc314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), runs := [⟨(1990284778760382354366126301421247840744168750219190902276997583101766599660 : F), 4471, 5, 66⟩, ⟨(6388657043121660549230831028160993538924153515366441687591910760810683814009 : F), 4472, 5, 66⟩], residual := [((7256193909769812682555148545617782317236443165268330186660581126231576938624 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4800) * ((1 : F) + (-1 : F) * rho 4798) = (relationLc314 rho)

def relationLc315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 66⟩], residual := [((1 : F), 4799), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4283) * (relationLc315 rho) = ((1 : F) * rho 4801)

def relationLc316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 66⟩], residual := [((1 : F), 4800), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4283) * (relationLc316 rho) = ((1 : F) * rho 4802)

def relationLc317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6109128832021984750706140245240785402459174032478405879250343070124721293892 : F), 4471, 5, 67⟩], residual := [((4158886918380229616288312813886586603084732557022387434087401602587801645499 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 4472, 5, 67⟩], residual := [((1403880340404152944062409321333488212033396586256041904966389272209822471960 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4977 (rho : Nat -> F) : Prop :=
    (relationLc317 rho) * (relationLc318 rho) = ((1 : F) * rho 4803)

def relationLc319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 4471, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 4472, 5, 67⟩], residual := [((5880458343632620762281097517229927332634488796828262552420343646432384535300 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4804) * ((1 : F) + (1 : F) * rho 4803) = (relationLc319 rho)

def relationLc320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), runs := [⟨(1936337854828352968662990068812337300600655913260208730490046969402506426584 : F), 4472, 5, 67⟩, ⟨(5618749024591091023872806652974982346797517460397659330355468378624153518522 : F), 4471, 5, 67⟩], residual := [((6302563214434145603166502561364369844950138898125530835850620533193703076781 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4805) * ((1 : F) + (-1 : F) * rho 4803) = (relationLc320 rho)

def relationLc321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 67⟩], residual := [((1 : F), 4804), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4284) * (relationLc321 rho) = ((1 : F) * rho 4806)

def relationLc322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 67⟩], residual := [((1 : F), 4805), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4284) * (relationLc322 rho) = ((1 : F) * rho 4807)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
