import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs27

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationLc243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 54⟩], residual := [((1 : F), 1686), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1217) * (relationLc243 rho) = ((1 : F) * rho 1688)

def relationLc244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4241778507285906304023890710920622738002391730067850306316792979327606586491 : F), 1417, 5, 55⟩], residual := [((3953639604614696422056258534890758165879158985720327736734975290798201422962 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 1418, 5, 55⟩], residual := [((4202674077261019797308417742231528315489508168641450167521454218641536928405 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1689 (rho : Nat -> F) : Prop :=
    (relationLc244 rho) * (relationLc245 rho) = ((1 : F) * rho 1689)

def relationLc246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 1417, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 1418, 5, 55⟩], residual := [((6289242135744362741006424912991516554672659463911444190486174223078870756193 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1690) * ((1 : F) + (1 : F) * rho 1689) = (relationLc246 rho)

def relationLc247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), runs := [⟨(4362000035622490489285730153992099705953129875726715465701847396296089380831 : F), 1418, 5, 55⟩, ⟨(5060467814551793537730414744176317199257695305081844495434373397672644180856 : F), 1417, 5, 55⟩], residual := [((4081541994201287081235435125178318159947695735171393640538024644859002142361 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1691) * ((1 : F) + (-1 : F) * rho 1689) = (relationLc247 rho)

def relationLc248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 55⟩], residual := [((1 : F), 1690), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1218) * (relationLc248 rho) = ((1 : F) * rho 1692)

def relationLc249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 55⟩], residual := [((1 : F), 1691), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1218) * (relationLc249 rho) = ((1 : F) * rho 1693)

def relationLc250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3232437706463025522731683893995780646681337076003310984171596667323596088177 : F), 1417, 5, 56⟩], residual := [((7299609171731105528884008602233487209149691230266976954925861013709464027904 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 1418, 5, 56⟩], residual := [((4697385226601772918115674698571921054625633824234234862310773431324806444969 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1694 (rho : Nat -> F) : Prop :=
    (relationLc250 rho) * (relationLc251 rho) = ((1 : F) * rho 1694)

def relationLc252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 1418, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 1417, 5, 56⟩], residual := [((7634818012457953007817809817513614978873844348279926353964835327957374854443 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1695) * ((1 : F) + (1 : F) * rho 1694) = (relationLc252 rho)

def relationLc253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), runs := [⟨(2337818334646333935860681520483191163409561227869139208382710125392727957165 : F), 1417, 5, 56⟩, ⟨(7249163109557837648328346491279227387124921652807180012188093991347621897690 : F), 1418, 5, 56⟩], residual := [((179401080578215799959902965619016143436365227580858363150386525578722092540 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1696) * ((1 : F) + (-1 : F) * rho 1694) = (relationLc253 rho)

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 56⟩], residual := [((1 : F), 1695), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * (relationLc254 rho) = ((1 : F) * rho 1697)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 56⟩], residual := [((1 : F), 1696), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * (relationLc255 rho) = ((1 : F) * rho 1698)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3774969144446435742048391589032906612972572029665734957465671351061396606799 : F), 1417, 5, 57⟩], residual := [((299072739935496587008989843645288387599676387176706396165424043784897918067 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 1418, 5, 57⟩], residual := [((4136643693283417658736498790494317123120899309936738689803160435184168331615 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1699 (rho : Nat -> F) : Prop :=
    (relationLc256 rho) * (relationLc257 rho) = ((1 : F) * rho 1699)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 1418, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 1417, 5, 57⟩], residual := [((5718856345688711653013838712769722824923732378485026287620938508700566387628 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1700) * ((1 : F) + (1 : F) * rho 1699) = (relationLc258 rho)

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 1417, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 1418, 5, 57⟩], residual := [((7231343637356623423257634274124949318490642965113035378722724702300279934775 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1701) * ((1 : F) + (-1 : F) * rho 1699) = (relationLc259 rho)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 57⟩], residual := [((1 : F), 1700), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * (relationLc260 rho) = ((1 : F) * rho 1702)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 57⟩], residual := [((1 : F), 1701), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * (relationLc261 rho) = ((1 : F) * rho 1703)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(524084180428675886543672397609681556426554336728723959300764695871597247972 : F), 1417, 5, 58⟩], residual := [((8159177784869593785714851414914275323374421837278981124961573647596725706590 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 1418, 5, 58⟩], residual := [((4818410470106440592993602454217503026604201031466413301386018723731681557347 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1704 (rho : Nat -> F) : Prop :=
    (relationLc262 rho) * (relationLc263 rho) = ((1 : F) * rho 1704)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 1417, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 1418, 5, 58⟩], residual := [((1106218981458497958090929997340389135549849560237524904762065168860234965828 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1705) * ((1 : F) + (1 : F) * rho 1704) = (relationLc264 rho)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 1418, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 1417, 5, 58⟩], residual := [((1206691177940826882980288408464481501706253944345262571883675572741777720385 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1706) * ((1 : F) + (-1 : F) * rho 1704) = (relationLc265 rho)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 58⟩], residual := [((1 : F), 1705), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1221) * (relationLc266 rho) = ((1 : F) * rho 1707)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 58⟩], residual := [((1 : F), 1706), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1221) * (relationLc267 rho) = ((1 : F) * rho 1708)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131890576141875281224600973972880248638014316522915565049001974436008999143 : F), 1417, 5, 59⟩], residual := [((1415657727944817558036321498320359183668439809908660451453215273345976868294 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 1418, 5, 59⟩], residual := [((6957761489966147102463536657848674738682109125387707163228989845400547908696 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1709 (rho : Nat -> F) : Prop :=
    (relationLc268 rho) * (relationLc269 rho) = ((1 : F) * rho 1709)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 1418, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 1417, 5, 59⟩], residual := [((204896899138276156608811490487570448506503579567677521441478817852347066374 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1710) * ((1 : F) + (1 : F) * rho 1709) = (relationLc270 rho)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 1417, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 1418, 5, 59⟩], residual := [((7751618227805779890321832146482603076959555595875374224837302954543320988612 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1711) * ((1 : F) + (-1 : F) * rho 1709) = (relationLc271 rho)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 59⟩], residual := [((1 : F), 1710), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1222) * (relationLc272 rho) = ((1 : F) * rho 1712)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 59⟩], residual := [((1 : F), 1711), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1222) * (relationLc273 rho) = ((1 : F) * rho 1713)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
