import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1376 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1376 rho = seg15AccX240 rho + seg15AccY240 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1376, Seg15.relationLc1376Part0, Seg15.relationLc1376Part1, Seg15.relationLc1376Part2, Seg15.relationLc1376Part3, Seg15.relationLc1376Part4, Seg15.relationLc1376Part5, Seg15.relationLc1376Part6, Seg15.relationLc1376Part7, Seg15.relationLc1376Part8, Seg15.relationLc1376Part9, Seg15.relationLc1376Part10, Seg15.relationLc1376Part11, Seg15.relationLc1376Part12, Seg15.relationLc1376Part13, Seg15.relationLc1376Part14, Seg15.relationLc1376Part15]
  rw [seg15AccX240_sum, seg15AccY240_sum]
  ring

theorem seg15_lc1377 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1377 rho = 1956560981182669050740635602451336507209547751643045548588066977890755308424*seg15AccX240 rho + 5802932167050963573457850833071607981893881027396067795802331758442319830161*rho 16136 := by
  simp only [Seg15.relationLc1377, Seg15.relationLc1377Part0, Seg15.relationLc1377Part1, Seg15.relationLc1377Part2, Seg15.relationLc1377Part3, Seg15.relationLc1377Part4, Seg15.relationLc1377Part5, Seg15.relationLc1377Part6, Seg15.relationLc1377Part7]
  rw [seg15AccX240_sum]
  ring

theorem seg15_lc1378 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1378 rho = 1042167591211212625055700514920501013538786034986540347420891006854780459843*seg15AccY240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843 + 5084973934258372237038475226326269953298064121184732937443940636904285701209*rho 16136 := by
  simp only [Seg15.relationLc1378, Seg15.relationLc1378Part0, Seg15.relationLc1378Part1, Seg15.relationLc1378Part2, Seg15.relationLc1378Part3, Seg15.relationLc1378Part4, Seg15.relationLc1378Part5, Seg15.relationLc1378Part6, Seg15.relationLc1378Part7]
  rw [seg15AccY240_sum]
  ring

theorem seg15_lc1379 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1379 rho = 1429022348539913921165802773690771802065638566042823456346736962248158515875*seg15AccX240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843*seg15AccY240 rho + 1042167591211212625055700514920501013538786034986540347420891006854780459843 + 3247617794252805611556095564331835656818935395099338057938617471649332718932*rho 16136 := by
  simp only [Seg15.relationLc1379, Seg15.relationLc1379Part0, Seg15.relationLc1379Part1, Seg15.relationLc1379Part2, Seg15.relationLc1379Part3, Seg15.relationLc1379Part4, Seg15.relationLc1379Part5, Seg15.relationLc1379Part6, Seg15.relationLc1379Part7, Seg15.relationLc1379Part8, Seg15.relationLc1379Part9, Seg15.relationLc1379Part10, Seg15.relationLc1379Part11, Seg15.relationLc1379Part12, Seg15.relationLc1379Part13, Seg15.relationLc1379Part14, Seg15.relationLc1379Part15]
  rw [seg15AccX240_sum, seg15AccY240_sum]
  ring

theorem seg15_lc1380 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1380 rho = 7015439400888456503083022165090774729310260769111240371588496493669250723166*seg15AccX240 rho + 7402294158217157799193124423861045517837113300167523480514342449062628779198*seg15AccY240 rho + 7402294158217157799193124423861045517837113300167523480514342449062628779198 + 5196843955175564812692729374449710874556963940054725769996615984268076520109*rho 16136 := by
  simp only [Seg15.relationLc1380, Seg15.relationLc1380Part0, Seg15.relationLc1380Part1, Seg15.relationLc1380Part2, Seg15.relationLc1380Part3, Seg15.relationLc1380Part4, Seg15.relationLc1380Part5, Seg15.relationLc1380Part6, Seg15.relationLc1380Part7, Seg15.relationLc1380Part8, Seg15.relationLc1380Part9, Seg15.relationLc1380Part10, Seg15.relationLc1380Part11, Seg15.relationLc1380Part12, Seg15.relationLc1380Part13, Seg15.relationLc1380Part14, Seg15.relationLc1380Part15]
  rw [seg15AccX240_sum, seg15AccY240_sum]
  ring

theorem seg15_lc1381 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1381 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX240 rho + rho 17863 := by
  simp only [Seg15.relationLc1381, Seg15.relationLc1381Part0, Seg15.relationLc1381Part1, Seg15.relationLc1381Part2, Seg15.relationLc1381Part3, Seg15.relationLc1381Part4, Seg15.relationLc1381Part5, Seg15.relationLc1381Part6, Seg15.relationLc1381Part7]
  rw [seg15AccX240_sum]
  ring

theorem seg15_lc1382 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1382 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY240 rho + rho 17865 := by
  simp only [Seg15.relationLc1382, Seg15.relationLc1382Part0, Seg15.relationLc1382Part1, Seg15.relationLc1382Part2, Seg15.relationLc1382Part3, Seg15.relationLc1382Part4, Seg15.relationLc1382Part5, Seg15.relationLc1382Part6, Seg15.relationLc1382Part7]
  rw [seg15AccY240_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
