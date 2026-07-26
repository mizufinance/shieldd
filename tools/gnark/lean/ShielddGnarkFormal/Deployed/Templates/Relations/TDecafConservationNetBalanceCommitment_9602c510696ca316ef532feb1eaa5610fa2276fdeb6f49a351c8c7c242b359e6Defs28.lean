import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs27

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 95⟩], residual := [((1 : F), 1117), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 484) * (relationLc483 rho) = ((1 : F) * rho 1119)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(532872749205900207280908266438511611357819615714152393176342303722674552043 : F), 643, 5, 96⟩], residual := [((6035810642449431924577739844914340166270114693535558053390044101360312801688 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 644, 5, 96⟩], residual := [((2428305511359039300721123192304285368722450320490511310587560309173363693571 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1120 (rho : Nat -> F) : Prop :=
    (relationLc484 rho) * (relationLc485 rho) = ((1 : F) * rho 1120)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 643, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 644, 5, 96⟩], residual := [((4920874604170402253362725562479483084585474624467938132415988992829031335010 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * ((1 : F) + (1 : F) * rho 1120) = (relationLc486 rho)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 644, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 643, 5, 96⟩], residual := [((6027623364426774156656659280598560570588718228848424917937505902444010680918 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1122) * ((1 : F) + (-1 : F) * rho 1120) = (relationLc487 rho)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 96⟩], residual := [((1 : F), 1121), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 485) * (relationLc488 rho) = ((1 : F) * rho 1123)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 96⟩], residual := [((1 : F), 1122), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 485) * (relationLc489 rho) = ((1 : F) * rho 1124)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2181515434528884798350140767563103328656119286124221075800981748012779202594 : F), 643, 5, 97⟩], residual := [((106818944504694456197880394122104885013612583218694364993620473025941826030 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 644, 5, 97⟩], residual := [((2173551935363314471513690343279405623756762022294073186701447780331201841196 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1125 (rho : Nat -> F) : Prop :=
    (relationLc490 rho) * (relationLc491 rho) = ((1 : F) * rho 1125)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 643, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 644, 5, 97⟩], residual := [((40808639809080132140749082804000824499960439990421413662854762657597965803 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1126) * ((1 : F) + (1 : F) * rho 1125) = (relationLc492 rho)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 644, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 643, 5, 97⟩], residual := [((1163529899983247789963633059089171958899621851062864360584673749166280040301 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1127) * ((1 : F) + (-1 : F) * rho 1125) = (relationLc493 rho)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 97⟩], residual := [((1 : F), 1126), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 486) * (relationLc494 rho) = ((1 : F) * rho 1128)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 97⟩], residual := [((1 : F), 1127), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 486) * (relationLc495 rho) = ((1 : F) * rho 1129)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(352327759083434685518809083322611004934457987098470961187983229416631378347 : F), 643, 5, 98⟩], residual := [((6721871770105357367635203874996059568164544186869309336369479652040859885483 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 644, 5, 98⟩], residual := [((3649785974567378771480876215813926936734957082959138095577827575967627485317 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1130 (rho : Nat -> F) : Prop :=
    (relationLc496 rho) * (relationLc497 rho) = ((1 : F) * rho 1130)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 643, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 644, 5, 98⟩], residual := [((6271163839838642738673456213004693292070072018816876300182820369031729874217 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1131) * ((1 : F) + (1 : F) * rho 1130) = (relationLc498 rho)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 644, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 643, 5, 98⟩], residual := [((8040452470595479447273541855297124189002936505453622655026439747661453283520 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1132) * ((1 : F) + (-1 : F) * rho 1130) = (relationLc499 rho)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 98⟩], residual := [((1 : F), 1131), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 487) * (relationLc500 rho) = ((1 : F) * rho 1133)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 98⟩], residual := [((1 : F), 1132), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 487) * (relationLc501 rho) = ((1 : F) * rho 1134)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3605524839361144271918695055199142959033412419248830745370955487763212254122 : F), 643, 5, 99⟩], residual := [((1957554654559557926635956667978967011684000442817968116528079732945495238106 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 644, 5, 99⟩], residual := [((6375998786859699105313056747887071494679733307578548571029979559421544043160 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1135 (rho : Nat -> F) : Prop :=
    (relationLc502 rho) * (relationLc503 rho) = ((1 : F) * rho 1135)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 643, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 644, 5, 99⟩], residual := [((8201947504844235829894691518390987036553333528134133360092619588036907740059 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1136) * ((1 : F) + (1 : F) * rho 1135) = (relationLc504 rho)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (596582547986628283560714467731105115571698103544211991425215386162916709755 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 644, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 643, 5, 99⟩], residual := [((7597921896702449483212464138381743706454771565115335864600154054891188369033 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1137) * ((1 : F) + (-1 : F) * rho 1135) = (relationLc505 rho)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 99⟩], residual := [((1 : F), 1136), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 488) * (relationLc506 rho) = ((1 : F) * rho 1138)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 99⟩], residual := [((1 : F), 1137), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 488) * (relationLc507 rho) = ((1 : F) * rho 1139)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4920634597453729470497276033723860871868168242313442289183256650013527717679 : F), 643, 5, 100⟩], residual := [((4626745019808028474406318375278772853019104908690802467751832003320946726890 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 644, 5, 100⟩], residual := [((1812710690615895904665028200357513336220875045165683915006673056890740711713 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1140 (rho : Nat -> F) : Prop :=
    (relationLc508 rho) * (relationLc509 rho) = ((1 : F) * rho 1140)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 644, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 643, 5, 100⟩], residual := [((4807959045020924952280022516084198244515018472129832594975685590254152244894 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1141) * ((1 : F) + (1 : F) * rho 1140) = (relationLc510 rho)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 643, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 644, 5, 100⟩], residual := [((7401604082556730843000467773897076577612167912707208666091783693653806068302 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1142) * ((1 : F) + (-1 : F) * rho 1140) = (relationLc511 rho)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 100⟩], residual := [((1 : F), 1141), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 489) * (relationLc512 rho) = ((1 : F) * rho 1143)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 100⟩], residual := [((1 : F), 1142), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 489) * (relationLc513 rho) = ((1 : F) * rho 1144)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
