import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc984 (rho : Nat -> Seg30.F) :
    Seg30.relationLc984 rho = seg30AccX184 rho + seg30AccY184 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc984, Seg30.relationLc984Part0, Seg30.relationLc984Part1, Seg30.relationLc984Part2, Seg30.relationLc984Part3, Seg30.relationLc984Part4, Seg30.relationLc984Part5, Seg30.relationLc984Part6, Seg30.relationLc984Part7, Seg30.relationLc984Part8, Seg30.relationLc984Part9, Seg30.relationLc984Part10, Seg30.relationLc984Part11]
  rw [seg30AccX184_sum, seg30AccY184_sum]
  ring

theorem seg30_lc985 (rho : Nat -> Seg30.F) :
    Seg30.relationLc985 rho = 4879528627294238275690539772499781527567752672854439573014061782846610701472*seg30AccX184 rho + 101145388215490346530787508378078744010713501363009604938529302121084462966*rho 28317 := by
  simp only [Seg30.relationLc985, Seg30.relationLc985Part0, Seg30.relationLc985Part1, Seg30.relationLc985Part2, Seg30.relationLc985Part3, Seg30.relationLc985Part4, Seg30.relationLc985Part5]
  rw [seg30AccX184_sum]
  ring

theorem seg30_lc986 (rho : Nat -> Seg30.F) :
    Seg30.relationLc986 rho = 1380460206807711564638663296620444513019473775459607738440626508283673674725*seg30AccY184 rho + 1380460206807711564638663296620444513019473775459607738440626508283673674725 + 8046156656394868331008900513631503273645476196898276693087825440198814241392*rho 28317 := by
  simp only [Seg30.relationLc986, Seg30.relationLc986Part0, Seg30.relationLc986Part1, Seg30.relationLc986Part2, Seg30.relationLc986Part3, Seg30.relationLc986Part4, Seg30.relationLc986Part5]
  rw [seg30AccY184_sum]
  ring

theorem seg30_lc987 (rho : Nat -> Seg30.F) :
    Seg30.relationLc987 rho = 6984159211750865130105678661651374715956492648754619623222518118061746074090*seg30AccX184 rho + 1380460206807711564638663296620444513019473775459607738440626508283673674725*seg30AccY184 rho + 1380460206807711564638663296620444513019473775459607738440626508283673674725 + 4663933031297181233029904357253716704886513111153472250123014466230610304028*rho 28317 := by
  simp only [Seg30.relationLc987, Seg30.relationLc987Part0, Seg30.relationLc987Part1, Seg30.relationLc987Part2, Seg30.relationLc987Part3, Seg30.relationLc987Part4, Seg30.relationLc987Part5, Seg30.relationLc987Part6, Seg30.relationLc987Part7, Seg30.relationLc987Part8, Seg30.relationLc987Part9, Seg30.relationLc987Part10, Seg30.relationLc987Part11]
  rw [seg30AccX184_sum, seg30AccY184_sum]
  ring

theorem seg30_lc988 (rho : Nat -> Seg30.F) :
    Seg30.relationLc988 rho = 1460302537677505294143146277130171815419406686399444204712715337855663164951*seg30AccX184 rho + 7064001542620658859610161642161102018356425559694456089494606947633735564316*seg30AccY184 rho + 7064001542620658859610161642161102018356425559694456089494606947633735564316 + 3780528718131189191218920581527829826489386224000591577812218989686798935013*rho 28317 := by
  simp only [Seg30.relationLc988, Seg30.relationLc988Part0, Seg30.relationLc988Part1, Seg30.relationLc988Part2, Seg30.relationLc988Part3, Seg30.relationLc988Part4, Seg30.relationLc988Part5, Seg30.relationLc988Part6, Seg30.relationLc988Part7, Seg30.relationLc988Part8, Seg30.relationLc988Part9, Seg30.relationLc988Part10, Seg30.relationLc988Part11]
  rw [seg30AccX184_sum, seg30AccY184_sum]
  ring

theorem seg30_lc989 (rho : Nat -> Seg30.F) :
    Seg30.relationLc989 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX184 rho + rho 29596 := by
  simp only [Seg30.relationLc989, Seg30.relationLc989Part0, Seg30.relationLc989Part1, Seg30.relationLc989Part2, Seg30.relationLc989Part3, Seg30.relationLc989Part4, Seg30.relationLc989Part5]
  rw [seg30AccX184_sum]
  ring

theorem seg30_lc990 (rho : Nat -> Seg30.F) :
    Seg30.relationLc990 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY184 rho + rho 29598 := by
  simp only [Seg30.relationLc990, Seg30.relationLc990Part0, Seg30.relationLc990Part1, Seg30.relationLc990Part2, Seg30.relationLc990Part3, Seg30.relationLc990Part4, Seg30.relationLc990Part5]
  rw [seg30AccY184_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
