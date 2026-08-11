import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs48

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7925002064501863777203146775745034980869720977419878405223979498442259298645 : F), runs := [⟨(115668631871595509150373634265507204729136319013845571596779285981271098031 : F), 257, 5, 149⟩, ⟨(115668631871595509150373634265507204729136319013845571596779285981271098031 : F), 1005, 8, 37⟩, ⟨(7925002064501863777203146775745034980869720977419878405223979498442259298645 : F), 258, 5, 149⟩, ⟨(7925002064501863777203146775745034980869720977419878405223979498442259298645 : F), 1006, 8, 37⟩], residual := [((6730873700860349723710967170457343272016787830468469028943559089350324368813 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1062 rho) = ((1 : F) * rho 1299)

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1300) * ((1 : F) + (-1 : F) * rho 1296) = ((403791053054911137895304528771004345777042038720339851114474671493878842365 : F) * rho 1295 + (1 : F) * rho 1299)

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 37⟩], residual := [((1 : F), 1298), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 189) * (relationLc1063 rho) = ((1 : F) * rho 1301)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 37⟩], residual := [((1 : F), 1300), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 189) * (relationLc1064 rho) = ((1 : F) * rho 1302)

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 38⟩, ⟨(1 : F), 1006, 8, 38⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1065 rho) = ((1 : F) * rho 1303)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2403012574858696745482066140964944036067063523433809935314039110083170318844 : F), 257, 5, 149⟩, ⟨(2403012574858696745482066140964944036067063523433809935314039110083170318844 : F), 1005, 8, 38⟩], residual := [((6761860238425733736602735132976919915057165826325913517006558957367091794377 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4878403618494980795709618157396838432865605045666462691090029268331387566044 : F), runs := [⟨(4878403618494980795709618157396838432865605045666462691090029268331387566044 : F), 258, 5, 149⟩, ⟨(4878403618494980795709618157396838432865605045666462691090029268331387566044 : F), 1006, 8, 38⟩], residual := [((3277525489688013143718635685382580406258724390402438479123432780115380251654 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1303 (rho : Nat -> F) : Prop :=
    (relationLc1066 rho) * (relationLc1067 rho) = ((1 : F) * rho 1304)

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4878403618494980795709618157396838432865605045666462691090029268331387566044 : F), runs := [⟨(4878403618494980795709618157396838432865605045666462691090029268331387566044 : F), 258, 5, 149⟩, ⟨(4878403618494980795709618157396838432865605045666462691090029268331387566044 : F), 1006, 8, 38⟩, ⟨(6253778201273129207477690650180498025396873179828889305867736272756480515741 : F), 257, 5, 149⟩, ⟨(6253778201273129207477690650180498025396873179828889305867736272756480515741 : F), 1005, 8, 38⟩], residual := [((1689264359205948583089380917082771383935708979652244369696706107669289961942 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1068 rho) = ((1 : F) * rho 1305)

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1306) * ((1 : F) + (1 : F) * rho 1304) = ((1 : F) * rho 1305)

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3566058130933389628539206781384708098510294289487601136845204187586021672997 : F), runs := [⟨(2190683548155241216771134288601048505979026155325174522067497183160928723300 : F), 257, 5, 149⟩, ⟨(2190683548155241216771134288601048505979026155325174522067497183160928723300 : F), 1005, 8, 38⟩, ⟨(3566058130933389628539206781384708098510294289487601136845204187586021672997 : F), 258, 5, 149⟩, ⟨(3566058130933389628539206781384708098510294289487601136845204187586021672997 : F), 1006, 8, 38⟩], residual := [((6755197390222421841159444021698775147440190355501819458238527348248119277099 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1069 rho) = ((1 : F) * rho 1307)

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1308) * ((1 : F) + (-1 : F) * rho 1304) = ((2687720070339739578938483868795789926886578890341288169022532085170458842744 : F) * rho 1303 + (1 : F) * rho 1307)

def relationLc1070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 38⟩], residual := [((1 : F), 1306), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 190) * (relationLc1070 rho) = ((1 : F) * rho 1309)

def relationLc1071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 38⟩], residual := [((1 : F), 1308), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 190) * (relationLc1071 rho) = ((1 : F) * rho 1310)

def relationLc1072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 39⟩, ⟨(1 : F), 1006, 8, 39⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1072 rho) = ((1 : F) * rho 1311)

def relationLc1073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7532014623675013276257395954751802834360897134712429975815273506761361634150 : F), 257, 5, 149⟩, ⟨(7532014623675013276257395954751802834360897134712429975815273506761361634150 : F), 1005, 8, 39⟩], residual := [((5325217468100504610941558911399597894357527141951120112626321119227909726378 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1038907240730486955348573753066123201091740547922506032432897754065385400452 : F), runs := [⟨(1038907240730486955348573753066123201091740547922506032432897754065385400452 : F), 258, 5, 149⟩, ⟨(1038907240730486955348573753066123201091740547922506032432897754065385400452 : F), 1006, 8, 39⟩], residual := [((1929159690339562681781223459926772045655182763020865258495874535912453873871 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1311 (rho : Nat -> F) : Prop :=
    (relationLc1073 rho) * (relationLc1074 rho) = ((1 : F) * rho 1312)

def relationLc1075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1038907240730486955348573753066123201091740547922506032432897754065385400452 : F), runs := [⟨(1038907240730486955348573753066123201091740547922506032432897754065385400452 : F), 258, 5, 149⟩, ⟨(1038907240730486955348573753066123201091740547922506032432897754065385400452 : F), 1006, 8, 39⟩, ⟨(7105233141317829944155088237470593028487428370659115728818021676594802462111 : F), 257, 5, 149⟩, ⟨(7105233141317829944155088237470593028487428370659115728818021676594802462111 : F), 1005, 8, 39⟩], residual := [((8032961483279063886927243453396323742407233665299340086862389251366585710532 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1075 rho) = ((1 : F) * rho 1313)

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1314) * ((1 : F) + (1 : F) * rho 1312) = ((1 : F) * rho 1313)

def relationLc1076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7405554508697883468900251185715423330284158787231557795502335701852023838589 : F), runs := [⟨(1339228608110540480093736701310953502888470964494948099117211779322606776930 : F), 257, 5, 149⟩, ⟨(1339228608110540480093736701310953502888470964494948099117211779322606776930 : F), 1005, 8, 39⟩, ⟨(7405554508697883468900251185715423330284158787231557795502335701852023838589 : F), 258, 5, 149⟩, ⟨(7405554508697883468900251185715423330284158787231557795502335701852023838589 : F), 1006, 8, 39⟩], residual := [((411500266149306537321581485385222788968665669854723741072844204550823528509 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1076 rho) = ((1 : F) * rho 1315)

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1316) * ((1 : F) + (-1 : F) * rho 1312) = ((8144140382048316899503661990536716229579168918581621761250919430660187862563 : F) * rho 1311 + (1 : F) * rho 1315)

def relationLc1077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 39⟩], residual := [((1 : F), 1314), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 191) * (relationLc1077 rho) = ((1 : F) * rho 1317)

def relationLc1078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 39⟩], residual := [((1 : F), 1316), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 191) * (relationLc1078 rho) = ((1 : F) * rho 1318)

def relationLc1079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 40⟩, ⟨(1 : F), 1006, 8, 40⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1079 rho) = ((1 : F) * rho 1319)

def relationLc1080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1592610760452662891257191408783115440613478706358284711365675255490931905864 : F), 257, 5, 149⟩, ⟨(1592610760452662891257191408783115440613478706358284711365675255490931905864 : F), 1005, 8, 40⟩], residual := [((2008230782896318434545456926310126833570643313191120532079101557439023108078 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6344949702198386215630756124622930373723578036744856127612445722441346277498 : F), runs := [⟨(6344949702198386215630756124622930373723578036744856127612445722441346277498 : F), 258, 5, 149⟩, ⟨(6344949702198386215630756124622930373723578036744856127612445722441346277498 : F), 1006, 8, 40⟩], residual := [((1112727851671160842939416475354140523129346304208684762595779127643266167193 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1319 (rho : Nat -> F) : Prop :=
    (relationLc1080 rho) * (relationLc1081 rho) = ((1 : F) * rho 1320)

def relationLc1082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6344949702198386215630756124622930373723578036744856127612445722441346277498 : F), runs := [⟨(4855883041879355210132891794131853505607597028755037124738452892480645739861 : F), 257, 5, 149⟩, ⟨(4855883041879355210132891794131853505607597028755037124738452892480645739861 : F), 1005, 8, 40⟩, ⟨(6344949702198386215630756124622930373723578036744856127612445722441346277498 : F), 258, 5, 149⟩, ⟨(6344949702198386215630756124622930373723578036744856127612445722441346277498 : F), 1006, 8, 40⟩], residual := [((4302777201846820218147114162237971942902094329605565910628278457255713358472 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1082 rho) = ((1 : F) * rho 1321)

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1322) * ((1 : F) + (1 : F) * rho 1320) = ((1 : F) * rho 1321)

def relationLc1083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2099512047229984208618068814158616157652321298409207700322787733476062961543 : F), runs := [⟨(2099512047229984208618068814158616157652321298409207700322787733476062961543 : F), 258, 5, 149⟩, ⟨(2099512047229984208618068814158616157652321298409207700322787733476062961543 : F), 1006, 8, 40⟩, ⟨(3588578707549015214115933144649693025768302306399026703196780563436763499180 : F), 257, 5, 149⟩, ⟨(3588578707549015214115933144649693025768302306399026703196780563436763499180 : F), 1005, 8, 40⟩], residual := [((4141684547581550206101710776543574588473805005548497917306954998661695880569 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1083 rho) = ((1 : F) * rho 1323)

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1324) * ((1 : F) + (-1 : F) * rho 1320) = ((2756370994649371001514822979973237347955275730345829424415665159004582778318 : F) * rho 1319 + (1 : F) * rho 1323)

def relationLc1084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 40⟩], residual := [((1 : F), 1322), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * (relationLc1084 rho) = ((1 : F) * rho 1325)

def relationLc1085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 40⟩], residual := [((1 : F), 1324), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * (relationLc1085 rho) = ((1 : F) * rho 1326)

def relationLc1086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 41⟩, ⟨(1 : F), 1006, 8, 41⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1086 rho) = ((1 : F) * rho 1327)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
