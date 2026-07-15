import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc1054 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1054 rho = seg15AccX194 rho + seg15AccY194 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1054, Seg15.relationLc1054Part0, Seg15.relationLc1054Part1, Seg15.relationLc1054Part2, Seg15.relationLc1054Part3, Seg15.relationLc1054Part4, Seg15.relationLc1054Part5, Seg15.relationLc1054Part6, Seg15.relationLc1054Part7, Seg15.relationLc1054Part8, Seg15.relationLc1054Part9, Seg15.relationLc1054Part10, Seg15.relationLc1054Part11, Seg15.relationLc1054Part12]
  rw [seg15AccX194_sum, seg15AccY194_sum]
  ring

theorem seg15_lc1055 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1055 rho = 3422273983250065178018746734407871139951835380745458089779691739446421701909*seg15AccX194 rho + 3152023313505556664748647625601912027016628793058644212723522791212373491122*rho 16136 := by
  simp only [Seg15.relationLc1055, Seg15.relationLc1055Part0, Seg15.relationLc1055Part1, Seg15.relationLc1055Part2, Seg15.relationLc1055Part3, Seg15.relationLc1055Part4, Seg15.relationLc1055Part5, Seg15.relationLc1055Part6]
  rw [seg15AccX194_sum]
  ring

theorem seg15_lc1056 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1056 rho = 5698784102776659322582380855939233579043794755791327791782445405107186047550*seg15AccY194 rho + 5698784102776659322582380855939233579043794755791327791782445405107186047550 + 5594341709522394869510504494466953475851588014535265748970260993003493824062*rho 16136 := by
  simp only [Seg15.relationLc1056, Seg15.relationLc1056Part0, Seg15.relationLc1056Part1, Seg15.relationLc1056Part2, Seg15.relationLc1056Part3, Seg15.relationLc1056Part4, Seg15.relationLc1056Part5, Seg15.relationLc1056Part6]
  rw [seg15AccY194_sum]
  ring

theorem seg15_lc1057 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1057 rho = 3170950644764985808102014639957855557007686753209352478969988226001254054543*seg15AccX194 rho + 5698784102776659322582380855939233579043794755791327791782445405107186047550*seg15AccY194 rho + 5698784102776659322582380855939233579043794755791327791782445405107186047550 + 3448630156974403168365734913083760551631239103378277210194512641016284978616*rho 16136 := by
  simp only [Seg15.relationLc1057, Seg15.relationLc1057Part0, Seg15.relationLc1057Part1, Seg15.relationLc1057Part2, Seg15.relationLc1057Part3, Seg15.relationLc1057Part4, Seg15.relationLc1057Part5, Seg15.relationLc1057Part6, Seg15.relationLc1057Part7, Seg15.relationLc1057Part8, Seg15.relationLc1057Part9, Seg15.relationLc1057Part10, Seg15.relationLc1057Part11, Seg15.relationLc1057Part12]
  rw [seg15AccX194_sum, seg15AccY194_sum]
  ring

theorem seg15_lc1058 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1058 rho = 5273511104663384616146810298823690974368212581944711348965245229916155184498*seg15AccX194 rho + 2745677646651711101666444082842312952332104579362736036152788050810223191491*seg15AccY194 rho + 2745677646651711101666444082842312952332104579362736036152788050810223191491 + 4995831592453967255883090025697785979744660231775786617740720814901124260425*rho 16136 := by
  simp only [Seg15.relationLc1058, Seg15.relationLc1058Part0, Seg15.relationLc1058Part1, Seg15.relationLc1058Part2, Seg15.relationLc1058Part3, Seg15.relationLc1058Part4, Seg15.relationLc1058Part5, Seg15.relationLc1058Part6, Seg15.relationLc1058Part7, Seg15.relationLc1058Part8, Seg15.relationLc1058Part9, Seg15.relationLc1058Part10, Seg15.relationLc1058Part11, Seg15.relationLc1058Part12]
  rw [seg15AccX194_sum, seg15AccY194_sum]
  ring

theorem seg15_lc1059 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1059 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX194 rho + rho 17495 := by
  simp only [Seg15.relationLc1059, Seg15.relationLc1059Part0, Seg15.relationLc1059Part1, Seg15.relationLc1059Part2, Seg15.relationLc1059Part3, Seg15.relationLc1059Part4, Seg15.relationLc1059Part5, Seg15.relationLc1059Part6]
  rw [seg15AccX194_sum]
  ring

theorem seg15_lc1060 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1060 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY194 rho + rho 17497 := by
  simp only [Seg15.relationLc1060, Seg15.relationLc1060Part0, Seg15.relationLc1060Part1, Seg15.relationLc1060Part2, Seg15.relationLc1060Part3, Seg15.relationLc1060Part4, Seg15.relationLc1060Part5, Seg15.relationLc1060Part6]
  rw [seg15AccY194_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
