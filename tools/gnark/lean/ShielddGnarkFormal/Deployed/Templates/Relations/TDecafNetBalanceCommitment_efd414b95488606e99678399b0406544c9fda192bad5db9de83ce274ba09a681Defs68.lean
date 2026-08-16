import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs67

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow4929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4755) * ((1 : F) + (-1 : F) * rho 4753) = (relationLc260 rho)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 57⟩], residual := [((1 : F), 4754), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274) * (relationLc261 rho) = ((1 : F) * rho 4756)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 57⟩], residual := [((1 : F), 4755), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4274) * (relationLc262 rho) = ((1 : F) * rho 4757)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(524084180428675886543672397609681556426554336728723959300764695871597247972 : F), 4471, 5, 58⟩], residual := [((8159177784869593785714851414914275323374421837278981124961573647596725706590 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 4472, 5, 58⟩], residual := [((4818410470106440592993602454217503026604201031466413301386018723731681557347 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4932 (rho : Nat -> F) : Prop :=
    (relationLc263 rho) * (relationLc264 rho) = ((1 : F) * rho 4758)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 4471, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 4472, 5, 58⟩], residual := [((1106218981458497958090929997340389135549849560237524904762065168860234965828 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4759) * ((1 : F) + (1 : F) * rho 4758) = (relationLc265 rho)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 4472, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 4471, 5, 58⟩], residual := [((1206691177940826882980288408464481501706253944345262571883675572741777720385 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4760) * ((1 : F) + (-1 : F) * rho 4758) = (relationLc266 rho)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 58⟩], residual := [((1 : F), 4759), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4275) * (relationLc267 rho) = ((1 : F) * rho 4761)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 58⟩], residual := [((1 : F), 4760), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4275) * (relationLc268 rho) = ((1 : F) * rho 4762)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131890576141875281224600973972880248638014316522915565049001974436008999143 : F), 4471, 5, 59⟩], residual := [((1415657727944817558036321498320359183668439809908660451453215273345976868294 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 4472, 5, 59⟩], residual := [((6957761489966147102463536657848674738682109125387707163228989845400547908696 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4937 (rho : Nat -> F) : Prop :=
    (relationLc269 rho) * (relationLc270 rho) = ((1 : F) * rho 4763)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 4472, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 4471, 5, 59⟩], residual := [((204896899138276156608811490487570448506503579567677521441478817852347066374 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4764) * ((1 : F) + (1 : F) * rho 4763) = (relationLc271 rho)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 4471, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 4472, 5, 59⟩], residual := [((7751618227805779890321832146482603076959555595875374224837302954543320988612 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4765) * ((1 : F) + (-1 : F) * rho 4763) = (relationLc272 rho)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 59⟩], residual := [((1 : F), 4764), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4276) * (relationLc273 rho) = ((1 : F) * rho 4766)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 59⟩], residual := [((1 : F), 4765), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4276) * (relationLc274 rho) = ((1 : F) * rho 4767)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3152886168502799097382579060289725839662660937575510139529968929225933523775 : F), 4471, 5, 60⟩], residual := [((2011869137363505194314221533266384645990498645936606538812070893317621034740 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 4472, 5, 60⟩], residual := [((919991228339379009134395501819788718201060015650546947921200011276441841381 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4942 (rho : Nat -> F) : Prop :=
    (relationLc275 rho) * (relationLc276 rho) = ((1 : F) * rho 4768)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 4471, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 4472, 5, 60⟩], residual := [((635541301393225325559729522931191776276415449765152077378140844904294167979 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4769) * ((1 : F) + (1 : F) * rho 4768) = (relationLc277 rho)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 4472, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 4471, 5, 60⟩], residual := [((2000379572386245103083883272590658199662225213700833632060373500285939930960 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4770) * ((1 : F) + (-1 : F) * rho 4768) = (relationLc278 rho)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 60⟩], residual := [((1 : F), 4769), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4277) * (relationLc279 rho) = ((1 : F) * rho 4771)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 60⟩], residual := [((1 : F), 4770), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4277) * (relationLc280 rho) = ((1 : F) * rho 4772)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5423475569768402893668164852510319504991268952664783955492332957848289511011 : F), 4471, 5, 61⟩], residual := [((3500172626273557012639355643290277641076954327519743788821693876196605139451 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 4472, 5, 61⟩], residual := [((3431689668434187993890584244318630711849599341807225101580858371388157883389 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4947 (rho : Nat -> F) : Prop :=
    (relationLc281 rho) * (relationLc282 rho) = ((1 : F) * rho 4773)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 4472, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 4471, 5, 61⟩], residual := [((3234385262084257261315600061925317396362471934171204317736244044511646976129 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4774) * ((1 : F) + (1 : F) * rho 4773) = (relationLc283 rho)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 4471, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 4472, 5, 61⟩], residual := [((2023421265549764478714181553218950611586386789275601891859598215504517996158 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4775) * ((1 : F) + (-1 : F) * rho 4773) = (relationLc284 rho)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 61⟩], residual := [((1 : F), 4774), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4278) * (relationLc285 rho) = ((1 : F) * rho 4776)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 61⟩], residual := [((1 : F), 4775), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4278) * (relationLc286 rho) = ((1 : F) * rho 4777)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5015437509650216957144418681816872631395086564863943718944470166433907001455 : F), 4471, 5, 62⟩], residual := [((6493761841058930305538695811595629686051379129441002851272601847272817015518 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 4472, 5, 62⟩], residual := [((7931948794061577444869100559841351758240427914944493816920738967949939539835 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4952 (rho : Nat -> F) : Prop :=
    (relationLc287 rho) * (relationLc288 rho) = ((1 : F) * rho 4778)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 4471, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 4472, 5, 62⟩], residual := [((7967641380236420005410816744904898328271067494934990264715010865771284037645 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4779) * ((1 : F) + (1 : F) * rho 4778) = (relationLc289 rho)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (303547602266770679502157402207952299907312881417246884189324622113708740423 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 4472, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 4471, 5, 62⟩], residual := [((5561764102716542035099189445452256030373191946152764886360758616094121892723 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4780) * ((1 : F) + (-1 : F) * rho 4778) = (relationLc290 rho)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 62⟩], residual := [((1 : F), 4779), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4279) * (relationLc291 rho) = ((1 : F) * rho 4781)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
