import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs32

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationLc758 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 257, 5, 142⟩], residual := [((2117248663306599533961325002399283838091445272984068801478855011548758629520 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow962 (rho : Nat -> F) : Prop :=
    (relationLc757 rho) * (relationLc758 rho) = ((1 : F) * rho 963)

def relationLc759 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 257, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 256, 5, 142⟩], residual := [((7390731918291895553294027588760349518270227105604755290268923851963489212186 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 964) * ((1 : F) + (1 : F) * rho 963) = (relationLc759 rho)

def relationLc760 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), runs := [⟨(7520195057955867023804691213643624442585340867346760214678489227972682710614 : F), 256, 5, 142⟩, ⟨(7735718087816147105717267734591023427689706790201012369670516854588254512516 : F), 257, 5, 142⟩], residual := [((8191911795387420165726505078694277743693126356244378056681858280789421851413 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 965) * ((1 : F) + (-1 : F) * rho 963) = (relationLc760 rho)

def relationLc761 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 142⟩], residual := [((1 : F), 964), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 144) * (relationLc761 rho) = ((1 : F) * rho 966)

def relationLc762 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 142⟩], residual := [((1 : F), 965), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 144) * (relationLc762 rho) = ((1 : F) * rho 967)

def relationLc763 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1135710693610733492764624259274122606205914527429029626003819811576386849520 : F), 256, 5, 143⟩], residual := [((2124268895110141773845156519836220251832881834823947220424969606687161535086 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc764 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 257, 5, 143⟩], residual := [((1499849023641731880452303193048385938531502224180249824126306744226369219863 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow967 (rho : Nat -> F) : Prop :=
    (relationLc763 rho) * (relationLc764 rho) = ((1 : F) * rho 968)

def relationLc765 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 257, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 256, 5, 143⟩], residual := [((6769605616348646276838559454591931596226107695415017868773224994478273747214 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 969) * ((1 : F) + (1 : F) * rho 968) = (relationLc765 rho)

def relationLc766 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (889266649126723776366729875800001959478233003345389383286795120421487098598 : F), runs := [⟨(6489319380060007954821780942227644453314371663851918136024024113976499342404 : F), 256, 5, 143⟩, ⟨(889266649126723776366729875800001959478233003345389383286795120421487098598 : F), 257, 5, 143⟩], residual := [((1150985448971808202867051906945978101453740595890484749058149901264833144629 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 970) * ((1 : F) + (-1 : F) * rho 968) = (relationLc766 rho)

def relationLc767 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 143⟩], residual := [((1 : F), 969), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 145) * (relationLc767 rho) = ((1 : F) * rho 971)

def relationLc768 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 143⟩], residual := [((1 : F), 970), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 145) * (relationLc768 rho) = ((1 : F) * rho 972)

def relationLc769 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(938374591090202613325146222034748958625328173328686440431425148143684449572 : F), 256, 5, 144⟩], residual := [((5659401960593731061170570757997334349881497142436822625115039201429635798804 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc770 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 257, 5, 144⟩], residual := [((5292886040823016778799692579657563686851334379155438097754203142747034024462 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow972 (rho : Nat -> F) : Prop :=
    (relationLc769 rho) * (relationLc770 rho) = ((1 : F) * rho 973)

def relationLc771 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 256, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 257, 5, 144⟩], residual := [((6225578912229915515090996543700017288075450888837245471910955138782097550579 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 974) * ((1 : F) + (1 : F) * rho 973) = (relationLc771 rho)

def relationLc772 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), runs := [⟨(2133089271567340892524057786995152185500972036046302345963262016555156217755 : F), 257, 5, 144⟩, ⟨(4784454996807291220485780426886963392951464841714825251820803534474080466940 : F), 256, 5, 144⟩], residual := [((5895462753110165431949110350547558582963032358329905853206131756431051327803 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 975) * ((1 : F) + (-1 : F) * rho 973) = (relationLc772 rho)

def relationLc773 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 144⟩], residual := [((1 : F), 974), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 146) * (relationLc773 rho) = ((1 : F) * rho 976)

def relationLc774 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 144⟩], residual := [((1 : F), 975), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 146) * (relationLc774 rho) = ((1 : F) * rho 977)

def relationLc775 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5220355908337253141300836156003928565430564187318809155802611073103937168205 : F), 256, 5, 145⟩], residual := [((6046344471193084493220190367252733367917229149783691492755493061996738308825 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc776 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 257, 5, 145⟩], residual := [((1721306895664830137509516829929134302350383955275552661355005310982742565584 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow977 (rho : Nat -> F) : Prop :=
    (relationLc775 rho) * (relationLc776 rho) = ((1 : F) * rho 978)

def relationLc777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 256, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 257, 5, 145⟩], residual := [((8253021225732975253543437798933088433651945714980841239160189305052608411565 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 979) * ((1 : F) + (1 : F) * rho 978) = (relationLc777 rho)

def relationLc778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), runs := [⟨(1198096651659609332909565676913110176760779701964004676435644664086645180893 : F), 257, 5, 145⟩, ⟨(3924740846528121427875397278742425546919168093935355749151425995742271844432 : F), 256, 5, 145⟩], residual := [((1309295085435103989549045054340041381883031422465276444588972052537622490025 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 980) * ((1 : F) + (-1 : F) * rho 978) = (relationLc778 rho)

def relationLc779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 145⟩], residual := [((1 : F), 979), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 147) * (relationLc779 rho) = ((1 : F) * rho 981)

def relationLc780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 145⟩], residual := [((1 : F), 980), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 147) * (relationLc780 rho) = ((1 : F) * rho 982)

def relationLc781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4234403036772419062696778810592241573149156566464472741108884875864372860170 : F), 256, 5, 146⟩], residual := [((4688276295826368622850016053938581518710748672193542551483696517311406849461 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 257, 5, 146⟩], residual := [((479310377048519084134302755901600248569178343487260514221297806877166865256 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow982 (rho : Nat -> F) : Prop :=
    (relationLc781 rho) * (relationLc782 rho) = ((1 : F) * rho 983)

def relationLc783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 257, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 256, 5, 146⟩], residual := [((318737551768473034487304467124575714540349673256627558422304147848402108879 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 984) * ((1 : F) + (1 : F) * rho 983) = (relationLc783 rho)

def relationLc784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), runs := [⟨(3322280521625266614430836248375555161788684906405315685000086419176676098000 : F), 256, 5, 146⟩, ⟨(5382265233593639684125019790124154026637456265057278166672106351379303925195 : F), 257, 5, 146⟩], residual := [((3749326459399944831260985891850275654689277813772661252450598232921014109928 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 985) * ((1 : F) + (-1 : F) * rho 983) = (relationLc784 rho)

def relationLc785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 146⟩], residual := [((1 : F), 984), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 148) * (relationLc785 rho) = ((1 : F) * rho 986)

def relationLc786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 146⟩], residual := [((1 : F), 985), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 148) * (relationLc786 rho) = ((1 : F) * rho 987)

def relationLc787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3736510251652676541720141333403773953286420507403643590024712002903325578728 : F), 256, 5, 147⟩], residual := [((4680686181738868780173466445942294778812778475524006084648958938128221885398 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 257, 5, 147⟩], residual := [((218475059214054268059453563571377607346452200528713602273142633824230367437 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow987 (rho : Nat -> F) : Prop :=
    (relationLc787 rho) * (relationLc788 rho) = ((1 : F) * rho 988)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
