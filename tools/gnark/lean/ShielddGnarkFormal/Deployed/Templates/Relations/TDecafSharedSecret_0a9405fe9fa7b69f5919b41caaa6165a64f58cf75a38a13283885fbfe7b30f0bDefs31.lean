import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs30

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 131⟩], residual := [((1 : F), 910), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 134) * (relationLc695 rho) = ((1 : F) * rho 912)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 131⟩], residual := [((1 : F), 911), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 134) * (relationLc696 rho) = ((1 : F) * rho 913)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3994026013218413113555076699488428925687662647002644743993134519597452118002 : F), 257, 5, 132⟩], residual := [((191995865608900380973939639003477078910801454989591405516300774439642051799 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 258, 5, 132⟩], residual := [((5369222675224696627787843547543016413626997945559590293458623514399306051644 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow913 (rho : Nat -> F) : Prop :=
    (relationLc697 rho) * (relationLc698 rho) = ((1 : F) * rho 914)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 257, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 258, 5, 132⟩], residual := [((6657898233765606149787076330203491894607865338793954085608129944042591487344 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 915) * ((1 : F) + (1 : F) * rho 914) = (relationLc699 rho)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 258, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 257, 5, 132⟩], residual := [((3112293859876606234205874932513227378808768907034857639058815376386098008592 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 916) * ((1 : F) + (-1 : F) * rho 914) = (relationLc700 rho)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 132⟩], residual := [((1 : F), 915), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 135) * (relationLc701 rho) = ((1 : F) * rho 917)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 132⟩], residual := [((1 : F), 916), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 135) * (relationLc702 rho) = ((1 : F) * rho 918)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8350735386965930517301024222238984186980631401436540132621059471273859939706 : F), 257, 5, 133⟩], residual := [((8334226194666000076422094566176775911994127709825910102492242190812320025554 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 258, 5, 133⟩], residual := [((380793711990470464493962683016616774893169390026769268098521793754562433091 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow918 (rho : Nat -> F) : Prop :=
    (relationLc703 rho) * (relationLc704 rho) = ((1 : F) * rho 919)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 257, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 258, 5, 133⟩], residual := [((36941004034677040948635904518525085393461548302413755168539434819459346161 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 920) * ((1 : F) + (1 : F) * rho 919) = (relationLc705 rho)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 258, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 257, 5, 133⟩], residual := [((6036862831985683245651487661710623165633320395046026221911072481686485751233 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 921) * ((1 : F) + (-1 : F) * rho 919) = (relationLc706 rho)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 133⟩], residual := [((1 : F), 920), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 136) * (relationLc707 rho) = ((1 : F) * rho 922)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 133⟩], residual := [((1 : F), 921), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 136) * (relationLc708 rho) = ((1 : F) * rho 923)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182996801743943238222365565355394233708584573345921108487852703254453477350 : F), 257, 5, 134⟩], residual := [((4659002157157882760089661487130649427326522575034374982504730073283696606459 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 258, 5, 134⟩], residual := [((7378894693786544031947238095630110179035204260913025452629774386744340172769 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow923 (rho : Nat -> F) : Prop :=
    (relationLc709 rho) * (relationLc710 rho) = ((1 : F) * rho 924)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 258, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 257, 5, 134⟩], residual := [((6402098066794563970468588950616402586663725199433751051837047812928448237298 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 925) * ((1 : F) + (1 : F) * rho 924) = (relationLc711 rho)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 257, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 258, 5, 134⟩], residual := [((4369131667080006902416927500337444541983085711333428144390077593133915563395 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 926) * ((1 : F) + (-1 : F) * rho 924) = (relationLc712 rho)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 134⟩], residual := [((1 : F), 925), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 137) * (relationLc713 rho) = ((1 : F) * rho 927)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 134⟩], residual := [((1 : F), 926), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 137) * (relationLc714 rho) = ((1 : F) * rho 928)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8137632229673021427629908971617522457232664963056919591413255887339944990409 : F), 257, 5, 135⟩], residual := [((4769292595969500774517643306856801806102352804507087964477536699275377005469 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 258, 5, 135⟩], residual := [((3829596561026703133464657413286632844617675577922328941474428319150653561380 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow928 (rho : Nat -> F) : Prop :=
    (relationLc715 rho) * (relationLc716 rho) = ((1 : F) * rho 929)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 258, 5, 135⟩, ⟨(8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), 257, 5, 135⟩], residual := [((2931103548540782651560121171320131295032459678182143087574836251588213840107 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 930) * ((1 : F) + (1 : F) * rho 929) = (relationLc717 rho)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 257, 5, 135⟩, ⟨(8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), 258, 5, 135⟩], residual := [((1955362291839259112086866644480913850363730902054284254394140156483786318216 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 931) * ((1 : F) + (-1 : F) * rho 929) = (relationLc718 rho)

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 135⟩], residual := [((1 : F), 930), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * (relationLc719 rho) = ((1 : F) * rho 932)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 135⟩], residual := [((1 : F), 931), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * (relationLc720 rho) = ((1 : F) * rho 933)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5111288782486129139466231775079191268673243399580435556710682586267248156842 : F), 257, 5, 136⟩], residual := [((6476161284874086005951938699175597436841750270565852906553533635919583577062 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), runs := [⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 258, 5, 136⟩], residual := [((2725145222668639968132482018961228677834756799767864225079778248528929615320 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow933 (rho : Nat -> F) : Prop :=
    (relationLc721 rho) * (relationLc722 rho) = ((1 : F) * rho 934)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), runs := [⟨(24053949943036442414252509528411639695359297610331991453224942149489083770 : F), 257, 5, 136⟩, ⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 258, 5, 136⟩], residual := [((2853075358388319132348684952077529634918092523154987272138248635537272216887 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 935) * ((1 : F) + (1 : F) * rho 934) = (relationLc723 rho)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (24053949943036442414252509528411639695359297610331991453224942149489083770 : F), runs := [⟨(24053949943036442414252509528411639695359297610331991453224942149489083770 : F), 258, 5, 136⟩, ⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 257, 5, 136⟩], residual := [((6471862708434684048315744250881982886539723994818043094341387796529886078606 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 936) * ((1 : F) + (-1 : F) * rho 934) = (relationLc724 rho)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 136⟩], residual := [((1 : F), 935), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 139) * (relationLc725 rho) = ((1 : F) * rho 937)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 136⟩], residual := [((1 : F), 936), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
