import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs21

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 772, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 773, 5, 58⟩], residual := [((1106218981458497958090929997340389135549849560237524904762065168860234965828 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1060) * ((1 : F) + (1 : F) * rho 1059) = (relationLc259 rho)

def relationLc260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), runs := [⟨(2127361627108711873134690318043815488888939406947689936119832315342277400913 : F), 773, 5, 58⟩, ⟨(4406431823093205452138701957202896125012302354444603276334868203876177620818 : F), 772, 5, 58⟩], residual := [((1206691177940826882980288408464481501706253944345262571883675572741777720385 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1061) * ((1 : F) + (-1 : F) * rho 1059) = (relationLc260 rho)

def relationLc261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 58⟩], residual := [((1 : F), 1060), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 576) * (relationLc261 rho) = ((1 : F) * rho 1062)

def relationLc262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 58⟩], residual := [((1 : F), 1061), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 576) * (relationLc262 rho) = ((1 : F) * rho 1063)

def relationLc263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3131890576141875281224600973972880248638014316522915565049001974436008999143 : F), 772, 5, 59⟩], residual := [((1415657727944817558036321498320359183668439809908660451453215273345976868294 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 773, 5, 59⟩], residual := [((6957761489966147102463536657848674738682109125387707163228989845400547908696 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1064 (rho : Nat -> F) : Prop :=
    (relationLc263 rho) * (relationLc264 rho) = ((1 : F) * rho 1064)

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 773, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 772, 5, 59⟩], residual := [((204896899138276156608811490487570448506503579567677521441478817852347066374 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1065) * ((1 : F) + (1 : F) * rho 1064) = (relationLc265 rho)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 772, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 773, 5, 59⟩], residual := [((7751618227805779890321832146482603076959555595875374224837302954543320988612 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1066) * ((1 : F) + (-1 : F) * rho 1064) = (relationLc266 rho)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 59⟩], residual := [((1 : F), 1065), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 577) * (relationLc267 rho) = ((1 : F) * rho 1067)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 59⟩], residual := [((1 : F), 1066), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 577) * (relationLc268 rho) = ((1 : F) * rho 1068)

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3152886168502799097382579060289725839662660937575510139529968929225933523775 : F), 772, 5, 60⟩], residual := [((2011869137363505194314221533266384645990498645936606538812070893317621034740 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 773, 5, 60⟩], residual := [((919991228339379009134395501819788718201060015650546947921200011276441841381 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1069 (rho : Nat -> F) : Prop :=
    (relationLc269 rho) * (relationLc270 rho) = ((1 : F) * rho 1069)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 772, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 773, 5, 60⟩], residual := [((635541301393225325559729522931191776276415449765152077378140844904294167979 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1070) * ((1 : F) + (1 : F) * rho 1069) = (relationLc271 rho)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 773, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 772, 5, 60⟩], residual := [((2000379572386245103083883272590658199662225213700833632060373500285939930960 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1071) * ((1 : F) + (-1 : F) * rho 1069) = (relationLc272 rho)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 60⟩], residual := [((1 : F), 1070), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 578) * (relationLc273 rho) = ((1 : F) * rho 1072)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 60⟩], residual := [((1 : F), 1071), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 578) * (relationLc274 rho) = ((1 : F) * rho 1073)

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5423475569768402893668164852510319504991268952664783955492332957848289511011 : F), 772, 5, 61⟩], residual := [((3500172626273557012639355643290277641076954327519743788821693876196605139451 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 773, 5, 61⟩], residual := [((3431689668434187993890584244318630711849599341807225101580858371388157883389 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1074 (rho : Nat -> F) : Prop :=
    (relationLc275 rho) * (relationLc276 rho) = ((1 : F) * rho 1074)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 773, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 772, 5, 61⟩], residual := [((3234385262084257261315600061925317396362471934171204317736244044511646976129 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1075) * ((1 : F) + (1 : F) * rho 1074) = (relationLc277 rho)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 772, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 773, 5, 61⟩], residual := [((2023421265549764478714181553218950611586386789275601891859598215504517996158 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1076) * ((1 : F) + (-1 : F) * rho 1074) = (relationLc278 rho)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 61⟩], residual := [((1 : F), 1075), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 579) * (relationLc279 rho) = ((1 : F) * rho 1077)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 61⟩], residual := [((1 : F), 1076), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 579) * (relationLc280 rho) = ((1 : F) * rho 1078)

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5015437509650216957144418681816872631395086564863943718944470166433907001455 : F), 772, 5, 62⟩], residual := [((6493761841058930305538695811595629686051379129441002851272601847272817015518 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 773, 5, 62⟩], residual := [((7931948794061577444869100559841351758240427914944493816920738967949939539835 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1079 (rho : Nat -> F) : Prop :=
    (relationLc281 rho) * (relationLc282 rho) = ((1 : F) * rho 1079)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 772, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 773, 5, 62⟩], residual := [((7967641380236420005410816744904898328271067494934990264715010865771284037645 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1080) * ((1 : F) + (1 : F) * rho 1079) = (relationLc283 rho)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (303547602266770679502157402207952299907312881417246884189324622113708740423 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 773, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 772, 5, 62⟩], residual := [((5561764102716542035099189445452256030373191946152764886360758616094121892723 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1081) * ((1 : F) + (-1 : F) * rho 1079) = (relationLc284 rho)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 62⟩], residual := [((1 : F), 1080), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 580) * (relationLc285 rho) = ((1 : F) * rho 1082)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 62⟩], residual := [((1 : F), 1081), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 580) * (relationLc286 rho) = ((1 : F) * rho 1083)

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3085616442776849438476212581616932439034899615310675205518179401870911711973 : F), 772, 5, 63⟩], residual := [((1026790005384380925460007667604107280893568745904825431692257267135526443711 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 773, 5, 63⟩], residual := [((4964692616665768239957833217040709313911948806214555943848258053209201399789 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1084 (rho : Nat -> F) : Prop :=
    (relationLc287 rho) * (relationLc288 rho) = ((1 : F) * rho 1084)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 773, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 772, 5, 63⟩], residual := [((7069858617104347290068665784591225250822556475237036873297752607851023539293 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1085) * ((1 : F) + (1 : F) * rho 1084) = (relationLc289 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
