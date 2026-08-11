import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs75

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 98⟩], residual := [((1 : F), 4960), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4315) * (relationLc508 rho) = ((1 : F) * rho 4962)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3605524839361144271918695055199142959033412419248830745370955487763212254122 : F), 4471, 5, 99⟩], residual := [((1957554654559557926635956667978967011684000442817968116528079732945495238106 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 4472, 5, 99⟩], residual := [((6375998786859699105313056747887071494679733307578548571029979559421544043160 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5137 (rho : Nat -> F) : Prop :=
    (relationLc509 rho) * (relationLc510 rho) = ((1 : F) * rho 4963)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 4471, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 4472, 5, 99⟩], residual := [((8201947504844235829894691518390987036553333528134133360092619588036907740059 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4964) * ((1 : F) + (1 : F) * rho 4963) = (relationLc511 rho)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (596582547986628283560714467731105115571698103544211991425215386162916709755 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 4472, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 4471, 5, 99⟩], residual := [((7597921896702449483212464138381743706454771565115335864600154054891188369033 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4965) * ((1 : F) + (-1 : F) * rho 4963) = (relationLc512 rho)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 99⟩], residual := [((1 : F), 4964), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4316) * (relationLc513 rho) = ((1 : F) * rho 4966)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 99⟩], residual := [((1 : F), 4965), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4316) * (relationLc514 rho) = ((1 : F) * rho 4967)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4920634597453729470497276033723860871868168242313442289183256650013527717679 : F), 4471, 5, 100⟩], residual := [((4626745019808028474406318375278772853019104908690802467751832003320946726890 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 4472, 5, 100⟩], residual := [((1812710690615895904665028200357513336220875045165683915006673056890740711713 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5142 (rho : Nat -> F) : Prop :=
    (relationLc515 rho) * (relationLc516 rho) = ((1 : F) * rho 4968)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 4472, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 4471, 5, 100⟩], residual := [((4807959045020924952280022516084198244515018472129832594975685590254152244894 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4969) * ((1 : F) + (1 : F) * rho 4968) = (relationLc517 rho)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 4471, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 4472, 5, 100⟩], residual := [((7401604082556730843000467773897076577612167912707208666091783693653806068302 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4970) * ((1 : F) + (-1 : F) * rho 4968) = (relationLc518 rho)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 100⟩], residual := [((1 : F), 4969), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4317) * (relationLc519 rho) = ((1 : F) * rho 4971)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 100⟩], residual := [((1 : F), 4970), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4317) * (relationLc520 rho) = ((1 : F) * rho 4972)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1078993665523434524257958077337601540950101808496742976783528403246920352908 : F), 4471, 5, 101⟩], residual := [((823084015082302969527154052266362481686811507015307064117458449818406088680 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 4472, 5, 101⟩], residual := [((7353748195044715267242176378873029003058579609036147045828436948989465785086 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5147 (rho : Nat -> F) : Prop :=
    (relationLc521 rho) * (relationLc522 rho) = ((1 : F) * rho 4973)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 4471, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 4472, 5, 101⟩], residual := [((1606978823045494052648976471530230821652700025596974611809660872552400247390 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4974) * ((1 : F) + (1 : F) * rho 4973) = (relationLc523 rho)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), runs := [⟨(4850122518677175147499493289262933079602163339391194135863758217285651092383 : F), 4472, 5, 101⟩, ⟨(6222552485609549887791947005680827284079949898725860132963740797247758797518 : F), 4471, 5, 101⟩], residual := [((4750482084188545041401667779031003007895951429389608634353645245531634083193 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4975) * ((1 : F) + (-1 : F) * rho 4973) = (relationLc524 rho)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 101⟩], residual := [((1 : F), 4974), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4318) * (relationLc525 rho) = ((1 : F) * rho 4976)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 101⟩], residual := [((1 : F), 4975), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4318) * (relationLc526 rho) = ((1 : F) * rho 4977)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(691693513808884431421072815479419189580617355296708369026904311720105287973 : F), 4471, 5, 102⟩], residual := [((5502407241275366785198947200495648354657049278557447780906902241116252984322 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 4472, 5, 102⟩], residual := [((828484706252769730150688220633464626988098972723937455082843417882853430892 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5152 (rho : Nat -> F) : Prop :=
    (relationLc527 rho) * (relationLc528 rho) = ((1 : F) * rho 4978)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 4471, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 4472, 5, 102⟩], residual := [((877825407008002323330903040613531472200958071689901219682580548300500637131 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4979) * ((1 : F) + (1 : F) * rho 4978) = (relationLc529 rho)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), runs := [⟨(5090386143403797228397395328148518918512112978043974491572024835331784948554 : F), 4472, 5, 102⟩, ⟨(8426286039095433576661919535644659776076255713602263413340558446778434503203 : F), 4471, 5, 102⟩], residual := [((452150687677016637463878931623421468313053131473087730687133811634658462017 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4980) * ((1 : F) + (-1 : F) * rho 4978) = (relationLc530 rho)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 102⟩], residual := [((1 : F), 4979), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319) * (relationLc531 rho) = ((1 : F) * rho 4981)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 102⟩], residual := [((1 : F), 4980), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4319) * (relationLc532 rho) = ((1 : F) * rho 4982)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7914807530524885708351045862503002891249080478560501693284144165946917766545 : F), 4471, 5, 103⟩], residual := [((1946015522711203035077681386057863035562597248159926509677692218674505207648 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 4472, 5, 103⟩], residual := [((5923278766128168909822928038938298115726159468542647411850771736548739413546 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5157 (rho : Nat -> F) : Prop :=
    (relationLc533 rho) * (relationLc534 rho) = ((1 : F) * rho 4983)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 4471, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 4472, 5, 103⟩], residual := [((2393517371224057475598767755490752466572833330491862013581151689344166966111 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4984) * ((1 : F) + (1 : F) * rho 4983) = (relationLc535 rho)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), runs := [⟨(3278657390884003648767948981832001171024099007374751177766758607911668502457 : F), 4472, 5, 103⟩, ⟨(4007869073185735851290512561955748031882011975722794258664124576351538350110 : F), 4471, 5, 103⟩], residual := [((6073563674875127024286341449713039304834548910222470325962732122386154671318 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4985) * ((1 : F) + (-1 : F) * rho 4983) = (relationLc536 rho)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 103⟩], residual := [((1 : F), 4984), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4320) * (relationLc537 rho) = ((1 : F) * rho 4986)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 103⟩], residual := [((1 : F), 4985), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4320) * (relationLc538 rho) = ((1 : F) * rho 4987)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
