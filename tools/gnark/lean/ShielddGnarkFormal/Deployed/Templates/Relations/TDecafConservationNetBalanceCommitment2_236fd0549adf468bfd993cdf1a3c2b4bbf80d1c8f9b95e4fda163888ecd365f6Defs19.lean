import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 42⟩], residual := [((1 : F), 980), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 560) * (relationLc165 rho) = ((1 : F) * rho 982)

def relationLc166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 42⟩], residual := [((1 : F), 981), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 560) * (relationLc166 rho) = ((1 : F) * rho 983)

def relationLc167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3310904423929894049077323221082868180583670879235524239193955991098358373090 : F), 772, 5, 43⟩], residual := [((3232926487688007175090435311618900017574627868136506147532084414887399693165 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 773, 5, 43⟩], residual := [((115865106503725756394155385793040437931618580738367618357081553739839235807 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow984 (rho : Nat -> F) : Prop :=
    (relationLc167 rho) * (relationLc168 rho) = ((1 : F) * rho 984)

def relationLc169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 772, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 773, 5, 43⟩], residual := [((4927567058590423375496213695940230269283984480661664657093946453458061248413 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 985) * ((1 : F) + (1 : F) * rho 984) = (relationLc169 rho)

def relationLc170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (780971775079260258991889930864327822057086920022250689252937467789492067549 : F), runs := [⟨(780971775079260258991889930864327822057086920022250689252937467789492067549 : F), 773, 5, 43⟩, ⟨(8244240694032932201582412942423094008840742069107467272074349127108461195996 : F), 772, 5, 43⟩], residual := [((7088496348690373749644021251488578224873131914528074940621077929673412345621 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 986) * ((1 : F) + (-1 : F) * rho 984) = (relationLc170 rho)

def relationLc171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 43⟩], residual := [((1 : F), 985), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 561) * (relationLc171 rho) = ((1 : F) * rho 987)

def relationLc172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 43⟩], residual := [((1 : F), 986), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 561) * (relationLc172 rho) = ((1 : F) * rho 988)

def relationLc173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(650753434257975203573851883248475753622073845092733683578003776733255293675 : F), 772, 5, 44⟩], residual := [((5458092192354468882986918341267721405332821468551780284642132588836982445492 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 773, 5, 44⟩], residual := [((5657095955849052796901570215817145103839611337387645134473223189811350446069 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow989 (rho : Nat -> F) : Prop :=
    (relationLc173 rho) * (relationLc174 rho) = ((1 : F) * rho 989)

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 773, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 772, 5, 44⟩], residual := [((8319984296679295469118673247946009724586115471295364612950212392930254973713 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 990) * ((1 : F) + (1 : F) * rho 989) = (relationLc175 rho)

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (947806450344414283026787655124194885763009582410566160659921266247181392694 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 772, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 773, 5, 44⟩], residual := [((6186649214413368721256092011966490478850666957118308608502157493701336786112 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 991) * ((1 : F) + (-1 : F) * rho 989) = (relationLc176 rho)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 44⟩], residual := [((1 : F), 990), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 562) * (relationLc177 rho) = ((1 : F) * rho 992)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 44⟩], residual := [((1 : F), 991), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 562) * (relationLc178 rho) = ((1 : F) * rho 993)

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2057635338970283122697898952596552282311371524562689697330610978402084947093 : F), 772, 5, 45⟩], residual := [((5811604622770988646009091154975302759524564188199289169616851017352166570032 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 773, 5, 45⟩], residual := [((936907189017551919103499582257824092225456461839283512242233913549161766276 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    (relationLc179 rho) * (relationLc180 rho) = ((1 : F) * rho 994)

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 773, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 772, 5, 45⟩], residual := [((6451071430823416687479763028279732421465045357275236229176327665977656697080 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 995) * ((1 : F) + (1 : F) * rho 994) = (relationLc181 rho)

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 772, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 773, 5, 45⟩], residual := [((2267584900114084988385442070637320926901141013709329276205797153967793145035 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 996) * ((1 : F) + (-1 : F) * rho 994) = (relationLc182 rho)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 45⟩], residual := [((1 : F), 995), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 563) * (relationLc183 rho) = ((1 : F) * rho 997)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 45⟩], residual := [((1 : F), 996), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 563) * (relationLc184 rho) = ((1 : F) * rho 998)

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2225799389081791229203403109952070040943025291505858518612223595038924057522 : F), 772, 5, 46⟩], residual := [((1386971928224597730182866825030604307560335084271762632057626946098192879595 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 773, 5, 46⟩], residual := [((277375323725687460796625669859700615560380786871750109852910136860391727795 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow999 (rho : Nat -> F) : Prop :=
    (relationLc185 rho) * (relationLc186 rho) = ((1 : F) * rho 999)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 772, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 773, 5, 46⟩], residual := [((4098946387412151203821559982385157322842212871029273120584297677802197958397 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1000) * ((1 : F) + (1 : F) * rho 999) = (relationLc187 rho)

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 773, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 772, 5, 46⟩], residual := [((6449889758465453347943548690121075950366107966096385954799870047244937447245 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1001) * ((1 : F) + (-1 : F) * rho 999) = (relationLc188 rho)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 46⟩], residual := [((1 : F), 1000), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 564) * (relationLc189 rho) = ((1 : F) * rho 1002)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 46⟩], residual := [((1 : F), 1001), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 564) * (relationLc190 rho) = ((1 : F) * rho 1003)

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2480989182328915217035704968501799091032845993637498297759959989969155961506 : F), 772, 5, 47⟩], residual := [((1780397906965267592988397799526375960157674145853336668821056037594506777478 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 773, 5, 47⟩], residual := [((8435697469551685066140325303601063758918697694011257672330999321131850527330 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1004 (rho : Nat -> F) : Prop :=
    (relationLc191 rho) * (relationLc192 rho) = ((1 : F) * rho 1004)

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 772, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 773, 5, 47⟩], residual := [((3312586582827011871815562736574566434836650091498332925579439616180173391155 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1005) * ((1 : F) + (1 : F) * rho 1004) = (relationLc193 rho)

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 773, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 772, 5, 47⟩], residual := [((2883401531657732217592893021422844596260970559296055680507138270037163853218 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1006) * ((1 : F) + (-1 : F) * rho 1004) = (relationLc194 rho)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 47⟩], residual := [((1 : F), 1005), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 565) * (relationLc195 rho) = ((1 : F) * rho 1007)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 47⟩], residual := [((1 : F), 1006), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
