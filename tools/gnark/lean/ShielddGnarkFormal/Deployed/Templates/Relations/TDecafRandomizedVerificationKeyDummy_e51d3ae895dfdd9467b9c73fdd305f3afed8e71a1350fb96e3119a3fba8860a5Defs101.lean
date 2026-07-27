import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs100

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc2266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 2061, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 2062, 5, 142⟩], residual := [((8191911795387420165726505078694277743693126356244378056681858280789421851413 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2770) * ((1 : F) + (-1 : F) * rho 2768) = (relationLc2266 rho)

def relationLc2267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 142⟩], residual := [((1 : F), 2769), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (relationLc2267 rho) = ((1 : F) * rho 2771)

def relationLc2268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 142⟩], residual := [((1 : F), 2770), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1949) * (relationLc2268 rho) = ((1 : F) * rho 2772)

def relationLc2269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1135710693610733492764624259274122606205914527429029626003819811576386849520 : F), 2061, 5, 143⟩], residual := [((2124268895110141773845156519836220251832881834823947220424969606687161535086 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 2062, 5, 143⟩], residual := [((1499849023641731880452303193048385938531502224180249824126306744226369219863 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2772 (rho : Nat -> F) : Prop :=
    (relationLc2269 rho) * (relationLc2270 rho) = ((1 : F) * rho 2773)

def relationLc2271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 2062, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 2061, 5, 143⟩], residual := [((6769605616348646276838559454591931596226107695415017868773224994478273747214 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2774) * ((1 : F) + (1 : F) * rho 2773) = (relationLc2271 rho)

def relationLc2272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (889266649126723776366729875800001959478233003345389383286795120421487098598 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 2061, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 2062, 5, 143⟩], residual := [((1150985448971808202867051906945978101453740595890484749058149901264833144629 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2775) * ((1 : F) + (-1 : F) * rho 2773) = (relationLc2272 rho)

def relationLc2273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 143⟩], residual := [((1 : F), 2774), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (relationLc2273 rho) = ((1 : F) * rho 2776)

def relationLc2274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 143⟩], residual := [((1 : F), 2775), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * (relationLc2274 rho) = ((1 : F) * rho 2777)

def relationLc2275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(938374591090202613325146222034748958625328173328686440431425148143684449572 : F), 2061, 5, 144⟩], residual := [((5659401960593731061170570757997334349881497142436822625115039201429635798804 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 2062, 5, 144⟩], residual := [((5292886040823016778799692579657563686851334379155438097754203142747034024462 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2777 (rho : Nat -> F) : Prop :=
    (relationLc2275 rho) * (relationLc2276 rho) = ((1 : F) * rho 2778)

def relationLc2277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 2061, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 2062, 5, 144⟩], residual := [((6225578912229915515090996543700017288075450888837245471910955138782097550579 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2779) * ((1 : F) + (1 : F) * rho 2778) = (relationLc2277 rho)

def relationLc2278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 2062, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 2061, 5, 144⟩], residual := [((5895462753110165431949110350547558582963032358329905853206131756431051327803 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2780) * ((1 : F) + (-1 : F) * rho 2778) = (relationLc2278 rho)

def relationLc2279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 144⟩], residual := [((1 : F), 2779), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (relationLc2279 rho) = ((1 : F) * rho 2781)

def relationLc2280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 144⟩], residual := [((1 : F), 2780), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1951) * (relationLc2280 rho) = ((1 : F) * rho 2782)

def relationLc2281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5220355908337253141300836156003928565430564187318809155802611073103937168205 : F), 2061, 5, 145⟩], residual := [((6046344471193084493220190367252733367917229149783691492755493061996738308825 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 2062, 5, 145⟩], residual := [((1721306895664830137509516829929134302350383955275552661355005310982742565584 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2782 (rho : Nat -> F) : Prop :=
    (relationLc2281 rho) * (relationLc2282 rho) = ((1 : F) * rho 2783)

def relationLc2283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 2061, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 2062, 5, 145⟩], residual := [((8253021225732975253543437798933088433651945714980841239160189305052608411565 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2784) * ((1 : F) + (1 : F) * rho 2783) = (relationLc2283 rho)

def relationLc2284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 2062, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 2061, 5, 145⟩], residual := [((1309295085435103989549045054340041381883031422465276444588972052537622490025 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2785) * ((1 : F) + (-1 : F) * rho 2783) = (relationLc2284 rho)

def relationLc2285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 145⟩], residual := [((1 : F), 2784), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (relationLc2285 rho) = ((1 : F) * rho 2786)

def relationLc2286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 145⟩], residual := [((1 : F), 2785), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * (relationLc2286 rho) = ((1 : F) * rho 2787)

def relationLc2287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4234403036772419062696778810592241573149156566464472741108884875864372860170 : F), 2061, 5, 146⟩], residual := [((4688276295826368622850016053938581518710748672193542551483696517311406849461 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 2062, 5, 146⟩], residual := [((479310377048519084134302755901600248569178343487260514221297806877166865256 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2787 (rho : Nat -> F) : Prop :=
    (relationLc2287 rho) * (relationLc2288 rho) = ((1 : F) * rho 2788)

def relationLc2289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 2062, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 2061, 5, 146⟩], residual := [((318737551768473034487304467124575714540349673256627558422304147848402108879 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2789) * ((1 : F) + (1 : F) * rho 2788) = (relationLc2289 rho)

def relationLc2290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 2061, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 2062, 5, 146⟩], residual := [((3749326459399944831260985891850275654689277813772661252450598232921014109928 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2790) * ((1 : F) + (-1 : F) * rho 2788) = (relationLc2290 rho)

def relationLc2291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 146⟩], residual := [((1 : F), 2789), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (relationLc2291 rho) = ((1 : F) * rho 2791)

def relationLc2292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 146⟩], residual := [((1 : F), 2790), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1953) * (relationLc2292 rho) = ((1 : F) * rho 2792)

def relationLc2293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3736510251652676541720141333403773953286420507403643590024712002903325578728 : F), 2061, 5, 147⟩], residual := [((4680686181738868780173466445942294778812778475524006084648958938128221885398 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 2062, 5, 147⟩], residual := [((218475059214054268059453563571377607346452200528713602273142633824230367437 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2792 (rho : Nat -> F) : Prop :=
    (relationLc2293 rho) * (relationLc2294 rho) = ((1 : F) * rho 2793)

def relationLc2295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 2061, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 2062, 5, 147⟩], residual := [((4253575685035595940012855699654699004087344461072519663112331920758010491178 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2794) * ((1 : F) + (1 : F) * rho 2793) = (relationLc2295 rho)

def relationLc2296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 2062, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 2061, 5, 147⟩], residual := [((4441515350697547072769915522734436750825214077706035322746967220045928818529 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
