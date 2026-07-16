import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs35

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(532872749205900207280908266438511611357819615714152393176342303722674552043 : F), 1417, 5, 96⟩], residual := [((6035810642449431924577739844914340166270114693535558053390044101360312801688 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 1418, 5, 96⟩], residual := [((2428305511359039300721123192304285368722450320490511310587560309173363693571 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1894 (rho : Nat -> F) : Prop :=
    (relationLc490 rho) * (relationLc491 rho) = ((1 : F) * rho 1894)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (374223417188193318372015166765725481051715195263501575281385499640933853371 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 1417, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 1418, 5, 96⟩], residual := [((4920874604170402253362725562479483084585474624467938132415988992829031335010 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1895) * ((1 : F) + (1 : F) * rho 1894) = (relationLc492 rho)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), runs := [⟨(1906539485554238506966229565215310574647375427405092910640518225501289564905 : F), 1418, 5, 96⟩, ⟨(374223417188193318372015166765725481051715195263501575281385499640933853371 : F), 1417, 5, 96⟩], residual := [((6027623364426774156656659280598560570588718228848424917937505902444010680918 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1896) * ((1 : F) + (-1 : F) * rho 1894) = (relationLc493 rho)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 96⟩], residual := [((1 : F), 1895), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1259) * (relationLc494 rho) = ((1 : F) * rho 1897)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 96⟩], residual := [((1 : F), 1896), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1259) * (relationLc495 rho) = ((1 : F) * rho 1898)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2181515434528884798350140767563103328656119286124221075800981748012779202594 : F), 1417, 5, 97⟩], residual := [((106818944504694456197880394122104885013612583218694364993620473025941826030 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 1418, 5, 97⟩], residual := [((2173551935363314471513690343279405623756762022294073186701447780331201841196 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1899 (rho : Nat -> F) : Prop :=
    (relationLc496 rho) * (relationLc497 rho) = ((1 : F) * rho 1899)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 1417, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 1418, 5, 97⟩], residual := [((40808639809080132140749082804000824499960439990421413662854762657597965803 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1900) * ((1 : F) + (1 : F) * rho 1899) = (relationLc498 rho)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), runs := [⟨(4185217065319033237305144347607923952597940226418986352696075956721739294951 : F), 1418, 5, 97⟩, ⟨(5665589442300570847065672075813120487543439503470950652995681687983209850820 : F), 1417, 5, 97⟩], residual := [((1163529899983247789963633059089171958899621851062864360584673749166280040301 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1901) * ((1 : F) + (-1 : F) * rho 1899) = (relationLc499 rho)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 97⟩], residual := [((1 : F), 1900), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1260) * (relationLc500 rho) = ((1 : F) * rho 1902)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 97⟩], residual := [((1 : F), 1901), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1260) * (relationLc501 rho) = ((1 : F) * rho 1903)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(352327759083434685518809083322611004934457987098470961187983229416631378347 : F), 1417, 5, 98⟩], residual := [((6721871770105357367635203874996059568164544186869309336369479652040859885483 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 1418, 5, 98⟩], residual := [((3649785974567378771480876215813926936734957082959138095577827575967627485317 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1904 (rho : Nat -> F) : Prop :=
    (relationLc502 rho) * (relationLc503 rho) = ((1 : F) * rho 1904)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 1417, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 1418, 5, 98⟩], residual := [((6271163839838642738673456213004693292070072018816876300182820369031729874217 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1905) * ((1 : F) + (1 : F) * rho 1904) = (relationLc504 rho)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), runs := [⟨(4103549214140990141503738437343473326403427567690587279169185930657455608835 : F), 1418, 5, 98⟩, ⟨(6241771726523492737544417447220324500975604832528646672691223018836502983572 : F), 1417, 5, 98⟩], residual := [((8040452470595479447273541855297124189002936505453622655026439747661453283520 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1906) * ((1 : F) + (-1 : F) * rho 1904) = (relationLc505 rho)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 98⟩], residual := [((1 : F), 1905), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1261) * (relationLc506 rho) = ((1 : F) * rho 1907)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 98⟩], residual := [((1 : F), 1906), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1261) * (relationLc507 rho) = ((1 : F) * rho 1908)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3605524839361144271918695055199142959033412419248830745370955487763212254122 : F), 1417, 5, 99⟩], residual := [((1957554654559557926635956667978967011684000442817968116528079732945495238106 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 1418, 5, 99⟩], residual := [((6375998786859699105313056747887071494679733307578548571029979559421544043160 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1909 (rho : Nat -> F) : Prop :=
    (relationLc508 rho) * (relationLc509 rho) = ((1 : F) * rho 1909)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 1417, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 1418, 5, 99⟩], residual := [((8201947504844235829894691518390987036553333528134133360092619588036907740059 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1910) * ((1 : F) + (1 : F) * rho 1909) = (relationLc510 rho)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (596582547986628283560714467731105115571698103544211991425215386162916709755 : F), runs := [⟨(596582547986628283560714467731105115571698103544211991425215386162916709755 : F), 1418, 5, 99⟩, ⟨(7592776609714402440070157730327872784181236208526071474667108148771692528462 : F), 1417, 5, 99⟩], residual := [((7597921896702449483212464138381743706454771565115335864600154054891188369033 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1911) * ((1 : F) + (-1 : F) * rho 1909) = (relationLc511 rho)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 99⟩], residual := [((1 : F), 1910), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1262) * (relationLc512 rho) = ((1 : F) * rho 1912)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 99⟩], residual := [((1 : F), 1911), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1262) * (relationLc513 rho) = ((1 : F) * rho 1913)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4920634597453729470497276033723860871868168242313442289183256650013527717679 : F), 1417, 5, 100⟩], residual := [((4626745019808028474406318375278772853019104908690802467751832003320946726890 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 1418, 5, 100⟩], residual := [((1812710690615895904665028200357513336220875045165683915006673056890740711713 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1914 (rho : Nat -> F) : Prop :=
    (relationLc514 rho) * (relationLc515 rho) = ((1 : F) * rho 1914)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 1418, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 1417, 5, 100⟩], residual := [((4807959045020924952280022516084198244515018472129832594975685590254152244894 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1915) * ((1 : F) + (1 : F) * rho 1914) = (relationLc516 rho)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), runs := [⟨(2413763312937868418180440932427778308629543838035273441005996383572222429632 : F), 1417, 5, 100⟩, ⟨(2777315839715268308755240132487189528807724663373154195110516411246607382352 : F), 1418, 5, 100⟩], residual := [((7401604082556730843000467773897076577612167912707208666091783693653806068302 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1916) * ((1 : F) + (-1 : F) * rho 1914) = (relationLc517 rho)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 100⟩], residual := [((1 : F), 1915), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1263) * (relationLc518 rho) = ((1 : F) * rho 1917)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 100⟩], residual := [((1 : F), 1916), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1263) * (relationLc519 rho) = ((1 : F) * rho 1918)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1078993665523434524257958077337601540950101808496742976783528403246920352908 : F), 1417, 5, 101⟩], residual := [((823084015082302969527154052266362481686811507015307064117458449818406088680 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
