import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs72

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4884) * ((1 : F) + (1 : F) * rho 4883) = (relationLc415 rho)

def relationLc416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), runs := [⟨(1283229289409656515742521563511935744668682306108808459516439662824022888835 : F), 4472, 5, 83⟩, ⟨(3615653527027306765488199755398724896422393464533278790785772970403143247030 : F), 4471, 5, 83⟩], residual := [((3520552764009872659525435691222176153719820605366532401789092776293896045242 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4885) * ((1 : F) + (-1 : F) * rho 4883) = (relationLc416 rho)

def relationLc417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 83⟩], residual := [((1 : F), 4884), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300) * (relationLc417 rho) = ((1 : F) * rho 4886)

def relationLc418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 83⟩], residual := [((1 : F), 4885), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4300) * (relationLc418 rho) = ((1 : F) * rho 4887)

def relationLc419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6387613852256700294512156166113168610891938667929187114329681467616500330608 : F), 4471, 5, 84⟩], residual := [((7122528614958769322837530840502174944534457123466231063334496420703843830519 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 4472, 5, 84⟩], residual := [((678650799073836045536480883465610795007635701186691596893019548847085989668 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5062 (rho : Nat -> F) : Prop :=
    (relationLc419 rho) * (relationLc420 rho) = ((1 : F) * rho 4888)

def relationLc421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 4472, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 4471, 5, 84⟩], residual := [((3023431161416084699903694663518387414748628120909489252925148026993227262805 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4889) * ((1 : F) + (1 : F) * rho 4888) = (relationLc421 rho)

def relationLc422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), runs := [⟨(2629486709205255763715520043225998697173709611802238695669455080076627559060 : F), 4471, 5, 84⟩, ⟨(7960201990888721383029101872518098690313828979096838432719609179233525522635 : F), 4472, 5, 84⟩], residual := [((2053261783412565618836788473684054838107152222039993036884965312918189660439 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4890) * ((1 : F) + (-1 : F) * rho 4888) = (relationLc422 rho)

def relationLc423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 84⟩], residual := [((1 : F), 4889), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4301) * (relationLc423 rho) = ((1 : F) * rho 4891)

def relationLc424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 84⟩], residual := [((1 : F), 4890), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4301) * (relationLc424 rho) = ((1 : F) * rho 4892)

def relationLc425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5276663585927424617001321006326063876074837805776841490242179655177179723382 : F), 4471, 5, 85⟩], residual := [((5171730787501844126787071739480348325133924484638196337244514296783160562849 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 4472, 5, 85⟩], residual := [((8151365977808896800973445184695245244422242745255100859603407196467141767996 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5067 (rho : Nat -> F) : Prop :=
    (relationLc425 rho) * (relationLc426 rho) = ((1 : F) * rho 4893)

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 4472, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 4471, 5, 85⟩], residual := [((6078999580162968627962574270151575208687127425096319938057330165684641107683 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4894) * ((1 : F) + (1 : F) * rho 4893) = (relationLc427 rho)

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), runs := [⟨(4963512914963638199056080956346530955101734679238257446424077540639080175104 : F), 4471, 5, 85⟩, ⟨(7342083157095275789041514601207106009688575469023617495414818018832934075288 : F), 4472, 5, 85⟩], residual := [((7921344720180926700499914832459065253776891949228636323781616997502633100102 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4895) * ((1 : F) + (-1 : F) * rho 4893) = (relationLc428 rho)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 85⟩], residual := [((1 : F), 4894), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4302) * (relationLc429 rho) = ((1 : F) * rho 4896)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 85⟩], residual := [((1 : F), 4895), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4302) * (relationLc430 rho) = ((1 : F) * rho 4897)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5136355408088823848380298907192109436725459726037246232910375821561195593353 : F), 4471, 5, 86⟩], residual := [((2611100482824114006245115601434017430973292698326338130396425226922156943726 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 4472, 5, 86⟩], residual := [((2272129727976203298914268281854209667183811247876660331271125666493598116711 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5072 (rho : Nat -> F) : Prop :=
    (relationLc431 rho) * (relationLc432 rho) = ((1 : F) * rho 4898)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 4471, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 4472, 5, 86⟩], residual := [((2351261151169456687158297482081722848352132490538904662721831711509357671705 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4899) * ((1 : F) + (1 : F) * rho 4898) = (relationLc433 rho)

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), runs := [⟨(5156148236131745741861374871241431285433261778798454467045839413615777501617 : F), 4472, 5, 86⟩, ⟨(8089836322161336457143879326989621715987047236496670897113991841734505390538 : F), 4471, 5, 86⟩], residual := [((2126667239470426975551962373181578965579653558109478616252051257173623862140 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4900) * ((1 : F) + (-1 : F) * rho 4898) = (relationLc434 rho)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 86⟩], residual := [((1 : F), 4899), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4303) * (relationLc435 rho) = ((1 : F) * rho 4901)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 86⟩], residual := [((1 : F), 4900), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4303) * (relationLc436 rho) = ((1 : F) * rho 4902)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4418852977224770152591096516384543647203330862365503154501454336913776525175 : F), 4471, 5, 87⟩], residual := [((6779178030968711842249743153625088570791812570627935517398024913751615203784 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 4472, 5, 87⟩], residual := [((1987000012826922153879303641749304799232264613349527339475391649828152890957 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5077 (rho : Nat -> F) : Prop :=
    (relationLc437 rho) * (relationLc438 rho) = ((1 : F) * rho 4903)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (523252749189767066611841852268129761201284338565287883365583179262479961532 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 4471, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 4472, 5, 87⟩], residual := [((1483303091736036243602313383303149607703550291240206711425448177266981273260 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4904) * ((1 : F) + (1 : F) * rho 4903) = (relationLc439 rho)

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), runs := [⟨(3319428980320655565619313571284369505590994982353604523970083934627897564802 : F), 4472, 5, 87⟩, ⟨(523252749189767066611841852268129761201284338565287883365583179262479961532 : F), 4471, 5, 87⟩], residual := [((5393540997757384135922094956469153110265121217192373436435271647228896221265 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4905) * ((1 : F) + (-1 : F) * rho 4903) = (relationLc440 rho)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 87⟩], residual := [((1 : F), 4904), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4304) * (relationLc441 rho) = ((1 : F) * rho 4906)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 87⟩], residual := [((1 : F), 4905), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4304) * (relationLc442 rho) = ((1 : F) * rho 4907)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5375936855481590355238938239111503186359762223217444101067118469216669974860 : F), 4471, 5, 88⟩], residual := [((8349992352894336397286049549294094941313636293580104003715550349357468061291 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 4472, 5, 88⟩], residual := [((1098535011563206193165444734712135173754813443596463541291089264247307410025 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5082 (rho : Nat -> F) : Prop :=
    (relationLc443 rho) * (relationLc444 rho) = ((1 : F) * rho 4908)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), runs := [⟨(2595775054725259630605146799545973745217873004053687082563708628123327521948 : F), 4471, 5, 88⟩, ⟨(5801044132003868459865384303692360095415041468304070909245339717053417777190 : F), 4472, 5, 88⟩], residual := [((3505217268054862234625648474169739977437232200473681348648923200837287354956 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4909) * ((1 : F) + (1 : F) * rho 4908) = (relationLc445 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
