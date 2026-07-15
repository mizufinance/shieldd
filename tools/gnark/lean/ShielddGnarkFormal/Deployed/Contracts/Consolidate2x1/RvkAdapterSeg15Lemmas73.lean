import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1250 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1250 rho = seg15AccX222 rho + seg15AccY222 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1250, Seg15.relationLc1250Part0, Seg15.relationLc1250Part1, Seg15.relationLc1250Part2, Seg15.relationLc1250Part3, Seg15.relationLc1250Part4, Seg15.relationLc1250Part5, Seg15.relationLc1250Part6, Seg15.relationLc1250Part7, Seg15.relationLc1250Part8, Seg15.relationLc1250Part9, Seg15.relationLc1250Part10, Seg15.relationLc1250Part11, Seg15.relationLc1250Part12, Seg15.relationLc1250Part13]
  rw [seg15AccX222_sum, seg15AccY222_sum]
  ring

theorem seg15_lc1251 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1251 rho = 8000303670094469490476673488425897846331820804390470973550534731133844079073*seg15AccX222 rho + 6144560444343160063992881673823174172581281374192862824241915636711435846291*rho 16136 := by
  simp only [Seg15.relationLc1251, Seg15.relationLc1251Part0, Seg15.relationLc1251Part1, Seg15.relationLc1251Part2, Seg15.relationLc1251Part3, Seg15.relationLc1251Part4, Seg15.relationLc1251Part5, Seg15.relationLc1251Part6]
  rw [seg15AccX222_sum]
  ring

theorem seg15_lc1252 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1252 rho = 1887744025524448028782079554652453304437947498971093309363675424119475519583*seg15AccY222 rho + 1887744025524448028782079554652453304437947498971093309363675424119475519583 + 819468999576066053346443248822634724062702190613440189513332390125497148669*rho 16136 := by
  simp only [Seg15.relationLc1252, Seg15.relationLc1252Part0, Seg15.relationLc1252Part1, Seg15.relationLc1252Part2, Seg15.relationLc1252Part3, Seg15.relationLc1252Part4, Seg15.relationLc1252Part5, Seg15.relationLc1252Part6]
  rw [seg15AccY222_sum]
  ring

theorem seg15_lc1253 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1253 rho = 4578478711514179693474281065300833356408036753542400846508946607768266391390*seg15AccX222 rho + 1887744025524448028782079554652453304437947498971093309363675424119475519583*seg15AccY222 rho + 1887744025524448028782079554652453304437947498971093309363675424119475519583 + 460915207708500139852863131169871953994873745442741291473145961732039897431*rho 16136 := by
  simp only [Seg15.relationLc1253, Seg15.relationLc1253Part0, Seg15.relationLc1253Part1, Seg15.relationLc1253Part2, Seg15.relationLc1253Part3, Seg15.relationLc1253Part4, Seg15.relationLc1253Part5, Seg15.relationLc1253Part6, Seg15.relationLc1253Part7, Seg15.relationLc1253Part8, Seg15.relationLc1253Part9, Seg15.relationLc1253Part10, Seg15.relationLc1253Part11, Seg15.relationLc1253Part12, Seg15.relationLc1253Part13]
  rw [seg15AccX222_sum, seg15AccY222_sum]
  ring

theorem seg15_lc1254 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1254 rho = 3865983037914190730774543873480713174967862581611662981426286848149142847651*seg15AccX222 rho + 6556717723903922395466745384129093226937951836182970518571558031797933719458*seg15AccY222 rho + 6556717723903922395466745384129093226937951836182970518571558031797933719458 + 7983546541719870284395961807611674577381025589711322536462087494185369341610*rho 16136 := by
  simp only [Seg15.relationLc1254, Seg15.relationLc1254Part0, Seg15.relationLc1254Part1, Seg15.relationLc1254Part2, Seg15.relationLc1254Part3, Seg15.relationLc1254Part4, Seg15.relationLc1254Part5, Seg15.relationLc1254Part6, Seg15.relationLc1254Part7, Seg15.relationLc1254Part8, Seg15.relationLc1254Part9, Seg15.relationLc1254Part10, Seg15.relationLc1254Part11, Seg15.relationLc1254Part12, Seg15.relationLc1254Part13]
  rw [seg15AccX222_sum, seg15AccY222_sum]
  ring

theorem seg15_lc1255 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1255 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX222 rho + rho 17719 := by
  simp only [Seg15.relationLc1255, Seg15.relationLc1255Part0, Seg15.relationLc1255Part1, Seg15.relationLc1255Part2, Seg15.relationLc1255Part3, Seg15.relationLc1255Part4, Seg15.relationLc1255Part5, Seg15.relationLc1255Part6]
  rw [seg15AccX222_sum]
  ring

theorem seg15_lc1256 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1256 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY222 rho + rho 17721 := by
  simp only [Seg15.relationLc1256, Seg15.relationLc1256Part0, Seg15.relationLc1256Part1, Seg15.relationLc1256Part2, Seg15.relationLc1256Part3, Seg15.relationLc1256Part4, Seg15.relationLc1256Part5, Seg15.relationLc1256Part6, Seg15.relationLc1256Part7]
  rw [seg15AccY222_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
