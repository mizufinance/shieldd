import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs74

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4935) * ((1 : F) + (-1 : F) * rho 4933) = (relationLc476 rho)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 93⟩], residual := [((1 : F), 4934), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4310) * (relationLc477 rho) = ((1 : F) * rho 4936)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 93⟩], residual := [((1 : F), 4935), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4310) * (relationLc478 rho) = ((1 : F) * rho 4937)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7406725852981332616967440375463435094380560333213654825698131844857491079799 : F), 4471, 5, 94⟩], residual := [((660529282535298160429441592644184632584129631322396192061947937429646058172 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 4472, 5, 94⟩], residual := [((1827491060475524693752753755016864372970445294137612295397610885228326636694 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5112 (rho : Nat -> F) : Prop :=
    (relationLc479 rho) * (relationLc480 rho) = ((1 : F) * rho 4938)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 4471, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 4472, 5, 94⟩], residual := [((1408421635407096932919620918464534748649425509085713196424349359094535925076 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4939) * ((1 : F) + (1 : F) * rho 4938) = (relationLc481 rho)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (119852406265797050789612078055044154058976607881391703276722256535381886501 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 4472, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 4471, 5, 94⟩], residual := [((13424937575075758969308616957163662756924467290349218325062554890782697633 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4940) * ((1 : F) + (-1 : F) * rho 4938) = (relationLc482 rho)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 94⟩], residual := [((1 : F), 4939), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4311) * (relationLc483 rho) = ((1 : F) * rho 4941)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 94⟩], residual := [((1 : F), 4940), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4311) * (relationLc484 rho) = ((1 : F) * rho 4942)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5722982763298278729963576385719857110505658303306807977438603435381470720965 : F), 4471, 5, 95⟩], residual := [((1512028753682479323706374415141072953240983189562385019686725734447076504660 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 4472, 5, 95⟩], residual := [((4685697274096954033188881392239579126921974360644586083086504592703531775778 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5117 (rho : Nat -> F) : Prop :=
    (relationLc485 rho) * (relationLc486 rho) = ((1 : F) * rho 4943)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 4471, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 4472, 5, 95⟩], residual := [((8292075190520747587179179487387985647421196845099503237358645567171557262328 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4944) * ((1 : F) + (1 : F) * rho 4943) = (relationLc487 rho)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 4472, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 4471, 5, 95⟩], residual := [((4074879778793383385966176422814261591555489666649215798630660067423369746306 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4945) * ((1 : F) + (-1 : F) * rho 4943) = (relationLc488 rho)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 95⟩], residual := [((1 : F), 4944), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4312) * (relationLc489 rho) = ((1 : F) * rho 4946)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 95⟩], residual := [((1 : F), 4945), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4312) * (relationLc490 rho) = ((1 : F) * rho 4947)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(532872749205900207280908266438511611357819615714152393176342303722674552043 : F), 4471, 5, 96⟩], residual := [((6035810642449431924577739844914340166270114693535558053390044101360312801688 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 4472, 5, 96⟩], residual := [((2428305511359039300721123192304285368722450320490511310587560309173363693571 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5122 (rho : Nat -> F) : Prop :=
    (relationLc491 rho) * (relationLc492 rho) = ((1 : F) * rho 4948)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 4471, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 4472, 5, 96⟩], residual := [((4920874604170402253362725562479483084585474624467938132415988992829031335010 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4949) * ((1 : F) + (1 : F) * rho 4948) = (relationLc493 rho)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 4472, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 4471, 5, 96⟩], residual := [((6027623364426774156656659280598560570588718228848424917937505902444010680918 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4950) * ((1 : F) + (-1 : F) * rho 4948) = (relationLc494 rho)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 96⟩], residual := [((1 : F), 4949), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313) * (relationLc495 rho) = ((1 : F) * rho 4951)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 96⟩], residual := [((1 : F), 4950), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4313) * (relationLc496 rho) = ((1 : F) * rho 4952)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2181515434528884798350140767563103328656119286124221075800981748012779202594 : F), 4471, 5, 97⟩], residual := [((106818944504694456197880394122104885013612583218694364993620473025941826030 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 4472, 5, 97⟩], residual := [((2173551935363314471513690343279405623756762022294073186701447780331201841196 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5127 (rho : Nat -> F) : Prop :=
    (relationLc497 rho) * (relationLc498 rho) = ((1 : F) * rho 4953)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 4471, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 4472, 5, 97⟩], residual := [((40808639809080132140749082804000824499960439990421413662854762657597965803 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4954) * ((1 : F) + (1 : F) * rho 4953) = (relationLc499 rho)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 4472, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 4471, 5, 97⟩], residual := [((1163529899983247789963633059089171958899621851062864360584673749166280040301 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4955) * ((1 : F) + (-1 : F) * rho 4953) = (relationLc500 rho)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 97⟩], residual := [((1 : F), 4954), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4314) * (relationLc501 rho) = ((1 : F) * rho 4956)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 97⟩], residual := [((1 : F), 4955), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4314) * (relationLc502 rho) = ((1 : F) * rho 4957)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(352327759083434685518809083322611004934457987098470961187983229416631378347 : F), 4471, 5, 98⟩], residual := [((6721871770105357367635203874996059568164544186869309336369479652040859885483 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 4472, 5, 98⟩], residual := [((3649785974567378771480876215813926936734957082959138095577827575967627485317 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5132 (rho : Nat -> F) : Prop :=
    (relationLc503 rho) * (relationLc504 rho) = ((1 : F) * rho 4958)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 4471, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 4472, 5, 98⟩], residual := [((6271163839838642738673456213004693292070072018816876300182820369031729874217 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4959) * ((1 : F) + (1 : F) * rho 4958) = (relationLc505 rho)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 4472, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 4471, 5, 98⟩], residual := [((8040452470595479447273541855297124189002936505453622655026439747661453283520 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4960) * ((1 : F) + (-1 : F) * rho 4958) = (relationLc506 rho)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 98⟩], residual := [((1 : F), 4959), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4315) * (relationLc507 rho) = ((1 : F) * rho 4961)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
