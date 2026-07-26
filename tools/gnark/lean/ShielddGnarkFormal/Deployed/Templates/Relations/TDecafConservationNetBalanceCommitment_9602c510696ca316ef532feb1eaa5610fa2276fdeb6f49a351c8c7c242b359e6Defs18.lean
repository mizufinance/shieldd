import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs17

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 432) * (relationLc171 rho) = ((1 : F) * rho 859)

def relationLc172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(650753434257975203573851883248475753622073845092733683578003776733255293675 : F), 643, 5, 44⟩], residual := [((5458092192354468882986918341267721405332821468551780284642132588836982445492 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 644, 5, 44⟩], residual := [((5657095955849052796901570215817145103839611337387645134473223189811350446069 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow860 (rho : Nat -> F) : Prop :=
    (relationLc172 rho) * (relationLc173 rho) = ((1 : F) * rho 860)

def relationLc174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (486036356945452504760347472177531398795921660887537505239476484519080436227 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 644, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 643, 5, 44⟩], residual := [((8319984296679295469118673247946009724586115471295364612950212392930254973713 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 861) * ((1 : F) + (1 : F) * rho 860) = (relationLc174 rho)

def relationLc175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (947806450344414283026787655124194885763009582410566160659921266247181392694 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 643, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 644, 5, 44⟩], residual := [((6186649214413368721256092011966490478850666957118308608502157493701336786112 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 862) * ((1 : F) + (-1 : F) * rho 860) = (relationLc175 rho)

def relationLc176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 44⟩], residual := [((1 : F), 861), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 433) * (relationLc176 rho) = ((1 : F) * rho 863)

def relationLc177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 44⟩], residual := [((1 : F), 862), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 433) * (relationLc177 rho) = ((1 : F) * rho 864)

def relationLc178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2057635338970283122697898952596552282311371524562689697330610978402084947093 : F), 643, 5, 45⟩], residual := [((5811604622770988646009091154975302759524564188199289169616851017352166570032 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 644, 5, 45⟩], residual := [((936907189017551919103499582257824092225456461839283512242233913549161766276 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow865 (rho : Nat -> F) : Prop :=
    (relationLc178 rho) * (relationLc179 rho) = ((1 : F) * rho 865)

def relationLc180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 644, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 643, 5, 45⟩], residual := [((6451071430823416687479763028279732421465045357275236229176327665977656697080 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 866) * ((1 : F) + (1 : F) * rho 865) = (relationLc180 rho)

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 643, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 644, 5, 45⟩], residual := [((2267584900114084988385442070637320926901141013709329276205797153967793145035 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 867) * ((1 : F) + (-1 : F) * rho 865) = (relationLc181 rho)

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 45⟩], residual := [((1 : F), 866), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 434) * (relationLc182 rho) = ((1 : F) * rho 868)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 45⟩], residual := [((1 : F), 867), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 434) * (relationLc183 rho) = ((1 : F) * rho 869)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2225799389081791229203403109952070040943025291505858518612223595038924057522 : F), 643, 5, 46⟩], residual := [((1386971928224597730182866825030604307560335084271762632057626946098192879595 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 644, 5, 46⟩], residual := [((277375323725687460796625669859700615560380786871750109852910136860391727795 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    (relationLc184 rho) * (relationLc185 rho) = ((1 : F) * rho 870)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 643, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 644, 5, 46⟩], residual := [((4098946387412151203821559982385157322842212871029273120584297677802197958397 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 871) * ((1 : F) + (1 : F) * rho 870) = (relationLc186 rho)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 644, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 643, 5, 46⟩], residual := [((6449889758465453347943548690121075950366107966096385954799870047244937447245 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 872) * ((1 : F) + (-1 : F) * rho 870) = (relationLc187 rho)

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 46⟩], residual := [((1 : F), 871), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 435) * (relationLc188 rho) = ((1 : F) * rho 873)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 46⟩], residual := [((1 : F), 872), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 435) * (relationLc189 rho) = ((1 : F) * rho 874)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2480989182328915217035704968501799091032845993637498297759959989969155961506 : F), 643, 5, 47⟩], residual := [((1780397906965267592988397799526375960157674145853336668821056037594506777478 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 644, 5, 47⟩], residual := [((8435697469551685066140325303601063758918697694011257672330999321131850527330 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow875 (rho : Nat -> F) : Prop :=
    (relationLc190 rho) * (relationLc191 rho) = ((1 : F) * rho 875)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 643, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 644, 5, 47⟩], residual := [((3312586582827011871815562736574566434836650091498332925579439616180173391155 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 876) * ((1 : F) + (1 : F) * rho 875) = (relationLc192 rho)

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 644, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 643, 5, 47⟩], residual := [((2883401531657732217592893021422844596260970559296055680507138270037163853218 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 877) * ((1 : F) + (-1 : F) * rho 875) = (relationLc193 rho)

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 47⟩], residual := [((1 : F), 876), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 436) * (relationLc194 rho) = ((1 : F) * rho 878)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 47⟩], residual := [((1 : F), 877), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 436) * (relationLc195 rho) = ((1 : F) * rho 879)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1412097513793676318203100151344914588183404196444076823819806863703019000664 : F), 643, 5, 48⟩], residual := [((4872488369303941282325628720923833771829695005190436383842572619654463739799 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 644, 5, 48⟩], residual := [((7287857562926121443816573787936730396829003411351210866894309378384291143414 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow880 (rho : Nat -> F) : Prop :=
    (relationLc196 rho) * (relationLc197 rho) = ((1 : F) * rho 880)

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 643, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 644, 5, 48⟩], residual := [((3222376147153537853614748346954861356981236500512424890971792958079697969278 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 881) * ((1 : F) + (1 : F) * rho 880) = (relationLc198 rho)

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 644, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 643, 5, 48⟩], residual := [((2708429738389344634294083352646360197070514966334369279197444176046827701509 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 882) * ((1 : F) + (-1 : F) * rho 880) = (relationLc199 rho)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 48⟩], residual := [((1 : F), 881), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 437) * (relationLc200 rho) = ((1 : F) * rho 883)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 48⟩], residual := [((1 : F), 882), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 437) * (relationLc201 rho) = ((1 : F) * rho 884)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7344226933985106720397624283801745162220212964763380091438677820147717632228 : F), 643, 5, 49⟩], residual := [((5775045164857509487204045692487468553206963145763395969644819158887632895215 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
