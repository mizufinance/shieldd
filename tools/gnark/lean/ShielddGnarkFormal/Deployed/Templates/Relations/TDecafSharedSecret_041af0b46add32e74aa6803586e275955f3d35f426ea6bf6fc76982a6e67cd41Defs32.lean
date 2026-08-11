import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs31

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * (relationLc726 rho) = ((1 : F) * rho 937)

def relationLc727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4662752930448595384754707496749798730457005433492061601753208012070424433443 : F), 256, 5, 137⟩], residual := [((7126231453609229208688124226293001670761804314979031296887827715456390188658 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 257, 5, 137⟩], residual := [((7954648395084117914549174521325405444860329886984909639008384565435189389663 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow937 (rho : Nat -> F) : Prop :=
    (relationLc727 rho) * (relationLc728 rho) = ((1 : F) * rho 938)

def relationLc729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 257, 5, 137⟩, ⟨(5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), 256, 5, 137⟩], residual := [((6190406887574974955622802711632044171719381003998352436771317463010711981889 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 939) * ((1 : F) + (1 : F) * rho 938) = (relationLc729 rho)

def relationLc730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 256, 5, 137⟩, ⟨(5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), 257, 5, 137⟩], residual := [((1456669994443089960625881403451915523345137050588486885534892853786125388712 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 940) * ((1 : F) + (-1 : F) * rho 938) = (relationLc730 rho)

def relationLc731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 137⟩], residual := [((1 : F), 939), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 139) * (relationLc731 rho) = ((1 : F) * rho 941)

def relationLc732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 137⟩], residual := [((1 : F), 940), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 139) * (relationLc732 rho) = ((1 : F) * rho 942)

def relationLc733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3503746544360184031918039694239931947828755957816871622237267658653103197351 : F), 256, 5, 138⟩], residual := [((182472210883555855290507371466880334694398402478770867741041033474438456424 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 257, 5, 138⟩], residual := [((7270055234765096745190223231333018492000124493956213669318371438125775854168 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow942 (rho : Nat -> F) : Prop :=
    (relationLc733 rho) * (relationLc734 rho) = ((1 : F) * rho 943)

def relationLc735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 257, 5, 138⟩, ⟨(7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), 256, 5, 138⟩], residual := [((3935377844875271402497883726336355753967435480902152306902286541774900387859 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 944) * ((1 : F) + (1 : F) * rho 943) = (relationLc735 rho)

def relationLc736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 256, 5, 138⟩, ⟨(7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), 257, 5, 138⟩], residual := [((1323841985273903031499736341692708274137761588453447002420953300902859246398 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 945) * ((1 : F) + (-1 : F) * rho 943) = (relationLc736 rho)

def relationLc737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 138⟩], residual := [((1 : F), 944), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 140) * (relationLc737 rho) = ((1 : F) * rho 946)

def relationLc738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 138⟩], residual := [((1 : F), 945), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 140) * (relationLc738 rho) = ((1 : F) * rho 947)

def relationLc739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7600509590891047986640744943418231369735462568340088378292668398646431841528 : F), 256, 5, 139⟩], residual := [((2090884111564989602241473477281820540087453634304452393418639830145704249314 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 257, 5, 139⟩], residual := [((5713273981878165677335400987173347988429349823527630223344297681551752627180 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow947 (rho : Nat -> F) : Prop :=
    (relationLc739 rho) * (relationLc740 rho) = ((1 : F) * rho 948)

def relationLc741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 257, 5, 139⟩, ⟨(6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), 256, 5, 139⟩], residual := [((2530172012832369939626969960428925718089375679500429214531052972362814057495 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 949) * ((1 : F) + (1 : F) * rho 948) = (relationLc741 rho)

def relationLc742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 256, 5, 139⟩, ⟨(6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), 257, 5, 139⟩], residual := [((4704853232277291898484785826968556517875025073063416699200724012164660423043 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 950) * ((1 : F) + (-1 : F) * rho 948) = (relationLc742 rho)

def relationLc743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 139⟩], residual := [((1 : F), 949), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 141) * (relationLc743 rho) = ((1 : F) * rho 951)

def relationLc744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 139⟩], residual := [((1 : F), 950), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 141) * (relationLc744 rho) = ((1 : F) * rho 952)

def relationLc745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8278294750687899711213463308546649712490226032283670262390840185525052780961 : F), 256, 5, 140⟩], residual := [((4063373404169819748190960861066741984816630998421400188678845968314285404770 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc746 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), runs := [⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 257, 5, 140⟩], residual := [((3888675705919945147097785690500126271601827267583797106747844098581343277171 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow952 (rho : Nat -> F) : Prop :=
    (relationLc745 rho) * (relationLc746 rho) = ((1 : F) * rho 953)

def relationLc747 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), runs := [⟨(4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), 256, 5, 140⟩, ⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 257, 5, 140⟩], residual := [((7398064275577930814817238275416348594958851529952804556018746724580900668896 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 954) * ((1 : F) + (1 : F) * rho 953) = (relationLc747 rho)

def relationLc748 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), runs := [⟨(4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), 257, 5, 140⟩, ⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 256, 5, 140⟩], residual := [((8336142164301300436708097350603171861188426873304660608210887812849031670123 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 955) * ((1 : F) + (-1 : F) * rho 953) = (relationLc748 rho)

def relationLc749 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 140⟩], residual := [((1 : F), 954), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 142) * (relationLc749 rho) = ((1 : F) * rho 956)

def relationLc750 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 140⟩], residual := [((1 : F), 955), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 142) * (relationLc750 rho) = ((1 : F) * rho 957)

def relationLc751 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7020431916799759325650095382254167694493003261783313273118624632432520383891 : F), 256, 5, 141⟩], residual := [((2104166350232168144330387255692034385682746484618013311749583747661659393491 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc752 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 257, 5, 141⟩], residual := [((7277029194448818776990454612401046658428438801060623224664381017354621741353 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow957 (rho : Nat -> F) : Prop :=
    (relationLc751 rho) * (relationLc752 rho) = ((1 : F) * rho 958)

def relationLc753 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 257, 5, 141⟩, ⟨(592122430005357801669034146794161034695401444216911877182208832780869205502 : F), 256, 5, 141⟩], residual := [((6992609819377166471419766179266314545944274952764993798269927449411584971082 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 959) * ((1 : F) + (1 : F) * rho 958) = (relationLc753 rho)

def relationLc754 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (592122430005357801669034146794161034695401444216911877182208832780869205502 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 256, 5, 141⟩, ⟨(592122430005357801669034146794161034695401444216911877182208832780869205502 : F), 257, 5, 141⟩], residual := [((8410461635640452567548925071056567412560644726740029000698219791563842842019 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 960) * ((1 : F) + (-1 : F) * rho 958) = (relationLc754 rho)

def relationLc755 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 141⟩], residual := [((1 : F), 959), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 143) * (relationLc755 rho) = ((1 : F) * rho 961)

def relationLc756 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 141⟩], residual := [((1 : F), 960), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 143) * (relationLc756 rho) = ((1 : F) * rho 962)

def relationLc757 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3778682624279442475367220590942522733490752825963756877840445187645517884389 : F), 256, 5, 142⟩], residual := [((4938053888672654270810678854782661645153770246529503148947669032667265402660 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
