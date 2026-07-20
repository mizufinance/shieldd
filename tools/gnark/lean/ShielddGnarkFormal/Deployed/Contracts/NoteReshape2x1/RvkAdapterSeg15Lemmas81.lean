import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1306 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1306 rho = seg15AccX230 rho + seg15AccY230 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1306, Seg15.relationLc1306Part0, Seg15.relationLc1306Part1, Seg15.relationLc1306Part2, Seg15.relationLc1306Part3, Seg15.relationLc1306Part4, Seg15.relationLc1306Part5, Seg15.relationLc1306Part6, Seg15.relationLc1306Part7, Seg15.relationLc1306Part8, Seg15.relationLc1306Part9, Seg15.relationLc1306Part10, Seg15.relationLc1306Part11, Seg15.relationLc1306Part12, Seg15.relationLc1306Part13, Seg15.relationLc1306Part14]
  rw [seg15AccX230_sum, seg15AccY230_sum]
  ring

theorem seg15_lc1307 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1307 rho = 3647464738438405496596309108209284917129128474410709546384795465351388509718*seg15AccX230 rho + 4033105538314844726216913920691566079156225711271889030022966832116221042683*rho 16130 := by
  simp only [Seg15.relationLc1307, Seg15.relationLc1307Part0, Seg15.relationLc1307Part1, Seg15.relationLc1307Part2, Seg15.relationLc1307Part3, Seg15.relationLc1307Part4, Seg15.relationLc1307Part5, Seg15.relationLc1307Part6, Seg15.relationLc1307Part7]
  rw [seg15AccX230_sum]
  ring

theorem seg15_lc1308 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1308 rho = 771116110290316800014488227769694794618148977561993646635633714824656215422*seg15AccY230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422 + 1417426572492129065250163104387698599537623996730724897947633040475933659364*rho 16130 := by
  simp only [Seg15.relationLc1308, Seg15.relationLc1308Part0, Seg15.relationLc1308Part1, Seg15.relationLc1308Part2, Seg15.relationLc1308Part3, Seg15.relationLc1308Part4, Seg15.relationLc1308Part5, Seg15.relationLc1308Part6, Seg15.relationLc1308Part7]
  rw [seg15AccY230_sum]
  ring

theorem seg15_lc1309 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1309 rho = 7922956657602926245553712739362830901965053904104941277032385438442664406472*seg15AccX230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422*seg15AccY230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422 + 1281794159323087255894990807770815377439556190801801614750412427265792371158*rho 16130 := by
  simp only [Seg15.relationLc1309, Seg15.relationLc1309Part0, Seg15.relationLc1309Part1, Seg15.relationLc1309Part2, Seg15.relationLc1309Part3, Seg15.relationLc1309Part4, Seg15.relationLc1309Part5, Seg15.relationLc1309Part6, Seg15.relationLc1309Part7, Seg15.relationLc1309Part8, Seg15.relationLc1309Part9, Seg15.relationLc1309Part10, Seg15.relationLc1309Part11, Seg15.relationLc1309Part12, Seg15.relationLc1309Part13, Seg15.relationLc1309Part14]
  rw [seg15AccX230_sum, seg15AccY230_sum]
  ring

theorem seg15_lc1310 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1310 rho = 521505091825444178695112199418715629410845431049122550902848017474744832569*seg15AccX230 rho + 7673345639138053624234336711011851736757750357592070181299599741092753023619*seg15AccY230 rho + 7673345639138053624234336711011851736757750357592070181299599741092753023619 + 7162667590105283168353834131010731153936343144352262213184821028651616867883*rho 16130 := by
  simp only [Seg15.relationLc1310, Seg15.relationLc1310Part0, Seg15.relationLc1310Part1, Seg15.relationLc1310Part2, Seg15.relationLc1310Part3, Seg15.relationLc1310Part4, Seg15.relationLc1310Part5, Seg15.relationLc1310Part6, Seg15.relationLc1310Part7, Seg15.relationLc1310Part8, Seg15.relationLc1310Part9, Seg15.relationLc1310Part10, Seg15.relationLc1310Part11, Seg15.relationLc1310Part12, Seg15.relationLc1310Part13, Seg15.relationLc1310Part14]
  rw [seg15AccX230_sum, seg15AccY230_sum]
  ring

theorem seg15_lc1311 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1311 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX230 rho + rho 17777 := by
  simp only [Seg15.relationLc1311, Seg15.relationLc1311Part0, Seg15.relationLc1311Part1, Seg15.relationLc1311Part2, Seg15.relationLc1311Part3, Seg15.relationLc1311Part4, Seg15.relationLc1311Part5, Seg15.relationLc1311Part6, Seg15.relationLc1311Part7]
  rw [seg15AccX230_sum]
  ring

theorem seg15_lc1312 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1312 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY230 rho + rho 17779 := by
  simp only [Seg15.relationLc1312, Seg15.relationLc1312Part0, Seg15.relationLc1312Part1, Seg15.relationLc1312Part2, Seg15.relationLc1312Part3, Seg15.relationLc1312Part4, Seg15.relationLc1312Part5, Seg15.relationLc1312Part6, Seg15.relationLc1312Part7]
  rw [seg15AccY230_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
