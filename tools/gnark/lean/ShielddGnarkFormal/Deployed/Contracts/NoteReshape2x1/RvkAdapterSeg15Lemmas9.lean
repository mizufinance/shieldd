import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc802 (rho : Nat -> Seg15.F) :
    Seg15.relationLc802 rho = seg15AccX158 rho + seg15AccY158 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc802, Seg15.relationLc802Part0, Seg15.relationLc802Part1, Seg15.relationLc802Part2, Seg15.relationLc802Part3, Seg15.relationLc802Part4, Seg15.relationLc802Part5, Seg15.relationLc802Part6, Seg15.relationLc802Part7, Seg15.relationLc802Part8, Seg15.relationLc802Part9]
  rw [seg15AccX158_sum, seg15AccY158_sum]
  ring

theorem seg15_lc803 (rho : Nat -> Seg15.F) :
    Seg15.relationLc803 rho = 2789677616256087338473269909774333319106824616035897267090378439059469950323*seg15AccX158 rho + 5323268839113956693263885772837781917558829781354897079105388103037014230979*rho 16130 := by
  simp only [Seg15.relationLc803, Seg15.relationLc803Part0, Seg15.relationLc803Part1, Seg15.relationLc803Part2, Seg15.relationLc803Part3, Seg15.relationLc803Part4]
  rw [seg15AccX158_sum]
  ring

theorem seg15_lc804 (rho : Nat -> Seg15.F) :
    Seg15.relationLc804 rho = 2112824320958170751021845696904152700087747239183588522962014905560335724620*seg15AccY158 rho + 2112824320958170751021845696904152700087747239183588522962014905560335724620 + 8260323183280550524731375083778834508884333234987761401263923255304360074933*rho 16130 := by
  simp only [Seg15.relationLc804, Seg15.relationLc804Part0, Seg15.relationLc804Part1, Seg15.relationLc804Part2, Seg15.relationLc804Part3, Seg15.relationLc804Part4]
  rw [seg15AccY158_sum]
  ring

theorem seg15_lc805 (rho : Nat -> Seg15.F) :
    Seg15.relationLc805 rho = 4344747843835797327580651183308936657754801188826696817569825610372298387097*seg15AccX158 rho + 2112824320958170751021845696904152700087747239183588522962014905560335724620*seg15AccY158 rho + 2112824320958170751021845696904152700087747239183588522962014905560335724620 + 3269761973204431484342385525721567271837064985135459812514098176136714961826*rho 16130 := by
  simp only [Seg15.relationLc805, Seg15.relationLc805Part0, Seg15.relationLc805Part1, Seg15.relationLc805Part2, Seg15.relationLc805Part3, Seg15.relationLc805Part4, Seg15.relationLc805Part5, Seg15.relationLc805Part6, Seg15.relationLc805Part7, Seg15.relationLc805Part8, Seg15.relationLc805Part9]
  rw [seg15AccX158_sum, seg15AccY158_sum]
  ring

theorem seg15_lc806 (rho : Nat -> Seg15.F) :
    Seg15.relationLc806 rho = 4099713905592573096668173755472609873621098146327367010365407845545110851944*seg15AccX158 rho + 6331637428470199673226979241877393831288152095970475304973218550357073514421*seg15AccY158 rho + 6331637428470199673226979241877393831288152095970475304973218550357073514421 + 5174699776223938939906439413059979259538834350018604015421135279780694277215*rho 16130 := by
  simp only [Seg15.relationLc806, Seg15.relationLc806Part0, Seg15.relationLc806Part1, Seg15.relationLc806Part2, Seg15.relationLc806Part3, Seg15.relationLc806Part4, Seg15.relationLc806Part5, Seg15.relationLc806Part6, Seg15.relationLc806Part7, Seg15.relationLc806Part8, Seg15.relationLc806Part9]
  rw [seg15AccX158_sum, seg15AccY158_sum]
  ring

theorem seg15_lc807 (rho : Nat -> Seg15.F) :
    Seg15.relationLc807 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX158 rho + rho 17201 := by
  simp only [Seg15.relationLc807, Seg15.relationLc807Part0, Seg15.relationLc807Part1, Seg15.relationLc807Part2, Seg15.relationLc807Part3, Seg15.relationLc807Part4]
  rw [seg15AccX158_sum]
  ring

theorem seg15_lc808 (rho : Nat -> Seg15.F) :
    Seg15.relationLc808 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY158 rho + rho 17203 := by
  simp only [Seg15.relationLc808, Seg15.relationLc808Part0, Seg15.relationLc808Part1, Seg15.relationLc808Part2, Seg15.relationLc808Part3, Seg15.relationLc808Part4, Seg15.relationLc808Part5]
  rw [seg15AccY158_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
