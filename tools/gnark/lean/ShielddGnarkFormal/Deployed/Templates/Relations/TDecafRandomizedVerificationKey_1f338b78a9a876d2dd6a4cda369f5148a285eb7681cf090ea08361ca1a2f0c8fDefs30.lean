import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs29

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 141⟩], residual := [((1 : F), 959), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 143) * (relationLc803 rho) = ((1 : F) * rho 961)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 141⟩], residual := [((1 : F), 960), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 143) * (relationLc804 rho) = ((1 : F) * rho 962)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3778682624279442475367220590942522733490752825963756877840445187645517884389 : F), 256, 5, 142⟩], residual := [((4938053888672654270810678854782661645153770246529503148947669032667265402660 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 257, 5, 142⟩], residual := [((2117248663306599533961325002399283838091445272984068801478855011548758629520 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow962 (rho : Nat -> F) : Prop :=
    (relationLc805 rho) * (relationLc806 rho) = ((1 : F) * rho 963)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 257, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 256, 5, 142⟩], residual := [((7390731918291895553294027588760349518270227105604755290268923851963489212186 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 964) * ((1 : F) + (1 : F) * rho 963) = (relationLc807 rho)

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 256, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 257, 5, 142⟩], residual := [((8191911795387420165726505078694277743693126356244378056681858280789421851413 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 965) * ((1 : F) + (-1 : F) * rho 963) = (relationLc808 rho)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 142⟩], residual := [((1 : F), 964), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 144) * (relationLc809 rho) = ((1 : F) * rho 966)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 142⟩], residual := [((1 : F), 965), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 144) * (relationLc810 rho) = ((1 : F) * rho 967)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1135710693610733492764624259274122606205914527429029626003819811576386849520 : F), 256, 5, 143⟩], residual := [((2124268895110141773845156519836220251832881834823947220424969606687161535086 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 257, 5, 143⟩], residual := [((1499849023641731880452303193048385938531502224180249824126306744226369219863 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow967 (rho : Nat -> F) : Prop :=
    (relationLc811 rho) * (relationLc812 rho) = ((1 : F) * rho 968)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 257, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 256, 5, 143⟩], residual := [((6769605616348646276838559454591931596226107695415017868773224994478273747214 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 969) * ((1 : F) + (1 : F) * rho 968) = (relationLc813 rho)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (889266649126723776366729875800001959478233003345389383286795120421487098598 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 256, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 257, 5, 143⟩], residual := [((1150985448971808202867051906945978101453740595890484749058149901264833144629 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 970) * ((1 : F) + (-1 : F) * rho 968) = (relationLc814 rho)

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 143⟩], residual := [((1 : F), 969), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 145) * (relationLc815 rho) = ((1 : F) * rho 971)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 143⟩], residual := [((1 : F), 970), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 145) * (relationLc816 rho) = ((1 : F) * rho 972)

def relationLc817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(938374591090202613325146222034748958625328173328686440431425148143684449572 : F), 256, 5, 144⟩], residual := [((5659401960593731061170570757997334349881497142436822625115039201429635798804 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 257, 5, 144⟩], residual := [((5292886040823016778799692579657563686851334379155438097754203142747034024462 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow972 (rho : Nat -> F) : Prop :=
    (relationLc817 rho) * (relationLc818 rho) = ((1 : F) * rho 973)

def relationLc819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 256, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 257, 5, 144⟩], residual := [((6225578912229915515090996543700017288075450888837245471910955138782097550579 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 974) * ((1 : F) + (1 : F) * rho 973) = (relationLc819 rho)

def relationLc820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 257, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 256, 5, 144⟩], residual := [((5895462753110165431949110350547558582963032358329905853206131756431051327803 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 975) * ((1 : F) + (-1 : F) * rho 973) = (relationLc820 rho)

def relationLc821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 144⟩], residual := [((1 : F), 974), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 146) * (relationLc821 rho) = ((1 : F) * rho 976)

def relationLc822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 144⟩], residual := [((1 : F), 975), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 146) * (relationLc822 rho) = ((1 : F) * rho 977)

def relationLc823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5220355908337253141300836156003928565430564187318809155802611073103937168205 : F), 256, 5, 145⟩], residual := [((6046344471193084493220190367252733367917229149783691492755493061996738308825 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 257, 5, 145⟩], residual := [((1721306895664830137509516829929134302350383955275552661355005310982742565584 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow977 (rho : Nat -> F) : Prop :=
    (relationLc823 rho) * (relationLc824 rho) = ((1 : F) * rho 978)

def relationLc825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 256, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 257, 5, 145⟩], residual := [((8253021225732975253543437798933088433651945714980841239160189305052608411565 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 979) * ((1 : F) + (1 : F) * rho 978) = (relationLc825 rho)

def relationLc826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 257, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 256, 5, 145⟩], residual := [((1309295085435103989549045054340041381883031422465276444588972052537622490025 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 980) * ((1 : F) + (-1 : F) * rho 978) = (relationLc826 rho)

def relationLc827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 145⟩], residual := [((1 : F), 979), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 147) * (relationLc827 rho) = ((1 : F) * rho 981)

def relationLc828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 145⟩], residual := [((1 : F), 980), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 147) * (relationLc828 rho) = ((1 : F) * rho 982)

def relationLc829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4234403036772419062696778810592241573149156566464472741108884875864372860170 : F), 256, 5, 146⟩], residual := [((4688276295826368622850016053938581518710748672193542551483696517311406849461 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 257, 5, 146⟩], residual := [((479310377048519084134302755901600248569178343487260514221297806877166865256 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow982 (rho : Nat -> F) : Prop :=
    (relationLc829 rho) * (relationLc830 rho) = ((1 : F) * rho 983)

def relationLc831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 257, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 256, 5, 146⟩], residual := [((318737551768473034487304467124575714540349673256627558422304147848402108879 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 984) * ((1 : F) + (1 : F) * rho 983) = (relationLc831 rho)

def relationLc832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 256, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 257, 5, 146⟩], residual := [((3749326459399944831260985891850275654689277813772661252450598232921014109928 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 985) * ((1 : F) + (-1 : F) * rho 983) = (relationLc832 rho)

def relationLc833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 146⟩], residual := [((1 : F), 984), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 148) * (relationLc833 rho) = ((1 : F) * rho 986)

def relationLc834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 146⟩], residual := [((1 : F), 985), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
