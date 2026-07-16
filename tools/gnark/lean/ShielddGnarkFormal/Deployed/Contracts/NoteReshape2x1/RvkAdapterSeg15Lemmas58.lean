import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1145 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1145 rho = seg15AccX207 rho + seg15AccY207 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc1145, Seg15.relationLc1145Part0, Seg15.relationLc1145Part1, Seg15.relationLc1145Part2, Seg15.relationLc1145Part3, Seg15.relationLc1145Part4, Seg15.relationLc1145Part5, Seg15.relationLc1145Part6, Seg15.relationLc1145Part7, Seg15.relationLc1145Part8, Seg15.relationLc1145Part9, Seg15.relationLc1145Part10, Seg15.relationLc1145Part11, Seg15.relationLc1145Part12]
  rw [seg15AccX207_sum, seg15AccY207_sum]
  ring

theorem seg15_lc1146 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1146 rho = 2333521382420236697040097662358587024796079362568935009425247624130129932194*seg15AccX207 rho + 1417945779725424908112552563237869929744463813114412655051183172264746978897*rho 16136 := by
  simp only [Seg15.relationLc1146, Seg15.relationLc1146Part0, Seg15.relationLc1146Part1, Seg15.relationLc1146Part2, Seg15.relationLc1146Part3, Seg15.relationLc1146Part4, Seg15.relationLc1146Part5, Seg15.relationLc1146Part6]
  rw [seg15AccX207_sum]
  ring

theorem seg15_lc1147 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1147 rho = 1261263590223925496177047919081127638801730006445271238456705421125076545401*seg15AccY207 rho + 1261263590223925496177047919081127638801730006445271238456705421125076545401 + 1064426900402051743754219644245711463532616799178717825153585914082016330015*rho 16136 := by
  simp only [Seg15.relationLc1147, Seg15.relationLc1147Part0, Seg15.relationLc1147Part1, Seg15.relationLc1147Part2, Seg15.relationLc1147Part3, Seg15.relationLc1147Part4, Seg15.relationLc1147Part5, Seg15.relationLc1147Part6]
  rw [seg15AccY207_sum]
  ring

theorem seg15_lc1148 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1148 rho = 3438934615418509056114893999458345190538613790666026959076386096789984605744*seg15AccX207 rho + 1261263590223925496177047919081127638801730006445271238456705421125076545401*seg15AccY207 rho + 1261263590223925496177047919081127638801730006445271238456705421125076545401 + 6893000450000819621763790167225771836868761975481047349781196949752345032557*rho 16136 := by
  simp only [Seg15.relationLc1148, Seg15.relationLc1148Part0, Seg15.relationLc1148Part1, Seg15.relationLc1148Part2, Seg15.relationLc1148Part3, Seg15.relationLc1148Part4, Seg15.relationLc1148Part5, Seg15.relationLc1148Part6, Seg15.relationLc1148Part7, Seg15.relationLc1148Part8, Seg15.relationLc1148Part9, Seg15.relationLc1148Part10, Seg15.relationLc1148Part11, Seg15.relationLc1148Part12]
  rw [seg15AccX207_sum, seg15AccY207_sum]
  ring

theorem seg15_lc1149 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1149 rho = 5005527134009861368133930939323201340837285544488036868858847359127424633297*seg15AccX207 rho + 7183198159204444928071777019700418892574169328708792589478528034792332693640*seg15AccY207 rho + 7183198159204444928071777019700418892574169328708792589478528034792332693640 + 1551461299427550802485034771555774694507137359673016478154036506165064206484*rho 16136 := by
  simp only [Seg15.relationLc1149, Seg15.relationLc1149Part0, Seg15.relationLc1149Part1, Seg15.relationLc1149Part2, Seg15.relationLc1149Part3, Seg15.relationLc1149Part4, Seg15.relationLc1149Part5, Seg15.relationLc1149Part6, Seg15.relationLc1149Part7, Seg15.relationLc1149Part8, Seg15.relationLc1149Part9, Seg15.relationLc1149Part10, Seg15.relationLc1149Part11, Seg15.relationLc1149Part12]
  rw [seg15AccX207_sum, seg15AccY207_sum]
  ring

theorem seg15_lc1150 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1150 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX207 rho + rho 17599 := by
  simp only [Seg15.relationLc1150, Seg15.relationLc1150Part0, Seg15.relationLc1150Part1, Seg15.relationLc1150Part2, Seg15.relationLc1150Part3, Seg15.relationLc1150Part4, Seg15.relationLc1150Part5, Seg15.relationLc1150Part6]
  rw [seg15AccX207_sum]
  ring

theorem seg15_lc1151 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1151 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY207 rho + rho 17601 := by
  simp only [Seg15.relationLc1151, Seg15.relationLc1151Part0, Seg15.relationLc1151Part1, Seg15.relationLc1151Part2, Seg15.relationLc1151Part3, Seg15.relationLc1151Part4, Seg15.relationLc1151Part5, Seg15.relationLc1151Part6]
  rw [seg15AccY207_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
