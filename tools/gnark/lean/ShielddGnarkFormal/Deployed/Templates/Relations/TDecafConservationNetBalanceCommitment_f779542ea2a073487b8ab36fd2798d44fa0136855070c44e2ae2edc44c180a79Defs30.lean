import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs29

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 93⟩], residual := [((1 : F), 1364), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 740) * (relationLc472 rho) = ((1 : F) * rho 1366)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 93⟩], residual := [((1 : F), 1365), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 740) * (relationLc473 rho) = ((1 : F) * rho 1367)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7406725852981332616967440375463435094380560333213654825698131844857491079799 : F), 901, 5, 94⟩], residual := [((660529282535298160429441592644184632584129631322396192061947937429646058172 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 902, 5, 94⟩], residual := [((1827491060475524693752753755016864372970445294137612295397610885228326636694 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1368 (rho : Nat -> F) : Prop :=
    (relationLc474 rho) * (relationLc475 rho) = ((1 : F) * rho 1368)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 901, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 902, 5, 94⟩], residual := [((1408421635407096932919620918464534748649425509085713196424349359094535925076 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1369) * ((1 : F) + (1 : F) * rho 1368) = (relationLc476 rho)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (119852406265797050789612078055044154058976607881391703276722256535381886501 : F), runs := [⟨(119852406265797050789612078055044154058976607881391703276722256535381886501 : F), 902, 5, 94⟩, ⟨(7794610353867356390186950493705394184739919409772801927544682204767819492261 : F), 901, 5, 94⟩], residual := [((13424937575075758969308616957163662756924467290349218325062554890782697633 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1370) * ((1 : F) + (-1 : F) * rho 1368) = (relationLc477 rho)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 94⟩], residual := [((1 : F), 1369), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 741) * (relationLc478 rho) = ((1 : F) * rho 1371)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 94⟩], residual := [((1 : F), 1370), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 741) * (relationLc479 rho) = ((1 : F) * rho 1372)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5722982763298278729963576385719857110505658303306807977438603435381470720965 : F), 901, 5, 95⟩], residual := [((1512028753682479323706374415141072953240983189562385019686725734447076504660 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 902, 5, 95⟩], residual := [((4685697274096954033188881392239579126921974360644586083086504592703531775778 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1373 (rho : Nat -> F) : Prop :=
    (relationLc480 rho) * (relationLc481 rho) = ((1 : F) * rho 1373)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 901, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 902, 5, 95⟩], residual := [((8292075190520747587179179487387985647421196845099503237358645567171557262328 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1374) * ((1 : F) + (1 : F) * rho 1373) = (relationLc482 rho)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 902, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 901, 5, 95⟩], residual := [((4074879778793383385966176422814261591555489666649215798630660067423369746306 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1375) * ((1 : F) + (-1 : F) * rho 1373) = (relationLc483 rho)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 95⟩], residual := [((1 : F), 1374), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 742) * (relationLc484 rho) = ((1 : F) * rho 1376)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 95⟩], residual := [((1 : F), 1375), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 742) * (relationLc485 rho) = ((1 : F) * rho 1377)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(532872749205900207280908266438511611357819615714152393176342303722674552043 : F), 901, 5, 96⟩], residual := [((6035810642449431924577739844914340166270114693535558053390044101360312801688 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 902, 5, 96⟩], residual := [((2428305511359039300721123192304285368722450320490511310587560309173363693571 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1378 (rho : Nat -> F) : Prop :=
    (relationLc486 rho) * (relationLc487 rho) = ((1 : F) * rho 1378)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 901, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 902, 5, 96⟩], residual := [((4920874604170402253362725562479483084585474624467938132415988992829031335010 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1379) * ((1 : F) + (1 : F) * rho 1378) = (relationLc488 rho)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 902, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 901, 5, 96⟩], residual := [((6027623364426774156656659280598560570588718228848424917937505902444010680918 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1380) * ((1 : F) + (-1 : F) * rho 1378) = (relationLc489 rho)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 96⟩], residual := [((1 : F), 1379), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 743) * (relationLc490 rho) = ((1 : F) * rho 1381)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 96⟩], residual := [((1 : F), 1380), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 743) * (relationLc491 rho) = ((1 : F) * rho 1382)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2181515434528884798350140767563103328656119286124221075800981748012779202594 : F), 901, 5, 97⟩], residual := [((106818944504694456197880394122104885013612583218694364993620473025941826030 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 902, 5, 97⟩], residual := [((2173551935363314471513690343279405623756762022294073186701447780331201841196 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1383 (rho : Nat -> F) : Prop :=
    (relationLc492 rho) * (relationLc493 rho) = ((1 : F) * rho 1383)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 901, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 902, 5, 97⟩], residual := [((40808639809080132140749082804000824499960439990421413662854762657597965803 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1384) * ((1 : F) + (1 : F) * rho 1383) = (relationLc494 rho)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 902, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 901, 5, 97⟩], residual := [((1163529899983247789963633059089171958899621851062864360584673749166280040301 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1385) * ((1 : F) + (-1 : F) * rho 1383) = (relationLc495 rho)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 97⟩], residual := [((1 : F), 1384), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 744) * (relationLc496 rho) = ((1 : F) * rho 1386)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 97⟩], residual := [((1 : F), 1385), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 744) * (relationLc497 rho) = ((1 : F) * rho 1387)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(352327759083434685518809083322611004934457987098470961187983229416631378347 : F), 901, 5, 98⟩], residual := [((6721871770105357367635203874996059568164544186869309336369479652040859885483 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 902, 5, 98⟩], residual := [((3649785974567378771480876215813926936734957082959138095577827575967627485317 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1388 (rho : Nat -> F) : Prop :=
    (relationLc498 rho) * (relationLc499 rho) = ((1 : F) * rho 1388)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 901, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 902, 5, 98⟩], residual := [((6271163839838642738673456213004693292070072018816876300182820369031729874217 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1389) * ((1 : F) + (1 : F) * rho 1388) = (relationLc500 rho)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 902, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 901, 5, 98⟩], residual := [((8040452470595479447273541855297124189002936505453622655026439747661453283520 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1390) * ((1 : F) + (-1 : F) * rho 1388) = (relationLc501 rho)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 98⟩], residual := [((1 : F), 1389), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 745) * (relationLc502 rho) = ((1 : F) * rho 1391)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 98⟩], residual := [((1 : F), 1390), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
