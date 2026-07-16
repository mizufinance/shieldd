import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 41⟩], residual := [((1 : F), 1104), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 688) * (relationLc160 rho) = ((1 : F) * rho 1106)

def relationLc161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 41⟩], residual := [((1 : F), 1105), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 688) * (relationLc161 rho) = ((1 : F) * rho 1107)

def relationLc162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6620513463604564345073214666075664367426910284512917265234041975043402793122 : F), 901, 5, 42⟩], residual := [((7436751760925585561427031009792801331603819545045592089676057923928892304817 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 902, 5, 42⟩], residual := [((2939932435192350759588327226030855504706999133093673382039325191886460435704 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1108 (rho : Nat -> F) : Prop :=
    (relationLc162 rho) * (relationLc163 rho) = ((1 : F) * rho 1108)

def relationLc164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (691107962960125451820792919114883523257246516787541835903999313634760465953 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 902, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 901, 5, 42⟩], residual := [((1561538740238133810228018557130394999851623280057903127517534636011163755207 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1109) * ((1 : F) + (1 : F) * rho 1108) = (relationLc164 rho)

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), runs := [⟨(691107962960125451820792919114883523257246516787541835903999313634760465953 : F), 901, 5, 42⟩, ⟨(7672367942368438599299519644714544636366400094653182410168657611722083533506 : F), 902, 5, 42⟩], residual := [((4318398590547212567492043087642932115135287577929445735669465112623843421085 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1110) * ((1 : F) + (-1 : F) * rho 1108) = (relationLc165 rho)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 42⟩], residual := [((1 : F), 1109), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 689) * (relationLc166 rho) = ((1 : F) * rho 1111)

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 42⟩], residual := [((1 : F), 1110), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 689) * (relationLc167 rho) = ((1 : F) * rho 1112)

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3310904423929894049077323221082868180583670879235524239193955991098358373090 : F), 901, 5, 43⟩], residual := [((3232926487688007175090435311618900017574627868136506147532084414887399693165 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 902, 5, 43⟩], residual := [((115865106503725756394155385793040437931618580738367618357081553739839235807 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1113 (rho : Nat -> F) : Prop :=
    (relationLc168 rho) * (relationLc169 rho) = ((1 : F) * rho 1113)

def relationLc170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 901, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 902, 5, 43⟩], residual := [((4927567058590423375496213695940230269283984480661664657093946453458061248413 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1114) * ((1 : F) + (1 : F) * rho 1113) = (relationLc170 rho)

def relationLc171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (780971775079260258991889930864327822057086920022250689252937467789492067549 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 902, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 901, 5, 43⟩], residual := [((7088496348690373749644021251488578224873131914528074940621077929673412345621 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1115) * ((1 : F) + (-1 : F) * rho 1113) = (relationLc171 rho)

def relationLc172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 43⟩], residual := [((1 : F), 1114), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 690) * (relationLc172 rho) = ((1 : F) * rho 1116)

def relationLc173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 43⟩], residual := [((1 : F), 1115), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 690) * (relationLc173 rho) = ((1 : F) * rho 1117)

def relationLc174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(650753434257975203573851883248475753622073845092733683578003776733255293675 : F), 901, 5, 44⟩], residual := [((5458092192354468882986918341267721405332821468551780284642132588836982445492 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 902, 5, 44⟩], residual := [((5657095955849052796901570215817145103839611337387645134473223189811350446069 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1118 (rho : Nat -> F) : Prop :=
    (relationLc174 rho) * (relationLc175 rho) = ((1 : F) * rho 1118)

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 902, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 901, 5, 44⟩], residual := [((8319984296679295469118673247946009724586115471295364612950212392930254973713 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1119) * ((1 : F) + (1 : F) * rho 1118) = (relationLc176 rho)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (947806450344414283026787655124194885763009582410566160659921266247181392694 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 901, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 902, 5, 44⟩], residual := [((6186649214413368721256092011966490478850666957118308608502157493701336786112 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1120) * ((1 : F) + (-1 : F) * rho 1118) = (relationLc177 rho)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 44⟩], residual := [((1 : F), 1119), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 691) * (relationLc178 rho) = ((1 : F) * rho 1121)

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 44⟩], residual := [((1 : F), 1120), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 691) * (relationLc179 rho) = ((1 : F) * rho 1122)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2057635338970283122697898952596552282311371524562689697330610978402084947093 : F), 901, 5, 45⟩], residual := [((5811604622770988646009091154975302759524564188199289169616851017352166570032 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 902, 5, 45⟩], residual := [((936907189017551919103499582257824092225456461839283512242233913549161766276 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1123 (rho : Nat -> F) : Prop :=
    (relationLc180 rho) * (relationLc181 rho) = ((1 : F) * rho 1123)

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 902, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 901, 5, 45⟩], residual := [((6451071430823416687479763028279732421465045357275236229176327665977656697080 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1124) * ((1 : F) + (1 : F) * rho 1123) = (relationLc182 rho)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 901, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 902, 5, 45⟩], residual := [((2267584900114084988385442070637320926901141013709329276205797153967793145035 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * ((1 : F) + (-1 : F) * rho 1123) = (relationLc183 rho)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 45⟩], residual := [((1 : F), 1124), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 692) * (relationLc184 rho) = ((1 : F) * rho 1126)

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 45⟩], residual := [((1 : F), 1125), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 692) * (relationLc185 rho) = ((1 : F) * rho 1127)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2225799389081791229203403109952070040943025291505858518612223595038924057522 : F), 901, 5, 46⟩], residual := [((1386971928224597730182866825030604307560335084271762632057626946098192879595 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 902, 5, 46⟩], residual := [((277375323725687460796625669859700615560380786871750109852910136860391727795 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1128 (rho : Nat -> F) : Prop :=
    (relationLc186 rho) * (relationLc187 rho) = ((1 : F) * rho 1128)

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 901, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 902, 5, 46⟩], residual := [((4098946387412151203821559982385157322842212871029273120584297677802197958397 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1129) * ((1 : F) + (1 : F) * rho 1128) = (relationLc188 rho)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 902, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 901, 5, 46⟩], residual := [((6449889758465453347943548690121075950366107966096385954799870047244937447245 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1130) * ((1 : F) + (-1 : F) * rho 1128) = (relationLc189 rho)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 46⟩], residual := [((1 : F), 1129), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 693) * (relationLc190 rho) = ((1 : F) * rho 1131)

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 46⟩], residual := [((1 : F), 1130), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
