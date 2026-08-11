import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs66

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), runs := [⟨(1903325822680987883718811720128136166280207581202541754996741861475111643211 : F), 4472, 5, 52⟩, ⟨(2919231607229895617088802062315449456569476406537480298657685814045778224439 : F), 4471, 5, 52⟩], residual := [((4938485631131422214938309135964768397685392831276407084547853850081122344138 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4730) * ((1 : F) + (-1 : F) * rho 4728) = (relationLc230 rho)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 52⟩], residual := [((1 : F), 4729), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4269) * (relationLc231 rho) = ((1 : F) * rho 4731)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 52⟩], residual := [((1 : F), 4730), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4269) * (relationLc232 rho) = ((1 : F) * rho 4732)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182152564360992442182523465102481580891280668041367136936940070343748519558 : F), 4471, 5, 53⟩], residual := [((6943198048346289648638720780388980245276877908595231600890699249506039923644 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 4472, 5, 53⟩], residual := [((6044152122593110290241844700340929891609350526117907361008262393599543854423 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4907 (rho : Nat -> F) : Prop :=
    (relationLc233 rho) * (relationLc234 rho) = ((1 : F) * rho 4733)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 4472, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 4471, 5, 53⟩], residual := [((8223953149025763997669343325991778527222426481097586590919694886618136319546 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4734) * ((1 : F) + (1 : F) * rho 4733) = (relationLc235 rho)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 4471, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 4472, 5, 53⟩], residual := [((1074059193230622658889366552226265592333420991687941796125194643194991218718 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4735) * ((1 : F) + (-1 : F) * rho 4733) = (relationLc236 rho)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 53⟩], residual := [((1 : F), 4734), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4270) * (relationLc237 rho) = ((1 : F) * rho 4736)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 53⟩], residual := [((1 : F), 4735), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4270) * (relationLc238 rho) = ((1 : F) * rho 4737)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6808413011903766006549998320796877852702539675193861145516941276399506816018 : F), 4471, 5, 54⟩], residual := [((2078653876375085330570755506944820726864424017494070193222947648354260047450 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 4472, 5, 54⟩], residual := [((1117535352919708467003298856946705594138171996205812450165122401498781921758 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4912 (rho : Nat -> F) : Prop :=
    (relationLc239 rho) * (relationLc240 rho) = ((1 : F) * rho 4738)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 4471, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 4472, 5, 54⟩], residual := [((8251711135249260406100806966604915315686718678539696911960534095358292891000 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4739) * ((1 : F) + (1 : F) * rho 4738) = (relationLc241 rho)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 4472, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 4471, 5, 54⟩], residual := [((406499423158076462587989054239116175684150879768157699007514725388541219767 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4740) * ((1 : F) + (-1 : F) * rho 4738) = (relationLc242 rho)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 54⟩], residual := [((1 : F), 4739), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4271) * (relationLc243 rho) = ((1 : F) * rho 4741)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 54⟩], residual := [((1 : F), 4740), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4271) * (relationLc244 rho) = ((1 : F) * rho 4742)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4241778507285906304023890710920622738002391730067850306316792979327606586491 : F), 4471, 5, 55⟩], residual := [((3953639604614696422056258534890758165879158985720327736734975290798201422962 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 4472, 5, 55⟩], residual := [((4202674077261019797308417742231528315489508168641450167521454218641536928405 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4917 (rho : Nat -> F) : Prop :=
    (relationLc245 rho) * (relationLc246 rho) = ((1 : F) * rho 4743)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 4471, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 4472, 5, 55⟩], residual := [((6289242135744362741006424912991516554672659463911444190486174223078870756193 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4744) * ((1 : F) + (1 : F) * rho 4743) = (relationLc247 rho)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 4472, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 4471, 5, 55⟩], residual := [((4081541994201287081235435125178318159947695735171393640538024644859002142361 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4745) * ((1 : F) + (-1 : F) * rho 4743) = (relationLc248 rho)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 55⟩], residual := [((1 : F), 4744), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4272) * (relationLc249 rho) = ((1 : F) * rho 4746)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 55⟩], residual := [((1 : F), 4745), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4272) * (relationLc250 rho) = ((1 : F) * rho 4747)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3232437706463025522731683893995780646681337076003310984171596667323596088177 : F), 4471, 5, 56⟩], residual := [((7299609171731105528884008602233487209149691230266976954925861013709464027904 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 4472, 5, 56⟩], residual := [((4697385226601772918115674698571921054625633824234234862310773431324806444969 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4922 (rho : Nat -> F) : Prop :=
    (relationLc251 rho) * (relationLc252 rho) = ((1 : F) * rho 4748)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 4472, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 4471, 5, 56⟩], residual := [((7634818012457953007817809817513614978873844348279926353964835327957374854443 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4749) * ((1 : F) + (1 : F) * rho 4748) = (relationLc253 rho)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 4471, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 4472, 5, 56⟩], residual := [((179401080578215799959902965619016143436365227580858363150386525578722092540 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4750) * ((1 : F) + (-1 : F) * rho 4748) = (relationLc254 rho)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 56⟩], residual := [((1 : F), 4749), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4273) * (relationLc255 rho) = ((1 : F) * rho 4751)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 56⟩], residual := [((1 : F), 4750), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4273) * (relationLc256 rho) = ((1 : F) * rho 4752)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3774969144446435742048391589032906612972572029665734957465671351061396606799 : F), 4471, 5, 57⟩], residual := [((299072739935496587008989843645288387599676387176706396165424043784897918067 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 4472, 5, 57⟩], residual := [((4136643693283417658736498790494317123120899309936738689803160435184168331615 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4927 (rho : Nat -> F) : Prop :=
    (relationLc257 rho) * (relationLc258 rho) = ((1 : F) * rho 4753)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 4472, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 4471, 5, 57⟩], residual := [((5718856345688711653013838712769722824923732378485026287620938508700566387628 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4754) * ((1 : F) + (1 : F) * rho 4753) = (relationLc259 rho)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 4471, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 4472, 5, 57⟩], residual := [((7231343637356623423257634274124949318490642965113035378722724702300279934775 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
