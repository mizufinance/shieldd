import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs35

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2535394458117262659619192193422848931823174039063283007650111069672794746777 : F), runs := [⟨(2509606030573707387939711370295808265693598899150707915941362326311114227904 : F), 256, 5, 149⟩, ⟨(2509606030573707387939711370295808265693598899150707915941362326311114227904 : F), 1004, 8, 13⟩, ⟨(2535394458117262659619192193422848931823174039063283007650111069672794746777 : F), 257, 5, 149⟩, ⟨(2535394458117262659619192193422848931823174039063283007650111069672794746777 : F), 1005, 8, 13⟩], residual := [((7881031309670163514160385177691826228993046310782878906224987171682840339868 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1105 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc942 rho) = ((1 : F) * rho 1106)

def relationRow1106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1107) * ((1 : F) + (-1 : F) * rho 1103) = ((3399461260737400376689921375062889333859126396940072904343760059933500264360 : F) * rho 1102 + (1 : F) * rho 1106)

def relationLc943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 13⟩], residual := [((1 : F), 1105), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 164) * (relationLc943 rho) = ((1 : F) * rho 1108)

def relationLc944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 13⟩], residual := [((1 : F), 1107), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 164) * (relationLc944 rho) = ((1 : F) * rho 1109)

def relationLc945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 14⟩, ⟨(1 : F), 1005, 8, 14⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1109 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc945 rho) = ((1 : F) * rho 1110)

def relationLc946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7591915007285954813786279363948102390898140889293800745326506857669687311535 : F), 256, 5, 149⟩, ⟨(7591915007285954813786279363948102390898140889293800745326506857669687311535 : F), 1004, 8, 14⟩], residual := [((752676109079240181974540142102560196399170356736197851325088244375129965020 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7629453598826059175105967161823358156342299852823544371076408212864685795511 : F), runs := [⟨(7629453598826059175105967161823358156342299852823544371076408212864685795511 : F), 257, 5, 149⟩, ⟨(7629453598826059175105967161823358156342299852823544371076408212864685795511 : F), 1005, 8, 14⟩], residual := [((6963378901194524910437421336346278378990984930436753394335706017205077796909 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1110 (rho : Nat -> F) : Prop :=
    (relationLc946 rho) * (relationLc947 rho) = ((1 : F) * rho 1111)

def relationLc948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7629453598826059175105967161823358156342299852823544371076408212864685795511 : F), runs := [⟨(7629453598826059175105967161823358156342299852823544371076408212864685795511 : F), 257, 5, 149⟩, ⟨(7629453598826059175105967161823358156342299852823544371076408212864685795511 : F), 1005, 8, 14⟩, ⟨(8256897537593268393783702854546790800908284964448607839999361437332598202648 : F), 256, 5, 149⟩, ⟨(8256897537593268393783702854546790800908284964448607839999361437332598202648 : F), 1004, 8, 14⟩], residual := [((6876975181193465578107153533314128302103777479581725330510923776593007437278 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1111 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc948 rho) = ((1 : F) * rho 1112)

def relationRow1112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1113) * ((1 : F) + (1 : F) * rho 1111) = ((1 : F) * rho 1112)

def relationLc949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (815008150602311249142857776958188375033599482330519456858825243052723443530 : F), runs := [⟨(187564211835102030465122084234755730467614370705455987935872018584811036393 : F), 256, 5, 149⟩, ⟨(187564211835102030465122084234755730467614370705455987935872018584811036393 : F), 1004, 8, 14⟩, ⟨(815008150602311249142857776958188375033599482330519456858825243052723443530 : F), 257, 5, 149⟩, ⟨(815008150602311249142857776958188375033599482330519456858825243052723443530 : F), 1005, 8, 14⟩], residual := [((1567486568234904846141671405467418229272121855572338497424309679324401801763 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1113 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc949 rho) = ((1 : F) * rho 1114)

def relationRow1114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1115) * ((1 : F) + (-1 : F) * rho 1111) = ((7441889386990957144640845077588602425874685482118088383140536194279874759118 : F) * rho 1110 + (1 : F) * rho 1114)

def relationLc950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 14⟩], residual := [((1 : F), 1113), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 165) * (relationLc950 rho) = ((1 : F) * rho 1116)

def relationLc951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 14⟩], residual := [((1 : F), 1115), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 165) * (relationLc951 rho) = ((1 : F) * rho 1117)

def relationLc952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 15⟩, ⟨(1 : F), 1005, 8, 15⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1117 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc952 rho) = ((1 : F) * rho 1118)

def relationLc953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2196420425394647766284261780638306867698174832584544513782031995063991701139 : F), 256, 5, 149⟩, ⟨(2196420425394647766284261780638306867698174832584544513782031995063991701139 : F), 1004, 8, 15⟩], residual := [((3195273050439365200292363647550323698338958477189858332724984521343866531348 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5115523682525406331906309721636962668016666306320314209648996095923307323817 : F), runs := [⟨(5115523682525406331906309721636962668016666306320314209648996095923307323817 : F), 257, 5, 149⟩, ⟨(5115523682525406331906309721636962668016666306320314209648996095923307323817 : F), 1005, 8, 15⟩], residual := [((6451616643860153436487649111689156422212632719667752052847634276420469943598 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1118 (rho : Nat -> F) : Prop :=
    (relationLc953 rho) * (relationLc954 rho) = ((1 : F) * rho 1119)

def relationLc955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5115523682525406331906309721636962668016666306320314209648996095923307323817 : F), runs := [⟨(5115523682525406331906309721636962668016666306320314209648996095923307323817 : F), 257, 5, 149⟩, ⟨(5115523682525406331906309721636962668016666306320314209648996095923307323817 : F), 1005, 8, 15⟩, ⟨(6002136973336016533806193778664223339864863968026600325418976584524906199246 : F), 256, 5, 149⟩, ⟨(6002136973336016533806193778664223339864863968026600325418976584524906199246 : F), 1004, 8, 15⟩], residual := [((2916678265847426120541117769778826717316183298783044709582044955925872518621 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1119 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc955 rho) = ((1 : F) * rho 1120)

def relationRow1120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * ((1 : F) + (1 : F) * rho 1119) = ((1 : F) * rho 1120)

def relationLc956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3328938066902964092342515217144583863359233028833749618286237359994101915224 : F), runs := [⟨(2442324776092353890442631160117323191511035367127463502516256871392503039795 : F), 256, 5, 149⟩, ⟨(2442324776092353890442631160117323191511035367127463502516256871392503039795 : F), 1004, 8, 15⟩, ⟨(3328938066902964092342515217144583863359233028833749618286237359994101915224 : F), 257, 5, 149⟩, ⟨(3328938066902964092342515217144583863359233028833749618286237359994101915224 : F), 1005, 8, 15⟩], residual := [((5527783483580944303707707169002719814059716036371019118353188499991536720420 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1121 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc956 rho) = ((1 : F) * rho 1122)

def relationRow1122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1123) * ((1 : F) + (-1 : F) * rho 1119) = ((2673198906433052441463678561519639476505630939192850707132739224530804284022 : F) * rho 1118 + (1 : F) * rho 1122)

def relationLc957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 15⟩], residual := [((1 : F), 1121), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 166) * (relationLc957 rho) = ((1 : F) * rho 1124)

def relationLc958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 15⟩], residual := [((1 : F), 1123), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 166) * (relationLc958 rho) = ((1 : F) * rho 1125)

def relationLc959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 16⟩, ⟨(1 : F), 1005, 8, 16⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1125 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc959 rho) = ((1 : F) * rho 1126)

def relationLc960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6752900520793684586460825202669617871789922920207616704230916223175399863426 : F), 256, 5, 149⟩, ⟨(6752900520793684586460825202669617871789922920207616704230916223175399863426 : F), 1004, 8, 16⟩], residual := [((2172110831757520459045122539396047039067655777716602916546462073822197938371 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (134981315129973742343420017434531221155794090476452068230443324353935350223 : F), runs := [⟨(134981315129973742343420017434531221155794090476452068230443324353935350223 : F), 257, 5, 149⟩, ⟨(134981315129973742343420017434531221155794090476452068230443324353935350223 : F), 1005, 8, 16⟩], residual := [((3286899558619516634992467298345430043381724126815233902352925627152671136555 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1126 (rho : Nat -> F) : Prop :=
    (relationLc960 rho) * (relationLc961 rho) = ((1 : F) * rho 1127)

def relationLc962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (134981315129973742343420017434531221155794090476452068230443324353935350223 : F), runs := [⟨(134981315129973742343420017434531221155794090476452068230443324353935350223 : F), 257, 5, 149⟩, ⟨(134981315129973742343420017434531221155794090476452068230443324353935350223 : F), 1005, 8, 16⟩, ⟨(3518664608176657953754214696520971583695025252083422678664930355434384714524 : F), 256, 5, 149⟩, ⟨(3518664608176657953754214696520971583695025252083422678664930355434384714524 : F), 1004, 8, 16⟩], residual := [((5342130110311542382189399258803501128320603195704990114351913727838906816341 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1127 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc962 rho) = ((1 : F) * rho 1128)

def relationRow1128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1129) * ((1 : F) + (1 : F) * rho 1127) = ((1 : F) * rho 1128)

def relationLc963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8309480434298396681905404921347015310220105244677611759704790131563473888818 : F), runs := [⟨(4925797141251712470494610242260574947680874083070641149270303100483024524517 : F), 256, 5, 149⟩, ⟨(4925797141251712470494610242260574947680874083070641149270303100483024524517 : F), 1004, 8, 16⟩, ⟨(8309480434298396681905404921347015310220105244677611759704790131563473888818 : F), 257, 5, 149⟩, ⟨(8309480434298396681905404921347015310220105244677611759704790131563473888818 : F), 1005, 8, 16⟩], residual := [((3102331639116828042059425679978045403055296139449073713583319728078502422700 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1129 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc963 rho) = ((1 : F) * rho 1130)

def relationRow1130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1131) * ((1 : F) + (-1 : F) * rho 1127) = ((3653645923306631696097634713955502804850819342559874746895373679788320064747 : F) * rho 1126 + (1 : F) * rho 1130)

def relationLc964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 16⟩], residual := [((1 : F), 1129), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 167) * (relationLc964 rho) = ((1 : F) * rho 1132)

def relationLc965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 16⟩], residual := [((1 : F), 1131), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 167) * (relationLc965 rho) = ((1 : F) * rho 1133)

def relationLc966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 17⟩, ⟨(1 : F), 1005, 8, 17⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1133 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc966 rho) = ((1 : F) * rho 1134)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
