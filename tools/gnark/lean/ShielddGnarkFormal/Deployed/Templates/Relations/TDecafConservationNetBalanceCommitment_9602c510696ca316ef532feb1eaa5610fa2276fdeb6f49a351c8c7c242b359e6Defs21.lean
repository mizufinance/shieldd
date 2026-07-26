import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs20

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), runs := [⟨(1621004738082990142786959885635228248055497952531773412450246383516281998530 : F), 643, 5, 59⟩, ⟨(8272192720004862615237834357771787178613016930498973115665476596502499155022 : F), 644, 5, 59⟩], residual := [((7751618227805779890321832146482603076959555595875374224837302954543320988612 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 937) * ((1 : F) + (-1 : F) * rho 935) = (relationLc265 rho)

def relationLc266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 59⟩], residual := [((1 : F), 936), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 448) * (relationLc266 rho) = ((1 : F) * rho 938)

def relationLc267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 59⟩], residual := [((1 : F), 937), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 448) * (relationLc267 rho) = ((1 : F) * rho 939)

def relationLc268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3152886168502799097382579060289725839662660937575510139529968929225933523775 : F), 643, 5, 60⟩], residual := [((2011869137363505194314221533266384645990498645936606538812070893317621034740 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 644, 5, 60⟩], residual := [((919991228339379009134395501819788718201060015650546947921200011276441841381 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow940 (rho : Nat -> F) : Prop :=
    (relationLc268 rho) * (relationLc269 rho) = ((1 : F) * rho 940)

def relationLc270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 643, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 644, 5, 60⟩], residual := [((635541301393225325559729522931191776276415449765152077378140844904294167979 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 941) * ((1 : F) + (1 : F) * rho 940) = (relationLc270 rho)

def relationLc271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), runs := [⟨(1532842742421466332865189885969075546187903176630917738446884443155235417583 : F), 644, 5, 60⟩, ⟨(3230823659574768590239895066051487011759337290572182249312707742251254035493 : F), 643, 5, 60⟩], residual := [((2000379572386245103083883272590658199662225213700833632060373500285939930960 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 942) * ((1 : F) + (-1 : F) * rho 940) = (relationLc271 rho)

def relationLc272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 60⟩], residual := [((1 : F), 941), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 449) * (relationLc272 rho) = ((1 : F) * rho 943)

def relationLc273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 60⟩], residual := [((1 : F), 942), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 449) * (relationLc273 rho) = ((1 : F) * rho 944)

def relationLc274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5423475569768402893668164852510319504991268952664783955492332957848289511011 : F), 643, 5, 61⟩], residual := [((3500172626273557012639355643290277641076954327519743788821693876196605139451 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 644, 5, 61⟩], residual := [((3431689668434187993890584244318630711849599341807225101580858371388157883389 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow945 (rho : Nat -> F) : Prop :=
    (relationLc274 rho) * (relationLc275 rho) = ((1 : F) * rho 945)

def relationLc276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 644, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 643, 5, 61⟩], residual := [((3234385262084257261315600061925317396362471934171204317736244044511646976129 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 946) * ((1 : F) + (1 : F) * rho 945) = (relationLc276 rho)

def relationLc277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), runs := [⟨(1167234669784873199247943210038828546531729079385709966290895829345606702366 : F), 643, 5, 61⟩, ⟨(2925630739977439214385282704673289636320483936949293461759598321035239441757 : F), 644, 5, 61⟩], residual := [((2023421265549764478714181553218950611586386789275601891859598215504517996158 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 947) * ((1 : F) + (-1 : F) * rho 945) = (relationLc277 rho)

def relationLc278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 61⟩], residual := [((1 : F), 946), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 450) * (relationLc278 rho) = ((1 : F) * rho 948)

def relationLc279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 61⟩], residual := [((1 : F), 947), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 450) * (relationLc279 rho) = ((1 : F) * rho 949)

def relationLc280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5015437509650216957144418681816872631395086564863943718944470166433907001455 : F), 643, 5, 62⟩], residual := [((6493761841058930305538695811595629686051379129441002851272601847272817015518 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 644, 5, 62⟩], residual := [((7931948794061577444869100559841351758240427914944493816920738967949939539835 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow950 (rho : Nat -> F) : Prop :=
    (relationLc280 rho) * (relationLc281 rho) = ((1 : F) * rho 950)

def relationLc282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 643, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 644, 5, 62⟩], residual := [((7967641380236420005410816744904898328271067494934990264715010865771284037645 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 951) * ((1 : F) + (1 : F) * rho 950) = (relationLc282 rho)

def relationLc283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (303547602266770679502157402207952299907312881417246884189324622113708740423 : F), runs := [⟨(303547602266770679502157402207952299907312881417246884189324622113708740423 : F), 644, 5, 62⟩, ⟨(8417216788374674378530715777307149838921715294950683024294768972497938687519 : F), 643, 5, 62⟩], residual := [((5561764102716542035099189445452256030373191946152764886360758616094121892723 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 952) * ((1 : F) + (-1 : F) * rho 950) = (relationLc283 rho)

def relationLc284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 62⟩], residual := [((1 : F), 951), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 451) * (relationLc284 rho) = ((1 : F) * rho 953)

def relationLc285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 62⟩], residual := [((1 : F), 952), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 451) * (relationLc285 rho) = ((1 : F) * rho 954)

def relationLc286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3085616442776849438476212581616932439034899615310675205518179401870911711973 : F), 643, 5, 63⟩], residual := [((1026790005384380925460007667604107280893568745904825431692257267135526443711 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 644, 5, 63⟩], residual := [((4964692616665768239957833217040709313911948806214555943848258053209201399789 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow955 (rho : Nat -> F) : Prop :=
    (relationLc286 rho) * (relationLc287 rho) = ((1 : F) * rho 955)

def relationLc288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 644, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 643, 5, 63⟩], residual := [((7069858617104347290068665784591225250822556475237036873297752607851023539293 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 956) * ((1 : F) + (1 : F) * rho 955) = (relationLc288 rho)

def relationLc289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), runs := [⟨(3111078396534832835386382182288839640697370427680835535566824491907144902318 : F), 643, 5, 63⟩, ⟨(4263783443999020770082070256280528100889533725827625955910873617900006620738 : F), 644, 5, 63⟩], residual := [((6740979775409447315102366221095070768823522715493011568131450176110930966632 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 957) * ((1 : F) + (-1 : F) * rho 955) = (relationLc289 rho)

def relationLc290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 63⟩], residual := [((1 : F), 956), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 452) * (relationLc290 rho) = ((1 : F) * rho 958)

def relationLc291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 63⟩], residual := [((1 : F), 957), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 452) * (relationLc291 rho) = ((1 : F) * rho 959)

def relationLc292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4275544026045521543387764973435775239930499568673885139700103275620778568799 : F), 643, 5, 64⟩], residual := [((6918465407683071827013143227809273434111339304474541289264328778110766408084 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 644, 5, 64⟩], residual := [((2687488818437579694147825883036614690556389511567113641914435677747780662044 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow960 (rho : Nat -> F) : Prop :=
    (relationLc292 rho) * (relationLc293 rho) = ((1 : F) * rho 960)

def relationLc294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 644, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 643, 5, 64⟩], residual := [((8305443839956705564436770750709549564759730492576378379289857174509179512637 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 961) * ((1 : F) + (1 : F) * rho 960) = (relationLc294 rho)

def relationLc295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), runs := [⟨(4534538800721556770611813040316928926053594845112429619267494431235186846794 : F), 643, 5, 64⟩, ⟨(5812747938128973066387518971433389941731355583367749944858341760386598671478 : F), 644, 5, 64⟩], residual := [((8222691234440270234943567991332315348480785560285671531960820207978794062238 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 962) * ((1 : F) + (-1 : F) * rho 960) = (relationLc295 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
