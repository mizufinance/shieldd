import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs21

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 902, 5, 52⟩], residual := [((5572009951431654188340934136256813584982401531129506005583899357712942012612 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1158 (rho : Nat -> F) : Prop :=
    (relationLc222 rho) * (relationLc223 rho) = ((1 : F) * rho 1158)

def relationLc224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 901, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 902, 5, 52⟩], residual := [((4767993771597570392825832228250807384100430057271852393934492097679007412061 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1159) * ((1 : F) + (1 : F) * rho 1158) = (relationLc224 rho)

def relationLc225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 902, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 901, 5, 52⟩], residual := [((4938485631131422214938309135964768397685392831276407084547853850081122344138 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1160) * ((1 : F) + (-1 : F) * rho 1158) = (relationLc225 rho)

def relationLc226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 52⟩], residual := [((1 : F), 1159), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 699) * (relationLc226 rho) = ((1 : F) * rho 1161)

def relationLc227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 52⟩], residual := [((1 : F), 1160), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 699) * (relationLc227 rho) = ((1 : F) * rho 1162)

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182152564360992442182523465102481580891280668041367136936940070343748519558 : F), 901, 5, 53⟩], residual := [((6943198048346289648638720780388980245276877908595231600890699249506039923644 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 902, 5, 53⟩], residual := [((6044152122593110290241844700340929891609350526117907361008262393599543854423 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1163 (rho : Nat -> F) : Prop :=
    (relationLc228 rho) * (relationLc229 rho) = ((1 : F) * rho 1163)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 902, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 901, 5, 53⟩], residual := [((8223953149025763997669343325991778527222426481097586590919694886618136319546 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1164) * ((1 : F) + (1 : F) * rho 1163) = (relationLc230 rho)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 901, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 902, 5, 53⟩], residual := [((1074059193230622658889366552226265592333420991687941796125194643194991218718 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1165) * ((1 : F) + (-1 : F) * rho 1163) = (relationLc231 rho)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 53⟩], residual := [((1 : F), 1164), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 700) * (relationLc232 rho) = ((1 : F) * rho 1166)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 53⟩], residual := [((1 : F), 1165), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 700) * (relationLc233 rho) = ((1 : F) * rho 1167)

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6808413011903766006549998320796877852702539675193861145516941276399506816018 : F), 901, 5, 54⟩], residual := [((2078653876375085330570755506944820726864424017494070193222947648354260047450 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 902, 5, 54⟩], residual := [((1117535352919708467003298856946705594138171996205812450165122401498781921758 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1168 (rho : Nat -> F) : Prop :=
    (relationLc234 rho) * (relationLc235 rho) = ((1 : F) * rho 1168)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 901, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 902, 5, 54⟩], residual := [((8251711135249260406100806966604915315686718678539696911960534095358292891000 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1169) * ((1 : F) + (1 : F) * rho 1168) = (relationLc236 rho)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 902, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 901, 5, 54⟩], residual := [((406499423158076462587989054239116175684150879768157699007514725388541219767 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1170) * ((1 : F) + (-1 : F) * rho 1168) = (relationLc237 rho)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 54⟩], residual := [((1 : F), 1169), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 701) * (relationLc238 rho) = ((1 : F) * rho 1171)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 54⟩], residual := [((1 : F), 1170), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 701) * (relationLc239 rho) = ((1 : F) * rho 1172)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4241778507285906304023890710920622738002391730067850306316792979327606586491 : F), 901, 5, 55⟩], residual := [((3953639604614696422056258534890758165879158985720327736734975290798201422962 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 902, 5, 55⟩], residual := [((4202674077261019797308417742231528315489508168641450167521454218641536928405 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1173 (rho : Nat -> F) : Prop :=
    (relationLc240 rho) * (relationLc241 rho) = ((1 : F) * rho 1173)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 901, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 902, 5, 55⟩], residual := [((6289242135744362741006424912991516554672659463911444190486174223078870756193 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1174) * ((1 : F) + (1 : F) * rho 1173) = (relationLc242 rho)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 902, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 901, 5, 55⟩], residual := [((4081541994201287081235435125178318159947695735171393640538024644859002142361 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1175) * ((1 : F) + (-1 : F) * rho 1173) = (relationLc243 rho)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 55⟩], residual := [((1 : F), 1174), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 702) * (relationLc244 rho) = ((1 : F) * rho 1176)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 55⟩], residual := [((1 : F), 1175), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 702) * (relationLc245 rho) = ((1 : F) * rho 1177)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3232437706463025522731683893995780646681337076003310984171596667323596088177 : F), 901, 5, 56⟩], residual := [((7299609171731105528884008602233487209149691230266976954925861013709464027904 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 902, 5, 56⟩], residual := [((4697385226601772918115674698571921054625633824234234862310773431324806444969 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1178 (rho : Nat -> F) : Prop :=
    (relationLc246 rho) * (relationLc247 rho) = ((1 : F) * rho 1178)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 902, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 901, 5, 56⟩], residual := [((7634818012457953007817809817513614978873844348279926353964835327957374854443 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1179) * ((1 : F) + (1 : F) * rho 1178) = (relationLc248 rho)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 901, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 902, 5, 56⟩], residual := [((179401080578215799959902965619016143436365227580858363150386525578722092540 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1180) * ((1 : F) + (-1 : F) * rho 1178) = (relationLc249 rho)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 56⟩], residual := [((1 : F), 1179), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 703) * (relationLc250 rho) = ((1 : F) * rho 1181)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 56⟩], residual := [((1 : F), 1180), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 703) * (relationLc251 rho) = ((1 : F) * rho 1182)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3774969144446435742048391589032906612972572029665734957465671351061396606799 : F), 901, 5, 57⟩], residual := [((299072739935496587008989843645288387599676387176706396165424043784897918067 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 902, 5, 57⟩], residual := [((4136643693283417658736498790494317123120899309936738689803160435184168331615 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1183 (rho : Nat -> F) : Prop :=
    (relationLc252 rho) * (relationLc253 rho) = ((1 : F) * rho 1183)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
