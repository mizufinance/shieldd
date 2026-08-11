import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs20

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 773, 5, 53⟩], residual := [((6044152122593110290241844700340929891609350526117907361008262393599543854423 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1034 (rho : Nat -> F) : Prop :=
    (relationLc227 rho) * (relationLc228 rho) = ((1 : F) * rho 1034)

def relationLc229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 773, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 772, 5, 53⟩], residual := [((8223953149025763997669343325991778527222426481097586590919694886618136319546 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1035) * ((1 : F) + (1 : F) * rho 1034) = (relationLc229 rho)

def relationLc230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), runs := [⟨(3037254552235738545372012412330817338112109754189404421058653735150263415751 : F), 772, 5, 53⟩, ⟨(3295995549533402754926033474441756319785857860580828407902210256404160622757 : F), 773, 5, 53⟩], residual := [((1074059193230622658889366552226265592333420991687941796125194643194991218718 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1036) * ((1 : F) + (-1 : F) * rho 1034) = (relationLc230 rho)

def relationLc231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 53⟩], residual := [((1 : F), 1035), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 571) * (relationLc231 rho) = ((1 : F) * rho 1037)

def relationLc232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 53⟩], residual := [((1 : F), 1036), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 571) * (relationLc232 rho) = ((1 : F) * rho 1038)

def relationLc233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6808413011903766006549998320796877852702539675193861145516941276399506816018 : F), 772, 5, 54⟩], residual := [((2078653876375085330570755506944820726864424017494070193222947648354260047450 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 773, 5, 54⟩], residual := [((1117535352919708467003298856946705594138171996205812450165122401498781921758 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1039 (rho : Nat -> F) : Prop :=
    (relationLc233 rho) * (relationLc234 rho) = ((1 : F) * rho 1039)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 772, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 773, 5, 54⟩], residual := [((8251711135249260406100806966604915315686718678539696911960534095358292891000 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1040) * ((1 : F) + (1 : F) * rho 1039) = (relationLc235 rho)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 773, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 772, 5, 54⟩], residual := [((406499423158076462587989054239116175684150879768157699007514725388541219767 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1041) * ((1 : F) + (-1 : F) * rho 1039) = (relationLc236 rho)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 54⟩], residual := [((1 : F), 1040), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 572) * (relationLc237 rho) = ((1 : F) * rho 1042)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 54⟩], residual := [((1 : F), 1041), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 572) * (relationLc238 rho) = ((1 : F) * rho 1043)

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4241778507285906304023890710920622738002391730067850306316792979327606586491 : F), 772, 5, 55⟩], residual := [((3953639604614696422056258534890758165879158985720327736734975290798201422962 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 773, 5, 55⟩], residual := [((4202674077261019797308417742231528315489508168641450167521454218641536928405 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1044 (rho : Nat -> F) : Prop :=
    (relationLc239 rho) * (relationLc240 rho) = ((1 : F) * rho 1044)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 772, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 773, 5, 55⟩], residual := [((6289242135744362741006424912991516554672659463911444190486174223078870756193 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1045) * ((1 : F) + (1 : F) * rho 1044) = (relationLc241 rho)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 773, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 772, 5, 55⟩], residual := [((4081541994201287081235435125178318159947695735171393640538024644859002142361 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1046) * ((1 : F) + (-1 : F) * rho 1044) = (relationLc242 rho)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 55⟩], residual := [((1 : F), 1045), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 573) * (relationLc243 rho) = ((1 : F) * rho 1047)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 55⟩], residual := [((1 : F), 1046), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 573) * (relationLc244 rho) = ((1 : F) * rho 1048)

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3232437706463025522731683893995780646681337076003310984171596667323596088177 : F), 772, 5, 56⟩], residual := [((7299609171731105528884008602233487209149691230266976954925861013709464027904 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 773, 5, 56⟩], residual := [((4697385226601772918115674698571921054625633824234234862310773431324806444969 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1049 (rho : Nat -> F) : Prop :=
    (relationLc245 rho) * (relationLc246 rho) = ((1 : F) * rho 1049)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 773, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 772, 5, 56⟩], residual := [((7634818012457953007817809817513614978873844348279926353964835327957374854443 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1050) * ((1 : F) + (1 : F) * rho 1049) = (relationLc247 rho)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 772, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 773, 5, 56⟩], residual := [((179401080578215799959902965619016143436365227580858363150386525578722092540 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1051) * ((1 : F) + (-1 : F) * rho 1049) = (relationLc248 rho)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 56⟩], residual := [((1 : F), 1050), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 574) * (relationLc249 rho) = ((1 : F) * rho 1052)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 56⟩], residual := [((1 : F), 1051), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 574) * (relationLc250 rho) = ((1 : F) * rho 1053)

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3774969144446435742048391589032906612972572029665734957465671351061396606799 : F), 772, 5, 57⟩], residual := [((299072739935496587008989843645288387599676387176706396165424043784897918067 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 773, 5, 57⟩], residual := [((4136643693283417658736498790494317123120899309936738689803160435184168331615 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1054 (rho : Nat -> F) : Prop :=
    (relationLc251 rho) * (relationLc252 rho) = ((1 : F) * rho 1054)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 773, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 772, 5, 57⟩], residual := [((5718856345688711653013838712769722824923732378485026287620938508700566387628 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1055) * ((1 : F) + (1 : F) * rho 1054) = (relationLc253 rho)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 772, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 773, 5, 57⟩], residual := [((7231343637356623423257634274124949318490642965113035378722724702300279934775 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1056) * ((1 : F) + (-1 : F) * rho 1054) = (relationLc254 rho)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 57⟩], residual := [((1 : F), 1055), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 575) * (relationLc255 rho) = ((1 : F) * rho 1057)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 57⟩], residual := [((1 : F), 1056), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 575) * (relationLc256 rho) = ((1 : F) * rho 1058)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(524084180428675886543672397609681556426554336728723959300764695871597247972 : F), 772, 5, 58⟩], residual := [((8159177784869593785714851414914275323374421837278981124961573647596725706590 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 773, 5, 58⟩], residual := [((4818410470106440592993602454217503026604201031466413301386018723731681557347 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1059 (rho : Nat -> F) : Prop :=
    (relationLc257 rho) * (relationLc258 rho) = ((1 : F) * rho 1059)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
