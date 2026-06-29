import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_lc1299 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1299 rho = seg31AccX229 rho + seg31AccY229 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1299, Seg31.relationLc1299Part0, Seg31.relationLc1299Part1, Seg31.relationLc1299Part2, Seg31.relationLc1299Part3, Seg31.relationLc1299Part4, Seg31.relationLc1299Part5, Seg31.relationLc1299Part6, Seg31.relationLc1299Part7, Seg31.relationLc1299Part8, Seg31.relationLc1299Part9, Seg31.relationLc1299Part10, Seg31.relationLc1299Part11, Seg31.relationLc1299Part12, Seg31.relationLc1299Part13, Seg31.relationLc1299Part14]
  rw [seg31AccX229_sum, seg31AccY229_sum]
  ring

theorem seg31_lc1300 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1300 rho = 2328924494234622400026043661438891056472383178633768616512250314770556337886*seg31AccX229 rho + 3563738449595643250020585309828661675699916643359296520663432255509695000065*rho 29271 := by
  simp only [Seg31.relationLc1300, Seg31.relationLc1300Part0, Seg31.relationLc1300Part1, Seg31.relationLc1300Part2, Seg31.relationLc1300Part3, Seg31.relationLc1300Part4, Seg31.relationLc1300Part5, Seg31.relationLc1300Part6, Seg31.relationLc1300Part7]
  rw [seg31AccX229_sum]
  ring

theorem seg31_lc1301 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1301 rho = 172846403538610214843532136165434598897879428915183913667080104299606263159*seg31AccY229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159 + 4156547185992650513569278671728196236611014928975770533777923429996966767923*rho 29271 := by
  simp only [Seg31.relationLc1301, Seg31.relationLc1301Part0, Seg31.relationLc1301Part1, Seg31.relationLc1301Part2, Seg31.relationLc1301Part3, Seg31.relationLc1301Part4, Seg31.relationLc1301Part5, Seg31.relationLc1301Part6, Seg31.relationLc1301Part7]
  rw [seg31AccY229_sum]
  ring

theorem seg31_lc1302 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1302 rho = 3788339819586122657152328313707525468742408468160341031270689699795716675021*seg31AccX229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159*seg31AccY229 rho + 172846403538610214843532136165434598897879428915183913667080104299606263159 + 1451921156533177846431628239609457944424265296474686624833652475653192372560*rho 29271 := by
  simp only [Seg31.relationLc1302, Seg31.relationLc1302Part0, Seg31.relationLc1302Part1, Seg31.relationLc1302Part2, Seg31.relationLc1302Part3, Seg31.relationLc1302Part4, Seg31.relationLc1302Part5, Seg31.relationLc1302Part6, Seg31.relationLc1302Part7, Seg31.relationLc1302Part8, Seg31.relationLc1302Part9, Seg31.relationLc1302Part10, Seg31.relationLc1302Part11, Seg31.relationLc1302Part12, Seg31.relationLc1302Part13, Seg31.relationLc1302Part14]
  rw [seg31AccX229_sum, seg31AccY229_sum]
  ring

theorem seg31_lc1303 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1303 rho = 4656121929842247767096496625074021062633490866993722796664543756121692564020*seg31AccX229 rho + 8271615345889760209405292802616111932478019906238879914268153351617802975882*seg31AccY229 rho + 8271615345889760209405292802616111932478019906238879914268153351617802975882 + 6992540592895192577817196699172088586951634038679377203101580980264216866481*rho 29271 := by
  simp only [Seg31.relationLc1303, Seg31.relationLc1303Part0, Seg31.relationLc1303Part1, Seg31.relationLc1303Part2, Seg31.relationLc1303Part3, Seg31.relationLc1303Part4, Seg31.relationLc1303Part5, Seg31.relationLc1303Part6, Seg31.relationLc1303Part7, Seg31.relationLc1303Part8, Seg31.relationLc1303Part9, Seg31.relationLc1303Part10, Seg31.relationLc1303Part11, Seg31.relationLc1303Part12, Seg31.relationLc1303Part13, Seg31.relationLc1303Part14]
  rw [seg31AccX229_sum, seg31AccY229_sum]
  ring

theorem seg31_lc1304 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1304 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX229 rho + rho 30910 := by
  simp only [Seg31.relationLc1304, Seg31.relationLc1304Part0, Seg31.relationLc1304Part1, Seg31.relationLc1304Part2, Seg31.relationLc1304Part3, Seg31.relationLc1304Part4, Seg31.relationLc1304Part5, Seg31.relationLc1304Part6, Seg31.relationLc1304Part7]
  rw [seg31AccX229_sum]
  ring

theorem seg31_lc1305 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1305 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY229 rho + rho 30912 := by
  simp only [Seg31.relationLc1305, Seg31.relationLc1305Part0, Seg31.relationLc1305Part1, Seg31.relationLc1305Part2, Seg31.relationLc1305Part3, Seg31.relationLc1305Part4, Seg31.relationLc1305Part5, Seg31.relationLc1305Part6, Seg31.relationLc1305Part7]
  rw [seg31AccY229_sum]
  ring

theorem seg31_lc1306 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1306 rho = seg31AccX230 rho + seg31AccY230 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1306, Seg31.relationLc1306Part0, Seg31.relationLc1306Part1, Seg31.relationLc1306Part2, Seg31.relationLc1306Part3, Seg31.relationLc1306Part4, Seg31.relationLc1306Part5, Seg31.relationLc1306Part6, Seg31.relationLc1306Part7, Seg31.relationLc1306Part8, Seg31.relationLc1306Part9, Seg31.relationLc1306Part10, Seg31.relationLc1306Part11, Seg31.relationLc1306Part12, Seg31.relationLc1306Part13, Seg31.relationLc1306Part14]
  rw [seg31AccX230_sum, seg31AccY230_sum]
  ring

theorem seg31_lc1307 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1307 rho = 3647464738438405496596309108209284917129128474410709546384795465351388509718*seg31AccX230 rho + 4033105538314844726216913920691566079156225711271889030022966832116221042683*rho 29271 := by
  simp only [Seg31.relationLc1307, Seg31.relationLc1307Part0, Seg31.relationLc1307Part1, Seg31.relationLc1307Part2, Seg31.relationLc1307Part3, Seg31.relationLc1307Part4, Seg31.relationLc1307Part5, Seg31.relationLc1307Part6, Seg31.relationLc1307Part7]
  rw [seg31AccX230_sum]
  ring

theorem seg31_lc1308 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1308 rho = 771116110290316800014488227769694794618148977561993646635633714824656215422*seg31AccY230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422 + 1417426572492129065250163104387698599537623996730724897947633040475933659364*rho 29271 := by
  simp only [Seg31.relationLc1308, Seg31.relationLc1308Part0, Seg31.relationLc1308Part1, Seg31.relationLc1308Part2, Seg31.relationLc1308Part3, Seg31.relationLc1308Part4, Seg31.relationLc1308Part5, Seg31.relationLc1308Part6, Seg31.relationLc1308Part7]
  rw [seg31AccY230_sum]
  ring

theorem seg31_lc1309 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1309 rho = 7922956657602926245553712739362830901965053904104941277032385438442664406472*seg31AccX230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422*seg31AccY230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422 + 1281794159323087255894990807770815377439556190801801614750412427265792371158*rho 29271 := by
  simp only [Seg31.relationLc1309, Seg31.relationLc1309Part0, Seg31.relationLc1309Part1, Seg31.relationLc1309Part2, Seg31.relationLc1309Part3, Seg31.relationLc1309Part4, Seg31.relationLc1309Part5, Seg31.relationLc1309Part6, Seg31.relationLc1309Part7, Seg31.relationLc1309Part8, Seg31.relationLc1309Part9, Seg31.relationLc1309Part10, Seg31.relationLc1309Part11, Seg31.relationLc1309Part12, Seg31.relationLc1309Part13, Seg31.relationLc1309Part14]
  rw [seg31AccX230_sum, seg31AccY230_sum]
  ring

theorem seg31_lc1310 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1310 rho = 521505091825444178695112199418715629410845431049122550902848017474744832569*seg31AccX230 rho + 7673345639138053624234336711011851736757750357592070181299599741092753023619*seg31AccY230 rho + 7673345639138053624234336711011851736757750357592070181299599741092753023619 + 7162667590105283168353834131010731153936343144352262213184821028651616867883*rho 29271 := by
  simp only [Seg31.relationLc1310, Seg31.relationLc1310Part0, Seg31.relationLc1310Part1, Seg31.relationLc1310Part2, Seg31.relationLc1310Part3, Seg31.relationLc1310Part4, Seg31.relationLc1310Part5, Seg31.relationLc1310Part6, Seg31.relationLc1310Part7, Seg31.relationLc1310Part8, Seg31.relationLc1310Part9, Seg31.relationLc1310Part10, Seg31.relationLc1310Part11, Seg31.relationLc1310Part12, Seg31.relationLc1310Part13, Seg31.relationLc1310Part14]
  rw [seg31AccX230_sum, seg31AccY230_sum]
  ring

theorem seg31_lc1311 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1311 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX230 rho + rho 30918 := by
  simp only [Seg31.relationLc1311, Seg31.relationLc1311Part0, Seg31.relationLc1311Part1, Seg31.relationLc1311Part2, Seg31.relationLc1311Part3, Seg31.relationLc1311Part4, Seg31.relationLc1311Part5, Seg31.relationLc1311Part6, Seg31.relationLc1311Part7]
  rw [seg31AccX230_sum]
  ring

theorem seg31_lc1312 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1312 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY230 rho + rho 30920 := by
  simp only [Seg31.relationLc1312, Seg31.relationLc1312Part0, Seg31.relationLc1312Part1, Seg31.relationLc1312Part2, Seg31.relationLc1312Part3, Seg31.relationLc1312Part4, Seg31.relationLc1312Part5, Seg31.relationLc1312Part6, Seg31.relationLc1312Part7]
  rw [seg31AccY230_sum]
  ring

theorem seg31_lc1313 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1313 rho = seg31AccX231 rho + seg31AccY231 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1313, Seg31.relationLc1313Part0, Seg31.relationLc1313Part1, Seg31.relationLc1313Part2, Seg31.relationLc1313Part3, Seg31.relationLc1313Part4, Seg31.relationLc1313Part5, Seg31.relationLc1313Part6, Seg31.relationLc1313Part7, Seg31.relationLc1313Part8, Seg31.relationLc1313Part9, Seg31.relationLc1313Part10, Seg31.relationLc1313Part11, Seg31.relationLc1313Part12, Seg31.relationLc1313Part13, Seg31.relationLc1313Part14]
  rw [seg31AccX231_sum, seg31AccY231_sum]
  ring

theorem seg31_lc1314 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1314 rho = 1440741398750420175197138347651241738572644196148875266729604368789903737219*seg31AccX231 rho + 5933933965763915668833977120004965383452459708156491994369560357579044038721*rho 29271 := by
  simp only [Seg31.relationLc1314, Seg31.relationLc1314Part0, Seg31.relationLc1314Part1, Seg31.relationLc1314Part2, Seg31.relationLc1314Part3, Seg31.relationLc1314Part4, Seg31.relationLc1314Part5, Seg31.relationLc1314Part6, Seg31.relationLc1314Part7]
  rw [seg31AccX231_sum]
  ring

theorem seg31_lc1315 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1315 rho = 7460699961452232489258671600060964629412502616641694919143176647000166491204*seg31AccY231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204 + 3040474903843643105099811186409463933730707835118493079665929304632651374772*rho 29271 := by
  simp only [Seg31.relationLc1315, Seg31.relationLc1315Part0, Seg31.relationLc1315Part1, Seg31.relationLc1315Part2, Seg31.relationLc1315Part3, Seg31.relationLc1315Part4, Seg31.relationLc1315Part5, Seg31.relationLc1315Part6, Seg31.relationLc1315Part7]
  rw [seg31AccY231_sum]
  ring

theorem seg31_lc1316 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1316 rho = 8145846500904674556913695137357523281750395003917607040671962891397590343033*seg31AccX231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204*seg31AccY231 rho + 7460699961452232489258671600060964629412502616641694919143176647000166491204 + 4322665375609269576458565174851024104784535824264046778834650417895727334891*rho 29271 := by
  simp only [Seg31.relationLc1316, Seg31.relationLc1316Part0, Seg31.relationLc1316Part1, Seg31.relationLc1316Part2, Seg31.relationLc1316Part3, Seg31.relationLc1316Part4, Seg31.relationLc1316Part5, Seg31.relationLc1316Part6, Seg31.relationLc1316Part7, Seg31.relationLc1316Part8, Seg31.relationLc1316Part9, Seg31.relationLc1316Part10, Seg31.relationLc1316Part11, Seg31.relationLc1316Part12, Seg31.relationLc1316Part13, Seg31.relationLc1316Part14]
  rw [seg31AccX231_sum, seg31AccY231_sum]
  ring

theorem seg31_lc1317 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1317 rho = 298615248523695867335129801424023249625504331236456787263270564519818896008*seg31AccX231 rho + 983761787976137934990153338720581901963396718512368908792056808917242747837*seg31AccY231 rho + 983761787976137934990153338720581901963396718512368908792056808917242747837 + 4121796373819100847790259763930522426591363510890017049100583038021681904150*rho 29271 := by
  simp only [Seg31.relationLc1317, Seg31.relationLc1317Part0, Seg31.relationLc1317Part1, Seg31.relationLc1317Part2, Seg31.relationLc1317Part3, Seg31.relationLc1317Part4, Seg31.relationLc1317Part5, Seg31.relationLc1317Part6, Seg31.relationLc1317Part7, Seg31.relationLc1317Part8, Seg31.relationLc1317Part9, Seg31.relationLc1317Part10, Seg31.relationLc1317Part11, Seg31.relationLc1317Part12, Seg31.relationLc1317Part13, Seg31.relationLc1317Part14]
  rw [seg31AccX231_sum, seg31AccY231_sum]
  ring

theorem seg31_lc1318 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1318 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX231 rho + rho 30926 := by
  simp only [Seg31.relationLc1318, Seg31.relationLc1318Part0, Seg31.relationLc1318Part1, Seg31.relationLc1318Part2, Seg31.relationLc1318Part3, Seg31.relationLc1318Part4, Seg31.relationLc1318Part5, Seg31.relationLc1318Part6, Seg31.relationLc1318Part7]
  rw [seg31AccX231_sum]
  ring

theorem seg31_lc1319 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1319 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY231 rho + rho 30928 := by
  simp only [Seg31.relationLc1319, Seg31.relationLc1319Part0, Seg31.relationLc1319Part1, Seg31.relationLc1319Part2, Seg31.relationLc1319Part3, Seg31.relationLc1319Part4, Seg31.relationLc1319Part5, Seg31.relationLc1319Part6, Seg31.relationLc1319Part7]
  rw [seg31AccY231_sum]
  ring

theorem seg31_lc1320 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1320 rho = seg31AccX232 rho + seg31AccY232 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1320, Seg31.relationLc1320Part0, Seg31.relationLc1320Part1, Seg31.relationLc1320Part2, Seg31.relationLc1320Part3, Seg31.relationLc1320Part4, Seg31.relationLc1320Part5, Seg31.relationLc1320Part6, Seg31.relationLc1320Part7, Seg31.relationLc1320Part8, Seg31.relationLc1320Part9, Seg31.relationLc1320Part10, Seg31.relationLc1320Part11, Seg31.relationLc1320Part12, Seg31.relationLc1320Part13, Seg31.relationLc1320Part14]
  rw [seg31AccX232_sum, seg31AccY232_sum]
  ring

theorem seg31_lc1321 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1321 rho = 3222337823151825026837966724671427176770153243677937432187190383381467283493*seg31AccX232 rho + 3202800750990824004731067945534977160523087748504363744810507262593949216434*rho 29271 := by
  simp only [Seg31.relationLc1321, Seg31.relationLc1321Part0, Seg31.relationLc1321Part1, Seg31.relationLc1321Part2, Seg31.relationLc1321Part3, Seg31.relationLc1321Part4, Seg31.relationLc1321Part5, Seg31.relationLc1321Part6, Seg31.relationLc1321Part7]
  rw [seg31AccX232_sum]
  ring

theorem seg31_lc1322 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1322 rho = 311399174984249285727356043299846010815117751051619267223118429205494289868*seg31AccY232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868 + 7016040529850333745453736546212323347249913967845743269665879261850771674172*rho 29271 := by
  simp only [Seg31.relationLc1322, Seg31.relationLc1322Part0, Seg31.relationLc1322Part1, Seg31.relationLc1322Part2, Seg31.relationLc1322Part3, Seg31.relationLc1322Part4, Seg31.relationLc1322Part5, Seg31.relationLc1322Part6, Seg31.relationLc1322Part7]
  rw [seg31AccY232_sum]
  ring

theorem seg31_lc1323 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1323 rho = 9452407504613351969408951188684563644785783266845458098640480222156138696*seg31AccX232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868*seg31AccY232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868 + 713803375196250831625080747136900490218424423647163472165336085475014016171*rho 29271 := by
  simp only [Seg31.relationLc1323, Seg31.relationLc1323Part0, Seg31.relationLc1323Part1, Seg31.relationLc1323Part2, Seg31.relationLc1323Part3, Seg31.relationLc1323Part4, Seg31.relationLc1323Part5, Seg31.relationLc1323Part6, Seg31.relationLc1323Part7, Seg31.relationLc1323Part8, Seg31.relationLc1323Part9, Seg31.relationLc1323Part10, Seg31.relationLc1323Part11, Seg31.relationLc1323Part12, Seg31.relationLc1323Part13, Seg31.relationLc1323Part14]
  rw [seg31AccX232_sum, seg31AccY232_sum]
  ring

theorem seg31_lc1324 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1324 rho = 8435009341923757072279415987592861967731113551887218369836592975695253100345*seg31AccX232 rho + 8133062574444121138521468895481700520560781584102444560712115026711914949173*seg31AccY232 rho + 8133062574444121138521468895481700520560781584102444560712115026711914949173 + 7730658374232119592623744191644646041157474911506900355769897370442395222870*rho 29271 := by
  simp only [Seg31.relationLc1324, Seg31.relationLc1324Part0, Seg31.relationLc1324Part1, Seg31.relationLc1324Part2, Seg31.relationLc1324Part3, Seg31.relationLc1324Part4, Seg31.relationLc1324Part5, Seg31.relationLc1324Part6, Seg31.relationLc1324Part7, Seg31.relationLc1324Part8, Seg31.relationLc1324Part9, Seg31.relationLc1324Part10, Seg31.relationLc1324Part11, Seg31.relationLc1324Part12, Seg31.relationLc1324Part13, Seg31.relationLc1324Part14]
  rw [seg31AccX232_sum, seg31AccY232_sum]
  ring

theorem seg31_lc1325 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1325 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX232 rho + rho 30934 := by
  simp only [Seg31.relationLc1325, Seg31.relationLc1325Part0, Seg31.relationLc1325Part1, Seg31.relationLc1325Part2, Seg31.relationLc1325Part3, Seg31.relationLc1325Part4, Seg31.relationLc1325Part5, Seg31.relationLc1325Part6, Seg31.relationLc1325Part7]
  rw [seg31AccX232_sum]
  ring

theorem seg31_lc1326 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1326 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY232 rho + rho 30936 := by
  simp only [Seg31.relationLc1326, Seg31.relationLc1326Part0, Seg31.relationLc1326Part1, Seg31.relationLc1326Part2, Seg31.relationLc1326Part3, Seg31.relationLc1326Part4, Seg31.relationLc1326Part5, Seg31.relationLc1326Part6, Seg31.relationLc1326Part7]
  rw [seg31AccY232_sum]
  ring

theorem seg31_lc1327 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1327 rho = seg31AccX233 rho + seg31AccY233 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1327, Seg31.relationLc1327Part0, Seg31.relationLc1327Part1, Seg31.relationLc1327Part2, Seg31.relationLc1327Part3, Seg31.relationLc1327Part4, Seg31.relationLc1327Part5, Seg31.relationLc1327Part6, Seg31.relationLc1327Part7, Seg31.relationLc1327Part8, Seg31.relationLc1327Part9, Seg31.relationLc1327Part10, Seg31.relationLc1327Part11, Seg31.relationLc1327Part12, Seg31.relationLc1327Part13, Seg31.relationLc1327Part14]
  rw [seg31AccX233_sum, seg31AccY233_sum]
  ring

theorem seg31_lc1328 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1328 rho = 5087188169684227801562250753370009099099816197018021756764974898315399945223*seg31AccX233 rho + 7152477452365709395280634271259004537953723793054248778598096973805561633905*rho 29271 := by
  simp only [Seg31.relationLc1328, Seg31.relationLc1328Part0, Seg31.relationLc1328Part1, Seg31.relationLc1328Part2, Seg31.relationLc1328Part3, Seg31.relationLc1328Part4, Seg31.relationLc1328Part5, Seg31.relationLc1328Part6, Seg31.relationLc1328Part7]
  rw [seg31AccX233_sum]
  ring

theorem seg31_lc1329 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1329 rho = 6492092171468074665040082486270868720785634859603612924010367110189092078530*seg31AccY233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530 + 3623911247177762772873015558312128719028580682713025867927504034680464909656*rho 29271 := by
  simp only [Seg31.relationLc1329, Seg31.relationLc1329Part0, Seg31.relationLc1329Part1, Seg31.relationLc1329Part2, Seg31.relationLc1329Part3, Seg31.relationLc1329Part4, Seg31.relationLc1329Part5, Seg31.relationLc1329Part6, Seg31.relationLc1329Part7]
  rw [seg31AccY233_sum]
  ring

theorem seg31_lc1330 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1330 rho = 1049904119233804414728524198211337291746131104561334643241468891382768574838*seg31AccX233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530*seg31AccY233 rho + 6492092171468074665040082486270868720785634859603612924010367110189092078530 + 8316714720528696662738890725987300544313821599026025984463061742725224348499*rho 29271 := by
  simp only [Seg31.relationLc1330, Seg31.relationLc1330Part0, Seg31.relationLc1330Part1, Seg31.relationLc1330Part2, Seg31.relationLc1330Part3, Seg31.relationLc1330Part4, Seg31.relationLc1330Part5, Seg31.relationLc1330Part6, Seg31.relationLc1330Part7, Seg31.relationLc1330Part8, Seg31.relationLc1330Part9, Seg31.relationLc1330Part10, Seg31.relationLc1330Part11, Seg31.relationLc1330Part12, Seg31.relationLc1330Part13, Seg31.relationLc1330Part14]
  rw [seg31AccX233_sum, seg31AccY233_sum]
  ring

theorem seg31_lc1331 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1331 rho = 7394557630194566009520300740570209239629768230592729184693764564534640664203*seg31AccX233 rho + 1952369577960295759208742452510677810590264475550450903924866345728317160511*seg31AccY233 rho + 1952369577960295759208742452510677810590264475550450903924866345728317160511 + 127747028899673761509934212794245987062077736128037843472171713192184890542*rho 29271 := by
  simp only [Seg31.relationLc1331, Seg31.relationLc1331Part0, Seg31.relationLc1331Part1, Seg31.relationLc1331Part2, Seg31.relationLc1331Part3, Seg31.relationLc1331Part4, Seg31.relationLc1331Part5, Seg31.relationLc1331Part6, Seg31.relationLc1331Part7, Seg31.relationLc1331Part8, Seg31.relationLc1331Part9, Seg31.relationLc1331Part10, Seg31.relationLc1331Part11, Seg31.relationLc1331Part12, Seg31.relationLc1331Part13, Seg31.relationLc1331Part14]
  rw [seg31AccX233_sum, seg31AccY233_sum]
  ring

theorem seg31_lc1332 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1332 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX233 rho + rho 30942 := by
  simp only [Seg31.relationLc1332, Seg31.relationLc1332Part0, Seg31.relationLc1332Part1, Seg31.relationLc1332Part2, Seg31.relationLc1332Part3, Seg31.relationLc1332Part4, Seg31.relationLc1332Part5, Seg31.relationLc1332Part6, Seg31.relationLc1332Part7]
  rw [seg31AccX233_sum]
  ring

theorem seg31_lc1333 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1333 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY233 rho + rho 30944 := by
  simp only [Seg31.relationLc1333, Seg31.relationLc1333Part0, Seg31.relationLc1333Part1, Seg31.relationLc1333Part2, Seg31.relationLc1333Part3, Seg31.relationLc1333Part4, Seg31.relationLc1333Part5, Seg31.relationLc1333Part6, Seg31.relationLc1333Part7]
  rw [seg31AccY233_sum]
  ring

theorem seg31_lc1334 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1334 rho = seg31AccX234 rho + seg31AccY234 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1334, Seg31.relationLc1334Part0, Seg31.relationLc1334Part1, Seg31.relationLc1334Part2, Seg31.relationLc1334Part3, Seg31.relationLc1334Part4, Seg31.relationLc1334Part5, Seg31.relationLc1334Part6, Seg31.relationLc1334Part7, Seg31.relationLc1334Part8, Seg31.relationLc1334Part9, Seg31.relationLc1334Part10, Seg31.relationLc1334Part11, Seg31.relationLc1334Part12, Seg31.relationLc1334Part13, Seg31.relationLc1334Part14]
  rw [seg31AccX234_sum, seg31AccY234_sum]
  ring

theorem seg31_lc1335 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1335 rho = 6702953404390736707495812053445034260304431226855294397131934185910875232896*seg31AccX234 rho + 2452873964476630092567945718208053877901301266033194735109226827918502899745*rho 29271 := by
  simp only [Seg31.relationLc1335, Seg31.relationLc1335Part0, Seg31.relationLc1335Part1, Seg31.relationLc1335Part2, Seg31.relationLc1335Part3, Seg31.relationLc1335Part4, Seg31.relationLc1335Part5, Seg31.relationLc1335Part6, Seg31.relationLc1335Part7]
  rw [seg31AccX234_sum]
  ring

theorem seg31_lc1336 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1336 rho = 3858729688629762977328716795123717803175545332224895722123585236410054509531*seg31AccY234 rho + 3858729688629762977328716795123717803175545332224895722123585236410054509531 + 337404684653093188052153735361213699914087648575031015260095925233825252916*rho 29271 := by
  simp only [Seg31.relationLc1336, Seg31.relationLc1336Part0, Seg31.relationLc1336Part1, Seg31.relationLc1336Part2, Seg31.relationLc1336Part3, Seg31.relationLc1336Part4, Seg31.relationLc1336Part5, Seg31.relationLc1336Part6, Seg31.relationLc1336Part7]
  rw [seg31AccY234_sum]
  ring

theorem seg31_lc1337 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1337 rho = 2733181755245252777622839383397224758495384998898502368185983124997424595093*seg31AccX234 rho + 3858729688629762977328716795123717803175545332224895722123585236410054509531*seg31AccY234 rho + 3858729688629762977328716795123717803175545332224895722123585236410054509531 + 3530396472740374106484701244731201847120038771386012175881461643037731195943*rho 29271 := by
  simp only [Seg31.relationLc1337, Seg31.relationLc1337Part0, Seg31.relationLc1337Part1, Seg31.relationLc1337Part2, Seg31.relationLc1337Part3, Seg31.relationLc1337Part4, Seg31.relationLc1337Part5, Seg31.relationLc1337Part6, Seg31.relationLc1337Part7, Seg31.relationLc1337Part8, Seg31.relationLc1337Part9, Seg31.relationLc1337Part10, Seg31.relationLc1337Part11, Seg31.relationLc1337Part12, Seg31.relationLc1337Part13, Seg31.relationLc1337Part14]
  rw [seg31AccX234_sum, seg31AccY234_sum]
  ring

theorem seg31_lc1338 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1338 rho = 5711279994183117646625985555384321772880514336255561459749250330919984643948*seg31AccX234 rho + 4585732060798607446920108143657828728200354002929168105811648219507354729510*seg31AccY234 rho + 4585732060798607446920108143657828728200354002929168105811648219507354729510 + 4914065276687996317764123694050344684255860563768051652053771812879678043098*rho 29271 := by
  simp only [Seg31.relationLc1338, Seg31.relationLc1338Part0, Seg31.relationLc1338Part1, Seg31.relationLc1338Part2, Seg31.relationLc1338Part3, Seg31.relationLc1338Part4, Seg31.relationLc1338Part5, Seg31.relationLc1338Part6, Seg31.relationLc1338Part7, Seg31.relationLc1338Part8, Seg31.relationLc1338Part9, Seg31.relationLc1338Part10, Seg31.relationLc1338Part11, Seg31.relationLc1338Part12, Seg31.relationLc1338Part13, Seg31.relationLc1338Part14]
  rw [seg31AccX234_sum, seg31AccY234_sum]
  ring

theorem seg31_lc1339 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1339 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX234 rho + rho 30950 := by
  simp only [Seg31.relationLc1339, Seg31.relationLc1339Part0, Seg31.relationLc1339Part1, Seg31.relationLc1339Part2, Seg31.relationLc1339Part3, Seg31.relationLc1339Part4, Seg31.relationLc1339Part5, Seg31.relationLc1339Part6, Seg31.relationLc1339Part7]
  rw [seg31AccX234_sum]
  ring

theorem seg31_lc1340 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1340 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY234 rho + rho 30952 := by
  simp only [Seg31.relationLc1340, Seg31.relationLc1340Part0, Seg31.relationLc1340Part1, Seg31.relationLc1340Part2, Seg31.relationLc1340Part3, Seg31.relationLc1340Part4, Seg31.relationLc1340Part5, Seg31.relationLc1340Part6, Seg31.relationLc1340Part7]
  rw [seg31AccY234_sum]
  ring

theorem seg31_lc1341 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1341 rho = seg31AccX235 rho + seg31AccY235 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1341, Seg31.relationLc1341Part0, Seg31.relationLc1341Part1, Seg31.relationLc1341Part2, Seg31.relationLc1341Part3, Seg31.relationLc1341Part4, Seg31.relationLc1341Part5, Seg31.relationLc1341Part6, Seg31.relationLc1341Part7, Seg31.relationLc1341Part8, Seg31.relationLc1341Part9, Seg31.relationLc1341Part10, Seg31.relationLc1341Part11, Seg31.relationLc1341Part12, Seg31.relationLc1341Part13, Seg31.relationLc1341Part14]
  rw [seg31AccX235_sum, seg31AccY235_sum]
  ring

theorem seg31_lc1342 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1342 rho = 8091864853146751529371715125668286512450304465019627868544043469098480805528*seg31AccX235 rho + 5183033282837840927610938169579538547541169724730244457330125573237530254282*rho 29271 := by
  simp only [Seg31.relationLc1342, Seg31.relationLc1342Part0, Seg31.relationLc1342Part1, Seg31.relationLc1342Part2, Seg31.relationLc1342Part3, Seg31.relationLc1342Part4, Seg31.relationLc1342Part5, Seg31.relationLc1342Part6, Seg31.relationLc1342Part7]
  rw [seg31AccX235_sum]
  ring

theorem seg31_lc1343 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1343 rho = 1227669925703988626892556534377943857920740743066421402305718522958062673379*seg31AccY235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379 + 2046459351451249908923190100053112941830275410540864722482341418481537589236*rho 29271 := by
  simp only [Seg31.relationLc1343, Seg31.relationLc1343Part0, Seg31.relationLc1343Part1, Seg31.relationLc1343Part2, Seg31.relationLc1343Part3, Seg31.relationLc1343Part4, Seg31.relationLc1343Part5, Seg31.relationLc1343Part6, Seg31.relationLc1343Part7]
  rw [seg31AccY235_sum]
  ring

theorem seg31_lc1344 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1344 rho = 5830782725061668019228127015056336578759086533684621883188846672974808587953*seg31AccX235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379*seg31AccY235 rho + 1227669925703988626892556534377943857920740743066421402305718522958062673379 + 7937774789825435385526925645959203004775181424739587903520695280511070458125*rho 29271 := by
  simp only [Seg31.relationLc1344, Seg31.relationLc1344Part0, Seg31.relationLc1344Part1, Seg31.relationLc1344Part2, Seg31.relationLc1344Part3, Seg31.relationLc1344Part4, Seg31.relationLc1344Part5, Seg31.relationLc1344Part6, Seg31.relationLc1344Part7, Seg31.relationLc1344Part8, Seg31.relationLc1344Part9, Seg31.relationLc1344Part10, Seg31.relationLc1344Part11, Seg31.relationLc1344Part12, Seg31.relationLc1344Part13, Seg31.relationLc1344Part14]
  rw [seg31AccX235_sum, seg31AccY235_sum]
  ring

theorem seg31_lc1345 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1345 rho = 2613679024366702405020697923725209952616812801469441944746386782942600651088*seg31AccX235 rho + 7216791823724381797356268404403602673455158592087642425629514932959346565662*seg31AccY235 rho + 7216791823724381797356268404403602673455158592087642425629514932959346565662 + 506686959602935038721899292822343526600717910414475924414538175406338780916*rho 29271 := by
  simp only [Seg31.relationLc1345, Seg31.relationLc1345Part0, Seg31.relationLc1345Part1, Seg31.relationLc1345Part2, Seg31.relationLc1345Part3, Seg31.relationLc1345Part4, Seg31.relationLc1345Part5, Seg31.relationLc1345Part6, Seg31.relationLc1345Part7, Seg31.relationLc1345Part8, Seg31.relationLc1345Part9, Seg31.relationLc1345Part10, Seg31.relationLc1345Part11, Seg31.relationLc1345Part12, Seg31.relationLc1345Part13, Seg31.relationLc1345Part14]
  rw [seg31AccX235_sum, seg31AccY235_sum]
  ring

theorem seg31_lc1346 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1346 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX235 rho + rho 30958 := by
  simp only [Seg31.relationLc1346, Seg31.relationLc1346Part0, Seg31.relationLc1346Part1, Seg31.relationLc1346Part2, Seg31.relationLc1346Part3, Seg31.relationLc1346Part4, Seg31.relationLc1346Part5, Seg31.relationLc1346Part6, Seg31.relationLc1346Part7]
  rw [seg31AccX235_sum]
  ring

theorem seg31_lc1347 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1347 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY235 rho + rho 30960 := by
  simp only [Seg31.relationLc1347, Seg31.relationLc1347Part0, Seg31.relationLc1347Part1, Seg31.relationLc1347Part2, Seg31.relationLc1347Part3, Seg31.relationLc1347Part4, Seg31.relationLc1347Part5, Seg31.relationLc1347Part6, Seg31.relationLc1347Part7]
  rw [seg31AccY235_sum]
  ring

theorem seg31_lc1348 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1348 rho = seg31AccX236 rho + seg31AccY236 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1348, Seg31.relationLc1348Part0, Seg31.relationLc1348Part1, Seg31.relationLc1348Part2, Seg31.relationLc1348Part3, Seg31.relationLc1348Part4, Seg31.relationLc1348Part5, Seg31.relationLc1348Part6, Seg31.relationLc1348Part7, Seg31.relationLc1348Part8, Seg31.relationLc1348Part9, Seg31.relationLc1348Part10, Seg31.relationLc1348Part11, Seg31.relationLc1348Part12, Seg31.relationLc1348Part13, Seg31.relationLc1348Part14]
  rw [seg31AccX236_sum, seg31AccY236_sum]
  ring

theorem seg31_lc1349 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1349 rho = 5108019869792056471845548391669367315944996432535285954875015076492812536188*seg31AccX236 rho + 4064288127943839895562289258484952130157397309295205997450938047822402682264*rho 29271 := by
  simp only [Seg31.relationLc1349, Seg31.relationLc1349Part0, Seg31.relationLc1349Part1, Seg31.relationLc1349Part2, Seg31.relationLc1349Part3, Seg31.relationLc1349Part4, Seg31.relationLc1349Part5, Seg31.relationLc1349Part6, Seg31.relationLc1349Part7]
  rw [seg31AccX236_sum]
  ring

theorem seg31_lc1350 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1350 rho = 4907858296313307191312286640678462406911893830587231624615571332339052272968*seg31AccY236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968 + 5157899098305688618519720185772888808299554434283422179554938535806754060899*rho 29271 := by
  simp only [Seg31.relationLc1350, Seg31.relationLc1350Part0, Seg31.relationLc1350Part1, Seg31.relationLc1350Part2, Seg31.relationLc1350Part3, Seg31.relationLc1350Part4, Seg31.relationLc1350Part5, Seg31.relationLc1350Part6, Seg31.relationLc1350Part7]
  rw [seg31AccY236_sum]
  ring

theorem seg31_lc1351 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1351 rho = 1936006471524072952681904139698278572336334768738545996321104457653538565360*seg31AccX236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968*seg31AccY236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968 + 779081728816674181279618765775471243739515751437635085090502955742286045376*rho 29271 := by
  simp only [Seg31.relationLc1351, Seg31.relationLc1351Part0, Seg31.relationLc1351Part1, Seg31.relationLc1351Part2, Seg31.relationLc1351Part3, Seg31.relationLc1351Part4, Seg31.relationLc1351Part5, Seg31.relationLc1351Part6, Seg31.relationLc1351Part7, Seg31.relationLc1351Part8, Seg31.relationLc1351Part9, Seg31.relationLc1351Part10, Seg31.relationLc1351Part11, Seg31.relationLc1351Part12, Seg31.relationLc1351Part13, Seg31.relationLc1351Part14]
  rw [seg31AccX236_sum, seg31AccY236_sum]
  ring

theorem seg31_lc1352 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1352 rho = 6508455277904297471566920799083267959039564566415517831614128998263870673681*seg31AccX236 rho + 3536603453115063232936538298103084124464005504566832203319662123578356966073*seg31AccY236 rho + 3536603453115063232936538298103084124464005504566832203319662123578356966073 + 7665380020611696242969206173006075287636383583716428742844730500175123193665*rho 29271 := by
  simp only [Seg31.relationLc1352, Seg31.relationLc1352Part0, Seg31.relationLc1352Part1, Seg31.relationLc1352Part2, Seg31.relationLc1352Part3, Seg31.relationLc1352Part4, Seg31.relationLc1352Part5, Seg31.relationLc1352Part6, Seg31.relationLc1352Part7, Seg31.relationLc1352Part8, Seg31.relationLc1352Part9, Seg31.relationLc1352Part10, Seg31.relationLc1352Part11, Seg31.relationLc1352Part12, Seg31.relationLc1352Part13, Seg31.relationLc1352Part14]
  rw [seg31AccX236_sum, seg31AccY236_sum]
  ring

theorem seg31_lc1353 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1353 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX236 rho + rho 30966 := by
  simp only [Seg31.relationLc1353, Seg31.relationLc1353Part0, Seg31.relationLc1353Part1, Seg31.relationLc1353Part2, Seg31.relationLc1353Part3, Seg31.relationLc1353Part4, Seg31.relationLc1353Part5, Seg31.relationLc1353Part6, Seg31.relationLc1353Part7]
  rw [seg31AccX236_sum]
  ring

theorem seg31_lc1354 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1354 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY236 rho + rho 30968 := by
  simp only [Seg31.relationLc1354, Seg31.relationLc1354Part0, Seg31.relationLc1354Part1, Seg31.relationLc1354Part2, Seg31.relationLc1354Part3, Seg31.relationLc1354Part4, Seg31.relationLc1354Part5, Seg31.relationLc1354Part6, Seg31.relationLc1354Part7]
  rw [seg31AccY236_sum]
  ring

theorem seg31_lc1355 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1355 rho = seg31AccX237 rho + seg31AccY237 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1355, Seg31.relationLc1355Part0, Seg31.relationLc1355Part1, Seg31.relationLc1355Part2, Seg31.relationLc1355Part3, Seg31.relationLc1355Part4, Seg31.relationLc1355Part5, Seg31.relationLc1355Part6, Seg31.relationLc1355Part7, Seg31.relationLc1355Part8, Seg31.relationLc1355Part9, Seg31.relationLc1355Part10, Seg31.relationLc1355Part11, Seg31.relationLc1355Part12, Seg31.relationLc1355Part13, Seg31.relationLc1355Part14]
  rw [seg31AccX237_sum, seg31AccY237_sum]
  ring

theorem seg31_lc1356 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1356 rho = 2758875159586716113257451409033950884644675870875090439171697944807152823915*seg31AccX237 rho + 907802197456396623474074233664053082891999652188052681086914831017372471204*rho 29271 := by
  simp only [Seg31.relationLc1356, Seg31.relationLc1356Part0, Seg31.relationLc1356Part1, Seg31.relationLc1356Part2, Seg31.relationLc1356Part3, Seg31.relationLc1356Part4, Seg31.relationLc1356Part5, Seg31.relationLc1356Part6, Seg31.relationLc1356Part7]
  rw [seg31AccX237_sum]
  ring

theorem seg31_lc1357 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1357 rho = 2652868519506863513771102772860334610209107123244578824609856963782777022786*seg31AccY237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786 + 5908493774085841219132802642962135592237100176275034161730010450272731341509*rho 29271 := by
  simp only [Seg31.relationLc1357, Seg31.relationLc1357Part0, Seg31.relationLc1357Part1, Seg31.relationLc1357Part2, Seg31.relationLc1357Part3, Seg31.relationLc1357Part4, Seg31.relationLc1357Part5, Seg31.relationLc1357Part6, Seg31.relationLc1357Part7]
  rw [seg31AccY237_sum]
  ring

theorem seg31_lc1358 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1358 rho = 2047039018782242259736311587751448530900960936512297190495783709922658297187*seg31AccX237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786*seg31AccY237 rho + 2652868519506863513771102772860334610209107123244578824609856963782777022786 + 5120532697905323488906157638492512265932859324616226499764883366612455925111*rho 29271 := by
  simp only [Seg31.relationLc1358, Seg31.relationLc1358Part0, Seg31.relationLc1358Part1, Seg31.relationLc1358Part2, Seg31.relationLc1358Part3, Seg31.relationLc1358Part4, Seg31.relationLc1358Part5, Seg31.relationLc1358Part6, Seg31.relationLc1358Part7, Seg31.relationLc1358Part8, Seg31.relationLc1358Part9, Seg31.relationLc1358Part10, Seg31.relationLc1358Part11, Seg31.relationLc1358Part12, Seg31.relationLc1358Part13, Seg31.relationLc1358Part14]
  rw [seg31AccX237_sum, seg31AccY237_sum]
  ring

theorem seg31_lc1359 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1359 rho = 6397422730646128164512513351030098000474938398641766637439449745994750941854*seg31AccX237 rho + 5791593229921506910477722165921211921166792211909485003325376492134632216255*seg31AccY237 rho + 5791593229921506910477722165921211921166792211909485003325376492134632216255 + 3323929051523046935342667300289034265443040010537837328170350089304953313930*rho 29271 := by
  simp only [Seg31.relationLc1359, Seg31.relationLc1359Part0, Seg31.relationLc1359Part1, Seg31.relationLc1359Part2, Seg31.relationLc1359Part3, Seg31.relationLc1359Part4, Seg31.relationLc1359Part5, Seg31.relationLc1359Part6, Seg31.relationLc1359Part7, Seg31.relationLc1359Part8, Seg31.relationLc1359Part9, Seg31.relationLc1359Part10, Seg31.relationLc1359Part11, Seg31.relationLc1359Part12, Seg31.relationLc1359Part13, Seg31.relationLc1359Part14]
  rw [seg31AccX237_sum, seg31AccY237_sum]
  ring

theorem seg31_lc1360 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1360 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX237 rho + rho 30974 := by
  simp only [Seg31.relationLc1360, Seg31.relationLc1360Part0, Seg31.relationLc1360Part1, Seg31.relationLc1360Part2, Seg31.relationLc1360Part3, Seg31.relationLc1360Part4, Seg31.relationLc1360Part5, Seg31.relationLc1360Part6, Seg31.relationLc1360Part7]
  rw [seg31AccX237_sum]
  ring

theorem seg31_lc1361 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1361 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY237 rho + rho 30976 := by
  simp only [Seg31.relationLc1361, Seg31.relationLc1361Part0, Seg31.relationLc1361Part1, Seg31.relationLc1361Part2, Seg31.relationLc1361Part3, Seg31.relationLc1361Part4, Seg31.relationLc1361Part5, Seg31.relationLc1361Part6, Seg31.relationLc1361Part7]
  rw [seg31AccY237_sum]
  ring

theorem seg31_lc1362 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1362 rho = seg31AccX238 rho + seg31AccY238 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1362, Seg31.relationLc1362Part0, Seg31.relationLc1362Part1, Seg31.relationLc1362Part2, Seg31.relationLc1362Part3, Seg31.relationLc1362Part4, Seg31.relationLc1362Part5, Seg31.relationLc1362Part6, Seg31.relationLc1362Part7, Seg31.relationLc1362Part8, Seg31.relationLc1362Part9, Seg31.relationLc1362Part10, Seg31.relationLc1362Part11, Seg31.relationLc1362Part12, Seg31.relationLc1362Part13, Seg31.relationLc1362Part14]
  rw [seg31AccX238_sum, seg31AccY238_sum]
  ring

theorem seg31_lc1363 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1363 rho = 2419781321145861764726265215228723255126294865025301069516030121558411920042*seg31AccX238 rho + 859882192148861689382806839411705393065304362639521984048112477304077950933*rho 29271 := by
  simp only [Seg31.relationLc1363, Seg31.relationLc1363Part0, Seg31.relationLc1363Part1, Seg31.relationLc1363Part2, Seg31.relationLc1363Part3, Seg31.relationLc1363Part4, Seg31.relationLc1363Part5, Seg31.relationLc1363Part6, Seg31.relationLc1363Part7]
  rw [seg31AccX238_sum]
  ring

theorem seg31_lc1364 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1364 rho = 629217992256084577122866111698153496803649394247312880233898704412863053304*seg31AccY238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304 + 225853431996158285045358681658574726861631960515721974037992608483180946748*rho 29271 := by
  simp only [Seg31.relationLc1364, Seg31.relationLc1364Part0, Seg31.relationLc1364Part1, Seg31.relationLc1364Part2, Seg31.relationLc1364Part3, Seg31.relationLc1364Part4, Seg31.relationLc1364Part5, Seg31.relationLc1364Part6, Seg31.relationLc1364Part7]
  rw [seg31AccY238_sum]
  ring

theorem seg31_lc1365 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1365 rho = 6661890807748742993296814331126002683721911423547553592532001772781444762845*seg31AccX238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304*seg31AccY238 rho + 629217992256084577122866111698153496803649394247312880233898704412863053304 + 3091273218608613944278866913730900744754171557634409476725070531287765040746*rho 29271 := by
  simp only [Seg31.relationLc1365, Seg31.relationLc1365Part0, Seg31.relationLc1365Part1, Seg31.relationLc1365Part2, Seg31.relationLc1365Part3, Seg31.relationLc1365Part4, Seg31.relationLc1365Part5, Seg31.relationLc1365Part6, Seg31.relationLc1365Part7, Seg31.relationLc1365Part8, Seg31.relationLc1365Part9, Seg31.relationLc1365Part10, Seg31.relationLc1365Part11, Seg31.relationLc1365Part12, Seg31.relationLc1365Part13, Seg31.relationLc1365Part14]
  rw [seg31AccX238_sum, seg31AccY238_sum]
  ring

theorem seg31_lc1366 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1366 rho = 1782570941679627430952010607655543847653987911606510235403231683135964476196*seg31AccX238 rho + 7815243757172285847125958827083393034572249940906750947701334751504546185737*seg31AccY238 rho + 7815243757172285847125958827083393034572249940906750947701334751504546185737 + 5353188530819756479969958025050645786621727777519654351210162924629644198295*rho 29271 := by
  simp only [Seg31.relationLc1366, Seg31.relationLc1366Part0, Seg31.relationLc1366Part1, Seg31.relationLc1366Part2, Seg31.relationLc1366Part3, Seg31.relationLc1366Part4, Seg31.relationLc1366Part5, Seg31.relationLc1366Part6, Seg31.relationLc1366Part7, Seg31.relationLc1366Part8, Seg31.relationLc1366Part9, Seg31.relationLc1366Part10, Seg31.relationLc1366Part11, Seg31.relationLc1366Part12, Seg31.relationLc1366Part13, Seg31.relationLc1366Part14]
  rw [seg31AccX238_sum, seg31AccY238_sum]
  ring

theorem seg31_lc1367 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1367 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX238 rho + rho 30982 := by
  simp only [Seg31.relationLc1367, Seg31.relationLc1367Part0, Seg31.relationLc1367Part1, Seg31.relationLc1367Part2, Seg31.relationLc1367Part3, Seg31.relationLc1367Part4, Seg31.relationLc1367Part5, Seg31.relationLc1367Part6, Seg31.relationLc1367Part7]
  rw [seg31AccX238_sum]
  ring

theorem seg31_lc1368 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1368 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY238 rho + rho 30984 := by
  simp only [Seg31.relationLc1368, Seg31.relationLc1368Part0, Seg31.relationLc1368Part1, Seg31.relationLc1368Part2, Seg31.relationLc1368Part3, Seg31.relationLc1368Part4, Seg31.relationLc1368Part5, Seg31.relationLc1368Part6, Seg31.relationLc1368Part7]
  rw [seg31AccY238_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
