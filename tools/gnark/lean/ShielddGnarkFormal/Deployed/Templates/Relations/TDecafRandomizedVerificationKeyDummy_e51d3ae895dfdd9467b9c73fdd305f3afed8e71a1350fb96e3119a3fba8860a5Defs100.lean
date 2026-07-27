import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs99

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc2236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 2061, 5, 137⟩, ⟨(5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), 2062, 5, 137⟩], residual := [((1456669994443089960625881403451915523345137050588486885534892853786125388712 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2745) * ((1 : F) + (-1 : F) * rho 2743) = (relationLc2236 rho)

def relationLc2237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 137⟩], residual := [((1 : F), 2744), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (relationLc2237 rho) = ((1 : F) * rho 2746)

def relationLc2238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 137⟩], residual := [((1 : F), 2745), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * (relationLc2238 rho) = ((1 : F) * rho 2747)

def relationLc2239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3503746544360184031918039694239931947828755957816871622237267658653103197351 : F), 2061, 5, 138⟩], residual := [((182472210883555855290507371466880334694398402478770867741041033474438456424 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 2062, 5, 138⟩], residual := [((7270055234765096745190223231333018492000124493956213669318371438125775854168 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2747 (rho : Nat -> F) : Prop :=
    (relationLc2239 rho) * (relationLc2240 rho) = ((1 : F) * rho 2748)

def relationLc2241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 2062, 5, 138⟩, ⟨(7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), 2061, 5, 138⟩], residual := [((3935377844875271402497883726336355753967435480902152306902286541774900387859 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2749) * ((1 : F) + (1 : F) * rho 2748) = (relationLc2241 rho)

def relationLc2242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), runs := [⟨(5577439207462902357524894594384787989834969029770294569303945878927567553590 : F), 2061, 5, 138⟩, ⟨(7324724769959182620180019655512046290682782195981947732807861278438353296751 : F), 2062, 5, 138⟩], residual := [((1323841985273903031499736341692708274137761588453447002420953300902859246398 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2750) * ((1 : F) + (-1 : F) * rho 2748) = (relationLc2242 rho)

def relationLc2243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 138⟩], residual := [((1 : F), 2749), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (relationLc2243 rho) = ((1 : F) * rho 2751)

def relationLc2244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 138⟩], residual := [((1 : F), 2750), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1945) * (relationLc2244 rho) = ((1 : F) * rho 2752)

def relationLc2245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7600509590891047986640744943418231369735462568340088378292668398646431841528 : F), 2061, 5, 139⟩], residual := [((2090884111564989602241473477281820540087453634304452393418639830145704249314 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 2062, 5, 139⟩], residual := [((5713273981878165677335400987173347988429349823527630223344297681551752627180 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2752 (rho : Nat -> F) : Prop :=
    (relationLc2245 rho) * (relationLc2246 rho) = ((1 : F) * rho 2753)

def relationLc2247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 2062, 5, 139⟩, ⟨(6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), 2061, 5, 139⟩], residual := [((2530172012832369939626969960428925718089375679500429214531052972362814057495 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2754) * ((1 : F) + (1 : F) * rho 2753) = (relationLc2247 rho)

def relationLc2248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), runs := [⟨(2885118417480949184486992007724055222686903680798514200711411467093900691442 : F), 2061, 5, 139⟩, ⟨(6727896550385816050555880022393849449142717399188685090496678041488226766294 : F), 2062, 5, 139⟩], residual := [((4704853232277291898484785826968556517875025073063416699200724012164660423043 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2755) * ((1 : F) + (-1 : F) * rho 2753) = (relationLc2248 rho)

def relationLc2249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 139⟩], residual := [((1 : F), 2754), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (relationLc2249 rho) = ((1 : F) * rho 2756)

def relationLc2250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 139⟩], residual := [((1 : F), 2755), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1946) * (relationLc2250 rho) = ((1 : F) * rho 2757)

def relationLc2251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8278294750687899711213463308546649712490226032283670262390840185525052780961 : F), 2061, 5, 140⟩], residual := [((4063373404169819748190960861066741984816630998421400188678845968314285404770 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), runs := [⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 2062, 5, 140⟩], residual := [((3888675705919945147097785690500126271601827267583797106747844098581343277171 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2757 (rho : Nat -> F) : Prop :=
    (relationLc2251 rho) * (relationLc2252 rho) = ((1 : F) * rho 2758)

def relationLc2253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), runs := [⟨(4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), 2061, 5, 140⟩, ⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 2062, 5, 140⟩], residual := [((7398064275577930814817238275416348594958851529952804556018746724580900668896 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2759) * ((1 : F) + (1 : F) * rho 2758) = (relationLc2253 rho)

def relationLc2254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), runs := [⟨(4654042583846241736398960000477007639166496762571547792104144094946075480485 : F), 2062, 5, 140⟩, ⟨(6835996708220158211663886938811823306023964004370022714002111084919529076439 : F), 2061, 5, 140⟩], residual := [((8336142164301300436708097350603171861188426873304660608210887812849031670123 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2760) * ((1 : F) + (-1 : F) * rho 2758) = (relationLc2254 rho)

def relationLc2255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 140⟩], residual := [((1 : F), 2759), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (relationLc2255 rho) = ((1 : F) * rho 2761)

def relationLc2256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 140⟩], residual := [((1 : F), 2760), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1947) * (relationLc2256 rho) = ((1 : F) * rho 2762)

def relationLc2257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7020431916799759325650095382254167694493003261783313273118624632432520383891 : F), 2061, 5, 141⟩], residual := [((2104166350232168144330387255692034385682746484618013311749583747661659393491 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 2062, 5, 141⟩], residual := [((7277029194448818776990454612401046658428438801060623224664381017354621741353 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2762 (rho : Nat -> F) : Prop :=
    (relationLc2257 rho) * (relationLc2258 rho) = ((1 : F) * rho 2763)

def relationLc2259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 2062, 5, 141⟩, ⟨(592122430005357801669034146794161034695401444216911877182208832780869205502 : F), 2061, 5, 141⟩], residual := [((6992609819377166471419766179266314545944274952764993798269927449411584971082 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2764) * ((1 : F) + (1 : F) * rho 2763) = (relationLc2259 rho)

def relationLc2260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (592122430005357801669034146794161034695401444216911877182208832780869205502 : F), runs := [⟨(4584760305757319701927798731600297555139088431316950317811619616514740204742 : F), 2061, 5, 141⟩, ⟨(592122430005357801669034146794161034695401444216911877182208832780869205502 : F), 2062, 5, 141⟩], residual := [((8410461635640452567548925071056567412560644726740029000698219791563842842019 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2765) * ((1 : F) + (-1 : F) * rho 2763) = (relationLc2260 rho)

def relationLc2261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 141⟩], residual := [((1 : F), 2764), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (relationLc2261 rho) = ((1 : F) * rho 2766)

def relationLc2262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 141⟩], residual := [((1 : F), 2765), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1948) * (relationLc2262 rho) = ((1 : F) * rho 2767)

def relationLc2263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3778682624279442475367220590942522733490752825963756877840445187645517884389 : F), 2061, 5, 142⟩], residual := [((4938053888672654270810678854782661645153770246529503148947669032667265402660 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 2062, 5, 142⟩], residual := [((2117248663306599533961325002399283838091445272984068801478855011548758629520 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2767 (rho : Nat -> F) : Prop :=
    (relationLc2263 rho) * (relationLc2264 rho) = ((1 : F) * rho 2768)

def relationLc2265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 2062, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 2061, 5, 142⟩], residual := [((7390731918291895553294027588760349518270227105604755290268923851963489212186 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2769) * ((1 : F) + (1 : F) * rho 2768) = (relationLc2265 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
