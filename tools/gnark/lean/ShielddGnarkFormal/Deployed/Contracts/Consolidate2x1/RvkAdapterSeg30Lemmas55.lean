import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1124 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1124 rho = seg30AccX204 rho + seg30AccY204 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1124, Seg30.relationLc1124Part0, Seg30.relationLc1124Part1, Seg30.relationLc1124Part2, Seg30.relationLc1124Part3, Seg30.relationLc1124Part4, Seg30.relationLc1124Part5, Seg30.relationLc1124Part6, Seg30.relationLc1124Part7, Seg30.relationLc1124Part8, Seg30.relationLc1124Part9, Seg30.relationLc1124Part10, Seg30.relationLc1124Part11, Seg30.relationLc1124Part12]
  rw [seg30AccX204_sum, seg30AccY204_sum]
  ring

theorem seg30_lc1125 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1125 rho = 4583072808772894578282428172385816829329163950970175532288694571516542345186*seg30AccX204 rho + 712592056375093217253407910869342574126920118676731509118637384739350028946*rho 28317 := by
  simp only [Seg30.relationLc1125, Seg30.relationLc1125Part0, Seg30.relationLc1125Part1, Seg30.relationLc1125Part2, Seg30.relationLc1125Part3, Seg30.relationLc1125Part4, Seg30.relationLc1125Part5, Seg30.relationLc1125Part6]
  rw [seg30AccX204_sum]
  ring

theorem seg30_lc1126 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1126 rho = 7407179741270863900722282752204500392426669272486536784706558560924426719167*seg30AccY204 rho + 7407179741270863900722282752204500392426669272486536784706558560924426719167 + 395971560032455769750022647094956774664051301223518352824675903196206007919*rho 28317 := by
  simp only [Seg30.relationLc1126, Seg30.relationLc1126Part0, Seg30.relationLc1126Part1, Seg30.relationLc1126Part2, Seg30.relationLc1126Part3, Seg30.relationLc1126Part4, Seg30.relationLc1126Part5, Seg30.relationLc1126Part6]
  rw [seg30AccY204_sum]
  ring

theorem seg30_lc1127 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1127 rho = 2561969558187739226478055634589964395752947022493244833472678762062847866702*seg30AccX204 rho + 7407179741270863900722282752204500392426669272486536784706558560924426719167*seg30AccY204 rho + 7407179741270863900722282752204500392426669272486536784706558560924426719167 + 2962250433925742477024989446734920051187454978744242393060909915085289434423*rho 28317 := by
  simp only [Seg30.relationLc1127, Seg30.relationLc1127Part0, Seg30.relationLc1127Part1, Seg30.relationLc1127Part2, Seg30.relationLc1127Part3, Seg30.relationLc1127Part4, Seg30.relationLc1127Part5, Seg30.relationLc1127Part6, Seg30.relationLc1127Part7, Seg30.relationLc1127Part8, Seg30.relationLc1127Part9, Seg30.relationLc1127Part10, Seg30.relationLc1127Part11, Seg30.relationLc1127Part12]
  rw [seg30AccX204_sum, seg30AccY204_sum]
  ring

theorem seg30_lc1128 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1128 rho = 5882492191240631197770769304191582135622952312660818994462554693854561372339*seg30AccX204 rho + 1037282008157506523526542186577046138949230062667527043228674894992982519874*seg30AccY204 rho + 1037282008157506523526542186577046138949230062667527043228674894992982519874 + 5482211315502627947223835492046626480188444356409821434874323540832119804618*rho 28317 := by
  simp only [Seg30.relationLc1128, Seg30.relationLc1128Part0, Seg30.relationLc1128Part1, Seg30.relationLc1128Part2, Seg30.relationLc1128Part3, Seg30.relationLc1128Part4, Seg30.relationLc1128Part5, Seg30.relationLc1128Part6, Seg30.relationLc1128Part7, Seg30.relationLc1128Part8, Seg30.relationLc1128Part9, Seg30.relationLc1128Part10, Seg30.relationLc1128Part11, Seg30.relationLc1128Part12]
  rw [seg30AccX204_sum, seg30AccY204_sum]
  ring

theorem seg30_lc1129 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1129 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX204 rho + rho 29756 := by
  simp only [Seg30.relationLc1129, Seg30.relationLc1129Part0, Seg30.relationLc1129Part1, Seg30.relationLc1129Part2, Seg30.relationLc1129Part3, Seg30.relationLc1129Part4, Seg30.relationLc1129Part5, Seg30.relationLc1129Part6]
  rw [seg30AccX204_sum]
  ring

theorem seg30_lc1130 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1130 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY204 rho + rho 29758 := by
  simp only [Seg30.relationLc1130, Seg30.relationLc1130Part0, Seg30.relationLc1130Part1, Seg30.relationLc1130Part2, Seg30.relationLc1130Part3, Seg30.relationLc1130Part4, Seg30.relationLc1130Part5, Seg30.relationLc1130Part6]
  rw [seg30AccY204_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
