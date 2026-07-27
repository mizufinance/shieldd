import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs3

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationRow922 (rho : Nat -> F) : Prop :=
    (relationLc709 rho) * (relationLc710 rho) = ((1 : F) * rho 107480)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 106814, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 106813, 5, 134⟩], residual := [((6402098066794563970468588950616402586663725199433751051837047812928448237298 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107481) * ((1 : F) + (1 : F) * rho 107480) = (relationLc711 rho)

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 106813, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 106814, 5, 134⟩], residual := [((4369131667080006902416927500337444541983085711333428144390077593133915563395 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107482) * ((1 : F) + (-1 : F) * rho 107480) = (relationLc712 rho)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 134⟩], residual := [((1 : F), 107481), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106694) * (relationLc713 rho) = ((1 : F) * rho 107483)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 134⟩], residual := [((1 : F), 107482), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106694) * (relationLc714 rho) = ((1 : F) * rho 107484)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8137632229673021427629908971617522457232664963056919591413255887339944990409 : F), 106813, 5, 135⟩], residual := [((4769292595969500774517643306856801806102352804507087964477536699275377005469 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 106814, 5, 135⟩], residual := [((3829596561026703133464657413286632844617675577922328941474428319150653561380 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow927 (rho : Nat -> F) : Prop :=
    (relationLc715 rho) * (relationLc716 rho) = ((1 : F) * rho 107485)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 106814, 5, 135⟩, ⟨(8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), 106813, 5, 135⟩], residual := [((2931103548540782651560121171320131295032459678182143087574836251588213840107 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107486) * ((1 : F) + (1 : F) * rho 107485) = (relationLc717 rho)

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 106813, 5, 135⟩, ⟨(8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), 106814, 5, 135⟩], residual := [((1955362291839259112086866644480913850363730902054284254394140156483786318216 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107487) * ((1 : F) + (-1 : F) * rho 107485) = (relationLc718 rho)

def relationLc719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 135⟩], residual := [((1 : F), 107486), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106695) * (relationLc719 rho) = ((1 : F) * rho 107488)

def relationLc720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 135⟩], residual := [((1 : F), 107487), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106695) * (relationLc720 rho) = ((1 : F) * rho 107489)

def relationLc721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5111288782486129139466231775079191268673243399580435556710682586267248156842 : F), 106813, 5, 136⟩], residual := [((6476161284874086005951938699175597436841750270565852906553533635919583577062 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), runs := [⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 106814, 5, 136⟩], residual := [((2725145222668639968132482018961228677834756799767864225079778248528929615320 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow932 (rho : Nat -> F) : Prop :=
    (relationLc721 rho) * (relationLc722 rho) = ((1 : F) * rho 107490)

def relationLc723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), runs := [⟨(24053949943036442414252509528411639695359297610331991453224942149489083770 : F), 106813, 5, 136⟩, ⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 106814, 5, 136⟩], residual := [((2853075358388319132348684952077529634918092523154987272138248635537272216887 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107491) * ((1 : F) + (1 : F) * rho 107490) = (relationLc723 rho)

def relationLc724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (24053949943036442414252509528411639695359297610331991453224942149489083770 : F), runs := [⟨(24053949943036442414252509528411639695359297610331991453224942149489083770 : F), 106814, 5, 136⟩, ⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 106813, 5, 136⟩], residual := [((6471862708434684048315744250881982886539723994818043094341387796529886078606 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107492) * ((1 : F) + (-1 : F) * rho 107490) = (relationLc724 rho)

def relationLc725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 136⟩], residual := [((1 : F), 107491), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106696) * (relationLc725 rho) = ((1 : F) * rho 107493)

def relationLc726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 136⟩], residual := [((1 : F), 107492), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106696) * (relationLc726 rho) = ((1 : F) * rho 107494)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4662752930448595384754707496749798730457005433492061601753208012070424433443 : F), 106813, 5, 137⟩], residual := [((7126231453609229208688124226293001670761804314979031296887827715456390188658 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 106814, 5, 137⟩], residual := [((7954648395084117914549174521325405444860329886984909639008384565435189389663 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow937 (rho : Nat -> F) : Prop :=
    (relationLc727 rho) * (relationLc728 rho) = ((1 : F) * rho 107495)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 106814, 5, 137⟩, ⟨(5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), 106813, 5, 137⟩], residual := [((6190406887574974955622802711632044171719381003998352436771317463010711981889 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107496) * ((1 : F) + (1 : F) * rho 107495) = (relationLc729 rho)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 106813, 5, 137⟩, ⟨(5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), 106814, 5, 137⟩], residual := [((1456669994443089960625881403451915523345137050588486885534892853786125388712 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107497) * ((1 : F) + (-1 : F) * rho 107495) = (relationLc730 rho)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 137⟩], residual := [((1 : F), 107496), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106697) * (relationLc731 rho) = ((1 : F) * rho 107498)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 137⟩], residual := [((1 : F), 107497), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106697) * (relationLc732 rho) = ((1 : F) * rho 107499)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3503746544360184031918039694239931947828755957816871622237267658653103197351 : F), 106813, 5, 138⟩], residual := [((182472210883555855290507371466880334694398402478770867741041033474438456424 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 106814, 5, 138⟩], residual := [((7270055234765096745190223231333018492000124493956213669318371438125775854168 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow942 (rho : Nat -> F) : Prop :=
    (relationLc733 rho) * (relationLc734 rho) = ((1 : F) * rho 107500)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 106814, 5, 138⟩, ⟨(7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), 106813, 5, 138⟩], residual := [((3935377844875271402497883726336355753967435480902152306902286541774900387859 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107501) * ((1 : F) + (1 : F) * rho 107500) = (relationLc735 rho)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 106813, 5, 138⟩, ⟨(7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), 106814, 5, 138⟩], residual := [((1323841985273903031499736341692708274137761588453447002420953300902859246398 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107502) * ((1 : F) + (-1 : F) * rho 107500) = (relationLc736 rho)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 138⟩], residual := [((1 : F), 107501), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106698) * (relationLc737 rho) = ((1 : F) * rho 107503)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 138⟩], residual := [((1 : F), 107502), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106698) * (relationLc738 rho) = ((1 : F) * rho 107504)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7600509590891047986640744943418231369735462568340088378292668398646431841528 : F), 106813, 5, 139⟩], residual := [((2090884111564989602241473477281820540087453634304452393418639830145704249314 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 106814, 5, 139⟩], residual := [((5713273981878165677335400987173347988429349823527630223344297681551752627180 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow947 (rho : Nat -> F) : Prop :=
    (relationLc739 rho) * (relationLc740 rho) = ((1 : F) * rho 107505)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 106814, 5, 139⟩, ⟨(6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), 106813, 5, 139⟩], residual := [((2530172012832369939626969960428925718089375679500429214531052972362814057495 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107506) * ((1 : F) + (1 : F) * rho 107505) = (relationLc741 rho)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 106813, 5, 139⟩, ⟨(6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), 106814, 5, 139⟩], residual := [((4704853232277291898484785826968556517875025073063416699200724012164660423043 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107507) * ((1 : F) + (-1 : F) * rho 107505) = (relationLc742 rho)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 139⟩], residual := [((1 : F), 107506), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106699) * (relationLc743 rho) = ((1 : F) * rho 107508)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 139⟩], residual := [((1 : F), 107507), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106699) * (relationLc744 rho) = ((1 : F) * rho 107509)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8278294750687899711213463308546649712490226032283670262390840185525052780961 : F), 106813, 5, 140⟩], residual := [((4063373404169819748190960861066741984816630998421400188678845968314285404770 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), runs := [⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 106814, 5, 140⟩], residual := [((3888675705919945147097785690500126271601827267583797106747844098581343277171 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow952 (rho : Nat -> F) : Prop :=
    (relationLc745 rho) * (relationLc746 rho) = ((1 : F) * rho 107510)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), runs := [⟨(4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), 106813, 5, 140⟩, ⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 106814, 5, 140⟩], residual := [((7398064275577930814817238275416348594958851529952804556018746724580900668896 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107511) * ((1 : F) + (1 : F) * rho 107510) = (relationLc747 rho)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), runs := [⟨(4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), 106814, 5, 140⟩, ⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 106813, 5, 140⟩], residual := [((8336142164301300436708097350603171861188426873304660608210887812849031670123 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107512) * ((1 : F) + (-1 : F) * rho 107510) = (relationLc748 rho)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 140⟩], residual := [((1 : F), 107511), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106700) * (relationLc749 rho) = ((1 : F) * rho 107513)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 140⟩], residual := [((1 : F), 107512), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106700) * (relationLc750 rho) = ((1 : F) * rho 107514)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7020431916799759325650095382254167694493003261783313273118624632432520383891 : F), 106813, 5, 141⟩], residual := [((2104166350232168144330387255692034385682746484618013311749583747661659393491 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 106814, 5, 141⟩], residual := [((7277029194448818776990454612401046658428438801060623224664381017354621741353 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow957 (rho : Nat -> F) : Prop :=
    (relationLc751 rho) * (relationLc752 rho) = ((1 : F) * rho 107515)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 106814, 5, 141⟩, ⟨(592122430005357801669034146794161034695401444216911877182208832780869205502 : F), 106813, 5, 141⟩], residual := [((6992609819377166471419766179266314545944274952764993798269927449411584971082 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107516) * ((1 : F) + (1 : F) * rho 107515) = (relationLc753 rho)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (592122430005357801669034146794161034695401444216911877182208832780869205502 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 106813, 5, 141⟩, ⟨(592122430005357801669034146794161034695401444216911877182208832780869205502 : F), 106814, 5, 141⟩], residual := [((8410461635640452567548925071056567412560644726740029000698219791563842842019 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107517) * ((1 : F) + (-1 : F) * rho 107515) = (relationLc754 rho)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 141⟩], residual := [((1 : F), 107516), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106701) * (relationLc755 rho) = ((1 : F) * rho 107518)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 141⟩], residual := [((1 : F), 107517), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106701) * (relationLc756 rho) = ((1 : F) * rho 107519)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3778682624279442475367220590942522733490752825963756877840445187645517884389 : F), 106813, 5, 142⟩], residual := [((4938053888672654270810678854782661645153770246529503148947669032667265402660 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 106814, 5, 142⟩], residual := [((2117248663306599533961325002399283838091445272984068801478855011548758629520 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow962 (rho : Nat -> F) : Prop :=
    (relationLc757 rho) * (relationLc758 rho) = ((1 : F) * rho 107520)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 106814, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 106813, 5, 142⟩], residual := [((7390731918291895553294027588760349518270227105604755290268923851963489212186 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107521) * ((1 : F) + (1 : F) * rho 107520) = (relationLc759 rho)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 106813, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 106814, 5, 142⟩], residual := [((8191911795387420165726505078694277743693126356244378056681858280789421851413 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107522) * ((1 : F) + (-1 : F) * rho 107520) = (relationLc760 rho)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 142⟩], residual := [((1 : F), 107521), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106702) * (relationLc761 rho) = ((1 : F) * rho 107523)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 142⟩], residual := [((1 : F), 107522), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106702) * (relationLc762 rho) = ((1 : F) * rho 107524)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1135710693610733492764624259274122606205914527429029626003819811576386849520 : F), 106813, 5, 143⟩], residual := [((2124268895110141773845156519836220251832881834823947220424969606687161535086 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 106814, 5, 143⟩], residual := [((1499849023641731880452303193048385938531502224180249824126306744226369219863 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow967 (rho : Nat -> F) : Prop :=
    (relationLc763 rho) * (relationLc764 rho) = ((1 : F) * rho 107525)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 106814, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 106813, 5, 143⟩], residual := [((6769605616348646276838559454591931596226107695415017868773224994478273747214 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107526) * ((1 : F) + (1 : F) * rho 107525) = (relationLc765 rho)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (889266649126723776366729875800001959478233003345389383286795120421487098598 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 106813, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 106814, 5, 143⟩], residual := [((1150985448971808202867051906945978101453740595890484749058149901264833144629 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107527) * ((1 : F) + (-1 : F) * rho 107525) = (relationLc766 rho)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 143⟩], residual := [((1 : F), 107526), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106703) * (relationLc767 rho) = ((1 : F) * rho 107528)

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 143⟩], residual := [((1 : F), 107527), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106703) * (relationLc768 rho) = ((1 : F) * rho 107529)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(938374591090202613325146222034748958625328173328686440431425148143684449572 : F), 106813, 5, 144⟩], residual := [((5659401960593731061170570757997334349881497142436822625115039201429635798804 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 106814, 5, 144⟩], residual := [((5292886040823016778799692579657563686851334379155438097754203142747034024462 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow972 (rho : Nat -> F) : Prop :=
    (relationLc769 rho) * (relationLc770 rho) = ((1 : F) * rho 107530)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 106813, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 106814, 5, 144⟩], residual := [((6225578912229915515090996543700017288075450888837245471910955138782097550579 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107531) * ((1 : F) + (1 : F) * rho 107530) = (relationLc771 rho)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 106814, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 106813, 5, 144⟩], residual := [((5895462753110165431949110350547558582963032358329905853206131756431051327803 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107532) * ((1 : F) + (-1 : F) * rho 107530) = (relationLc772 rho)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 144⟩], residual := [((1 : F), 107531), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106704) * (relationLc773 rho) = ((1 : F) * rho 107533)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 144⟩], residual := [((1 : F), 107532), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106704) * (relationLc774 rho) = ((1 : F) * rho 107534)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5220355908337253141300836156003928565430564187318809155802611073103937168205 : F), 106813, 5, 145⟩], residual := [((6046344471193084493220190367252733367917229149783691492755493061996738308825 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 106814, 5, 145⟩], residual := [((1721306895664830137509516829929134302350383955275552661355005310982742565584 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow977 (rho : Nat -> F) : Prop :=
    (relationLc775 rho) * (relationLc776 rho) = ((1 : F) * rho 107535)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 106813, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 106814, 5, 145⟩], residual := [((8253021225732975253543437798933088433651945714980841239160189305052608411565 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107536) * ((1 : F) + (1 : F) * rho 107535) = (relationLc777 rho)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 106814, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 106813, 5, 145⟩], residual := [((1309295085435103989549045054340041381883031422465276444588972052537622490025 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107537) * ((1 : F) + (-1 : F) * rho 107535) = (relationLc778 rho)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 145⟩], residual := [((1 : F), 107536), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106705) * (relationLc779 rho) = ((1 : F) * rho 107538)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 145⟩], residual := [((1 : F), 107537), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106705) * (relationLc780 rho) = ((1 : F) * rho 107539)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4234403036772419062696778810592241573149156566464472741108884875864372860170 : F), 106813, 5, 146⟩], residual := [((4688276295826368622850016053938581518710748672193542551483696517311406849461 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 106814, 5, 146⟩], residual := [((479310377048519084134302755901600248569178343487260514221297806877166865256 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow982 (rho : Nat -> F) : Prop :=
    (relationLc781 rho) * (relationLc782 rho) = ((1 : F) * rho 107540)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 106814, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 106813, 5, 146⟩], residual := [((318737551768473034487304467124575714540349673256627558422304147848402108879 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107541) * ((1 : F) + (1 : F) * rho 107540) = (relationLc783 rho)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 106813, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 106814, 5, 146⟩], residual := [((3749326459399944831260985891850275654689277813772661252450598232921014109928 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107542) * ((1 : F) + (-1 : F) * rho 107540) = (relationLc784 rho)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 146⟩], residual := [((1 : F), 107541), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106706) * (relationLc785 rho) = ((1 : F) * rho 107543)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 146⟩], residual := [((1 : F), 107542), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106706) * (relationLc786 rho) = ((1 : F) * rho 107544)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3736510251652676541720141333403773953286420507403643590024712002903325578728 : F), 106813, 5, 147⟩], residual := [((4680686181738868780173466445942294778812778475524006084648958938128221885398 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 106814, 5, 147⟩], residual := [((218475059214054268059453563571377607346452200528713602273142633824230367437 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow987 (rho : Nat -> F) : Prop :=
    (relationLc787 rho) * (relationLc788 rho) = ((1 : F) * rho 107545)

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 106813, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 106814, 5, 147⟩], residual := [((4253575685035595940012855699654699004087344461072519663112331920758010491178 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107546) * ((1 : F) + (1 : F) * rho 107545) = (relationLc789 rho)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 106814, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 106813, 5, 147⟩], residual := [((4441515350697547072769915522734436750825214077706035322746967220045928818529 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107547) * ((1 : F) + (-1 : F) * rho 107545) = (relationLc790 rho)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 147⟩], residual := [((1 : F), 107546), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106707) * (relationLc791 rho) = ((1 : F) * rho 107548)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 147⟩], residual := [((1 : F), 107547), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106707) * (relationLc792 rho) = ((1 : F) * rho 107549)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2905285606874933389800013731091935386689424730514727187378944100147027031846 : F), 106813, 5, 148⟩], residual := [((2211009345673416112645617919932112023860936344208789987563683022663977313482 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 106814, 5, 148⟩], residual := [((3158801321492224690766123236898749852131432017480304019443254987406624478127 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow992 (rho : Nat -> F) : Prop :=
    (relationLc793 rho) * (relationLc794 rho) = ((1 : F) * rho 107550)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 106814, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 106813, 5, 148⟩], residual := [((6991826170155571022364198248149803280314225438480115438869527331360756237160 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107551) * ((1 : F) + (1 : F) * rho 107550) = (relationLc795 rho)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 106813, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 106814, 5, 148⟩], residual := [((7034116285494096098739970852510960587256386181555087115260134023699770837108 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107552) * ((1 : F) + (-1 : F) * rho 107550) = (relationLc796 rho)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 148⟩], residual := [((1 : F), 107551), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106708) * (relationLc797 rho) = ((1 : F) * rho 107553)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 148⟩], residual := [((1 : F), 107552), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106708) * (relationLc798 rho) = ((1 : F) * rho 107554)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc799 rho) = ((1 : F) * rho 107555)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3144982910228748581975719192741403467556637701274845694014003990746557421882 : F), 106813, 5, 149⟩], residual := [((5769188875529050372644141506610052770738299431780184070866704372825525935919 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 106814, 5, 149⟩], residual := [((1981879756459152890585408800338738007832827297438533450175392580190602675804 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow998 (rho : Nat -> F) : Prop :=
    (relationLc800 rho) * (relationLc801 rho) = ((1 : F) * rho 107556)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(6203709236971791698109936530403506506650340040519080595790234042592346130041 : F), 106813, 5, 149⟩, ⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 106814, 5, 149⟩], residual := [((2282881608847224617088973318695651457560718567975860498722210416720224759390 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc802 rho) = ((1 : F) * rho 107557)

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107558) * ((1 : F) + (1 : F) * rho 107556) = ((1 : F) * rho 107557)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (449286664448037629354489433935120845915192649163080147926740617137481076652 : F), runs := [⟨(2240752512456578726138888408378040024725559294634983232144999413325063109000 : F), 106813, 5, 149⟩, ⟨(449286664448037629354489433935120845915192649163080147926740617137481076652 : F), 106814, 5, 149⟩], residual := [((6161580140581145807159851620085895073815180767178203329213023039197184479651 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc803 rho) = ((1 : F) * rho 107559)

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107560) * ((1 : F) + (-1 : F) * rho 107556) = ((5754422572523754068755447096468385660735147391356000447863493425454865053389 : F) * rho 107555 + (1 : F) * rho 107559)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((1 : F), 107558), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106709) * (relationLc804 rho) = ((1 : F) * rho 107561)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107560), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106709) * (relationLc805 rho) = ((1 : F) * rho 107562)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc806 rho) = ((1 : F) * rho 107563)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 106813, 5, 149⟩], residual := [((481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 107561), ((5775556576858411646158082484809865716789842656243550876083649985645673455572 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 106814, 5, 149⟩], residual := [((3691096358027745336063657324176483550920035707413579978283300600227612312748 : F), 106559), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 107562)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    (relationLc807 rho) * (relationLc808 rho) = ((1 : F) * rho 107564)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 106813, 5, 149⟩, ⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 106814, 5, 149⟩], residual := [((151421588100937353317181615817857404102268539262651372153589531488217465873 : F), 106559), ((2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 107561), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 107562)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc809 rho) = ((1 : F) * rho 107565)

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107566) * ((1 : F) + (1 : F) * rho 107564) = ((1 : F) * rho 107565)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), runs := [⟨(2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 106814, 5, 149⟩, ⟨(5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 106813, 5, 149⟩], residual := [((2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 107562), ((5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 107561), ((8293040161327433070931643322963689127273630795891412455781643924429191773168 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc810 rho) = ((1 : F) * rho 107567)

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107568) * ((1 : F) + (-1 : F) * rho 107564) = ((853198205166559421082470338920132093956816522397963514282441805043003013830 : F) * rho 107563 + (1 : F) * rho 107567)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((1 : F), 107566), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106710) * (relationLc811 rho) = ((1 : F) * rho 107569)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((1 : F), 107568), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106710) * (relationLc812 rho) = ((1 : F) * rho 107570)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc813 rho) = ((1 : F) * rho 107571)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 106813, 5, 149⟩], residual := [((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 107561), ((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 107569), ((5270411603461582088167028508315370011555073697546563505417240778775115497472 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), runs := [⟨(2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 106814, 5, 149⟩], residual := [((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 107562), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 107570), ((6468272815759537655347467424063497937855302588140460740361281552813528541125 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1014 (rho : Nat -> F) : Prop :=
    (relationLc814 rho) * (relationLc815 rho) = ((1 : F) * rho 107572)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), runs := [⟨(2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 106813, 5, 149⟩, ⟨(2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 106814, 5, 149⟩], residual := [((2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 107561), ((2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 107569), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 107562), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 107570), ((7412017940274871126072399907637710632686561492359085723320431144148497766234 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1015 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc816 rho) = ((1 : F) * rho 107573)

def relationRow1016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107574) * ((1 : F) + (1 : F) * rho 107572) = ((1 : F) * rho 107573)

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5624829369178900474107680618410226151279078028677980061710814364926530391278 : F), runs := [⟨(5624829369178900474107680618410226151279078028677980061710814364926530391278 : F), 106814, 5, 149⟩, ⟨(6354890724475491298557179447442695776953050477596480816631411970855631711067 : F), 106813, 5, 149⟩], residual := [((1032443809153499298176425031143835898689337842794978104614802311768911472807 : F), 106559), ((5624829369178900474107680618410226151279078028677980061710814364926530391278 : F), 107562), ((5624829369178900474107680618410226151279078028677980061710814364926530391278 : F), 107570), ((6354890724475491298557179447442695776953050477596480816631411970855631711067 : F), 107561), ((6354890724475491298557179447442695776953050477596480816631411970855631711067 : F), 107569)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1017 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc817 rho) = ((1 : F) * rho 107575)

def relationRow1018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107576) * ((1 : F) + (-1 : F) * rho 107572) = ((4909203405202349075832789811710171134519670164033666777528240576052656375737 : F) * rho 107571 + (1 : F) * rho 107575)

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((1 : F), 107574), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106711) * (relationLc818 rho) = ((1 : F) * rho 107577)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((1 : F), 107576), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106711) * (relationLc819 rho) = ((1 : F) * rho 107578)

def relationLc820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1021 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc820 rho) = ((1 : F) * rho 107579)

def relationLc821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1946315734629126190715494719588597209614883259431992422020952894515219751277 : F), 106813, 5, 149⟩], residual := [((1946315734629126190715494719588597209614883259431992422020952894515219751277 : F), 107561), ((1946315734629126190715494719588597209614883259431992422020952894515219751277 : F), 107569), ((1946315734629126190715494719588597209614883259431992422020952894515219751277 : F), 107577), ((8084198416021423620642490167755578137368562306332511210087614204229693258384 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), runs := [⟨(2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 106814, 5, 149⟩], residual := [((2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 107562), ((2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 107570), ((2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 107578), ((8359313933581645652512397357219350377119517449063007939966725768789633840236 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1022 (rho : Nat -> F) : Prop :=
    (relationLc821 rho) * (relationLc822 rho) = ((1 : F) * rho 107580)

def relationLc823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), runs := [⟨(2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 106814, 5, 149⟩, ⟨(3117352256321503525067247699920891419958206766619070890622246360887926686952 : F), 106813, 5, 149⟩], residual := [((1401807956203088574472367033684661438030268596952022696554397502973639364250 : F), 106559), ((2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 107562), ((2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 107570), ((2564178869687967144620376908853437305807031057392074828094095452332896156270 : F), 107578), ((3117352256321503525067247699920891419958206766619070890622246360887926686952 : F), 107561), ((3117352256321503525067247699920891419958206766619070890622246360887926686952 : F), 107569), ((3117352256321503525067247699920891419958206766619070890622246360887926686952 : F), 107577)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1023 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc823 rho) = ((1 : F) * rho 107581)

def relationRow1024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107582) * ((1 : F) + (1 : F) * rho 107580) = ((1 : F) * rho 107581)

def relationLc824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5880282879740403279628448029928109225568868277761988999841138003584513082771 : F), runs := [⟨(5327109493106866899181577238860655111417692568534992937312987095029482552089 : F), 106813, 5, 149⟩, ⟨(5880282879740403279628448029928109225568868277761988999841138003584513082771 : F), 106814, 5, 149⟩], residual := [((5327109493106866899181577238860655111417692568534992937312987095029482552089 : F), 107561), ((5327109493106866899181577238860655111417692568534992937312987095029482552089 : F), 107569), ((5327109493106866899181577238860655111417692568534992937312987095029482552089 : F), 107577), ((5880282879740403279628448029928109225568868277761988999841138003584513082771 : F), 107562), ((5880282879740403279628448029928109225568868277761988999841138003584513082771 : F), 107570), ((5880282879740403279628448029928109225568868277761988999841138003584513082771 : F), 107578), ((7042653793225281849776457905096885093345630738202041131380835952943769874791 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1025 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc824 rho) = ((1 : F) * rho 107583)

def relationRow1026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107584) * ((1 : F) + (-1 : F) * rho 107580) = ((5681531126009470669687624608774328725765237824011145718716341813220822843222 : F) * rho 107579 + (1 : F) * rho 107583)

def relationLc825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((1 : F), 107582), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106712) * (relationLc825 rho) = ((1 : F) * rho 107585)

def relationLc826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((1 : F), 107584), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106712) * (relationLc826 rho) = ((1 : F) * rho 107586)

def relationLc827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1029 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc827 rho) = ((1 : F) * rho 107587)

def relationLc828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2704772103181543561407909387543324526527234792527620381796325773278665770442 : F), 106813, 5, 149⟩], residual := [((117308203899452786713752371936445821647930783023531061251907751794377827098 : F), 106559), ((2704772103181543561407909387543324526527234792527620381796325773278665770442 : F), 107561), ((2704772103181543561407909387543324526527234792527620381796325773278665770442 : F), 107569), ((2704772103181543561407909387543324526527234792527620381796325773278665770442 : F), 107577), ((2704772103181543561407909387543324526527234792527620381796325773278665770442 : F), 107585)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), runs := [⟨(8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 106814, 5, 149⟩], residual := [((1954415939981024927509846675227759571603074536204173585015379072837175217176 : F), 106559), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107562), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107570), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107578), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107586)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1030 (rho : Nat -> F) : Prop :=
    (relationLc828 rho) * (relationLc829 rho) = ((1 : F) * rho 107588)

def relationLc830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), runs := [⟨(67981414792936919478113110863389752161386566976572377441986735754815123306 : F), 106813, 5, 149⟩, ⟨(8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 106814, 5, 149⟩], residual := [((4215815100355553602122231027378109650949234911219950204631683532813665932903 : F), 106559), ((67981414792936919478113110863389752161386566976572377441986735754815123306 : F), 107561), ((67981414792936919478113110863389752161386566976572377441986735754815123306 : F), 107569), ((67981414792936919478113110863389752161386566976572377441986735754815123306 : F), 107577), ((67981414792936919478113110863389752161386566976572377441986735754815123306 : F), 107585), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107562), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107570), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107578), ((8364593084925268505726894091365521251914098379187615535723699992665120113797 : F), 107586)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1031 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc830 rho) = ((1 : F) * rho 107589)

def relationRow1032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107590) * ((1 : F) + (1 : F) * rho 107588) = ((1 : F) * rho 107589)

def relationLc831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (79868664503101918521930847416025279461800955966448292211533463252289125244 : F), runs := [⟨(79868664503101918521930847416025279461800955966448292211533463252289125244 : F), 106814, 5, 149⟩, ⟨(8376480334635433504770711827918156779214512768177491450493246720162594115735 : F), 106813, 5, 149⟩], residual := [((4228646649072816822126593911403436880426664423934113623303549923103743306138 : F), 106559), ((79868664503101918521930847416025279461800955966448292211533463252289125244 : F), 107562), ((79868664503101918521930847416025279461800955966448292211533463252289125244 : F), 107570), ((79868664503101918521930847416025279461800955966448292211533463252289125244 : F), 107578), ((79868664503101918521930847416025279461800955966448292211533463252289125244 : F), 107586), ((8376480334635433504770711827918156779214512768177491450493246720162594115735 : F), 107561), ((8376480334635433504770711827918156779214512768177491450493246720162594115735 : F), 107569), ((8376480334635433504770711827918156779214512768177491450493246720162594115735 : F), 107577), ((8376480334635433504770711827918156779214512768177491450493246720162594115735 : F), 107585)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1033 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc831 rho) = ((1 : F) * rho 107591)

def relationRow1034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107592) * ((1 : F) + (-1 : F) * rho 107588) = ((8432574499718205425205007202228911004075484946164187913165686728419935237103 : F) * rho 107587 + (1 : F) * rho 107591)

def relationLc832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((-1 : F), 107585), ((1 : F), 107590), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106713) * (relationLc832 rho) = ((1 : F) * rho 107593)

def relationLc833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((-1 : F), 107586), ((1 : F), 107592), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106713) * (relationLc833 rho) = ((1 : F) * rho 107594)

def relationLc834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((1 : F), 107593), ((1 : F), 107594), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1037 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc834 rho) = ((1 : F) * rho 107595)

def relationLc835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4368821252455360196064132101118635789175210849407228732022954977523087268278 : F), 106813, 5, 149⟩], residual := [((2107395903920557572141994998616808636924098578621934478699655925422990880072 : F), 106559), ((4368821252455360196064132101118635789175210849407228732022954977523087268278 : F), 107561), ((4368821252455360196064132101118635789175210849407228732022954977523087268278 : F), 107569), ((4368821252455360196064132101118635789175210849407228732022954977523087268278 : F), 107577), ((4368821252455360196064132101118635789175210849407228732022954977523087268278 : F), 107585), ((4368821252455360196064132101118635789175210849407228732022954977523087268278 : F), 107593)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), runs := [⟨(4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 106814, 5, 149⟩], residual := [((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107562), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107570), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107578), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107586), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107594), ((7490811308284524701189420543202543492686314952173282607366257967557762122603 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1038 (rho : Nat -> F) : Prop :=
    (relationLc835 rho) * (relationLc836 rho) = ((1 : F) * rho 107596)

def relationLc837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), runs := [⟨(4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 106814, 5, 149⟩, ⟨(7196429448620020136449036585410400333515637239171124634835257818771577116372 : F), 106813, 5, 149⟩], residual := [((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107562), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107570), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107578), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107586), ((4159213325184189711441316843469868268679184464412463059292100956586171524082 : F), 107594), ((7196429448620020136449036585410400333515637239171124634835257818771577116372 : F), 107561), ((7196429448620020136449036585410400333515637239171124634835257818771577116372 : F), 107569), ((7196429448620020136449036585410400333515637239171124634835257818771577116372 : F), 107577), ((7196429448620020136449036585410400333515637239171124634835257818771577116372 : F), 107585), ((7196429448620020136449036585410400333515637239171124634835257818771577116372 : F), 107593), ((8209889118780059873848834645905447917446503706795333695833008928860707228632 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1039 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc837 rho) = ((1 : F) * rho 107597)

def relationRow1040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107598) * ((1 : F) + (1 : F) * rho 107596) = ((1 : F) * rho 107597)

def relationLc838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4285248424244180712807508095311678262696714870741600768643132499331237714959 : F), runs := [⟨(1248032300808350287799788353371146197860262095982939193099975637145832122669 : F), 106813, 5, 149⟩, ⟨(4285248424244180712807508095311678262696714870741600768643132499331237714959 : F), 106814, 5, 149⟩], residual := [((1248032300808350287799788353371146197860262095982939193099975637145832122669 : F), 107561), ((1248032300808350287799788353371146197860262095982939193099975637145832122669 : F), 107569), ((1248032300808350287799788353371146197860262095982939193099975637145832122669 : F), 107577), ((1248032300808350287799788353371146197860262095982939193099975637145832122669 : F), 107585), ((1248032300808350287799788353371146197860262095982939193099975637145832122669 : F), 107593), ((234572630648310550399990292876098613929395628358730132102224527056702010409 : F), 106559), ((4285248424244180712807508095311678262696714870741600768643132499331237714959 : F), 107562), ((4285248424244180712807508095311678262696714870741600768643132499331237714959 : F), 107570), ((4285248424244180712807508095311678262696714870741600768643132499331237714959 : F), 107578), ((4285248424244180712807508095311678262696714870741600768643132499331237714959 : F), 107586), ((4285248424244180712807508095311678262696714870741600768643132499331237714959 : F), 107594)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1041 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc838 rho) = ((1 : F) * rho 107599)

def relationRow1042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107600) * ((1 : F) + (-1 : F) * rho 107596) = ((2911181024375839423641528490098722070818922368429523866192125319440339401413 : F) * rho 107595 + (1 : F) * rho 107599)

def relationLc839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((-1 : F), 107585), ((-1 : F), 107593), ((1 : F), 107598), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106714) * (relationLc839 rho) = ((1 : F) * rho 107601)

def relationLc840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((-1 : F), 107586), ((-1 : F), 107594), ((1 : F), 107600), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106714) * (relationLc840 rho) = ((1 : F) * rho 107602)

def relationLc841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((1 : F), 107593), ((1 : F), 107594), ((1 : F), 107601), ((1 : F), 107602), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1045 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc841 rho) = ((1 : F) * rho 107603)

def relationLc842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(16584842977476778781971574146594730782542467233602097689905393271237537493 : F), 106813, 5, 149⟩], residual := [((16584842977476778781971574146594730782542467233602097689905393271237537493 : F), 107561), ((16584842977476778781971574146594730782542467233602097689905393271237537493 : F), 107569), ((16584842977476778781971574146594730782542467233602097689905393271237537493 : F), 107577), ((16584842977476778781971574146594730782542467233602097689905393271237537493 : F), 107585), ((16584842977476778781971574146594730782542467233602097689905393271237537493 : F), 107593), ((16584842977476778781971574146594730782542467233602097689905393271237537493 : F), 107601), ((3748882087243726086007231001579964875968325427120256406653143658307105684020 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (762645621093534921682121564019936658324020975024203898001773730935157047072 : F), runs := [⟨(762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 106814, 5, 149⟩], residual := [((6655627651738650277154479516854397930477796078333111284837643786663947613835 : F), 106559), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107562), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107570), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107578), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107586), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107594), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107602)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1046 (rho : Nat -> F) : Prop :=
    (relationLc842 rho) * (relationLc843 rho) = ((1 : F) * rho 107604)

def relationLc844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (762645621093534921682121564019936658324020975024203898001773730935157047072 : F), runs := [⟨(6873534600028911072494750908983108081888155911158913126445027796588606605872 : F), 106813, 5, 149⟩, ⟨(762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 106814, 5, 149⟩], residual := [((5044007146166678741667698729474268045099469169707896265866449956671879416138 : F), 106559), ((6873534600028911072494750908983108081888155911158913126445027796588606605872 : F), 107561), ((6873534600028911072494750908983108081888155911158913126445027796588606605872 : F), 107569), ((6873534600028911072494750908983108081888155911158913126445027796588606605872 : F), 107577), ((6873534600028911072494750908983108081888155911158913126445027796588606605872 : F), 107585), ((6873534600028911072494750908983108081888155911158913126445027796588606605872 : F), 107593), ((6873534600028911072494750908983108081888155911158913126445027796588606605872 : F), 107601), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107562), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107570), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107578), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107586), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107594), ((762645621093534921682121564019936658324020975024203898001773730935157047072 : F), 107602)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1047 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc844 rho) = ((1 : F) * rho 107605)

def relationRow1048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107606) * ((1 : F) + (1 : F) * rho 107604) = ((1 : F) * rho 107605)

def relationLc845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), runs := [⟨(1570927149399459351754074029798438449487743423995150701490205659328802633169 : F), 106813, 5, 149⟩, ⟨(7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), 106814, 5, 149⟩], residual := [((1570927149399459351754074029798438449487743423995150701490205659328802633169 : F), 107561), ((1570927149399459351754074029798438449487743423995150701490205659328802633169 : F), 107569), ((1570927149399459351754074029798438449487743423995150701490205659328802633169 : F), 107577), ((1570927149399459351754074029798438449487743423995150701490205659328802633169 : F), 107585), ((1570927149399459351754074029798438449487743423995150701490205659328802633169 : F), 107593), ((1570927149399459351754074029798438449487743423995150701490205659328802633169 : F), 107601), ((3400454603261691682581126209307278486276430165446167562068783499245529822903 : F), 106559), ((7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), 107562), ((7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), 107570), ((7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), 107578), ((7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), 107586), ((7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), 107594), ((7681816128334835502566703374761609873051878360129859929933459724982252191969 : F), 107602)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1049 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc845 rho) = ((1 : F) * rho 107607)

def relationRow1050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107608) * ((1 : F) + (-1 : F) * rho 107604) = ((7636180221122445994176872473003044740212176886183117024446801527523763652944 : F) * rho 107603 + (1 : F) * rho 107607)

def relationLc846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((-1 : F), 107585), ((-1 : F), 107593), ((-1 : F), 107601), ((1 : F), 107606), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106715) * (relationLc846 rho) = ((1 : F) * rho 107609)

def relationLc847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((-1 : F), 107586), ((-1 : F), 107594), ((-1 : F), 107602), ((1 : F), 107608), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106715) * (relationLc847 rho) = ((1 : F) * rho 107610)

def relationLc848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((1 : F), 107593), ((1 : F), 107594), ((1 : F), 107601), ((1 : F), 107602), ((1 : F), 107609), ((1 : F), 107610), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1053 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc848 rho) = ((1 : F) * rho 107611)

def relationLc849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 106813, 5, 149⟩], residual := [((1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 107561), ((1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 107569), ((1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 107577), ((1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 107585), ((1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 107593), ((1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 107601), ((1999964692048324961697239574371922163558405393968880632862001941840419525236 : F), 107609), ((2977088419243879867354184368545546907918077720801643958738476806101681393830 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), runs := [⟨(2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 106814, 5, 149⟩], residual := [((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107562), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107570), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107578), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107586), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107594), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107602), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107610), ((7530523190265728170221051900065334925945862915140933852361276038313370483099 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1054 (rho : Nat -> F) : Prop :=
    (relationLc849 rho) * (relationLc850 rho) = ((1 : F) * rho 107612)

def relationLc851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), runs := [⟨(2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 106814, 5, 149⟩, ⟨(8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 106813, 5, 149⟩], residual := [((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107562), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107570), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107578), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107586), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107594), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107602), ((2139803059408643861427175686180858835252725442320075505016370120577874875581 : F), 107610), ((7176511421395102826291145715736731528866478228665010495132200840665105242462 : F), 106559), ((8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 107561), ((8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 107569), ((8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 107577), ((8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 107585), ((8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 107593), ((8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 107601), ((8255046511338638261426175863553882432742995412811625079286860773672939391729 : F), 107609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1055 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc851 rho) = ((1 : F) * rho 107613)

def relationRow1056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107614) * ((1 : F) + (1 : F) * rho 107612) = ((1 : F) * rho 107613)

def relationLc852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), runs := [⟨(189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 106813, 5, 149⟩, ⟨(6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 106814, 5, 149⟩], residual := [((1267950328033267597957679223044815002509421106489053332803032615252303996579 : F), 106559), ((189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 107561), ((189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 107569), ((189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 107577), ((189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 107585), ((189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 107593), ((189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 107601), ((189415238089732162822649075227664098632903922342438748648372682244469847312 : F), 107609), ((6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 107562), ((6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 107570), ((6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 107578), ((6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 107586), ((6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 107594), ((6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 107602), ((6304658690019726562821649252600687696123173892833988322918863335339534363460 : F), 107610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1057 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc852 rho) = ((1 : F) * rho 107615)

def relationRow1058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107616) * ((1 : F) + (-1 : F) * rho 107612) = ((1950387821318911698604526610953194736619821519977636756367997438333405028269 : F) * rho 107611 + (1 : F) * rho 107615)

def relationLc853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((-1 : F), 107585), ((-1 : F), 107593), ((-1 : F), 107601), ((-1 : F), 107609), ((1 : F), 107614), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106716) * (relationLc853 rho) = ((1 : F) * rho 107617)

def relationLc854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((-1 : F), 107586), ((-1 : F), 107594), ((-1 : F), 107602), ((-1 : F), 107610), ((1 : F), 107616), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106716) * (relationLc854 rho) = ((1 : F) * rho 107618)

def relationLc855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((1 : F), 107593), ((1 : F), 107594), ((1 : F), 107601), ((1 : F), 107602), ((1 : F), 107609), ((1 : F), 107610), ((1 : F), 107617), ((1 : F), 107618), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1061 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc855 rho) = ((1 : F) * rho 107619)

def relationLc856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 106813, 5, 149⟩], residual := [((2846529893090264515457185888102121605185335423217303110337743380709220364427 : F), 106559), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107561), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107569), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107577), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107585), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107593), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107601), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107609), ((8319606341510190076462738236530222533389508983625641605145362805266453680351 : F), 107617)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), runs := [⟨(7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 106814, 5, 149⟩], residual := [((579700466988638287347600972519274716365196157612970975144727948166074860172 : F), 106559), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107562), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107570), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107578), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107586), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107594), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107602), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107610), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107618)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1062 (rho : Nat -> F) : Prop :=
    (relationLc856 rho) * (relationLc857 rho) = ((1 : F) * rho 107620)

def relationLc858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), runs := [⟨(3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 106813, 5, 149⟩, ⟨(7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 106814, 5, 149⟩], residual := [((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107561), ((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107569), ((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107577), ((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107585), ((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107593), ((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107601), ((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107609), ((3857408923801136380375899479912705358921136938815319318215105030955105526090 : F), 107617), ((5765838525605889992576673282127970822723183116280301562344395543037807186814 : F), 106559), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107562), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107570), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107578), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107586), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107594), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107602), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107610), ((7070474878759181210512911110590621318148555949608887207137152425514975125766 : F), 107618)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1063 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc858 rho) = ((1 : F) * rho 107621)

def relationRow1064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107622) * ((1 : F) + (1 : F) * rho 107620) = ((1 : F) * rho 107621)

def relationLc859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), runs := [⟨(1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 106814, 5, 149⟩, ⟨(4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 106813, 5, 149⟩], residual := [((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107562), ((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107570), ((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107578), ((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107586), ((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107594), ((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107602), ((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107610), ((1373986870669189213735913828190925213227343385545176620798081030402434113275 : F), 107618), ((2678623223822480431672151656653575708652716218873762265590837912879602052227 : F), 106559), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107561), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107569), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107577), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107585), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107593), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107601), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107609), ((4587052825627234043872925458868841172454762396338744509720128424962303712951 : F), 107617)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1065 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc859 rho) = ((1 : F) * rho 107623)

def relationRow1066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107624) * ((1 : F) + (-1 : F) * rho 107620) = ((2483422053131947166639985651721780145693793553270142697417024000552671412815 : F) * rho 107619 + (1 : F) * rho 107623)

def relationLc860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((-1 : F), 107585), ((-1 : F), 107593), ((-1 : F), 107601), ((-1 : F), 107609), ((-1 : F), 107617), ((1 : F), 107622), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106717) * (relationLc860 rho) = ((1 : F) * rho 107625)

def relationLc861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((-1 : F), 107586), ((-1 : F), 107594), ((-1 : F), 107602), ((-1 : F), 107610), ((-1 : F), 107618), ((1 : F), 107624), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106717) * (relationLc861 rho) = ((1 : F) * rho 107626)

def relationLc862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((1 : F), 107593), ((1 : F), 107594), ((1 : F), 107601), ((1 : F), 107602), ((1 : F), 107609), ((1 : F), 107610), ((1 : F), 107617), ((1 : F), 107618), ((1 : F), 107625), ((1 : F), 107626), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1069 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc862 rho) = ((1 : F) * rho 107627)

def relationLc863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 106813, 5, 149⟩], residual := [((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107561), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107569), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107577), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107585), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107593), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107601), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107609), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107617), ((2789677616256087338473269909774333319106824616035897267090378439059469950323 : F), 107625), ((5323268839113956693263885772837781917558829781354897079105388103037014230979 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), runs := [⟨(2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 106814, 5, 149⟩], residual := [((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107562), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107570), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107578), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107586), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107594), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107602), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107610), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107618), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107626), ((8260323183280550524731375083778834508884333234987761401263923255304360074933 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1070 (rho : Nat -> F) : Prop :=
    (relationLc863 rho) * (relationLc864 rho) = ((1 : F) * rho 107628)

def relationLc865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), runs := [⟨(2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 106814, 5, 149⟩, ⟨(4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 106813, 5, 149⟩], residual := [((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107562), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107570), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107578), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107586), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107594), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107602), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107610), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107618), ((2112824320958170751021845696904152700087747239183588522962014905560335724620 : F), 107626), ((3269761973204431484342385525721567271837064985135459812514098176136714961826 : F), 106559), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107561), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107569), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107577), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107585), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107593), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107601), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107609), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107617), ((4344747843835797327580651183308936657754801188826696817569825610372298387097 : F), 107625)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1071 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc865 rho) = ((1 : F) * rho 107629)

def relationRow1072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107630) * ((1 : F) + (1 : F) * rho 107628) = ((1 : F) * rho 107629)

def relationLc866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), runs := [⟨(4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 106813, 5, 149⟩, ⟨(6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 106814, 5, 149⟩], residual := [((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107561), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107569), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107577), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107585), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107593), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107601), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107609), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107617), ((4099713905592573096668173755472609873621098146327367010365407845545110851944 : F), 107625), ((5174699776223938939906439413059979259538834350018604015421135279780694277215 : F), 106559), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107562), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107570), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107578), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107586), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107594), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107602), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107610), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107618), ((6331637428470199673226979241877393831288152095970475304973218550357073514421 : F), 107626)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1073 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc866 rho) = ((1 : F) * rho 107631)

def relationRow1074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107632) * ((1 : F) + (-1 : F) * rho 107628) = ((6457572164793968078602496880213089357842548428010285340531840515932634111717 : F) * rho 107627 + (1 : F) * rho 107631)

def relationLc867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((-1 : F), 107585), ((-1 : F), 107593), ((-1 : F), 107601), ((-1 : F), 107609), ((-1 : F), 107617), ((-1 : F), 107625), ((1 : F), 107630), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106718) * (relationLc867 rho) = ((1 : F) * rho 107633)

def relationLc868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((-1 : F), 107586), ((-1 : F), 107594), ((-1 : F), 107602), ((-1 : F), 107610), ((-1 : F), 107618), ((-1 : F), 107626), ((1 : F), 107632), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106718) * (relationLc868 rho) = ((1 : F) * rho 107634)

def relationLc869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((1 : F), 107593), ((1 : F), 107594), ((1 : F), 107601), ((1 : F), 107602), ((1 : F), 107609), ((1 : F), 107610), ((1 : F), 107617), ((1 : F), 107618), ((1 : F), 107625), ((1 : F), 107626), ((1 : F), 107633), ((1 : F), 107634), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1077 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc869 rho) = ((1 : F) * rho 107635)

def relationLc870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 106813, 5, 149⟩], residual := [((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107561), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107569), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107577), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107585), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107593), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107601), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107609), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107617), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107625), ((2554117060204553738923354347035779623957786394083497906575778181170273448320 : F), 107633), ((6857523571503426729129532174907843361487710801004628696177152740200802257352 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), runs := [⟨(6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 106814, 5, 149⟩], residual := [((2051115294603479452337593477691185147131746193167319351376117333630030461682 : F), 106559), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107562), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107570), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107578), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107586), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107594), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107602), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107610), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107618), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107626), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107634)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1078 (rho : Nat -> F) : Prop :=
    (relationLc870 rho) * (relationLc871 rho) = ((1 : F) * rho 107636)

def relationLc872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), runs := [⟨(6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 106814, 5, 149⟩, ⟨(884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 106813, 5, 149⟩], residual := [((1424453139671377526244625560097361868019502022492489913246607113556804286069 : F), 106559), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107562), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107570), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107578), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107586), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107594), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107602), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107610), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107618), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107626), ((6254945723771345049588065443119804200491904836722830947939498923764020842791 : F), 107634), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107561), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107569), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107577), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107585), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107593), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107601), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107609), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107617), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107625), ((884145657027331879444406499504139186871480296690753944897090218553813834156 : F), 107633)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1079 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc872 rho) = ((1 : F) * rho 107637)

def relationRow1080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107638) * ((1 : F) + (1 : F) * rho 107636) = ((1 : F) * rho 107637)

def relationLc873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), runs := [⟨(2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 106814, 5, 149⟩, ⟨(7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 106813, 5, 149⟩], residual := [((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107562), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107570), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107578), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107586), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107594), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107602), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107610), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107618), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107626), ((2189516025657025374660759495661742330883994498431232879995734532153388396250 : F), 107634), ((7020008609756992898004199378684184663356397312661573914688626342360604952972 : F), 106559), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107561), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107569), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107577), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107585), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107593), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107601), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107609), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107617), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107625), ((7560316092401038544804418439277407344504419038463309883038143237363595404885 : F), 107633)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1081 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc873 rho) = ((1 : F) * rho 107639)

def relationRow1082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107640) * ((1 : F) + (-1 : F) * rho 107636) = ((7139091380798676929032471942623943387363385133413584892836589142317834676947 : F) * rho 107635 + (1 : F) * rho 107639)

def relationLc874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 149⟩], residual := [((-1 : F), 107561), ((-1 : F), 107569), ((-1 : F), 107577), ((-1 : F), 107585), ((-1 : F), 107593), ((-1 : F), 107601), ((-1 : F), 107609), ((-1 : F), 107617), ((-1 : F), 107625), ((-1 : F), 107633), ((1 : F), 107638), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106719) * (relationLc874 rho) = ((1 : F) * rho 107641)

def relationLc875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 149⟩], residual := [((-1 : F), 107562), ((-1 : F), 107570), ((-1 : F), 107578), ((-1 : F), 107586), ((-1 : F), 107594), ((-1 : F), 107602), ((-1 : F), 107610), ((-1 : F), 107618), ((-1 : F), 107626), ((-1 : F), 107634), ((1 : F), 107640), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106719) * (relationLc875 rho) = ((1 : F) * rho 107642)

def relationLc876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 106813, 5, 149⟩, ⟨(1 : F), 106814, 5, 149⟩], residual := [((1 : F), 107561), ((1 : F), 107562), ((1 : F), 107569), ((1 : F), 107570), ((1 : F), 107577), ((1 : F), 107578), ((1 : F), 107585), ((1 : F), 107586), ((1 : F), 107593), ((1 : F), 107594), ((1 : F), 107601), ((1 : F), 107602), ((1 : F), 107609), ((1 : F), 107610), ((1 : F), 107617), ((1 : F), 107618), ((1 : F), 107625), ((1 : F), 107626), ((1 : F), 107633), ((1 : F), 107634), ((1 : F), 107641), ((1 : F), 107642), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1085 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc876 rho) = ((1 : F) * rho 107643)

def relationLc877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 106813, 5, 149⟩], residual := [((1779026472738516153909413056718403276944291506030252827341601706418091315886 : F), 106559), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107561), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107569), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107577), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107585), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107593), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107601), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107609), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107617), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107625), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107633), ((2495102731699009371261614145300526944829738947054201298769580918885850837620 : F), 107641)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), runs := [⟨(8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 106814, 5, 149⟩], residual := [((6848053635575179204719656941055680727813810846666181219497964909827707002811 : F), 106559), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107562), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107570), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107578), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107586), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107594), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107602), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107610), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107618), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107626), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107634), ((8407678132673097275589139919008374887080292768567695427353264675232537945589 : F), 107642)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1086 (rho : Nat -> F) : Prop :=
    (relationLc877 rho) * (relationLc878 rho) = ((1 : F) * rho 107644)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
