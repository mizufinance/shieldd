import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs28

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 94⟩], residual := [((1 : F), 1240), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 612) * (relationLc477 rho) = ((1 : F) * rho 1242)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 94⟩], residual := [((1 : F), 1241), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 612) * (relationLc478 rho) = ((1 : F) * rho 1243)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5722982763298278729963576385719857110505658303306807977438603435381470720965 : F), 772, 5, 95⟩], residual := [((1512028753682479323706374415141072953240983189562385019686725734447076504660 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 773, 5, 95⟩], residual := [((4685697274096954033188881392239579126921974360644586083086504592703531775778 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1244 (rho : Nat -> F) : Prop :=
    (relationLc479 rho) * (relationLc480 rho) = ((1 : F) * rho 1244)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (911269281732180806667965873656199291536129079209390670882675061372105459086 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 772, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 773, 5, 95⟩], residual := [((8292075190520747587179179487387985647421196845099503237358645567171557262328 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * ((1 : F) + (1 : F) * rho 1244) = (relationLc481 rho)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), runs := [⟨(5427482038531534350280348488103509326220167582865721515392163767418428601026 : F), 773, 5, 95⟩, ⟨(911269281732180806667965873656199291536129079209390670882675061372105459086 : F), 772, 5, 95⟩], residual := [((4074879778793383385966176422814261591555489666649215798630660067423369746306 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1246) * ((1 : F) + (-1 : F) * rho 1244) = (relationLc482 rho)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 95⟩], residual := [((1 : F), 1245), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 613) * (relationLc483 rho) = ((1 : F) * rho 1247)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 95⟩], residual := [((1 : F), 1246), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 613) * (relationLc484 rho) = ((1 : F) * rho 1248)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(532872749205900207280908266438511611357819615714152393176342303722674552043 : F), 772, 5, 96⟩], residual := [((6035810642449431924577739844914340166270114693535558053390044101360312801688 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 773, 5, 96⟩], residual := [((2428305511359039300721123192304285368722450320490511310587560309173363693571 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1249 (rho : Nat -> F) : Prop :=
    (relationLc485 rho) * (relationLc486 rho) = ((1 : F) * rho 1249)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 772, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 773, 5, 96⟩], residual := [((4920874604170402253362725562479483084585474624467938132415988992829031335010 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1250) * ((1 : F) + (1 : F) * rho 1249) = (relationLc487 rho)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 773, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 772, 5, 96⟩], residual := [((6027623364426774156656659280598560570588718228848424917937505902444010680918 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1251) * ((1 : F) + (-1 : F) * rho 1249) = (relationLc488 rho)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 96⟩], residual := [((1 : F), 1250), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 614) * (relationLc489 rho) = ((1 : F) * rho 1252)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 96⟩], residual := [((1 : F), 1251), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 614) * (relationLc490 rho) = ((1 : F) * rho 1253)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2181515434528884798350140767563103328656119286124221075800981748012779202594 : F), 772, 5, 97⟩], residual := [((106818944504694456197880394122104885013612583218694364993620473025941826030 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 773, 5, 97⟩], residual := [((2173551935363314471513690343279405623756762022294073186701447780331201841196 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1254 (rho : Nat -> F) : Prop :=
    (relationLc491 rho) * (relationLc492 rho) = ((1 : F) * rho 1254)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 772, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 773, 5, 97⟩], residual := [((40808639809080132140749082804000824499960439990421413662854762657597965803 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1255) * ((1 : F) + (1 : F) * rho 1254) = (relationLc493 rho)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 773, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 772, 5, 97⟩], residual := [((1163529899983247789963633059089171958899621851062864360584673749166280040301 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1256) * ((1 : F) + (-1 : F) * rho 1254) = (relationLc494 rho)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 97⟩], residual := [((1 : F), 1255), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 615) * (relationLc495 rho) = ((1 : F) * rho 1257)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 97⟩], residual := [((1 : F), 1256), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 615) * (relationLc496 rho) = ((1 : F) * rho 1258)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(352327759083434685518809083322611004934457987098470961187983229416631378347 : F), 772, 5, 98⟩], residual := [((6721871770105357367635203874996059568164544186869309336369479652040859885483 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 773, 5, 98⟩], residual := [((3649785974567378771480876215813926936734957082959138095577827575967627485317 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1259 (rho : Nat -> F) : Prop :=
    (relationLc497 rho) * (relationLc498 rho) = ((1 : F) * rho 1259)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 772, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 773, 5, 98⟩], residual := [((6271163839838642738673456213004693292070072018816876300182820369031729874217 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1260) * ((1 : F) + (1 : F) * rho 1259) = (relationLc499 rho)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 773, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 772, 5, 98⟩], residual := [((8040452470595479447273541855297124189002936505453622655026439747661453283520 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1261) * ((1 : F) + (-1 : F) * rho 1259) = (relationLc500 rho)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 98⟩], residual := [((1 : F), 1260), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 616) * (relationLc501 rho) = ((1 : F) * rho 1262)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 98⟩], residual := [((1 : F), 1261), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 616) * (relationLc502 rho) = ((1 : F) * rho 1263)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3605524839361144271918695055199142959033412419248830745370955487763212254122 : F), 772, 5, 99⟩], residual := [((1957554654559557926635956667978967011684000442817968116528079732945495238106 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 773, 5, 99⟩], residual := [((6375998786859699105313056747887071494679733307578548571029979559421544043160 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1264 (rho : Nat -> F) : Prop :=
    (relationLc503 rho) * (relationLc504 rho) = ((1 : F) * rho 1264)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 772, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 773, 5, 99⟩], residual := [((8201947504844235829894691518390987036553333528134133360092619588036907740059 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1265) * ((1 : F) + (1 : F) * rho 1264) = (relationLc505 rho)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (596582547986628283560714467731105115571698103544211991425215386162916709755 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 773, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 772, 5, 99⟩], residual := [((7597921896702449483212464138381743706454771565115335864600154054891188369033 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1266) * ((1 : F) + (-1 : F) * rho 1264) = (relationLc506 rho)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 99⟩], residual := [((1 : F), 1265), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 617) * (relationLc507 rho) = ((1 : F) * rho 1267)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 99⟩], residual := [((1 : F), 1266), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
