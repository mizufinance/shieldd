import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs22

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 902, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 901, 5, 57⟩], residual := [((5718856345688711653013838712769722824923732378485026287620938508700566387628 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1184) * ((1 : F) + (1 : F) * rho 1183) = (relationLc254 rho)

def relationLc255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), runs := [⟨(6640201746568804013369727419936970288207999284516108864618710019288127235417 : F), 901, 5, 57⟩, ⟨(6824464117675967772702227761388542863191507066911862144636666844503627060280 : F), 902, 5, 57⟩], residual := [((7231343637356623423257634274124949318490642965113035378722724702300279934775 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * ((1 : F) + (-1 : F) * rho 1183) = (relationLc255 rho)

def relationLc256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 57⟩], residual := [((1 : F), 1184), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 704) * (relationLc256 rho) = ((1 : F) * rho 1186)

def relationLc257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 57⟩], residual := [((1 : F), 1185), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 704) * (relationLc257 rho) = ((1 : F) * rho 1187)

def relationLc258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(524084180428675886543672397609681556426554336728723959300764695871597247972 : F), 901, 5, 58⟩], residual := [((8159177784869593785714851414914275323374421837278981124961573647596725706590 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 902, 5, 58⟩], residual := [((4818410470106440592993602454217503026604201031466413301386018723731681557347 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1188 (rho : Nat -> F) : Prop :=
    (relationLc258 rho) * (relationLc259 rho) = ((1 : F) * rho 1188)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 901, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 902, 5, 58⟩], residual := [((1106218981458497958090929997340389135549849560237524904762065168860234965828 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1189) * ((1 : F) + (1 : F) * rho 1188) = (relationLc260 rho)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 902, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 901, 5, 58⟩], residual := [((1206691177940826882980288408464481501706253944345262571883675572741777720385 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * ((1 : F) + (-1 : F) * rho 1188) = (relationLc261 rho)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 58⟩], residual := [((1 : F), 1189), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 705) * (relationLc262 rho) = ((1 : F) * rho 1191)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 58⟩], residual := [((1 : F), 1190), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 705) * (relationLc263 rho) = ((1 : F) * rho 1192)

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131890576141875281224600973972880248638014316522915565049001974436008999143 : F), 901, 5, 59⟩], residual := [((1415657727944817558036321498320359183668439809908660451453215273345976868294 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 902, 5, 59⟩], residual := [((6957761489966147102463536657848674738682109125387707163228989845400547908696 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1193 (rho : Nat -> F) : Prop :=
    (relationLc264 rho) * (relationLc265 rho) = ((1 : F) * rho 1193)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 902, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 901, 5, 59⟩], residual := [((204896899138276156608811490487570448506503579567677521441478817852347066374 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * ((1 : F) + (1 : F) * rho 1193) = (relationLc266 rho)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 901, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 902, 5, 59⟩], residual := [((7751618227805779890321832146482603076959555595875374224837302954543320988612 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((1 : F) + (-1 : F) * rho 1193) = (relationLc267 rho)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 59⟩], residual := [((1 : F), 1194), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 706) * (relationLc268 rho) = ((1 : F) * rho 1196)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 59⟩], residual := [((1 : F), 1195), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 706) * (relationLc269 rho) = ((1 : F) * rho 1197)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3152886168502799097382579060289725839662660937575510139529968929225933523775 : F), 901, 5, 60⟩], residual := [((2011869137363505194314221533266384645990498645936606538812070893317621034740 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 902, 5, 60⟩], residual := [((919991228339379009134395501819788718201060015650546947921200011276441841381 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1198 (rho : Nat -> F) : Prop :=
    (relationLc270 rho) * (relationLc271 rho) = ((1 : F) * rho 1198)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 901, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 902, 5, 60⟩], residual := [((635541301393225325559729522931191776276415449765152077378140844904294167979 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * ((1 : F) + (1 : F) * rho 1198) = (relationLc272 rho)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 902, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 901, 5, 60⟩], residual := [((2000379572386245103083883272590658199662225213700833632060373500285939930960 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * ((1 : F) + (-1 : F) * rho 1198) = (relationLc273 rho)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 60⟩], residual := [((1 : F), 1199), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 707) * (relationLc274 rho) = ((1 : F) * rho 1201)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 60⟩], residual := [((1 : F), 1200), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 707) * (relationLc275 rho) = ((1 : F) * rho 1202)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5423475569768402893668164852510319504991268952664783955492332957848289511011 : F), 901, 5, 61⟩], residual := [((3500172626273557012639355643290277641076954327519743788821693876196605139451 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 902, 5, 61⟩], residual := [((3431689668434187993890584244318630711849599341807225101580858371388157883389 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1203 (rho : Nat -> F) : Prop :=
    (relationLc276 rho) * (relationLc277 rho) = ((1 : F) * rho 1203)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 902, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 901, 5, 61⟩], residual := [((3234385262084257261315600061925317396362471934171204317736244044511646976129 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * ((1 : F) + (1 : F) * rho 1203) = (relationLc278 rho)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 901, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 902, 5, 61⟩], residual := [((2023421265549764478714181553218950611586386789275601891859598215504517996158 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * ((1 : F) + (-1 : F) * rho 1203) = (relationLc279 rho)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 61⟩], residual := [((1 : F), 1204), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 708) * (relationLc280 rho) = ((1 : F) * rho 1206)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 61⟩], residual := [((1 : F), 1205), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 708) * (relationLc281 rho) = ((1 : F) * rho 1207)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5015437509650216957144418681816872631395086564863943718944470166433907001455 : F), 901, 5, 62⟩], residual := [((6493761841058930305538695811595629686051379129441002851272601847272817015518 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 902, 5, 62⟩], residual := [((7931948794061577444869100559841351758240427914944493816920738967949939539835 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1208 (rho : Nat -> F) : Prop :=
    (relationLc282 rho) * (relationLc283 rho) = ((1 : F) * rho 1208)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 901, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 902, 5, 62⟩], residual := [((7967641380236420005410816744904898328271067494934990264715010865771284037645 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * ((1 : F) + (1 : F) * rho 1208) = (relationLc284 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
