import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1404 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1404 rho = seg15AccX244 rho + seg15AccY244 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1404, Seg15.relationLc1404Part0, Seg15.relationLc1404Part1, Seg15.relationLc1404Part2, Seg15.relationLc1404Part3, Seg15.relationLc1404Part4, Seg15.relationLc1404Part5, Seg15.relationLc1404Part6, Seg15.relationLc1404Part7, Seg15.relationLc1404Part8, Seg15.relationLc1404Part9, Seg15.relationLc1404Part10, Seg15.relationLc1404Part11, Seg15.relationLc1404Part12, Seg15.relationLc1404Part13, Seg15.relationLc1404Part14, Seg15.relationLc1404Part15]
  rw [seg15AccX244_sum, seg15AccY244_sum]
  ring

theorem seg15_lc1405 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1405 rho = 260328731423585986327153601432275543743222279480665957083922869933549272732*seg15AccX244 rho + 1542353671275604274757959391150192852009829135716795406696508500826541627060*rho 16130 := by
  simp only [Seg15.relationLc1405, Seg15.relationLc1405Part0, Seg15.relationLc1405Part1, Seg15.relationLc1405Part2, Seg15.relationLc1405Part3, Seg15.relationLc1405Part4, Seg15.relationLc1405Part5, Seg15.relationLc1405Part6, Seg15.relationLc1405Part7]
  rw [seg15AccX244_sum]
  ring

theorem seg15_lc1406 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1406 rho = 3368067897301621952756129210911905766281689935142904350930821626789140398127*seg15AccY244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127 + 4381488387325154353751551160021440457374123941788953219532740480634688063045*rho 16130 := by
  simp only [Seg15.relationLc1406, Seg15.relationLc1406Part0, Seg15.relationLc1406Part1, Seg15.relationLc1406Part2, Seg15.relationLc1406Part3, Seg15.relationLc1406Part4, Seg15.relationLc1406Part5, Seg15.relationLc1406Part6, Seg15.relationLc1406Part7]
  rw [seg15AccY244_sum]
  ring

theorem seg15_lc1407 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1407 rho = 4603869192333647691070553402110109040953276870995770867449987893004272282679*seg15AccX244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127*seg15AccY244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127 + 7501502179458003409606051852199976081957875509868281927703020866369429953941*rho 16130 := by
  simp only [Seg15.relationLc1407, Seg15.relationLc1407Part0, Seg15.relationLc1407Part1, Seg15.relationLc1407Part2, Seg15.relationLc1407Part3, Seg15.relationLc1407Part4, Seg15.relationLc1407Part5, Seg15.relationLc1407Part6, Seg15.relationLc1407Part7, Seg15.relationLc1407Part8, Seg15.relationLc1407Part9, Seg15.relationLc1407Part10, Seg15.relationLc1407Part11, Seg15.relationLc1407Part12, Seg15.relationLc1407Part13, Seg15.relationLc1407Part14, Seg15.relationLc1407Part15]
  rw [seg15AccX244_sum, seg15AccY244_sum]
  ring

theorem seg15_lc1408 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1408 rho = 3840592557094722733178271536671437490422622464158292960485245562913136956362*seg15AccX244 rho + 5076393852126748471492695727869640765094209400011159477004411829128268840914*seg15AccY244 rho + 5076393852126748471492695727869640765094209400011159477004411829128268840914 + 942959569970367014642773086581570449418023825285781900232212589547979285100*rho 16130 := by
  simp only [Seg15.relationLc1408, Seg15.relationLc1408Part0, Seg15.relationLc1408Part1, Seg15.relationLc1408Part2, Seg15.relationLc1408Part3, Seg15.relationLc1408Part4, Seg15.relationLc1408Part5, Seg15.relationLc1408Part6, Seg15.relationLc1408Part7, Seg15.relationLc1408Part8, Seg15.relationLc1408Part9, Seg15.relationLc1408Part10, Seg15.relationLc1408Part11, Seg15.relationLc1408Part12, Seg15.relationLc1408Part13, Seg15.relationLc1408Part14, Seg15.relationLc1408Part15]
  rw [seg15AccX244_sum, seg15AccY244_sum]
  ring

theorem seg15_lc1409 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1409 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX244 rho + rho 17889 := by
  simp only [Seg15.relationLc1409, Seg15.relationLc1409Part0, Seg15.relationLc1409Part1, Seg15.relationLc1409Part2, Seg15.relationLc1409Part3, Seg15.relationLc1409Part4, Seg15.relationLc1409Part5, Seg15.relationLc1409Part6, Seg15.relationLc1409Part7]
  rw [seg15AccX244_sum]
  ring

theorem seg15_lc1410 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1410 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY244 rho + rho 17891 := by
  simp only [Seg15.relationLc1410, Seg15.relationLc1410Part0, Seg15.relationLc1410Part1, Seg15.relationLc1410Part2, Seg15.relationLc1410Part3, Seg15.relationLc1410Part4, Seg15.relationLc1410Part5, Seg15.relationLc1410Part6, Seg15.relationLc1410Part7]
  rw [seg15AccY244_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
