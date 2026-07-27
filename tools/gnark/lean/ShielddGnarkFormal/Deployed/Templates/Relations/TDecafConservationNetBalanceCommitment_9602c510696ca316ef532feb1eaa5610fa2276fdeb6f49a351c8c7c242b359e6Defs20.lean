import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 643, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 644, 5, 54⟩], residual := [((8251711135249260406100806966604915315686718678539696911960534095358292891000 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 911) * ((1 : F) + (1 : F) * rho 910) = (relationLc234 rho)

def relationLc235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), runs := [⟨(5875081942588848072609510491460054995125278729835776883031261976881455252579 : F), 644, 5, 54⟩, ⟨(8292772072364267580374945712020106495511610328507828584634306768877041217790 : F), 643, 5, 54⟩], residual := [((406499423158076462587989054239116175684150879768157699007514725388541219767 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 912) * ((1 : F) + (-1 : F) * rho 910) = (relationLc235 rho)

def relationLc236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 54⟩], residual := [((1 : F), 911), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 443) * (relationLc236 rho) = ((1 : F) * rho 913)

def relationLc237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 54⟩], residual := [((1 : F), 912), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 443) * (relationLc237 rho) = ((1 : F) * rho 914)

def relationLc238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4241778507285906304023890710920622738002391730067850306316792979327606586491 : F), 643, 5, 55⟩], residual := [((3953639604614696422056258534890758165879158985720327736734975290798201422962 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 644, 5, 55⟩], residual := [((4202674077261019797308417742231528315489508168641450167521454218641536928405 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow915 (rho : Nat -> F) : Prop :=
    (relationLc238 rho) * (relationLc239 rho) = ((1 : F) * rho 915)

def relationLc240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 643, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 644, 5, 55⟩], residual := [((6289242135744362741006424912991516554672659463911444190486174223078870756193 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 916) * ((1 : F) + (1 : F) * rho 915) = (relationLc240 rho)

def relationLc241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 644, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 643, 5, 55⟩], residual := [((4081541994201287081235435125178318159947695735171393640538024644859002142361 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 917) * ((1 : F) + (-1 : F) * rho 915) = (relationLc241 rho)

def relationLc242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 55⟩], residual := [((1 : F), 916), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 444) * (relationLc242 rho) = ((1 : F) * rho 918)

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 55⟩], residual := [((1 : F), 917), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 444) * (relationLc243 rho) = ((1 : F) * rho 919)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3232437706463025522731683893995780646681337076003310984171596667323596088177 : F), 643, 5, 56⟩], residual := [((7299609171731105528884008602233487209149691230266976954925861013709464027904 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 644, 5, 56⟩], residual := [((4697385226601772918115674698571921054625633824234234862310773431324806444969 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow920 (rho : Nat -> F) : Prop :=
    (relationLc244 rho) * (relationLc245 rho) = ((1 : F) * rho 920)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 644, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 643, 5, 56⟩], residual := [((7634818012457953007817809817513614978873844348279926353964835327957374854443 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 921) * ((1 : F) + (1 : F) * rho 920) = (relationLc246 rho)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 643, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 644, 5, 56⟩], residual := [((179401080578215799959902965619016143436365227580858363150386525578722092540 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 922) * ((1 : F) + (-1 : F) * rho 920) = (relationLc247 rho)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 56⟩], residual := [((1 : F), 921), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 445) * (relationLc248 rho) = ((1 : F) * rho 923)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 56⟩], residual := [((1 : F), 922), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 445) * (relationLc249 rho) = ((1 : F) * rho 924)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3774969144446435742048391589032906612972572029665734957465671351061396606799 : F), 643, 5, 57⟩], residual := [((299072739935496587008989843645288387599676387176706396165424043784897918067 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 644, 5, 57⟩], residual := [((4136643693283417658736498790494317123120899309936738689803160435184168331615 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow925 (rho : Nat -> F) : Prop :=
    (relationLc250 rho) * (relationLc251 rho) = ((1 : F) * rho 925)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 644, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 643, 5, 57⟩], residual := [((5718856345688711653013838712769722824923732378485026287620938508700566387628 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 926) * ((1 : F) + (1 : F) * rho 925) = (relationLc252 rho)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 643, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 644, 5, 57⟩], residual := [((7231343637356623423257634274124949318490642965113035378722724702300279934775 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 927) * ((1 : F) + (-1 : F) * rho 925) = (relationLc253 rho)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 57⟩], residual := [((1 : F), 926), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 446) * (relationLc254 rho) = ((1 : F) * rho 928)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 57⟩], residual := [((1 : F), 927), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 446) * (relationLc255 rho) = ((1 : F) * rho 929)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(524084180428675886543672397609681556426554336728723959300764695871597247972 : F), 643, 5, 58⟩], residual := [((8159177784869593785714851414914275323374421837278981124961573647596725706590 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 644, 5, 58⟩], residual := [((4818410470106440592993602454217503026604201031466413301386018723731681557347 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow930 (rho : Nat -> F) : Prop :=
    (relationLc256 rho) * (relationLc257 rho) = ((1 : F) * rho 930)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 643, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 644, 5, 58⟩], residual := [((1106218981458497958090929997340389135549849560237524904762065168860234965828 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 931) * ((1 : F) + (1 : F) * rho 930) = (relationLc258 rho)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 644, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 643, 5, 58⟩], residual := [((1206691177940826882980288408464481501706253944345262571883675572741777720385 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 932) * ((1 : F) + (-1 : F) * rho 930) = (relationLc259 rho)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 58⟩], residual := [((1 : F), 931), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 447) * (relationLc260 rho) = ((1 : F) * rho 933)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 58⟩], residual := [((1 : F), 932), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 447) * (relationLc261 rho) = ((1 : F) * rho 934)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131890576141875281224600973972880248638014316522915565049001974436008999143 : F), 643, 5, 59⟩], residual := [((1415657727944817558036321498320359183668439809908660451453215273345976868294 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 644, 5, 59⟩], residual := [((6957761489966147102463536657848674738682109125387707163228989845400547908696 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow935 (rho : Nat -> F) : Prop :=
    (relationLc262 rho) * (relationLc263 rho) = ((1 : F) * rho 935)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 644, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 643, 5, 59⟩], residual := [((204896899138276156608811490487570448506503579567677521441478817852347066374 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 936) * ((1 : F) + (1 : F) * rho 935) = (relationLc264 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
