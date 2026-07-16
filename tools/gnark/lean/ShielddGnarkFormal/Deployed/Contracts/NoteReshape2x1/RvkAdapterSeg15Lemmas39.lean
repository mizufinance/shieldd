import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1012 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1012 rho = seg15AccX188 rho + seg15AccY188 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1012, Seg15.relationLc1012Part0, Seg15.relationLc1012Part1, Seg15.relationLc1012Part2, Seg15.relationLc1012Part3, Seg15.relationLc1012Part4, Seg15.relationLc1012Part5, Seg15.relationLc1012Part6, Seg15.relationLc1012Part7, Seg15.relationLc1012Part8, Seg15.relationLc1012Part9, Seg15.relationLc1012Part10, Seg15.relationLc1012Part11]
  rw [seg15AccX188_sum, seg15AccY188_sum]
  ring

theorem seg15_lc1013 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1013 rho = 7532014623675013276257395954751802834360897134712429975815273506761361634150*seg15AccX188 rho + 5325217468100504610941558911399597894357527141951120112626321119227909726378*rho 16136 := by
  simp only [Seg15.relationLc1013, Seg15.relationLc1013Part0, Seg15.relationLc1013Part1, Seg15.relationLc1013Part2, Seg15.relationLc1013Part3, Seg15.relationLc1013Part4, Seg15.relationLc1013Part5]
  rw [seg15AccX188_sum]
  ring

theorem seg15_lc1014 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1014 rho = 1038907240730486955348573753066123201091740547922506032432897754065385400452*seg15AccY188 rho + 1038907240730486955348573753066123201091740547922506032432897754065385400452 + 1929159690339562681781223459926772045655182763020865258495874535912453873871*rho 16136 := by
  simp only [Seg15.relationLc1014, Seg15.relationLc1014Part0, Seg15.relationLc1014Part1, Seg15.relationLc1014Part2, Seg15.relationLc1014Part3, Seg15.relationLc1014Part4, Seg15.relationLc1014Part5]
  rw [seg15AccY188_sum]
  ring

theorem seg15_lc1015 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1015 rho = 7105233141317829944155088237470593028487428370659115728818021676594802462111*seg15AccX188 rho + 1038907240730486955348573753066123201091740547922506032432897754065385400452*seg15AccY188 rho + 1038907240730486955348573753066123201091740547922506032432897754065385400452 + 8032961483279063886927243453396323742407233665299340086862389251366585710532*rho 16136 := by
  simp only [Seg15.relationLc1015, Seg15.relationLc1015Part0, Seg15.relationLc1015Part1, Seg15.relationLc1015Part2, Seg15.relationLc1015Part3, Seg15.relationLc1015Part4, Seg15.relationLc1015Part5, Seg15.relationLc1015Part6, Seg15.relationLc1015Part7, Seg15.relationLc1015Part8, Seg15.relationLc1015Part9, Seg15.relationLc1015Part10, Seg15.relationLc1015Part11]
  rw [seg15AccX188_sum, seg15AccY188_sum]
  ring

theorem seg15_lc1016 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1016 rho = 1339228608110540480093736701310953502888470964494948099117211779322606776930*seg15AccX188 rho + 7405554508697883468900251185715423330284158787231557795502335701852023838589*seg15AccY188 rho + 7405554508697883468900251185715423330284158787231557795502335701852023838589 + 411500266149306537321581485385222788968665669854723741072844204550823528509*rho 16136 := by
  simp only [Seg15.relationLc1016, Seg15.relationLc1016Part0, Seg15.relationLc1016Part1, Seg15.relationLc1016Part2, Seg15.relationLc1016Part3, Seg15.relationLc1016Part4, Seg15.relationLc1016Part5, Seg15.relationLc1016Part6, Seg15.relationLc1016Part7, Seg15.relationLc1016Part8, Seg15.relationLc1016Part9, Seg15.relationLc1016Part10, Seg15.relationLc1016Part11]
  rw [seg15AccX188_sum, seg15AccY188_sum]
  ring

theorem seg15_lc1017 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1017 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX188 rho + rho 17447 := by
  simp only [Seg15.relationLc1017, Seg15.relationLc1017Part0, Seg15.relationLc1017Part1, Seg15.relationLc1017Part2, Seg15.relationLc1017Part3, Seg15.relationLc1017Part4, Seg15.relationLc1017Part5]
  rw [seg15AccX188_sum]
  ring

theorem seg15_lc1018 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1018 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY188 rho + rho 17449 := by
  simp only [Seg15.relationLc1018, Seg15.relationLc1018Part0, Seg15.relationLc1018Part1, Seg15.relationLc1018Part2, Seg15.relationLc1018Part3, Seg15.relationLc1018Part4, Seg15.relationLc1018Part5]
  rw [seg15AccY188_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
