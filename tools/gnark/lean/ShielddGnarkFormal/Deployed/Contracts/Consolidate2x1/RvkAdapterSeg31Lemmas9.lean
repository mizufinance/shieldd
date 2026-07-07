import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg31_lc1369 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1369 rho = seg31AccX239 rho + seg31AccY239 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1369, Seg31.relationLc1369Part0, Seg31.relationLc1369Part1, Seg31.relationLc1369Part2, Seg31.relationLc1369Part3, Seg31.relationLc1369Part4, Seg31.relationLc1369Part5, Seg31.relationLc1369Part6, Seg31.relationLc1369Part7, Seg31.relationLc1369Part8, Seg31.relationLc1369Part9, Seg31.relationLc1369Part10, Seg31.relationLc1369Part11, Seg31.relationLc1369Part12, Seg31.relationLc1369Part13, Seg31.relationLc1369Part14]
  rw [seg31AccX239_sum, seg31AccY239_sum]
  ring

theorem seg31_lc1370 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1370 rho = 6772296389239986671378956859861500069359331596161656606912733376557475308717*seg31AccX239 rho + 7796826063199595450469893030090568295522849956465905175758695894368515095753*rho 29271 := by
  simp only [Seg31.relationLc1370, Seg31.relationLc1370Part0, Seg31.relationLc1370Part1, Seg31.relationLc1370Part2, Seg31.relationLc1370Part3, Seg31.relationLc1370Part4, Seg31.relationLc1370Part5, Seg31.relationLc1370Part6, Seg31.relationLc1370Part7]
  rw [seg31AccX239_sum]
  ring

theorem seg31_lc1371 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1371 rho = 2038095029705799791750551460424790418921850671190595035485614575563709137534*seg31AccY239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534 + 1527594709452849466540517727286313016362911606278171072498883692955816107282*rho 29271 := by
  simp only [Seg31.relationLc1371, Seg31.relationLc1371Part0, Seg31.relationLc1371Part1, Seg31.relationLc1371Part2, Seg31.relationLc1371Part3, Seg31.relationLc1371Part4, Seg31.relationLc1371Part5, Seg31.relationLc1371Part6, Seg31.relationLc1371Part7]
  rw [seg31AccY239_sum]
  ring

theorem seg31_lc1372 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1372 rho = 2587851510960106795465588224175038742665364520560632471846078675968275743602*seg31AccX239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534*seg31AccY239 rho + 2038095029705799791750551460424790418921850671190595035485614575563709137534 + 6365964670583031667600079805115563618009991612823353570845031516402187010505*rho 29271 := by
  simp only [Seg31.relationLc1372, Seg31.relationLc1372Part0, Seg31.relationLc1372Part1, Seg31.relationLc1372Part2, Seg31.relationLc1372Part3, Seg31.relationLc1372Part4, Seg31.relationLc1372Part5, Seg31.relationLc1372Part6, Seg31.relationLc1372Part7, Seg31.relationLc1372Part8, Seg31.relationLc1372Part9, Seg31.relationLc1372Part10, Seg31.relationLc1372Part11, Seg31.relationLc1372Part12, Seg31.relationLc1372Part13, Seg31.relationLc1372Part14]
  rw [seg31AccX239_sum, seg31AccY239_sum]
  ring

theorem seg31_lc1373 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1373 rho = 5856610238468263628783236714606507788710534814593431356089154779949133495439*seg31AccX239 rho + 6406366719722570632498273478356756112454048663963468792449618880353700101507*seg31AccY239 rho + 6406366719722570632498273478356756112454048663963468792449618880353700101507 + 2078497078845338756648745133665982913365907722330710257090201939515222228536*rho 29271 := by
  simp only [Seg31.relationLc1373, Seg31.relationLc1373Part0, Seg31.relationLc1373Part1, Seg31.relationLc1373Part2, Seg31.relationLc1373Part3, Seg31.relationLc1373Part4, Seg31.relationLc1373Part5, Seg31.relationLc1373Part6, Seg31.relationLc1373Part7, Seg31.relationLc1373Part8, Seg31.relationLc1373Part9, Seg31.relationLc1373Part10, Seg31.relationLc1373Part11, Seg31.relationLc1373Part12, Seg31.relationLc1373Part13, Seg31.relationLc1373Part14]
  rw [seg31AccX239_sum, seg31AccY239_sum]
  ring

theorem seg31_lc1374 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1374 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX239 rho + rho 30990 := by
  simp only [Seg31.relationLc1374, Seg31.relationLc1374Part0, Seg31.relationLc1374Part1, Seg31.relationLc1374Part2, Seg31.relationLc1374Part3, Seg31.relationLc1374Part4, Seg31.relationLc1374Part5, Seg31.relationLc1374Part6, Seg31.relationLc1374Part7]
  rw [seg31AccX239_sum]
  ring

theorem seg31_lc1375 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1375 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY239 rho + rho 30992 := by
  simp only [Seg31.relationLc1375, Seg31.relationLc1375Part0, Seg31.relationLc1375Part1, Seg31.relationLc1375Part2, Seg31.relationLc1375Part3, Seg31.relationLc1375Part4, Seg31.relationLc1375Part5, Seg31.relationLc1375Part6, Seg31.relationLc1375Part7]
  rw [seg31AccY239_sum]
  ring

theorem seg31_lc1376 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1376 rho = seg31AccX240 rho + seg31AccY240 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1376, Seg31.relationLc1376Part0, Seg31.relationLc1376Part1, Seg31.relationLc1376Part2, Seg31.relationLc1376Part3, Seg31.relationLc1376Part4, Seg31.relationLc1376Part5, Seg31.relationLc1376Part6, Seg31.relationLc1376Part7, Seg31.relationLc1376Part8, Seg31.relationLc1376Part9, Seg31.relationLc1376Part10, Seg31.relationLc1376Part11, Seg31.relationLc1376Part12, Seg31.relationLc1376Part13, Seg31.relationLc1376Part14, Seg31.relationLc1376Part15]
  rw [seg31AccX240_sum, seg31AccY240_sum]
  ring

theorem seg31_lc1377 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1377 rho = 1956560981182669050740635602451336507209547751643045548588066977890755308424*seg31AccX240 rho + 5802932167050963573457850833071607981893881027396067795802331758442319830161*rho 29271 := by
  simp only [Seg31.relationLc1377, Seg31.relationLc1377Part0, Seg31.relationLc1377Part1, Seg31.relationLc1377Part2, Seg31.relationLc1377Part3, Seg31.relationLc1377Part4, Seg31.relationLc1377Part5, Seg31.relationLc1377Part6, Seg31.relationLc1377Part7]
  rw [seg31AccX240_sum]
  ring

theorem seg31_lc1378 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1378 rho = 1042167591211212625055700514920501013538786034986540347420891006854780459843*seg31AccY240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843 + 5084973934258372237038475226326269953298064121184732937443940636904285701209*rho 29271 := by
  simp only [Seg31.relationLc1378, Seg31.relationLc1378Part0, Seg31.relationLc1378Part1, Seg31.relationLc1378Part2, Seg31.relationLc1378Part3, Seg31.relationLc1378Part4, Seg31.relationLc1378Part5, Seg31.relationLc1378Part6, Seg31.relationLc1378Part7]
  rw [seg31AccY240_sum]
  ring

theorem seg31_lc1379 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1379 rho = 1429022348539913921165802773690771802065638566042823456346736962248158515875*seg31AccX240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843*seg31AccY240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843 + 3247617794252805611556095564331835656818935395099338057938617471649332718932*rho 29271 := by
  simp only [Seg31.relationLc1379, Seg31.relationLc1379Part0, Seg31.relationLc1379Part1, Seg31.relationLc1379Part2, Seg31.relationLc1379Part3, Seg31.relationLc1379Part4, Seg31.relationLc1379Part5, Seg31.relationLc1379Part6, Seg31.relationLc1379Part7, Seg31.relationLc1379Part8, Seg31.relationLc1379Part9, Seg31.relationLc1379Part10, Seg31.relationLc1379Part11, Seg31.relationLc1379Part12, Seg31.relationLc1379Part13, Seg31.relationLc1379Part14, Seg31.relationLc1379Part15]
  rw [seg31AccX240_sum, seg31AccY240_sum]
  ring

theorem seg31_lc1380 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1380 rho = 7015439400888456503083022165090774729310260769111240371588496493669250723166*seg31AccX240 rho + 7402294158217157799193124423861045517837113300167523480514342449062628779198*seg31AccY240 rho + 7402294158217157799193124423861045517837113300167523480514342449062628779198 + 5196843955175564812692729374449710874556963940054725769996615984268076520109*rho 29271 := by
  simp only [Seg31.relationLc1380, Seg31.relationLc1380Part0, Seg31.relationLc1380Part1, Seg31.relationLc1380Part2, Seg31.relationLc1380Part3, Seg31.relationLc1380Part4, Seg31.relationLc1380Part5, Seg31.relationLc1380Part6, Seg31.relationLc1380Part7, Seg31.relationLc1380Part8, Seg31.relationLc1380Part9, Seg31.relationLc1380Part10, Seg31.relationLc1380Part11, Seg31.relationLc1380Part12, Seg31.relationLc1380Part13, Seg31.relationLc1380Part14, Seg31.relationLc1380Part15]
  rw [seg31AccX240_sum, seg31AccY240_sum]
  ring

theorem seg31_lc1381 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1381 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX240 rho + rho 30998 := by
  simp only [Seg31.relationLc1381, Seg31.relationLc1381Part0, Seg31.relationLc1381Part1, Seg31.relationLc1381Part2, Seg31.relationLc1381Part3, Seg31.relationLc1381Part4, Seg31.relationLc1381Part5, Seg31.relationLc1381Part6, Seg31.relationLc1381Part7]
  rw [seg31AccX240_sum]
  ring

theorem seg31_lc1382 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1382 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY240 rho + rho 31000 := by
  simp only [Seg31.relationLc1382, Seg31.relationLc1382Part0, Seg31.relationLc1382Part1, Seg31.relationLc1382Part2, Seg31.relationLc1382Part3, Seg31.relationLc1382Part4, Seg31.relationLc1382Part5, Seg31.relationLc1382Part6, Seg31.relationLc1382Part7]
  rw [seg31AccY240_sum]
  ring

theorem seg31_lc1383 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1383 rho = seg31AccX241 rho + seg31AccY241 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1383, Seg31.relationLc1383Part0, Seg31.relationLc1383Part1, Seg31.relationLc1383Part2, Seg31.relationLc1383Part3, Seg31.relationLc1383Part4, Seg31.relationLc1383Part5, Seg31.relationLc1383Part6, Seg31.relationLc1383Part7, Seg31.relationLc1383Part8, Seg31.relationLc1383Part9, Seg31.relationLc1383Part10, Seg31.relationLc1383Part11, Seg31.relationLc1383Part12, Seg31.relationLc1383Part13, Seg31.relationLc1383Part14, Seg31.relationLc1383Part15]
  rw [seg31AccX241_sum, seg31AccY241_sum]
  ring

theorem seg31_lc1384 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1384 rho = 4577919756531272352425690818081278835207495153207440076621707172903191132847*seg31AccX241 rho + 8220088989769612254898518930562028505285603666816911535389190907107422041386*rho 29271 := by
  simp only [Seg31.relationLc1384, Seg31.relationLc1384Part0, Seg31.relationLc1384Part1, Seg31.relationLc1384Part2, Seg31.relationLc1384Part3, Seg31.relationLc1384Part4, Seg31.relationLc1384Part5, Seg31.relationLc1384Part6, Seg31.relationLc1384Part7]
  rw [seg31AccX241_sum]
  ring

theorem seg31_lc1385 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1385 rho = 1832778559720170430478539365272560586379194156184726994910167946211622715322*seg31AccY241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322 + 8252697770305461570771050865159685789044519724630267641297089757715806104875*rho 29271 := by
  simp only [Seg31.relationLc1385, Seg31.relationLc1385Part0, Seg31.relationLc1385Part1, Seg31.relationLc1385Part2, Seg31.relationLc1385Part3, Seg31.relationLc1385Part4, Seg31.relationLc1385Part5, Seg31.relationLc1385Part6, Seg31.relationLc1385Part7]
  rw [seg31AccY241_sum]
  ring

theorem seg31_lc1386 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1386 rho = 5910681912627641956045826418868676149011538791681197739931051053618770712501*seg31AccX241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322*seg31AccY241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322 + 3936751622050889345279645366488077923281368824548767574225078338157616812496*rho 29271 := by
  simp only [Seg31.relationLc1386, Seg31.relationLc1386Part0, Seg31.relationLc1386Part1, Seg31.relationLc1386Part2, Seg31.relationLc1386Part3, Seg31.relationLc1386Part4, Seg31.relationLc1386Part5, Seg31.relationLc1386Part6, Seg31.relationLc1386Part7, Seg31.relationLc1386Part8, Seg31.relationLc1386Part9, Seg31.relationLc1386Part10, Seg31.relationLc1386Part11, Seg31.relationLc1386Part12, Seg31.relationLc1386Part13, Seg31.relationLc1386Part14, Seg31.relationLc1386Part15]
  rw [seg31AccX241_sum, seg31AccY241_sum]
  ring

theorem seg31_lc1387 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1387 rho = 2533779836800728468202998519912870382364360543472866088004182402298638526540*seg31AccX241 rho + 6611683189708199993770285573508985944996705178969336833025065509705786523719*seg31AccY241 rho + 6611683189708199993770285573508985944996705178969336833025065509705786523719 + 4507710127377481078969179572293468608094530510605296253710155117759792426545*rho 29271 := by
  simp only [Seg31.relationLc1387, Seg31.relationLc1387Part0, Seg31.relationLc1387Part1, Seg31.relationLc1387Part2, Seg31.relationLc1387Part3, Seg31.relationLc1387Part4, Seg31.relationLc1387Part5, Seg31.relationLc1387Part6, Seg31.relationLc1387Part7, Seg31.relationLc1387Part8, Seg31.relationLc1387Part9, Seg31.relationLc1387Part10, Seg31.relationLc1387Part11, Seg31.relationLc1387Part12, Seg31.relationLc1387Part13, Seg31.relationLc1387Part14, Seg31.relationLc1387Part15]
  rw [seg31AccX241_sum, seg31AccY241_sum]
  ring

theorem seg31_lc1388 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1388 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX241 rho + rho 31006 := by
  simp only [Seg31.relationLc1388, Seg31.relationLc1388Part0, Seg31.relationLc1388Part1, Seg31.relationLc1388Part2, Seg31.relationLc1388Part3, Seg31.relationLc1388Part4, Seg31.relationLc1388Part5, Seg31.relationLc1388Part6, Seg31.relationLc1388Part7]
  rw [seg31AccX241_sum]
  ring

theorem seg31_lc1389 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1389 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY241 rho + rho 31008 := by
  simp only [Seg31.relationLc1389, Seg31.relationLc1389Part0, Seg31.relationLc1389Part1, Seg31.relationLc1389Part2, Seg31.relationLc1389Part3, Seg31.relationLc1389Part4, Seg31.relationLc1389Part5, Seg31.relationLc1389Part6, Seg31.relationLc1389Part7]
  rw [seg31AccY241_sum]
  ring

theorem seg31_lc1390 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1390 rho = seg31AccX242 rho + seg31AccY242 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1390, Seg31.relationLc1390Part0, Seg31.relationLc1390Part1, Seg31.relationLc1390Part2, Seg31.relationLc1390Part3, Seg31.relationLc1390Part4, Seg31.relationLc1390Part5, Seg31.relationLc1390Part6, Seg31.relationLc1390Part7, Seg31.relationLc1390Part8, Seg31.relationLc1390Part9, Seg31.relationLc1390Part10, Seg31.relationLc1390Part11, Seg31.relationLc1390Part12, Seg31.relationLc1390Part13, Seg31.relationLc1390Part14, Seg31.relationLc1390Part15]
  rw [seg31AccX242_sum, seg31AccY242_sum]
  ring

theorem seg31_lc1391 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1391 rho = 5101607293481150265259843140857517366059282301462055240221117720675950563116*seg31AccX242 rho + 6746698226507997162075746128145595460723895925172237235437716251178243576708*rho 29271 := by
  simp only [Seg31.relationLc1391, Seg31.relationLc1391Part0, Seg31.relationLc1391Part1, Seg31.relationLc1391Part2, Seg31.relationLc1391Part3, Seg31.relationLc1391Part4, Seg31.relationLc1391Part5, Seg31.relationLc1391Part6, Seg31.relationLc1391Part7]
  rw [seg31AccX242_sum]
  ring

theorem seg31_lc1392 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1392 rho = 7928334389735677851481765995037547084539024608531321830070540868699457609029*seg31AccY242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029 + 3390762984871091373183635872182357731676485092669673645809438422516163918512*rho 29271 := by
  simp only [Seg31.relationLc1392, Seg31.relationLc1392Part0, Seg31.relationLc1392Part1, Seg31.relationLc1392Part2, Seg31.relationLc1392Part3, Seg31.relationLc1392Part4, Seg31.relationLc1392Part5, Seg31.relationLc1392Part6, Seg31.relationLc1392Part7]
  rw [seg31AccY242_sum]
  ring

theorem seg31_lc1393 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1393 rho = 8420993179931060201291863806273047226041134750011751838788859413089676457648*seg31AccX242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029*seg31AccY242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029 + 7149817367346509396140437084976314743801586914044130455468621302689674762884*rho 29271 := by
  simp only [Seg31.relationLc1393, Seg31.relationLc1393Part0, Seg31.relationLc1393Part1, Seg31.relationLc1393Part2, Seg31.relationLc1393Part3, Seg31.relationLc1393Part4, Seg31.relationLc1393Part5, Seg31.relationLc1393Part6, Seg31.relationLc1393Part7, Seg31.relationLc1393Part8, Seg31.relationLc1393Part9, Seg31.relationLc1393Part10, Seg31.relationLc1393Part11, Seg31.relationLc1393Part12, Seg31.relationLc1393Part13, Seg31.relationLc1393Part14, Seg31.relationLc1393Part15]
  rw [seg31AccX242_sum, seg31AccY242_sum]
  ring

theorem seg31_lc1394 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1394 rho = 23468569497310222956961132508499305334764585142311989146374042827732781393*seg31AccX242 rho + 516127359692692572767058943743999446836874726622741997864692587217951630012*seg31AccY242 rho + 516127359692692572767058943743999446836874726622741997864692587217951630012 + 1294644382081861028108387853805231787574312421109933372466612153227734476157*rho 29271 := by
  simp only [Seg31.relationLc1394, Seg31.relationLc1394Part0, Seg31.relationLc1394Part1, Seg31.relationLc1394Part2, Seg31.relationLc1394Part3, Seg31.relationLc1394Part4, Seg31.relationLc1394Part5, Seg31.relationLc1394Part6, Seg31.relationLc1394Part7, Seg31.relationLc1394Part8, Seg31.relationLc1394Part9, Seg31.relationLc1394Part10, Seg31.relationLc1394Part11, Seg31.relationLc1394Part12, Seg31.relationLc1394Part13, Seg31.relationLc1394Part14, Seg31.relationLc1394Part15]
  rw [seg31AccX242_sum, seg31AccY242_sum]
  ring

theorem seg31_lc1395 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1395 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX242 rho + rho 31014 := by
  simp only [Seg31.relationLc1395, Seg31.relationLc1395Part0, Seg31.relationLc1395Part1, Seg31.relationLc1395Part2, Seg31.relationLc1395Part3, Seg31.relationLc1395Part4, Seg31.relationLc1395Part5, Seg31.relationLc1395Part6, Seg31.relationLc1395Part7]
  rw [seg31AccX242_sum]
  ring

theorem seg31_lc1396 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1396 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY242 rho + rho 31016 := by
  simp only [Seg31.relationLc1396, Seg31.relationLc1396Part0, Seg31.relationLc1396Part1, Seg31.relationLc1396Part2, Seg31.relationLc1396Part3, Seg31.relationLc1396Part4, Seg31.relationLc1396Part5, Seg31.relationLc1396Part6, Seg31.relationLc1396Part7]
  rw [seg31AccY242_sum]
  ring

theorem seg31_lc1397 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1397 rho = seg31AccX243 rho + seg31AccY243 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1397, Seg31.relationLc1397Part0, Seg31.relationLc1397Part1, Seg31.relationLc1397Part2, Seg31.relationLc1397Part3, Seg31.relationLc1397Part4, Seg31.relationLc1397Part5, Seg31.relationLc1397Part6, Seg31.relationLc1397Part7, Seg31.relationLc1397Part8, Seg31.relationLc1397Part9, Seg31.relationLc1397Part10, Seg31.relationLc1397Part11, Seg31.relationLc1397Part12, Seg31.relationLc1397Part13, Seg31.relationLc1397Part14, Seg31.relationLc1397Part15]
  rw [seg31AccX243_sum, seg31AccY243_sum]
  ring

theorem seg31_lc1398 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1398 rho = 7396124104652663118422969070910039288717996846228245061431233970477546476098*seg31AccX243 rho + 266244481212878045924026887078478029881372060679573020064507805825996892176*rho 29271 := by
  simp only [Seg31.relationLc1398, Seg31.relationLc1398Part0, Seg31.relationLc1398Part1, Seg31.relationLc1398Part2, Seg31.relationLc1398Part3, Seg31.relationLc1398Part4, Seg31.relationLc1398Part5, Seg31.relationLc1398Part6, Seg31.relationLc1398Part7]
  rw [seg31AccX243_sum]
  ring

theorem seg31_lc1399 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1399 rho = 6531902123103138028322820526628973091630042871057622470582109851478141098661*seg31AccY243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661 + 5634786646466419842005984955937291077093527399684750966063598167198254324639*rho 29271 := by
  simp only [Seg31.relationLc1399, Seg31.relationLc1399Part0, Seg31.relationLc1399Part1, Seg31.relationLc1399Part2, Seg31.relationLc1399Part3, Seg31.relationLc1399Part4, Seg31.relationLc1399Part5, Seg31.relationLc1399Part6, Seg31.relationLc1399Part7]
  rw [seg31AccY243_sum]
  ring

theorem seg31_lc1400 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1400 rho = 5039495596350405881368687689094755673230085600395184132075710665850264480380*seg31AccX243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661*seg31AccY243 rho + 6531902123103138028322820526628973091630042871057622470582109851478141098661 + 1808172316613316156884926593042600999826488400093478603460728225673889130546*rho 29271 := by
  simp only [Seg31.relationLc1400, Seg31.relationLc1400Part0, Seg31.relationLc1400Part1, Seg31.relationLc1400Part2, Seg31.relationLc1400Part3, Seg31.relationLc1400Part4, Seg31.relationLc1400Part5, Seg31.relationLc1400Part6, Seg31.relationLc1400Part7, Seg31.relationLc1400Part8, Seg31.relationLc1400Part9, Seg31.relationLc1400Part10, Seg31.relationLc1400Part11, Seg31.relationLc1400Part12, Seg31.relationLc1400Part13, Seg31.relationLc1400Part14, Seg31.relationLc1400Part15]
  rw [seg31AccX243_sum, seg31AccY243_sum]
  ring

theorem seg31_lc1401 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1401 rho = 3404966153077964542880137249686790858145813734758879695859522790067144758661*seg31AccX243 rho + 1912559626325232395926004412152573439745856464096441357353123604439268140380*seg31AccY243 rho + 1912559626325232395926004412152573439745856464096441357353123604439268140380 + 6636289432815054267363898345738945531549410935060585224474505230243520108495*rho 29271 := by
  simp only [Seg31.relationLc1401, Seg31.relationLc1401Part0, Seg31.relationLc1401Part1, Seg31.relationLc1401Part2, Seg31.relationLc1401Part3, Seg31.relationLc1401Part4, Seg31.relationLc1401Part5, Seg31.relationLc1401Part6, Seg31.relationLc1401Part7, Seg31.relationLc1401Part8, Seg31.relationLc1401Part9, Seg31.relationLc1401Part10, Seg31.relationLc1401Part11, Seg31.relationLc1401Part12, Seg31.relationLc1401Part13, Seg31.relationLc1401Part14, Seg31.relationLc1401Part15]
  rw [seg31AccX243_sum, seg31AccY243_sum]
  ring

theorem seg31_lc1402 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1402 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX243 rho + rho 31022 := by
  simp only [Seg31.relationLc1402, Seg31.relationLc1402Part0, Seg31.relationLc1402Part1, Seg31.relationLc1402Part2, Seg31.relationLc1402Part3, Seg31.relationLc1402Part4, Seg31.relationLc1402Part5, Seg31.relationLc1402Part6, Seg31.relationLc1402Part7]
  rw [seg31AccX243_sum]
  ring

theorem seg31_lc1403 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1403 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY243 rho + rho 31024 := by
  simp only [Seg31.relationLc1403, Seg31.relationLc1403Part0, Seg31.relationLc1403Part1, Seg31.relationLc1403Part2, Seg31.relationLc1403Part3, Seg31.relationLc1403Part4, Seg31.relationLc1403Part5, Seg31.relationLc1403Part6, Seg31.relationLc1403Part7]
  rw [seg31AccY243_sum]
  ring

theorem seg31_lc1404 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1404 rho = seg31AccX244 rho + seg31AccY244 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1404, Seg31.relationLc1404Part0, Seg31.relationLc1404Part1, Seg31.relationLc1404Part2, Seg31.relationLc1404Part3, Seg31.relationLc1404Part4, Seg31.relationLc1404Part5, Seg31.relationLc1404Part6, Seg31.relationLc1404Part7, Seg31.relationLc1404Part8, Seg31.relationLc1404Part9, Seg31.relationLc1404Part10, Seg31.relationLc1404Part11, Seg31.relationLc1404Part12, Seg31.relationLc1404Part13, Seg31.relationLc1404Part14, Seg31.relationLc1404Part15]
  rw [seg31AccX244_sum, seg31AccY244_sum]
  ring

theorem seg31_lc1405 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1405 rho = 260328731423585986327153601432275543743222279480665957083922869933549272732*seg31AccX244 rho + 1542353671275604274757959391150192852009829135716795406696508500826541627060*rho 29271 := by
  simp only [Seg31.relationLc1405, Seg31.relationLc1405Part0, Seg31.relationLc1405Part1, Seg31.relationLc1405Part2, Seg31.relationLc1405Part3, Seg31.relationLc1405Part4, Seg31.relationLc1405Part5, Seg31.relationLc1405Part6, Seg31.relationLc1405Part7]
  rw [seg31AccX244_sum]
  ring

theorem seg31_lc1406 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1406 rho = 3368067897301621952756129210911905766281689935142904350930821626789140398127*seg31AccY244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127 + 4381488387325154353751551160021440457374123941788953219532740480634688063045*rho 29271 := by
  simp only [Seg31.relationLc1406, Seg31.relationLc1406Part0, Seg31.relationLc1406Part1, Seg31.relationLc1406Part2, Seg31.relationLc1406Part3, Seg31.relationLc1406Part4, Seg31.relationLc1406Part5, Seg31.relationLc1406Part6, Seg31.relationLc1406Part7]
  rw [seg31AccY244_sum]
  ring

theorem seg31_lc1407 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1407 rho = 4603869192333647691070553402110109040953276870995770867449987893004272282679*seg31AccX244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127*seg31AccY244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127 + 7501502179458003409606051852199976081957875509868281927703020866369429953941*rho 29271 := by
  simp only [Seg31.relationLc1407, Seg31.relationLc1407Part0, Seg31.relationLc1407Part1, Seg31.relationLc1407Part2, Seg31.relationLc1407Part3, Seg31.relationLc1407Part4, Seg31.relationLc1407Part5, Seg31.relationLc1407Part6, Seg31.relationLc1407Part7, Seg31.relationLc1407Part8, Seg31.relationLc1407Part9, Seg31.relationLc1407Part10, Seg31.relationLc1407Part11, Seg31.relationLc1407Part12, Seg31.relationLc1407Part13, Seg31.relationLc1407Part14, Seg31.relationLc1407Part15]
  rw [seg31AccX244_sum, seg31AccY244_sum]
  ring

theorem seg31_lc1408 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1408 rho = 3840592557094722733178271536671437490422622464158292960485245562913136956362*seg31AccX244 rho + 5076393852126748471492695727869640765094209400011159477004411829128268840914*seg31AccY244 rho + 5076393852126748471492695727869640765094209400011159477004411829128268840914 + 942959569970367014642773086581570449418023825285781900232212589547979285100*rho 29271 := by
  simp only [Seg31.relationLc1408, Seg31.relationLc1408Part0, Seg31.relationLc1408Part1, Seg31.relationLc1408Part2, Seg31.relationLc1408Part3, Seg31.relationLc1408Part4, Seg31.relationLc1408Part5, Seg31.relationLc1408Part6, Seg31.relationLc1408Part7, Seg31.relationLc1408Part8, Seg31.relationLc1408Part9, Seg31.relationLc1408Part10, Seg31.relationLc1408Part11, Seg31.relationLc1408Part12, Seg31.relationLc1408Part13, Seg31.relationLc1408Part14, Seg31.relationLc1408Part15]
  rw [seg31AccX244_sum, seg31AccY244_sum]
  ring

theorem seg31_lc1409 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1409 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX244 rho + rho 31030 := by
  simp only [Seg31.relationLc1409, Seg31.relationLc1409Part0, Seg31.relationLc1409Part1, Seg31.relationLc1409Part2, Seg31.relationLc1409Part3, Seg31.relationLc1409Part4, Seg31.relationLc1409Part5, Seg31.relationLc1409Part6, Seg31.relationLc1409Part7]
  rw [seg31AccX244_sum]
  ring

theorem seg31_lc1410 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1410 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY244 rho + rho 31032 := by
  simp only [Seg31.relationLc1410, Seg31.relationLc1410Part0, Seg31.relationLc1410Part1, Seg31.relationLc1410Part2, Seg31.relationLc1410Part3, Seg31.relationLc1410Part4, Seg31.relationLc1410Part5, Seg31.relationLc1410Part6, Seg31.relationLc1410Part7]
  rw [seg31AccY244_sum]
  ring

theorem seg31_lc1411 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1411 rho = seg31AccX245 rho + seg31AccY245 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1411, Seg31.relationLc1411Part0, Seg31.relationLc1411Part1, Seg31.relationLc1411Part2, Seg31.relationLc1411Part3, Seg31.relationLc1411Part4, Seg31.relationLc1411Part5, Seg31.relationLc1411Part6, Seg31.relationLc1411Part7, Seg31.relationLc1411Part8, Seg31.relationLc1411Part9, Seg31.relationLc1411Part10, Seg31.relationLc1411Part11, Seg31.relationLc1411Part12, Seg31.relationLc1411Part13, Seg31.relationLc1411Part14, Seg31.relationLc1411Part15]
  rw [seg31AccX245_sum, seg31AccY245_sum]
  ring

theorem seg31_lc1412 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1412 rho = 2402040019472498774072941026249248018522448093911505580831537318715564696295*seg31AccX245 rho + 8236537065884324882781831579993557186896034708215621005562235095096824994222*rho 29271 := by
  simp only [Seg31.relationLc1412, Seg31.relationLc1412Part0, Seg31.relationLc1412Part1, Seg31.relationLc1412Part2, Seg31.relationLc1412Part3, Seg31.relationLc1412Part4, Seg31.relationLc1412Part5, Seg31.relationLc1412Part6, Seg31.relationLc1412Part7]
  rw [seg31AccX245_sum]
  ring

theorem seg31_lc1413 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1413 rho = 480450082750963304168017552783809360075956388215352509798867393431937691687*seg31AccY245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687 + 7349929413156500839574466363920844519270761866542770606800341658173170220065*rho 29271 := by
  simp only [Seg31.relationLc1413, Seg31.relationLc1413Part0, Seg31.relationLc1413Part1, Seg31.relationLc1413Part2, Seg31.relationLc1413Part3, Seg31.relationLc1413Part4, Seg31.relationLc1413Part5, Seg31.relationLc1413Part6, Seg31.relationLc1413Part7]
  rw [seg31AccY245_sum]
  ring

theorem seg31_lc1414 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1414 rho = 8411713817957444258635811711956280291601656255403008793061221120878583238984*seg31AccX245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687*seg31AccY245 rho + 480450082750963304168017552783809360075956388215352509798867393431937691687 + 7358246348133243992746025278670118484927712489971609980736598759135411743889*rho 29271 := by
  simp only [Seg31.relationLc1414, Seg31.relationLc1414Part0, Seg31.relationLc1414Part1, Seg31.relationLc1414Part2, Seg31.relationLc1414Part3, Seg31.relationLc1414Part4, Seg31.relationLc1414Part5, Seg31.relationLc1414Part6, Seg31.relationLc1414Part7, Seg31.relationLc1414Part8, Seg31.relationLc1414Part9, Seg31.relationLc1414Part10, Seg31.relationLc1414Part11, Seg31.relationLc1414Part12, Seg31.relationLc1414Part13, Seg31.relationLc1414Part14, Seg31.relationLc1414Part15]
  rw [seg31AccX245_sum, seg31AccY245_sum]
  ring

theorem seg31_lc1415 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1415 rho = 32747931470926165613013226825266239774243079751055034874012335038826000057*seg31AccX245 rho + 7964011666677407120080807385997737171299942946938711318136366062485471547354*seg31AccY245 rho + 7964011666677407120080807385997737171299942946938711318136366062485471547354 + 1086215401295126431502799660111428046448186845182453847198634696781997495152*rho 29271 := by
  simp only [Seg31.relationLc1415, Seg31.relationLc1415Part0, Seg31.relationLc1415Part1, Seg31.relationLc1415Part2, Seg31.relationLc1415Part3, Seg31.relationLc1415Part4, Seg31.relationLc1415Part5, Seg31.relationLc1415Part6, Seg31.relationLc1415Part7, Seg31.relationLc1415Part8, Seg31.relationLc1415Part9, Seg31.relationLc1415Part10, Seg31.relationLc1415Part11, Seg31.relationLc1415Part12, Seg31.relationLc1415Part13, Seg31.relationLc1415Part14, Seg31.relationLc1415Part15]
  rw [seg31AccX245_sum, seg31AccY245_sum]
  ring

theorem seg31_lc1416 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1416 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX245 rho + rho 31038 := by
  simp only [Seg31.relationLc1416, Seg31.relationLc1416Part0, Seg31.relationLc1416Part1, Seg31.relationLc1416Part2, Seg31.relationLc1416Part3, Seg31.relationLc1416Part4, Seg31.relationLc1416Part5, Seg31.relationLc1416Part6, Seg31.relationLc1416Part7]
  rw [seg31AccX245_sum]
  ring

theorem seg31_lc1417 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1417 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY245 rho + rho 31040 := by
  simp only [Seg31.relationLc1417, Seg31.relationLc1417Part0, Seg31.relationLc1417Part1, Seg31.relationLc1417Part2, Seg31.relationLc1417Part3, Seg31.relationLc1417Part4, Seg31.relationLc1417Part5, Seg31.relationLc1417Part6, Seg31.relationLc1417Part7]
  rw [seg31AccY245_sum]
  ring

theorem seg31_lc1418 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1418 rho = seg31AccX246 rho + seg31AccY246 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1418, Seg31.relationLc1418Part0, Seg31.relationLc1418Part1, Seg31.relationLc1418Part2, Seg31.relationLc1418Part3, Seg31.relationLc1418Part4, Seg31.relationLc1418Part5, Seg31.relationLc1418Part6, Seg31.relationLc1418Part7, Seg31.relationLc1418Part8, Seg31.relationLc1418Part9, Seg31.relationLc1418Part10, Seg31.relationLc1418Part11, Seg31.relationLc1418Part12, Seg31.relationLc1418Part13, Seg31.relationLc1418Part14, Seg31.relationLc1418Part15]
  rw [seg31AccX246_sum, seg31AccY246_sum]
  ring

theorem seg31_lc1419 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1419 rho = 5534924756406337177111513556176623967822603506254860987227413148256358049338*seg31AccX246 rho + 872969105361601625054695350166036627749660834881608083797783466325305210703*rho 29271 := by
  simp only [Seg31.relationLc1419, Seg31.relationLc1419Part0, Seg31.relationLc1419Part1, Seg31.relationLc1419Part2, Seg31.relationLc1419Part3, Seg31.relationLc1419Part4, Seg31.relationLc1419Part5, Seg31.relationLc1419Part6, Seg31.relationLc1419Part7]
  rw [seg31AccX246_sum]
  ring

theorem seg31_lc1420 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1420 rho = 1099604033722253165143295412136742437014200263599542477935666598053853222560*seg31AccY246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560 + 2327547121241648030449164254120704810200423337676700747191607018970167858005*rho 29271 := by
  simp only [Seg31.relationLc1420, Seg31.relationLc1420Part0, Seg31.relationLc1420Part1, Seg31.relationLc1420Part2, Seg31.relationLc1420Part3, Seg31.relationLc1420Part4, Seg31.relationLc1420Part5, Seg31.relationLc1420Part6, Seg31.relationLc1420Part7]
  rw [seg31AccY246_sum]
  ring

theorem seg31_lc1421 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1421 rho = 4650339230074738944952965040301187853573632306477147635499344803157533241501*seg31AccX246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560*seg31AccY246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560 + 5033641772864297541305806834753178520561105303007391046273071358193728747976*rho 29271 := by
  simp only [Seg31.relationLc1421, Seg31.relationLc1421Part0, Seg31.relationLc1421Part1, Seg31.relationLc1421Part2, Seg31.relationLc1421Part3, Seg31.relationLc1421Part4, Seg31.relationLc1421Part5, Seg31.relationLc1421Part6, Seg31.relationLc1421Part7, Seg31.relationLc1421Part8, Seg31.relationLc1421Part9, Seg31.relationLc1421Part10, Seg31.relationLc1421Part11, Seg31.relationLc1421Part12, Seg31.relationLc1421Part13, Seg31.relationLc1421Part14, Seg31.relationLc1421Part15]
  rw [seg31AccX246_sum, seg31AccY246_sum]
  ring

theorem seg31_lc1422 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1422 rho = 3794122519353631479295859898480358677802267028676916192435888652759875997540*seg31AccX246 rho + 7344857715706117259105529526644804094361699071554521349999566857863556016481*seg31AccY246 rho + 7344857715706117259105529526644804094361699071554521349999566857863556016481 + 3410819976564072882943018104028368010814794032146672781662162097723680491065*rho 29271 := by
  simp only [Seg31.relationLc1422, Seg31.relationLc1422Part0, Seg31.relationLc1422Part1, Seg31.relationLc1422Part2, Seg31.relationLc1422Part3, Seg31.relationLc1422Part4, Seg31.relationLc1422Part5, Seg31.relationLc1422Part6, Seg31.relationLc1422Part7, Seg31.relationLc1422Part8, Seg31.relationLc1422Part9, Seg31.relationLc1422Part10, Seg31.relationLc1422Part11, Seg31.relationLc1422Part12, Seg31.relationLc1422Part13, Seg31.relationLc1422Part14, Seg31.relationLc1422Part15]
  rw [seg31AccX246_sum, seg31AccY246_sum]
  ring

theorem seg31_lc1423 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1423 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX246 rho + rho 31046 := by
  simp only [Seg31.relationLc1423, Seg31.relationLc1423Part0, Seg31.relationLc1423Part1, Seg31.relationLc1423Part2, Seg31.relationLc1423Part3, Seg31.relationLc1423Part4, Seg31.relationLc1423Part5, Seg31.relationLc1423Part6, Seg31.relationLc1423Part7]
  rw [seg31AccX246_sum]
  ring

theorem seg31_lc1424 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1424 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY246 rho + rho 31048 := by
  simp only [Seg31.relationLc1424, Seg31.relationLc1424Part0, Seg31.relationLc1424Part1, Seg31.relationLc1424Part2, Seg31.relationLc1424Part3, Seg31.relationLc1424Part4, Seg31.relationLc1424Part5, Seg31.relationLc1424Part6, Seg31.relationLc1424Part7]
  rw [seg31AccY246_sum]
  ring

theorem seg31_lc1425 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1425 rho = seg31AccX247 rho + seg31AccY247 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1425, Seg31.relationLc1425Part0, Seg31.relationLc1425Part1, Seg31.relationLc1425Part2, Seg31.relationLc1425Part3, Seg31.relationLc1425Part4, Seg31.relationLc1425Part5, Seg31.relationLc1425Part6, Seg31.relationLc1425Part7, Seg31.relationLc1425Part8, Seg31.relationLc1425Part9, Seg31.relationLc1425Part10, Seg31.relationLc1425Part11, Seg31.relationLc1425Part12, Seg31.relationLc1425Part13, Seg31.relationLc1425Part14, Seg31.relationLc1425Part15]
  rw [seg31AccX247_sum, seg31AccY247_sum]
  ring

theorem seg31_lc1426 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1426 rho = 5433452400507472894596995115818677673164991880881552604222095953382622985027*seg31AccX247 rho + 6394341953313109814172697215813188191256544307060807307185555637922028065142*rho 29271 := by
  simp only [Seg31.relationLc1426, Seg31.relationLc1426Part0, Seg31.relationLc1426Part1, Seg31.relationLc1426Part2, Seg31.relationLc1426Part3, Seg31.relationLc1426Part4, Seg31.relationLc1426Part5, Seg31.relationLc1426Part6, Seg31.relationLc1426Part7]
  rw [seg31AccX247_sum]
  ring

theorem seg31_lc1427 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1427 rho = 6627260208489595454201940394776925586553558217909297503373304214489441683658*seg31AccY247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658 + 549863627905211652879844760723861940109871183668577874297564049356567101830*rho 29271 := by
  simp only [Seg31.relationLc1427, Seg31.relationLc1427Part0, Seg31.relationLc1427Part1, Seg31.relationLc1427Part2, Seg31.relationLc1427Part3, Seg31.relationLc1427Part4, Seg31.relationLc1427Part5, Seg31.relationLc1427Part6, Seg31.relationLc1427Part7]
  rw [seg31AccY247_sum]
  ring

theorem seg31_lc1428 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1428 rho = 1516826123995592268400350914245421018761636025003106304980178294955517520869*seg31AccX247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658*seg31AccY247 rho + 6627260208489595454201940394776925586553558217909297503373304214489441683658 + 1370989624110383994528000472170007693795536542658052057975885452276700479885*rho 29271 := by
  simp only [Seg31.relationLc1428, Seg31.relationLc1428Part0, Seg31.relationLc1428Part1, Seg31.relationLc1428Part2, Seg31.relationLc1428Part3, Seg31.relationLc1428Part4, Seg31.relationLc1428Part5, Seg31.relationLc1428Part6, Seg31.relationLc1428Part7, Seg31.relationLc1428Part8, Seg31.relationLc1428Part9, Seg31.relationLc1428Part10, Seg31.relationLc1428Part11, Seg31.relationLc1428Part12, Seg31.relationLc1428Part13, Seg31.relationLc1428Part14, Seg31.relationLc1428Part15]
  rw [seg31AccX247_sum, seg31AccY247_sum]
  ring

theorem seg31_lc1429 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1429 rho = 6927635625432778155848474024536125512614263310150957522955055160961891718172*seg31AccX247 rho + 1817201540938774970046884544004620944822341117244766324561929241427967555383*seg31AccY247 rho + 1817201540938774970046884544004620944822341117244766324561929241427967555383 + 7073472125317986429720824466611538837580362792496011769959348003640708759156*rho 29271 := by
  simp only [Seg31.relationLc1429, Seg31.relationLc1429Part0, Seg31.relationLc1429Part1, Seg31.relationLc1429Part2, Seg31.relationLc1429Part3, Seg31.relationLc1429Part4, Seg31.relationLc1429Part5, Seg31.relationLc1429Part6, Seg31.relationLc1429Part7, Seg31.relationLc1429Part8, Seg31.relationLc1429Part9, Seg31.relationLc1429Part10, Seg31.relationLc1429Part11, Seg31.relationLc1429Part12, Seg31.relationLc1429Part13, Seg31.relationLc1429Part14, Seg31.relationLc1429Part15]
  rw [seg31AccX247_sum, seg31AccY247_sum]
  ring

theorem seg31_lc1430 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1430 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX247 rho + rho 31054 := by
  simp only [Seg31.relationLc1430, Seg31.relationLc1430Part0, Seg31.relationLc1430Part1, Seg31.relationLc1430Part2, Seg31.relationLc1430Part3, Seg31.relationLc1430Part4, Seg31.relationLc1430Part5, Seg31.relationLc1430Part6, Seg31.relationLc1430Part7]
  rw [seg31AccX247_sum]
  ring

theorem seg31_lc1431 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1431 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY247 rho + rho 31056 := by
  simp only [Seg31.relationLc1431, Seg31.relationLc1431Part0, Seg31.relationLc1431Part1, Seg31.relationLc1431Part2, Seg31.relationLc1431Part3, Seg31.relationLc1431Part4, Seg31.relationLc1431Part5, Seg31.relationLc1431Part6, Seg31.relationLc1431Part7]
  rw [seg31AccY247_sum]
  ring

theorem seg31_lc1432 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1432 rho = seg31AccX248 rho + seg31AccY248 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 29271 + 1 := by
  simp only [Seg31.relationLc1432, Seg31.relationLc1432Part0, Seg31.relationLc1432Part1, Seg31.relationLc1432Part2, Seg31.relationLc1432Part3, Seg31.relationLc1432Part4, Seg31.relationLc1432Part5, Seg31.relationLc1432Part6, Seg31.relationLc1432Part7, Seg31.relationLc1432Part8, Seg31.relationLc1432Part9, Seg31.relationLc1432Part10, Seg31.relationLc1432Part11, Seg31.relationLc1432Part12, Seg31.relationLc1432Part13, Seg31.relationLc1432Part14, Seg31.relationLc1432Part15]
  rw [seg31AccX248_sum, seg31AccY248_sum]
  ring

theorem seg31_lc1433 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1433 rho = 7534130220994948469448485159954569829989303291994285594626697092191329623737*seg31AccX248 rho + 3716211268890037814401188648723045032348554276262890654908772248785236731110*rho 29271 := by
  simp only [Seg31.relationLc1433, Seg31.relationLc1433Part0, Seg31.relationLc1433Part1, Seg31.relationLc1433Part2, Seg31.relationLc1433Part3, Seg31.relationLc1433Part4, Seg31.relationLc1433Part5, Seg31.relationLc1433Part6, Seg31.relationLc1433Part7]
  rw [seg31AccX248_sum]
  ring

theorem seg31_lc1434 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1434 rho = 3495198042200539245348034761970589749121878896975913938990248009704026313594*seg31AccY248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594 + 2810509145840311449603695208686646865203949018815104943021971327492244934389*rho 29271 := by
  simp only [Seg31.relationLc1434, Seg31.relationLc1434Part0, Seg31.relationLc1434Part1, Seg31.relationLc1434Part2, Seg31.relationLc1434Part3, Seg31.relationLc1434Part4, Seg31.relationLc1434Part5, Seg31.relationLc1434Part6, Seg31.relationLc1434Part7]
  rw [seg31AccY248_sum]
  ring

theorem seg31_lc1435 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1435 rho = 5453238841974947790716536615618659485605095334936252482644267439963965357747*seg31AccX248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594*seg31AccY248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594 + 4508458332590364705258590252211678904124015040236746662390258477439498375246*rho 29271 := by
  simp only [Seg31.relationLc1435, Seg31.relationLc1435Part0, Seg31.relationLc1435Part1, Seg31.relationLc1435Part2, Seg31.relationLc1435Part3, Seg31.relationLc1435Part4, Seg31.relationLc1435Part5, Seg31.relationLc1435Part6, Seg31.relationLc1435Part7, Seg31.relationLc1435Part8, Seg31.relationLc1435Part9, Seg31.relationLc1435Part10, Seg31.relationLc1435Part11, Seg31.relationLc1435Part12, Seg31.relationLc1435Part13, Seg31.relationLc1435Part14, Seg31.relationLc1435Part15]
  rw [seg31AccX248_sum, seg31AccY248_sum]
  ring

theorem seg31_lc1436 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1436 rho = 2991222907453422633532288323162887045770804000217811345290966015953443881294*seg31AccX248 rho + 4949263707227831178900790176810956782254020438178149888944985446213382925447*seg31AccY248 rho + 4949263707227831178900790176810956782254020438178149888944985446213382925447 + 3936003416838005718990234686569867627251884294917317165544974978477910863795*rho 29271 := by
  simp only [Seg31.relationLc1436, Seg31.relationLc1436Part0, Seg31.relationLc1436Part1, Seg31.relationLc1436Part2, Seg31.relationLc1436Part3, Seg31.relationLc1436Part4, Seg31.relationLc1436Part5, Seg31.relationLc1436Part6, Seg31.relationLc1436Part7, Seg31.relationLc1436Part8, Seg31.relationLc1436Part9, Seg31.relationLc1436Part10, Seg31.relationLc1436Part11, Seg31.relationLc1436Part12, Seg31.relationLc1436Part13, Seg31.relationLc1436Part14, Seg31.relationLc1436Part15]
  rw [seg31AccX248_sum, seg31AccY248_sum]
  ring

theorem seg31_lc1437 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1437 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 29271 + (-1)*seg31AccX248 rho + rho 31062 := by
  simp only [Seg31.relationLc1437, Seg31.relationLc1437Part0, Seg31.relationLc1437Part1, Seg31.relationLc1437Part2, Seg31.relationLc1437Part3, Seg31.relationLc1437Part4, Seg31.relationLc1437Part5, Seg31.relationLc1437Part6, Seg31.relationLc1437Part7]
  rw [seg31AccX248_sum]
  ring

theorem seg31_lc1438 (rho : Nat -> Seg31.F) :
    Seg31.relationLc1438 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 29271 + (-1)*seg31AccY248 rho + rho 31064 := by
  simp only [Seg31.relationLc1438, Seg31.relationLc1438Part0, Seg31.relationLc1438Part1, Seg31.relationLc1438Part2, Seg31.relationLc1438Part3, Seg31.relationLc1438Part4, Seg31.relationLc1438Part5, Seg31.relationLc1438Part6, Seg31.relationLc1438Part7]
  rw [seg31AccY248_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
