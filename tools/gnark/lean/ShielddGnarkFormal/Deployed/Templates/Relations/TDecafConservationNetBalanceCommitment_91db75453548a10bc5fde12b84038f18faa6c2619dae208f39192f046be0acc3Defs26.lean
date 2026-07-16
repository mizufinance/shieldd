import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs25

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (947806450344414283026787655124194885763009582410566160659921266247181392694 : F), runs := [⟨(486036356945452504760347472177531398795921660887537505239476484519080436227 : F), 1417, 5, 44⟩, ⟨(947806450344414283026787655124194885763009582410566160659921266247181392694 : F), 1418, 5, 44⟩], residual := [((6186649214413368721256092011966490478850666957118308608502157493701336786112 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1636) * ((1 : F) + (-1 : F) * rho 1634) = (relationLc181 rho)

def relationLc182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 44⟩], residual := [((1 : F), 1635), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * (relationLc182 rho) = ((1 : F) * rho 1637)

def relationLc183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 44⟩], residual := [((1 : F), 1636), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * (relationLc183 rho) = ((1 : F) * rho 1638)

def relationLc184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2057635338970283122697898952596552282311371524562689697330610978402084947093 : F), 1417, 5, 45⟩], residual := [((5811604622770988646009091154975302759524564188199289169616851017352166570032 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 1418, 5, 45⟩], residual := [((936907189017551919103499582257824092225456461839283512242233913549161766276 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1639 (rho : Nat -> F) : Prop :=
    (relationLc184 rho) * (relationLc185 rho) = ((1 : F) * rho 1639)

def relationLc186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 1418, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 1417, 5, 45⟩], residual := [((6451071430823416687479763028279732421465045357275236229176327665977656697080 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1640) * ((1 : F) + (1 : F) * rho 1639) = (relationLc186 rho)

def relationLc187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), runs := [⟨(4116811067151646325591075896958144907589269881405009274497373379552057079332 : F), 1417, 5, 45⟩, ⟨(6639408901102730897290187728751661557199626710531434717326550833757778559308 : F), 1418, 5, 45⟩], residual := [((2267584900114084988385442070637320926901141013709329276205797153967793145035 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1641) * ((1 : F) + (-1 : F) * rho 1639) = (relationLc187 rho)

def relationLc188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 45⟩], residual := [((1 : F), 1640), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * (relationLc188 rho) = ((1 : F) * rho 1642)

def relationLc189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 45⟩], residual := [((1 : F), 1641), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * (relationLc189 rho) = ((1 : F) * rho 1643)

def relationLc190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2225799389081791229203403109952070040943025291505858518612223595038924057522 : F), 1417, 5, 46⟩], residual := [((1386971928224597730182866825030604307560335084271762632057626946098192879595 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 1418, 5, 46⟩], residual := [((277375323725687460796625669859700615560380786871750109852910136860391727795 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1644 (rho : Nat -> F) : Prop :=
    (relationLc190 rho) * (relationLc191 rho) = ((1 : F) * rho 1644)

def relationLc192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 1417, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 1418, 5, 46⟩], residual := [((4098946387412151203821559982385157322842212871029273120584297677802197958397 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1645) * ((1 : F) + (1 : F) * rho 1644) = (relationLc192 rho)

def relationLc193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), runs := [⟨(2457764871610929955029434135815601281403627454780512400951235495314942616741 : F), 1418, 5, 46⟩, ⟨(7188241406483048073657173670430123576538450580436912361281260527472398327397 : F), 1417, 5, 46⟩], residual := [((6449889758465453347943548690121075950366107966096385954799870047244937447245 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1646) * ((1 : F) + (-1 : F) * rho 1644) = (relationLc193 rho)

def relationLc194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 46⟩], residual := [((1 : F), 1645), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * (relationLc194 rho) = ((1 : F) * rho 1647)

def relationLc195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 46⟩], residual := [((1 : F), 1646), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * (relationLc195 rho) = ((1 : F) * rho 1648)

def relationLc196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2480989182328915217035704968501799091032845993637498297759959989969155961506 : F), 1417, 5, 47⟩], residual := [((1780397906965267592988397799526375960157674145853336668821056037594506777478 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 1418, 5, 47⟩], residual := [((8435697469551685066140325303601063758918697694011257672330999321131850527330 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1649 (rho : Nat -> F) : Prop :=
    (relationLc196 rho) * (relationLc197 rho) = ((1 : F) * rho 1649)

def relationLc198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 1417, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 1418, 5, 47⟩], residual := [((3312586582827011871815562736574566434836650091498332925579439616180173391155 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1650) * ((1 : F) + (1 : F) * rho 1649) = (relationLc198 rho)

def relationLc199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), runs := [⟨(4872948632385295784403421904423944853783258982842492800525942361355184859189 : F), 1418, 5, 47⟩, ⟨(5821865938823534825058787418085827464087794418920957311362934115105750333283 : F), 1417, 5, 47⟩], residual := [((2883401531657732217592893021422844596260970559296055680507138270037163853218 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1651) * ((1 : F) + (-1 : F) * rho 1649) = (relationLc199 rho)

def relationLc200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 47⟩], residual := [((1 : F), 1650), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * (relationLc200 rho) = ((1 : F) * rho 1652)

def relationLc201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 47⟩], residual := [((1 : F), 1651), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * (relationLc201 rho) = ((1 : F) * rho 1653)

def relationLc202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1412097513793676318203100151344914588183404196444076823819806863703019000664 : F), 1417, 5, 48⟩], residual := [((4872488369303941282325628720923833771829695005190436383842572619654463739799 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 1418, 5, 48⟩], residual := [((7287857562926121443816573787936730396829003411351210866894309378384291143414 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1654 (rho : Nat -> F) : Prop :=
    (relationLc202 rho) * (relationLc203 rho) = ((1 : F) * rho 1654)

def relationLc204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 1417, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 1418, 5, 48⟩], residual := [((3222376147153537853614748346954861356981236500512424890971792958079697969278 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1655) * ((1 : F) + (1 : F) * rho 1654) = (relationLc204 rho)

def relationLc205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), runs := [⟨(6253450192315477760795373878916141842196646877502841727876510111801041869161 : F), 1418, 5, 48⟩, ⟨(7815449679362637453229810398374527900817376975565987024556035419045530969985 : F), 1417, 5, 48⟩], residual := [((2708429738389344634294083352646360197070514966334369279197444176046827701509 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1656) * ((1 : F) + (-1 : F) * rho 1654) = (relationLc205 rho)

def relationLc206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 48⟩], residual := [((1 : F), 1655), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * (relationLc206 rho) = ((1 : F) * rho 1657)

def relationLc207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 48⟩], residual := [((1 : F), 1656), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * (relationLc207 rho) = ((1 : F) * rho 1658)

def relationLc208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7344226933985106720397624283801745162220212964763380091438677820147717632228 : F), 1417, 5, 49⟩], residual := [((5775045164857509487204045692487468553206963145763395969644819158887632895215 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 1418, 5, 49⟩], residual := [((3393463198481809430162510204448349475209266561020452875584574238411104712871 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1659 (rho : Nat -> F) : Prop :=
    (relationLc208 rho) * (relationLc209 rho) = ((1 : F) * rho 1659)

def relationLc210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 1417, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 1418, 5, 49⟩], residual := [((415634274375293255795729886987693687756932324632346737018101532403467964800 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1660) * ((1 : F) + (1 : F) * rho 1659) = (relationLc210 rho)

def relationLc211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), runs := [⟨(5332980067227370905581895657908047328863310243331202615016196252318651816115 : F), 1418, 5, 49⟩, ⟨(6750184588921192673548575485115130375411797921212325553347173772397658432326 : F), 1417, 5, 49⟩], residual := [((7521791217715781001002811817629990340703048586333210237163267357148081515314 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
