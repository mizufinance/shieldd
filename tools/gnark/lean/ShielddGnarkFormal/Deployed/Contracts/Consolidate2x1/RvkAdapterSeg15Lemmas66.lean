import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1201 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1201 rho = seg15AccX215 rho + seg15AccY215 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1201, Seg15.relationLc1201Part0, Seg15.relationLc1201Part1, Seg15.relationLc1201Part2, Seg15.relationLc1201Part3, Seg15.relationLc1201Part4, Seg15.relationLc1201Part5, Seg15.relationLc1201Part6, Seg15.relationLc1201Part7, Seg15.relationLc1201Part8, Seg15.relationLc1201Part9, Seg15.relationLc1201Part10, Seg15.relationLc1201Part11, Seg15.relationLc1201Part12, Seg15.relationLc1201Part13]
  rw [seg15AccX215_sum, seg15AccY215_sum]
  ring

theorem seg15_lc1202 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1202 rho = 1996585204601266675429321607520269104038502571187033994999948541698577110664*seg15AccX215 rho + 3380063927933372626926139325465722916591826025086909636351152278641708478755*rho 16136 := by
  simp only [Seg15.relationLc1202, Seg15.relationLc1202Part0, Seg15.relationLc1202Part1, Seg15.relationLc1202Part2, Seg15.relationLc1202Part3, Seg15.relationLc1202Part4, Seg15.relationLc1202Part5, Seg15.relationLc1202Part6]
  rw [seg15AccX215_sum]
  ring

theorem seg15_lc1203 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1203 rho = 1764755048406653667338976471573889533281357893935591296537806754119176181450*seg15AccY215 rho + 1764755048406653667338976471573889533281357893935591296537806754119176181450 + 2183381813434380148828247542363511242964190520296834620661283850118539454462*rho 16136 := by
  simp only [Seg15.relationLc1203, Seg15.relationLc1203Part0, Seg15.relationLc1203Part1, Seg15.relationLc1203Part2, Seg15.relationLc1203Part3, Seg15.relationLc1203Part4, Seg15.relationLc1203Part5, Seg15.relationLc1203Part6]
  rw [seg15AccY215_sum]
  ring

theorem seg15_lc1204 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1204 rho = 1898638236698598075054743944071562517016972575683812106310169965279582737643*seg15AccX215 rho + 1764755048406653667338976471573889533281357893935591296537806754119176181450*seg15AccY215 rho + 1764755048406653667338976471573889533281357893935591296537806754119176181450 + 4784086709460966665603597867551298067557430575814334213384262422207858322647*rho 16136 := by
  simp only [Seg15.relationLc1204, Seg15.relationLc1204Part0, Seg15.relationLc1204Part1, Seg15.relationLc1204Part2, Seg15.relationLc1204Part3, Seg15.relationLc1204Part4, Seg15.relationLc1204Part5, Seg15.relationLc1204Part6, Seg15.relationLc1204Part7, Seg15.relationLc1204Part8, Seg15.relationLc1204Part9, Seg15.relationLc1204Part10, Seg15.relationLc1204Part11, Seg15.relationLc1204Part12, Seg15.relationLc1204Part13]
  rw [seg15AccX215_sum, seg15AccY215_sum]
  ring

theorem seg15_lc1205 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1205 rho = 6545823512729772349194080994709984014358926759470251721625063490637826501398*seg15AccX215 rho + 6679706701021716756909848467207656998094541441218472531397426701798233057591*seg15AccY215 rho + 6679706701021716756909848467207656998094541441218472531397426701798233057591 + 3660375039967403758645227071230248463818468759339729614550971033709550916394*rho 16136 := by
  simp only [Seg15.relationLc1205, Seg15.relationLc1205Part0, Seg15.relationLc1205Part1, Seg15.relationLc1205Part2, Seg15.relationLc1205Part3, Seg15.relationLc1205Part4, Seg15.relationLc1205Part5, Seg15.relationLc1205Part6, Seg15.relationLc1205Part7, Seg15.relationLc1205Part8, Seg15.relationLc1205Part9, Seg15.relationLc1205Part10, Seg15.relationLc1205Part11, Seg15.relationLc1205Part12, Seg15.relationLc1205Part13]
  rw [seg15AccX215_sum, seg15AccY215_sum]
  ring

theorem seg15_lc1206 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1206 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX215 rho + rho 17663 := by
  simp only [Seg15.relationLc1206, Seg15.relationLc1206Part0, Seg15.relationLc1206Part1, Seg15.relationLc1206Part2, Seg15.relationLc1206Part3, Seg15.relationLc1206Part4, Seg15.relationLc1206Part5, Seg15.relationLc1206Part6]
  rw [seg15AccX215_sum]
  ring

theorem seg15_lc1207 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1207 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY215 rho + rho 17665 := by
  simp only [Seg15.relationLc1207, Seg15.relationLc1207Part0, Seg15.relationLc1207Part1, Seg15.relationLc1207Part2, Seg15.relationLc1207Part3, Seg15.relationLc1207Part4, Seg15.relationLc1207Part5, Seg15.relationLc1207Part6]
  rw [seg15AccY215_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
